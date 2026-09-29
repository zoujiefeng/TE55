import os
import getpass
import datetime
import re

GUARD_TO_BE_REMOVED2 =\
"""/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */
#ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT
#error The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#else
#warning The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#endif /* NOT_READY_FOR_TESTING_OR_DEPLOYMENT */

"""
GUARD_TO_BE_REMOVED1 =\
"""/*
 * This is a template file. It defines integration functions necessary to complete RTA-BSW.
 * The integrator must complete the templates before deploying software containing functions defined in this file.
 * Once templates have been completed, the integrator should delete the #error line.
 * Note: The integrator is responsible for updates made to this file.
 *
 * To remove the following error define the macro NOT_READY_FOR_TESTING_OR_DEPLOYMENT with a compiler option (e.g. -D NOT_READY_FOR_TESTING_OR_DEPLOYMENT)
 * The removal of the error only allows the user to proceed with the building phase
 */
#ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT
#error The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#else
#warning The content of this file is a template which provides empty stubs. The content of this file must be completed by the integrator accordingly to project specific requirements
#endif /* NOT_READY_FOR_TESTING_OR_DEPLOYMENT */



"""


Srcstr=re.compile('ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT')
def remove_macro(path):
    print('Start remove_macro ' , path, 'was excuted')
    for root, dirs, files in os.walk(path, topdown=False):
        if "integration" in root:
            #print(root, 'was handled')
            for filename in files:
                absolute_path = os.path.join(root, filename)
                data = ""
                Afterdata =""
                Need2Update =False
                with open(absolute_path, 'r',errors='ignore') as file_open:
                    data=file_open.read()
                    #print('test',Srcstr.findall(data))
                    #print(file_open.read().find(GUARD_TO_BE_REMOVED))
                    Results = Srcstr.findall(data)
                    if Results:
                        print(absolute_path, 'find ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT')
                        Afterdata=data.replace(GUARD_TO_BE_REMOVED1, '')
                        if Srcstr.findall(Afterdata):
                            print(absolute_path, 'find Again ifndef NOT_READY_FOR_TESTING_OR_DEPLOYMENT')
                            Afterdata=data.replace(GUARD_TO_BE_REMOVED2, '')
                        if Srcstr.findall(Afterdata):
                            print(absolute_path,'Replaced failure, you need to manual removed!!!!!!')
                        Need2Update = True
                    #print(filename,Srcstr.findall(data))
                if Need2Update and Afterdata is not None:
                    with open(absolute_path, 'w') as file_open:
                        file_open.write(Afterdata)
                        print("Successfuly done: ",absolute_path)
    print('End remove_macro ')

def listDir_HeadFile(path, file_h):

    curDir =  os.getcwd() + os.sep
    old_path = ''
    file_list = os.listdir(path)

    #Write Include File to File
    for file_n in file_list:
        file_n = os.path.join(path, file_n)
        if os.path.isdir(file_n):
            #print 'dir: ' + file_n
            listDir_HeadFile(file_n, file_h)
        else:
            #print file_n
            dir, sn = os.path.splitext(file_n)
            #print dir , sn
            if(sn == '.h' or sn =='.inc'):
                #file_n = os.path.os.path.abspath(file_n)
                #get head file current path
                new_path = os.path.dirname(file_n)
                #delete './' in path string
                new_path = new_path[2:]

                new_path = '\n\'' + new_path + '\'' + ','
                new_path = new_path.strip()
                strinfo = re.compile(r'\\')
                new_path =  strinfo.sub('/', new_path)
                new_path = new_path.strip()
                new_path +='\n'
                file_h.write( '\t' + new_path)

def listDir_SourceFile(path, file_c,except_File_c=None):
    curDir =  os.getcwd() + os.sep
    file_list = os.listdir(path)

    for file_n in file_list:
        if file_n in except_File_c:
            print( file_n, 'was removed because NO NEED')
            continue
        file_n = os.path.join(path, file_n)
        if os.path.isdir(file_n):
            listDir_SourceFile(file_n, file_c,except_File_c)
        else:
            dir, sn = os.path.splitext(file_n)
			#, '.h', '.H'
            if sn in ['.850', '.s','.asm', '.sx','.c', '.C', '.inc']:
                new_file = file_n.strip()
                strinfo = re.compile(r'\\')
                new_file =  strinfo.sub('/', new_file)
                new_file = new_file[2:]
                new_file = new_file.strip()
                new_file = '\t\'' + new_file + '\''+ ','

                file_c.write(new_file+'\n')

