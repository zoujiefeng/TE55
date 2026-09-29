import glob,shutil
import os,re
from SCons.Script import *
import SCons.Errors
import SCons.Util
import SCons.Action
import SCons.Scanner

def SconsScriptToFolder(path,exceptfileList,SrcSconsScriptfile):
    curDir =  os.path.abspath(path)
    file_list = os.listdir(path)
    if 'SConscript' in SrcSconsScriptfile and os.path.isfile(SrcSconsScriptfile):
        #copy all sconsscript file to subfolder which contains *.c *.h *.sconsscript  
        if (glob.glob(os.path.join(path, '*.h')))  and (glob.glob(os.path.join(path, '*.c')) or glob.glob(os.path.join(path, '*.s'))):
          #当前路径下包含有*h,*.c,*.s
          #复制Sconsscript到当前路径下，如果是自身，则不复制
          if os.path.abspath(SrcSconsScriptfile) != os.path.join(os.path.dirname(curDir),'SConscript'):
            #print('Copied SconsScriptToFolder:', os.path.dirname(curDir))
            shutil.copy(SrcSconsScriptfile,os.path.dirname(curDir))

        for s in glob.glob(os.path.join(path, '*.c')):
          dirs, srcfilename = os.path.split(os.path.abspath(s))
          tsrcfile,extend =  srcfilename.split('.')
          if srcfilename in exceptfileList:
            print(srcfilename)
            os.rename(os.path.abspath(s),dirs+os.sep+tsrcfile+'.except_cfile')

        for s in glob.glob(os.path.join(path, '*.except_cfile')):
          dirs, srcfilename = os.path.split(os.path.abspath(s))
          tsrcfile,extend =  srcfilename.split('.')
          if (tsrcfile+'.c') not in exceptfileList:
            os.rename(os.path.abspath(s),dirs+os.sep+tsrcfile+'.c')

        #当前文件包含子文件夹
        for file_n in file_list:
            file_n = os.path.join(path, file_n) 
            if os.path.isdir(file_n):
              SconsScriptToFolder(file_n,exceptfileList,SrcSconsScriptfile)


def listDir_SourceFile(path, file_c,except_File_c=None):
    curDir =  os.getcwd() + os.sep
    file_list = os.listdir(path)    
    for file_n in file_list:
        file_n = os.path.join(path, file_n) 
        if os.path.isdir(file_n):
            listDir_SourceFile(file_n, file_c,except_File_c)
        else:
            dir, sn = os.path.splitext(file_n)           
            if(sn == '.c' or sn == '.asm'):
                #new_path = os.path.os.path.abspath(file_n)
                new_file = file_n.strip()
                strinfo = re.compile(r'\\')
                new_file =  strinfo.sub('/', new_file)
                new_file = new_file[2:]
                new_file = new_file.strip()
                new_file = '\t\'' + new_file + '\''+ ','                
                file_c.write(new_file+'\n')


def cleanHeaderDir( pathDir ):
    if not os.path.exists(pathDir):
        os.makedirs(pathDir)
    else:
        files=glob.glob('%s/*.h' % pathDir )
        for file in files:
            os.remove(file)

def createSymlinkHeader(  inclusionDes,inclusionSrc ):
    os.chdir(inclusionSrc)
    listFile = glob.glob( "*.h" )
    for f in listFile:
        flag = touchHeader(f, inclusionDes, inclusionSrc )
        # if flag == 1:
            # return False
    return True

def touchHeader( fileName, pathDir, srcPath ):
    pathfile = os.path.join(pathDir,fileName)

    if not os.path.isfile( pathfile ):
        f = open( pathfile, "w+" )
        f.write( '''#include "%s"\n'''% os.path.join(os.path.relpath( srcPath,pathDir), fileName) )
        f.close
        return 0
    else:
        f = open( pathfile, "r" )
        string =  re.sub(r'#include ','''''',f.read())
        if( ARGUMENTS.get('VERBOSE') == "1" ):
            print ("\n\r[infor]Duplicated file %s in %s." % (fileName, srcPath))
            print ("\t was previously located in %s." %  string)
        f.close
        return 1

