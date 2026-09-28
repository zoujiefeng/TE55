import os

def search_dir(path, file_type):
    FileList = []
    files = os.listdir(path) # Get all file name
    #print(files)
    for file in files: # traversal dir
        if os.path.isdir(path+"\\"+file): # is sub dir
            search_dir(path+"\\"+file)
        else: # is file
            #print(path + "\\" + file)
            if file.endswith(file_type):
                FileList.append(path+"\\"+file)
            elif file == os.path.basename(__file__):
                pass
                # print(file + " is py file")
            else:
                pass
                # FileList.append(path+"\\"+file)

    return FileList

ListFileName = os.path.dirname(os.path.abspath(__file__)) + "\\" +"Rp2ToBd3List.txt"
DestDirPath = os.path.dirname(os.path.dirname(os.path.abspath(__file__))) + "\\GenDataBase\\GeneBase\\"

def GenListFile():
    path = os.path.dirname(os.path.abspath(__file__))
    Rp2FileList = search_dir(path, "rp2")

    os.system("echo remove old rp2 and listfile")
    os.system(f"del {DestDirPath}*.rp2*")
    os.system(f"del {DestDirPath}*.dcm*")
    os.system(f"del {DestDirPath}*.csv")

    os.system("echo copy rp2 and listfile")
    with open(ListFileName, 'w') as f:
        f.write("/atend:quit\n")
        for eachRp2 in Rp2FileList:
            FileName = os.path.basename(eachRp2).split('.')[0]
            DestPath = DestDirPath + FileName
            SrcPath = eachRp2

            os.system(f"copy {SrcPath} {DestPath}.rp2")
            f.write(f"database /folder=. /version=\"VERSION ORIGINALE\"\nimport /file=.\{FileName}.rp2 /dest:\"{FileName}\"\n")

        f.close()
    
    DestPath = DestDirPath + os.path.basename(ListFileName)
    SrcFileName = ListFileName
    
    os.system(f"del {DestPath}")
    os.system(f"copy {SrcFileName} {DestPath}")

GenListFile()


