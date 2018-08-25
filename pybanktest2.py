import os
import csv
import statistics
import numpy

pybank_csv = os.path.join("..", "python-challenge", "budget_data.csv")

with open(pybank_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    
    next(csvfile)
    #print(header_row)    
    Total_Months = 1
    Total_PNL = []
    difflist = []
    firstrow = next(csvreader)
    newrow = 0
    oldrow = int(firstrow[1])
    
    for row in csvreader:
        Total_PNL1 = (row[1])
        Total_PNL1 = int(Total_PNL1)
        Total_PNL.append(Total_PNL1)
        Total_PNL2 = sum(Total_PNL)
        Total_Months = Total_Months + 1
        #if (rownum) ==0:
            #newrow = oldrow
        #else:
        newrow = int(row[1])
        diff = newrow - oldrow
        difflist.append(diff)
        oldrow = newrow

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
        
avgdiff = statistics.mean(difflist)      
#print(AVGP)
print("Financial Analysis")
print("-----------------------------------------------------")
print("Total Months: " + str(Total_Months))
print("Total: " + "$" + str((Total_PNL2)))
print("Average Change: "  + "${:2}".format(avgdiff))
print("Greatest Increase in Profits: " + "$" + str(max(difflist)))
print("Greatest Decrease in Profits: " + "$" + str(min(difflist)))

with open("BudgetAnalysis.txt" , "w") as text_file:
    text_file.write("Financial Analysis") 
    text_file.write("-----------------------------")
    text_file.write("Total Months: " + str(Total_Months))
    text_file.write("Total: " + "$" + str((Total_PNL2)))
    text_file.write("Average Change: "  + "${:.2}".format(avgdiff))
    text_file.write("Greatest Increase in Profits: " + "$" + str(max(difflist)))
    text_file.write("Greatest Decrease in Profits: " + "$" + str(min(difflist)))