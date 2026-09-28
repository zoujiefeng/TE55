src = []
dest = r".\donnee.txt"

DestList = []

import os
import re
def search_dir(path):
    global src
    files = os.listdir(path) # Get all file name
    #print(files)
    for file in files: # traversal dir
        if os.path.isdir(path+"\\"+file): # is sub dir
            search_dir(path+"\\"+file)
        else: # is file
            #print(path + "\\" + file)
            if file == dest[2:]:
                print(file + " is dest file")
            elif file == os.path.basename(__file__):
                print(file + " is py file")
            else:
                src.append(path+"\\"+file)

path = os.path.dirname(os.path.abspath(__file__))
print(path)
search_dir(path)

dest = path + dest
#src.append(r".\donnee_BLDC.txt")

with open(dest,'w')as file:
    file.write("Nom_donnée|Type|Nom_module|Public|Nb_lignes|Nb_colonnes|Label_père|Offset|Masque_accès|Affichage|Unité|Fonction_transfert_ades|Coefficient_a|Coefficient_b|Groupe|Groupe_1|Groupe_2|Alias_1|Alias_2|Genre|Variable_indice_ligne|Variable_indice_colonne|Fonction_transfert_ligne|Fonction_transfert_colonne|Table_breakpoint_ligne|Table_breakpoint_colonne|Référence_spécification|Recuperable|Modifiable|Fournisseur|Responsable|Valeurs|Visualisable_ADES|Donnée_a_supprimer|Validation|Commentaires|Volatile|MinDecValue|MaxDecValue|MinPhysValue|MaxPhysValue|Def_Eval|MemSec\n")
    file.close()

for each in src:
    f = open(each, 'r', encoding="latin-1")
    list = f.readlines()
    for eachline in list:
        if re.match("\s*\n", eachline) != None:
            list.remove(eachline)

    if(re.match(".*\n", list[-1]) == None):
        list[-1] = list[-1] + '\n'

    list = list[1:]    

    DestList.extend(list)
    f.close()
    
DestList.sort()
    
with open(dest,'a')as file:
    for line in DestList:                    
        if line != "\n":
            file.write(line)        
    file.close()    

#os.system("pause")


