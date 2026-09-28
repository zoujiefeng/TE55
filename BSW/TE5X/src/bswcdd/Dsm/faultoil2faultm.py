import re
import os
from pathlib import Path
from datetime import datetime

def parse_oil_file(input_file):
    """
    解析OIL文件，提取FUNCTION和TYPE信息。
    """
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 移除注释 /* ... */ 和 // ...
    content = re.sub(r'/\*.*?\*/', '', content, flags=re.DOTALL)
    content = re.sub(r'//.*$', '', content, flags=re.MULTILINE)
    
    results = []
    # 使用正则表达式找到所有FUNCTION块的起始位置
    function_starts = list(re.finditer(r'FUNCTION\s+(\w+)\s*\{', content))

    for func_match in function_starts:
        func_name = func_match.group(1)
        start_pos = func_match.end() - 1  # 从开头的 '{' 开始
        
        brace_count = 1
        current_pos = start_pos
        
        # 手动遍历字符，找到匹配的结束大括号
        while current_pos < len(content) and brace_count > 0:
            current_pos += 1
            if content[current_pos] == '{':
                brace_count += 1
            elif content[current_pos] == '}':
                brace_count -= 1
        
        if brace_count == 0:
            # 提取整个FUNCTION块的内容（不包含外层的大括号）
            func_content = content[start_pos + 1 : current_pos]
            
            # 在这个确定的函数块内容中，查找所有TYPE定义
            type_pattern = r'TYPE\s*=\s*TYPE\s*\{[^}]*NAME\s*=\s*"([^"]+)"[^}]*\}'
            types = re.findall(type_pattern, func_content, re.DOTALL)
            
            for type_name in types:
                results.append({
                    'function': func_name,
                    'type': type_name
                })
        else:
            print(f"Warning: The braces of function '{func_name}' do not match. It has been skipped.")
            
    return results

