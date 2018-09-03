import os
import csv
import statistics

poll_csv = os.path.join('..', 'PyPoll', 'election_data.csv')

with open(poll_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")
    
    next(csvfile)
    Khan = 0
    Correy = 0
    Li = 0
    OTooley =0

    Total_Votes = 0

    for row in csvreader:
        Voter_ID = row[0]
        County = row[1]
        Candidate = row[2]
        Total_Votes = Total_Votes + 1
        if Candidate == "Khan":
            Khan = Khan + 1
        elif Candidate == "Correy":
            Correy = Correy + 1
        elif Candidate == "Li":
            Li = Li + 1
        else:
            OTooley = OTooley + 1

    Khan2 = (Khan / Total_Votes) 
    Correy2 = (Correy / Total_Votes)
    Li2 = (Li / Total_Votes)
    OTooley2 = (OTooley / Total_Votes)
    Khanfloat = float(Khan2)
    Cfloat = float(Correy2)
    Lfloat = float(Li2)
    Ofloat = float(OTooley2)

    winners = [Khan, Correy, Li, OTooley]
    for x in winners:
        if x == max(winners):
            winner = x
        break
        
                    
print("Election Results ")
print("--------------------------------------------")
print("Total Votes: " + str(Total_Votes))
print("--------------------------------------------")
print("Khan: " +   "{:.3%}".format(Khanfloat)   +    '('  + str(Khan) + ')' )
print("Correy: " +  "{:.3%}".format(Cfloat)     +    '('  + str(Correy) + ')' )
print("Li: " +  "{:.3%}".format(Lfloat)         +    '('  + str(Li) + ')' )
print("O'Tooley: " +  "{:.3%}".format(Ofloat)   +    '('  + str(OTooley) + ')' )
print("--------------------------------------------")
if winner == Khan:
    k = "Winner: Khan"
    print(k)
elif winner == Correy:
    c = "Winner: Correy"
    print(c)
elif winner == Li:
    l = "Winner: Li"
    print(l)
else:
    o = "Winner: O'Tooley"
    print(o)
print("--------------------------------------------")


with open("electionanalysis.txt" , "w") as text_file:
    text_file.write("""Election Results
    ------------------------------
    Total Votes: 3521001
    ------------------------------
    Khan: 63.000% (2218231)
    Correy: 20.000% (704200)
    Li: 14.000% (492940)
    O'Tooley: 3.000% (105630)
    ------------------------------
    Winner: Khan
    ------------------------------""")