def createHotfixSource( pathDir, filename ):
    #read path file Rte.c
    pathfile_in = os.path.join(pathDir,filename)
    if not os.path.exists("output\\hotfix_src"):
        os.makedirs("output\\hotfix_src")
    pathfile_out = os.path.join( "output\\hotfix_src",filename)
    f_in = open( pathfile_in, "r")
    f_out = open( pathfile_out, "w+")
    original_content= f_in.read()
    if filename == "Rte.c":
        fixed_content = re.sub( r'(VAR\(Rte_EventType\, RTE_DATA\).*WaitingEv).*;',r'\1 = RTE_WOWP_EVENTS;', original_content )
    elif filename== "Rte_Lib.c":
        fixed_content = re.sub( r'(if \( 0 < --datum->count \))', '''if ( 0 < datum->count)
   {
	   datum->count--;
   }
   if ( 0 < datum->count )''', original_content )
        fixed_content = re.sub( r'(if \( \(TickType\)0 != timeout \))', r'/* \1 */', fixed_content)
        fixed_content = re.sub( r'if \( E_OK != SetRelAlarm\( alarm, timeout, 0uL \) \)', 'if ( E_OK != SetRelAlarm( alarm, 10, 0uL ) )', fixed_content)
    f_out.write( fixed_content )
    f_in.close
    f_out.close

    return 0

def CanIf_PBcfg_c_IFX(srcfile):
    #bsw\CanIf\CanIf_PBcfg.c
    if 'CanIf_PBcfg.c' not in srcfile:
        print(srcfile,'was not founded')
        return  
    absfile=os.path.abspath(srcfile)
    with open(absfile, 'r',errors='ignore') as f:
        data = f.read()
        newContent=r'Can_17_McmCanConf_CanController'
        addheader=re.search(newContent,data)
        if not addheader:
            data=re.sub('CanConf_CanController',newContent,data)            
            with open(srcfile+'new', 'w') as fnew:
                fnew.write(data)
                f.close
                fnew.close
    
    if os.path.isfile(srcfile+'new'):
        os.remove(srcfile)
        os.rename(srcfile+'new',srcfile)
        print('CanIf_PBcfg.c have been updated successfully!')


def Post_UpdateRtefile(OsNeedFile):
    '''1. The container "/OS/Os/Rte_TimeoutAlarm1" contains a element "OsAlarmAction" which is configured with an invalid definition. "DEST" type expected is "ECUC-CHOICE-CONTAINER-DEF" but "ECUC-PARAM-CONF-CONTAINER-DEF"
    <DEFINITION-REF DEST="ECUC-PARAM-CONF-CONTAINER-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsAlarm/OsAlarmAction</DEFINITION-REF>

    2. The container "/OS/Os/Rte_TimeoutAlarm2" contains a element "OsAlarmAction" which is configured with an invalid definition. "DEST" type expected is "ECUC-CHOICE-CONTAINER-DEF" but "ECUC-PARAM-CONF-CONTAINER-DEF"
    3. The container "/OS/Os/Rte_Activity" contains a element "OsEventMask" which is configured with an invalid definition. "DEST" type expected is "ECUC-INTEGER-PARAM-DEF" but "ECUC-ENUMERATION-PARAM-DEF"
    <DEFINITION-REF DEST="ECUC-ENUMERATION-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsEvent/OsEventMask</DEFINITION-REF>

    4. The container "/OS/Os/Rte_Timeout" contains a element "OsEventMask" which is configured with an invalid definition. "DEST" type expected is "ECUC-INTEGER-PARAM-DEF" but "ECUC-ENUMERATION-PARAM-DEF"
    ********************************************************************************
    '''

    Updatelist  = [[ r'<DEFINITION-REF DEST="ECUC-PARAM-CONF-CONTAINER-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsAlarm/OsAlarmAction</DEFINITION-REF>',
    r'<DEFINITION-REF DEST="ECUC-CHOICE-CONTAINER-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsAlarm/OsAlarmAction</DEFINITION-REF>'],
    
    [ r'<DEFINITION-REF DEST="ECUC-ENUMERATION-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsEvent/OsEventMask</DEFINITION-REF>',
    r'<DEFINITION-REF DEST="ECUC-INTEGER-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsEvent/OsEventMask</DEFINITION-REF>'],   
    ]
    IsFileNeed2Save = False
    NewData = ''
    with open(OsNeedFile, 'r') as fR:
        NewData  = fR.read()
        for raw, new in Updatelist:
            if len( re.findall(raw, NewData) ) > 0:
                NewData = re.sub(raw,new,NewData)
                IsFileNeed2Save = True
    if IsFileNeed2Save:
        with open(OsNeedFile+'New', 'w') as fW:
            fW.write(NewData)
        os.remove(OsNeedFile)
        os.rename(OsNeedFile+'New',OsNeedFile)
        print(OsNeedFile, 'had updated.')
    else:
        print('\t',OsNeedFile,'was no need to handle')
if __name__ == "__main__":  
    osNeedsFile = r'E:\work\TC399_hightech\DFCV_TC39XHightech922\src\rte\osNeeds.arxml'
    Post_UpdateRtefile(osNeedsFile)