def generate_matlab_code(data):
    """根据解析的数据生成MATLAB代码，包含文件头、主体和脚注"""
    
    # 1. 获取当前时间并格式化
    now = datetime.now()
    formatted_time = now.strftime("%d %b %Y %H:%M:%S")
    
    # 2. 定义文件头，使用 f-string 插入动态时间
    header = f"""function fault(void)
%*******************************************************************************
%* File name     : fault.m                                                    
%* Project       :                                                              
%* Description   :                                                              
%* Author        : faultoil2faultm                                              
%* Service       :                                                              
%*******************************************************************************
%* :      1.0   {formatted_time}     n%* !Trace_To     : V0X NT 06 XXXXX 01: DEV REQ: MOD/YY/00.01 
%*******************************************************************************

% **************************** Init script parameters **************************
Modified_Data{{1}} = ' Object Name  |Modified Data  |Old Value  |New Value'; % Output file Header
% ******************************** Main Process ********************************

"""
    
    # 3. 生成所有故障检测代码块
    body_code = []
    for item in data:
        func_name = item['function']
        type_name = item['type']
        
        # 生成变量名
        var_name = f"{func_name}{type_name}Detn"
        
        # 生成MATLAB代码块
        code_block = f"""% {var_name}
try
  if (strcmp(class(evalin('base','{var_name}')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('{var_name}');
      SetNewConfiguration('{func_name}','{type_name}','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'{var_name}',Modified_Data);
      CreateSignal('{func_name}','{type_name}','Logged');
      CreateSignal('{func_name}','{type_name}','Detected');
      CreateSignal('{func_name}','','Logged');
      CreateSignal('{func_name}','','Detected');
  end
catch
end

"""
        body_code.append(code_block)


    # 4. 定义脚注部分，包含所有后处理和辅助函数
    footer = """% FaultFailureLevel
try
    evalin('base','FaultFailureLevel = mpt.Signal;');
    localFaultFailureLevel = evalin('base','FaultFailureLevel');
    localFaultFailureLevel.CoderInfo.CustomStorageClass = 'ImportFromFile';
    localFaultFailureLevel.CoderInfo.CustomAttributes.DataAccess = 'Direct';
    localFaultFailureLevel.CoderInfo.CustomAttributes.HeaderFile = 'FAULT.h';
    localFaultFailureLevel.Description = '';
    localFaultFailureLevel.DataType = 'uint8';
    localFaultFailureLevel.Min = 0;
    localFaultFailureLevel.Max = 255;
    localFaultFailureLevel.DocUnits = 'DEC';
    localFaultFailureLevel.Dimensions = -1;
    localFaultFailureLevel.Complexity = 'real';
    localFaultFailureLevel.SampleTime = -1;
    localFaultFailureLevel.SamplingMode = 'Sample based';
    localFaultFailureLevel.InitialValue = '0';
    assignin('base','FaultFailureLevel',localFaultFailureLevel);
catch
end

% Display modified data and write txt files
SortedList = sort(Modified_Data);
fid = fopen('fault_list.txt', 'w');
ChunksListCol1 = {};
ChunksListCol2 = {};
ChunksListCol3 = {};
ChunksListCol4 = {};
for idx=1:length(SortedList)
    SortedList{idx} = regexprep(SortedList{idx},'New_Configuration_Parameter','');
    ChunksListLine = regexp(SortedList{idx},'&&&&','split');
    for idxLine=1:length(ChunksListLine)
        ChunksList = regexp(ChunksListLine{idxLine},'\\|','split');
        ChunksListCol1{length(ChunksListCol1)+1} = ChunksList{1};
        ChunksListCol2{length(ChunksListCol2)+1} = ChunksList{2};
        ChunksListCol3{length(ChunksListCol3)+1} = ChunksList{3};
        ChunksListCol4{length(ChunksListCol4)+1} = ChunksList{4};
    end
end
ColSize1    = max(cellfun('length',ChunksListCol1));
ColSize2    = max(cellfun('length',ChunksListCol2));
ColSize3    = max(cellfun('length',ChunksListCol3));
ColSize4    = max(cellfun('length',ChunksListCol4));
for IdxData=1:length(SortedList)
    ChunksListLine = regexp(SortedList{IdxData},'&&&&','split');
    ChunksListDisp = regexp(SortedList{IdxData},'\\|','split');
    if(IdxData ~= 1)
        disp(['info: ' ChunksListDisp{1} ' CoderInfo Configuration is updated.']);
    end
    for idxLine=1:length(ChunksListLine)
        ChunksList = regexp(ChunksListLine{idxLine},'\\|','split');
        fprintf(fid,'%s%s|%s%s|%s%s|%s%s|\\n',ChunksList{1},repmat(' ',1,ColSize1-length(ChunksList{1})),ChunksList{2},...
   repmat(' ',1,ColSize2-length(ChunksList{2})),ChunksList{3},repmat(' ',1,ColSize3-length(ChunksList{3})),...
   ChunksList{4},repmat(' ',1,ColSize4-length(ChunksList{4})));
        if(idxLine<length(ChunksListLine))
            fprintf(fid,'%s|%s|%s|%s|\\n',repmat(' ',1,ColSize1),repmat('-',1,ColSize2),repmat('-',1,ColSize3),repmat('-',1,ColSize4));
        end
    end
    fprintf(fid,'%s|%s|%s|%s|\\n',repmat('-',1,ColSize1),repmat('-',1,ColSize2),repmat('-',1,ColSize3),repmat('-',1,ColSize4));
end
fclose(fid);
end

% Save Old CoderInfo Configuration
function Arg_OriginalConf = SaveOriginalConf(Arg_DataName)
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomStorageClass']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass = 'New_Configuration_Parameter';
    end
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomAttributes.HeaderFile']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile = 'New_Configuration_Parameter';
    end
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomAttributes.GetFunction']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction = 'New_Configuration_Parameter';
    end
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomAttributes.SetFunction']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction = 'New_Configuration_Parameter';
    end
end

% Set New CoderInfo Configuration
function SetNewConfiguration(Arg_function_name,Arg_function_type_name,Arg_Suffix)
    LocalDataObject = evalin('base',[Arg_function_name Arg_function_type_name Arg_Suffix]);
    LocalDataObject.CoderInfo.CustomStorageClass = 'GetSet';
    LocalDataObject.CoderInfo.CustomAttributes.HeaderFile = 'FAULT.h';
    LocalDataObject.CoderInfo.CustomAttributes.GetFunction = '';
    LocalDataObject.CoderInfo.CustomAttributes.SetFunction = ['FaultDetn_' Arg_function_name Arg_function_type_name];
    assignin('base',[Arg_function_name Arg_function_type_name Arg_Suffix],LocalDataObject);
end

% Check Configuration
function Arg_ModifBuffer = CheckConfiguration(Arg_OriginalConf,Arg_DataName,Arg_ModifBuffer)
    ModifiedStorageData = '';
    ModifiedHeaderData = '';
    ModifiedGetFunctionData = '';
    ModifiedSetFunctionData = '';
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass,evalin('base',[Arg_DataName '.CoderInfo.CustomStorageClass'])))
       ModifiedStorageClass = true;
       ModifiedStorageData  = ['CustomStorageClass| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomStorageClass']) '&&&&|'];
    else
       ModifiedStorageClass = false;
    end
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile,evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.HeaderFile'])))
       ModifiedHeaderFile = true;
       ModifiedHeaderData = ['HeaderFile| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.HeaderFile']) '&&&&|'];
    else
       ModifiedHeaderFile = false;
    end
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction,evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.GetFunction'])))
       ModifiedGetFunction = true;
       ModifiedGetFunctionData = ['GetFunction| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.GetFunction']) '&&&&|'];
    else
       ModifiedGetFunction = false;
    end
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction,evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.SetFunction'])))
       ModifiedSetFunction = true;
       ModifiedSetFunctionData = ['SetFunction| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.SetFunction']) '&&&&|'];
    else
       ModifiedSetFunction = false;
    end
    if(ModifiedStorageClass||ModifiedHeaderFile||ModifiedGetFunction||ModifiedSetFunction)
       Counter = length(Arg_ModifBuffer) + 1;
       Arg_ModifBuffer{Counter} = ['' Arg_DataName '|' ModifiedStorageData ModifiedHeaderData ModifiedGetFunctionData ModifiedSetFunctionData];
       Arg_ModifBuffer{Counter} = regexprep(Arg_ModifBuffer{Counter},'&&&&\\|$','');
    end
end

% Create Logged Component
function CreateSignal(Arg_function_name,Arg_function_type_name,Arg_Suffix)
    evalin('base',['Fault' Arg_function_name Arg_function_type_name Arg_Suffix ' = mpt.Signal;']);
    LocalSignal = evalin('base',['Fault' Arg_function_name Arg_function_type_name Arg_Suffix]);
    LocalSignal.CoderInfo.CustomStorageClass = 'GetSet';
    LocalSignal.CoderInfo.CustomAttributes.HeaderFile = 'FAULT.h';
    if(isempty(Arg_function_type_name))
        LocalSignal.CoderInfo.CustomAttributes.GetFunction = ['(boolean)FaultDetn_u16Read_' Arg_function_name Arg_Suffix];
    else
        LocalSignal.CoderInfo.CustomAttributes.GetFunction = ['(boolean)FaultDetn_u16Read_' Arg_function_name Arg_function_type_name Arg_Suffix];
    end
    LocalSignal.CoderInfo.CustomAttributes.SetFunction = '';
    LocalSignal.Description = '';
    LocalSignal.DataType = 'boolean';
    LocalSignal.Min = 0;
    LocalSignal.Max = 1;
    LocalSignal.DocUnits = 'Boolean';
    LocalSignal.Dimensions = -1;
    LocalSignal.Complexity = 'real';
    LocalSignal.SampleTime = -1;
    LocalSignal.SamplingMode = 'Sample based';
    LocalSignal.InitialValue = '0';
    assignin('base',['Fault' Arg_function_name Arg_function_type_name Arg_Suffix],LocalSignal);
end
"""
    # 5. 组合成最终代码
    return header + ''.join(body_code) + footer

