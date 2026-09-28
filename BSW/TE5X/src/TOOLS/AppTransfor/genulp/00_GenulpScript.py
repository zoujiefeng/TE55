import os

def search_dir(path, file_type):
    FileList = []
    files = os.listdir(path) # Get all file name
    for file in files: # traversal dir
        if os.path.isdir(path+"\\"+file): # is sub dir
            search_dir(path+"\\"+file)
        else: # is file
            if file.endswith(file_type):
                FileList.append(path+"\\"+file)
            elif file == os.path.basename(__file__):
                pass
            else:
                pass

    return FileList

SriptDirPath = os.path.dirname(os.path.abspath(__file__))

AppName  = "IFL300_DF4HD-P_APP_MCU_TC387"
ProjName = "P_TC387_PLATFORM_0_0"

# tool PATH
Rp2RelativePATH         = "\\" + "..\\..\\_rp2SET\\"
TransforRelativePATH    = "\\" + "..\\transfor"
S19tfmFileRelativePATH  = "\\" + "01_geneS19_ExecuteOnce.tfm"
UlptfmFileRelativePATH  = "\\" + "02_geneulp.tfm"
DatabaseRelativePATH    = "\\" + "..\\..\\GenDataBase\\GeneBase\\"
SrcHexRelativePATH      = "\\" + "..\\..\\..\\output\\hex\\"
AppRelativePATH         = "\\" + "..\\..\\"                                 # Gen to src\TOOLS dir
TcuCalRelativePATH      = "\\" + "TcuCal\\DFLT_HD150_TC375MCU_DFM_AddCal"


Rp2SetAbsPATH      = SriptDirPath + Rp2RelativePATH
TransforAbsPATH    = SriptDirPath + TransforRelativePATH
S19tfmFileAbsPATH  = SriptDirPath + S19tfmFileRelativePATH
UlptfmFileAbsPATH  = SriptDirPath + UlptfmFileRelativePATH
DatabaseAbsPATH    = SriptDirPath + DatabaseRelativePATH
SrcHexAbsPATH      = SriptDirPath + SrcHexRelativePATH + ProjName
AppAbsPATH         = SriptDirPath + AppRelativePATH + AppName
TcuCalAbsPATH      = SriptDirPath + TcuCalRelativePATH


def GenUlp():
    path = Rp2SetAbsPATH
    Rp2FileList = search_dir(path, "rp2")

    os.system(f"echo Gen S19")
    SysCmd = f"""{TransforAbsPATH} \
/var:SrcHexPATH="{SrcHexAbsPATH}" \
/var:DFM_TCUCALPATH="{TcuCalAbsPATH}" \
/var:AppPATH="{AppAbsPATH}" \
@{S19tfmFileAbsPATH}"""
    os.system(SysCmd)

    os.system(f"echo Gen ulp for each rp2")
    for eachRp2 in Rp2FileList:
        rp2Name = os.path.basename(eachRp2).split('.')[0]
        print("/********************************* Gen ulp for " + rp2Name + " *********************************/")
        SysCmd = f"""{TransforAbsPATH} /var:CalibSet="{rp2Name}" \
/var:DatabasePATH="{DatabaseAbsPATH}" \
/var:SrcHexPATH="{SrcHexAbsPATH}" \
/var:AppPATH="{AppAbsPATH}" \
/var:ProjName="{AppAbsPATH}" \
@{UlptfmFileAbsPATH}"""
        #print(SysCmd)
        os.system(SysCmd)
        print("/*********************************** End for " + rp2Name + " ***********************************/")
        print("")

def CopyUlp():
    print("Copy ulp")
    os.system(f"copy \"{SriptDirPath}\\*.ulp\"   \"{SriptDirPath}\\..\\..\\*.ulp\"")
    os.system(f"copy \"{SriptDirPath}\\*.s19\"   \"{SriptDirPath}\\..\\..\\*.s19\"")
    

GenUlp()
#CopyUlp()
