from pathlib import Path 

desktop = str(Path.home()) + "\Desktop"
downloads = Path(str(Path.home()) + "\Downloads")
csv_list = list(downloads.glob("*.csv"))
csv_file = open(csv_list.pop(),'r',encoding="UTF-8-sig")

import csv

textList = []
for row in csv.reader(csv_file):
    textList.append(row[0])

for index,element in enumerate(textList):
    textFile = open(Path(desktop + "\\text" + str(index) + ".txt"),"w")
    textFile.writelines(element.rstrip())
    textFile.close()




    