def convert_oil_to_matlab(input_file, output_file):
    """主转换函数"""
    # 解析OIL文件
    parsed_data = parse_oil_file(input_file)
    
    if not parsed_data:
        print("Warning: No valid FUNCTION and TYPE definitions could be extracted from the file.")
        print("Check the following possible causes:")
        print("1. Is the file encoding correct (it is recommended to use UTF-8)?")
        print("2. Are the spelling and formatting of the keywords FUNCTION and TYPE consistent with the example?")
        print("3. Are there any special comment formats that have not been properly removed?")
        return False
    
    # 生成MATLAB代码
    matlab_code = generate_matlab_code(parsed_data)
    
    # 写入输出文件
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(matlab_code)
    
    print(f"Conversion completed! Successfully parsed and generated {len(parsed_data)} fault detection code blocks.")
    print(f"output file: {output_file}")
    return True

def main():
    """主函数"""
    # 获取脚本所在的目录
    script_dir = Path(__file__).parent
    
    # 输入输出文件路径
    input_file = script_dir / "_CFG_" / "FAULT.oil"
    output_file = script_dir / "_CFG_" / "fault.m"
    
    # 检查输入文件是否存在
    if not os.path.exists(input_file):
        print(f"Error: Unable to find the input file {input_file}")
        print("Please make sure that the 'FAULT.oil' file is in the current directory.")
        return
    
    # 执行转换
    success = convert_oil_to_matlab(input_file, output_file)
    
    if success:
        print("\nConversion successful! Now you can:")
        print(f"1. Check the generated {output_file} file")
        print("2. Run this script in MATLAB")
        print("3. Modify the parameters in the script as needed")

if __name__ == "__main__":
    main()