def Gen_RteListFile(file,arxmlfilelist):
    Username = getpass.getuser().strip()
    ut,filename =os.path.split(file)
    rteglistfile = open(file, 'w',encoding = 'utf-8')
    rteglistfile.write('; *********************************************************************************************\n')
    rteglistfile.write('; * Script powered by HE Jiankang\n')
    rteglistfile.write('; * ???arxml list ?RTE???????,???autosar???????Arxml?,????arxml????\n')
    rteglistfile.write('; * file generated by '+Username+'\n')
    rteglistfile.write('; * '+filename+' generarted Time: '+datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')+'\n')    
    rteglistfile.write('; *********************************************************************************************\n')

    for x in arxmlfilelist:
        name,namepath = x
        rteglistfile.write('\"'+namepath+'\"\n')

    rteglistfile.close()
    print(os.path.abspath(file), 'was created for rtegeneration')
    
def GenArxmlFromProjectFolder(projectFolder,ExceptFileList):
    print(os.path.abspath(projectFolder))
    Arxml_file = []
    if os.path.isdir(projectFolder):
        os.chdir(projectFolder)
        for root, dirs, files in os.walk(os.path.curdir, topdown=False):            
            if root.startswith(r'.\src\rte'):
                continue
            elif root.startswith(r'.\src'):
                #print("Skipping Folder",root)
                continue          

            for name in files:
                if name in ExceptFileList:
                    continue
                if name.endswith(".arxml"):
                    if name.lower().endswith("paramdef.arxml"):
                        continue
                    else:                        
                        namefilepath = os.path.join(root,name)
                        Arxml_file.append([name,namefilepath])
                        print(namefilepath,' was added')
    return Arxml_file
    
def List(path,excepfile_c=None, libname='', isneedlib=False):

    #to remove header hint
    remove_macro(path)
    file_temp = open('.temp','w')

    #Write Import Files
    file_temp.write('\nImport(\'*\')\n\n')
    file_temp.write('\nimport re,sys, os, glob, fnmatch')
    file_temp.write('\nimport prebuild\n\n\n')
    #Write Object define
    file_temp.write('\nobjects = []\n\n')
    file_temp.write('\n')

    #List all head file directories
    file_temp.write('\n# INCLUDE DIRECTORIES\n# Implements: COR010\nincludes = [\n')
    listDir_HeadFile(path, file_temp)
    file_temp.write(']#Include Files\n')

    #List all source files
    file_temp.write('\n# SOURCE FILES\n# Implements: COR010\nsources = [\n')
    listDir_SourceFile(path, file_temp,excepfile_c)
    file_temp.write(']#Source Files\n')

    file_temp.close()

    # delete duplicate lines
    lines_seen = set()
    outfile = open(".temp2","w")
    for line in open(".temp","r"):
        if line not in lines_seen:
            outfile.write(line)
            lines_seen.add(line)
    outfile.close()

    outfile = open("SConscript","w")

    # Export build infomation
    Username = getpass.getuser().strip()
    Datetime = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    outfile.write('#Generate User: ' + Username + '\n');
    outfile.write('#Generate Time: ' + Datetime + '\n');

    #print("#Current User: %s"%username)
    #print("#Current Time: %s"%datetime)

    for line in open(".temp2","r"):
        outfile.write(line)
    srclibname = f"env.Library('{libname}', objects)" if isneedlib else ''
    outfile.write(
r"""# GENERATED SOURCE FILES
gen_sources = [
]

# ADD INCLUDE DIRECTORIES
import scons_common
for include in includes:
    cwd = scons_common.get_current_dir()
    env.Append(CPPPATH=[os.path.join(cwd, include)])
# COMPILE SOURCE FILES
for source in sources:
    objects += env.Object(source)
    

# GENERATED SOURCE FILES
for gen_source in gen_sources:
    objects += env.Object(gen_source)

# RETURN
ISNEEDLIB
Return('objects')

#*******************************************************************************
# END OF FILE
#*******************************************************************************
""".replace('ISNEEDLIB', srclibname)
    )

    os.remove('.temp')
    os.remove('.temp2')

def updateOS_IsrName(OsbaseFile):
    OsIsrPriority =re.compile(r'''\s+<DEFINITION-REF DEST="ECUC-INTEGER-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsIsr/OsIsrPriority</DEFINITION-REF>
    \s+<VALUE>''')

    tartext = '''\n                  <DEFINITION-REF DEST="ECUC-ENUMERATION-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsIsr/OsIsrPriority</DEFINITION-REF>
                  <VALUE>IPL_'''
    with open(osbasefile, 'r') as file_open:
        data=file_open.read()
        Results = OsIsrPriority.findall(data)
        if Results:
            print(Results)
            Afterdata=OsIsrPriority.sub(tartext,data)
            with open(osbasefile, 'w') as file_open:
                file_open.write(Afterdata)
                print("Successfuly done: ",osbasefile)
            file_open.close()

    OsIsrAddress =re.compile(r'''\s+<DEFINITION-REF DEST="ECUC-STRING-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsIsr/OsIsrAddress</DEFINITION-REF>
    \s+<VALUE>''')

    tartext = '''\n                  <DEFINITION-REF DEST="ECUC-ENUMERATION-PARAM-DEF">/AUTOSAR_Os/EcucModuleDefs/Os/OsIsr/OsIsrAddress</DEFINITION-REF>
                  <VALUE>'''
    with open(osbasefile, 'r') as file_open:
        data=file_open.read()
        Results = OsIsrAddress.findall(data)
        if Results:
            print(Results)
            Afterdata=OsIsrAddress.sub(tartext,data)
            with open(osbasefile, 'w') as file_open:
                file_open.write(Afterdata)
                print("Successfuly done: ",osbasefile)
            file_open.close()


if __name__ == "__main__":
    osbasefile = '..\\..\\..\Config\BSW\Rte_Os\osBases.arxml'

    updateOS_IsrName(osbasefile)

    ExceptFileList = ['Wdg_SWC.arxml','lin.arxml']
    Project_Folder_Path = os.path.abspath( '..\\..\\..')
    GenRteListFile = os.path.join(Project_Folder_Path,'Rtegen_Needsfiles.lst')
    Arxml_files = GenArxmlFromProjectFolder(Project_Folder_Path,ExceptFileList)
    
    os.chdir(os.path.abspath(Project_Folder_Path))    
    Gen_RteListFile(GenRteListFile,Arxml_files)