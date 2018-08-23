import os
import csv

pybank_csv = os.path.join("..", "Pybank", "budget_data.csv")

#def getData(companydata):

    #Totalpnl sums up the total company pnl
    #totalPNL = sum(int(companydata[1]))
    
    #avgchange is a variable that first calculates the change, then averages the result
    #avgchange = avgchange(companydata[1])
    
    #greatest increase in profits finds max and then prints max and the date
    #maxinc = max(companydata[1])

    #greatest decrease in profits is min and prints min and the date of occurence
    #mininc = min(companydata[1])

   # print(f"Total PNL:" + {str(totalPNL)})
    #print(f"Average Change:" + {str(avgchange)})
    #print(f"Greatest Increase in Profits:" + {str(maxinc)})
    #print(f"Greatest Decrease in Profits:" + {str(mininc)})


with open(pybank_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    #print(csvreader)    

    for row in csvreader:
        print("Financial Analysis")
        print("-----------------------------------------------------")
        #Total_Months = sum(1 for row in csvreader)
        #print("Total Months: " + str(Total_Months))
        #when I run without totalmonths, I get the right information for PNL
        Total_PNL = sum(int(row[1]) for row in csvreader) 
        print("Total: " + "$" + str(Total_PNL))
        #Max_inc = max(row[1]) for row in csvreader)
        #print("Greatest Increase in Profits: " + str(max_inc))
        
        
        
        #Total_PNL = sum(int(row[1]) for row in csvreader)
        #print(Total_PNL)
        #print(Total_Months)

        #TotalPNL = sum([1])
       # print(int(totalPNL))
        #Total_Months = sum(1 for row in csvreader)
        # totalPNL = sum(int(companydata[1]))
        #print("Total Months: " + str(Total_Months))
        #print(totalPNL)
        #Total_PNL = sum(int(ProfitLoss[2]))
        #print("Total PNL: " + str(Total_PNL))
       
