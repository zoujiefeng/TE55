import re
import os

file_path = os.path.abspath(__file__)
print(file_path)
parent_directory_path = os.path.dirname(os.path.abspath(__file__))
print(parent_directory_path)

A2L_TEMPLATE_PATH_re = """\n[^\n]+App.a2l"""
MAP_PATH_re = """\n[^\n]+P_TC387_PLATFORM_0_0.map"""
A2L_OBJECT_PATH_re = """\n[^\n]+FL500_HD150LT_APP_MCU_TC387_XCP\.a2l"""
INI_OBJECT_PATH_re = """\n[^\n]+TC387MCUXCP\.ini"""

objCfgFile = os.path.dirname(os.path.abspath(__file__)) + """\config\config.cfg"""
objCfgBackupFile = os.path.dirname(os.path.abspath(__file__)) + """\config\config.cfgBackup"""
with open (objCfgFile, 'r') as file:
    flist = file.readlines()
    s = ''.join(flist)
    with open (objCfgBackupFile, 'w') as backupfile:
        backupfile.write(s)
        print("Hitory configuration:\n" + s)
        print("Backup file created\n\n")

    A2LTemplateObjPath = (parent_directory_path[0].upper() + parent_directory_path[1:] + r"\Temp\app_ert_rtw\App.a2l").replace('\\', '\\\\')
    MapObjPath = (parent_directory_path[0].upper() + parent_directory_path[1:] + r"\Temp\BUILD\P_TC387_PLATFORM_0_0.map").replace('\\', '\\\\')
    A2LObjPath = (parent_directory_path[0].upper() + parent_directory_path[1:] + r"\Release\FL500_HD150LT_APP_MCU_TC387_XCP.a2l").replace('\\', '\\\\')
    IniObjPath = (parent_directory_path[0].upper() + parent_directory_path[1:] + r"\TC387MCUXCP.ini").replace('\\', '\\\\')
    Tempstr = re.sub(A2L_TEMPLATE_PATH_re, '\n' + A2LTemplateObjPath, s)
    Tempstr = re.sub(MAP_PATH_re, '\n' + MapObjPath, Tempstr)
    Tempstr = re.sub(A2L_OBJECT_PATH_re, '\n' + A2LObjPath, Tempstr)
    s = re.sub(INI_OBJECT_PATH_re, '\n' + IniObjPath, Tempstr)

with open (objCfgFile, 'w') as file:
    file.write(s)
    print("New configuration:\n" + s)




