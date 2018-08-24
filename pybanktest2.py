import os
import csv
import statistics
import numpy

pybank_csv = os.path.join("..", "python-challenge", "budget_data.csv")

with open(pybank_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    
    next(csvfile)
    #print(header_row)    
    Total_Months = 0
    Total_PNL = []
    AVGP = []
    for row in csvreader:
        Total_PNL1 = (row[1])
        Total_PNL1 = int(Total_PNL1)
        Total_PNL.append(Total_PNL1)
        Total_PNL2 = sum(Total_PNL)
        #Different approach, tried to declare a variable, PNL_diff, as subtraction of two elements in the
        # list, then appended those differences
        #PNL_diff = ([Total_PNL[0] - Total_PNL[1]])
        #AVGP.append(PNL_diff)
        #avg = statistics.mean([Total_PNL1])
        #diff = Total_PNL1 + 1 
        #AVGP1 = diff - Total_PNL1
        #AVGP1 = Total_PNL[1] + Total_PNL[2]
        #######Also tried to reference the PNL list and add indexs
        #print(AVGP1)
        #AVGP.append(AVGP1)
        #AVGP2 = statistics.mean(AVGP)
        ########I want to take the differences, store in a variable, then run a mean on them
        Total_Months = Total_Months + 1
        
#print(AVGP)
print("Financial Analysis")
print("-----------------------------------------------------")
print("Total Months: ", Total_Months)
print("Total: " + "$" + str((Total_PNL2)))
#print("Average Change: " + "$" + str(AVGP))
print("Greatest Increase in Profits: " + "$" + str(max(Total_PNL)))
print("Greatest Decrease in Profits: " + "$" + str(min(Total_PNL)))
        