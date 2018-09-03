import os
import csv
import statistics
import numpy

pybank_csv = os.path.join("..", "Pybank", "budget_data.csv")

with open(pybank_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    csv_header = next(csvreader)
      
    Total_Months = 0
    Total_PNL = []
    difflist = []
    firstrow = 0
    newrow = 0
    oldrow = 0
    rownum = 0
    
    for row in csvreader:
        Total_PNL1 = (row[1])
        Total_PNL1 = int(Total_PNL1)
        Total_PNL.append(Total_PNL1)
        Total_PNL2 = sum(Total_PNL)
        Total_Months = Total_Months + 1
        newrow = int(row[1])
        if (rownum ==0):
            oldrow = newrow
        else:
            diff = newrow - oldrow
            difflist.append(diff)
            oldrow = newrow
        rownum +=1
      
        
avgdiff = statistics.mean(difflist)      
formattedavgdiff = "${:.2f}".format(avgdiff)

print("Financial Analysis")
print("-----------------------------------------------------")
print("Total Months: " + str(Total_Months))
print("Total: " + "$" + str((Total_PNL2)))
print("Average Change: "  + str(formattedavgdiff))
print("Greatest Increase in Profits: " + "(" + "$"+ str(max(difflist)) +")")
print("Greatest Decrease in Profits: " + "(" + "$"+ str(min(difflist)) +")")

with open("BudgetAnalysis.txt" , "w") as text_file:
    text_file.write("""Financial Analysis 
    -----------------------------
    Total Months: 86
    Total: $38382578
    Average Change: $-2315.12
    Greatest Increase in Profits: ($1926159)
    Greatest Decrease in Profits:  ($-2196167)""")