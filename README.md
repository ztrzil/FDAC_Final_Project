# FDAC_Final_Project
Open Secrets Analysis
===============
## Scope
435 Voting State Representatives
2014 Donation Data
2015-2016 Voting


# Data Flow:
1. Open Secrets Donation Data => Donations Data CSV  
    Donations Data CSV:  
        + CandidateID: ID given to politican at time of candidacy  
        + DonationAmount: Dollar amount of a single donation  
        + Party: Party affiliation (R, D, ?)  
    _Assigned: Zach_   
2. Donations Data CSV => Politician Donation Profile CSV  
    Politician Donation Profile CSV:  
        + CandidateID: ID given to politician at time of candidacy   
        + PercentFromGroup0: Percent of donations from first bin  
        + PercentageFromGroup1: Percent of donations from second bin  
        + PercentFromGroupN: Percent of donations from Nth bin   
    _Assigned: Nick_   
3. GovTrack Voting Data => Voting Record CSV   
    Voting Record CSV  
        + BillID: Unique ID for a piece of legislation   
        + CandidateID: ID given to politician at time of candidacy   
        + Party: Party affiliation (R, D, ?)  
        + Vote: Affirmative or negative (0, 1)  
    _Assigned: Stone_   
4. Politician Donation Profile CSV => Politician Cluster CSV  
    Politician Cluster CSV
        + NameID: Name of politician  
        + ClusterID: ID representing cluster politician belongs too  
    _Assigned: William_   
5. Politician Cluster CSV + Voting Record CSV => Statistical Report  
    _Assigned: William_   


## Other Stuff:  
+ Final Report  
    _Assigned: Denizhan_  
+ Presenting  
    _Assigned: Everyone_  
