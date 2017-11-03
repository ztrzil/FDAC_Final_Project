# FDAC_Final_Project
Open Secrets Analysis
===============
Data Flow:
1. Open Secrets Donation Data => Donations Data CSV  
    Donations Data CSV:  
        Name: Name of Politician recieving the donation  
        DonationAmount: Dollar amount of a single donation    
    __Assigned: Zach__  
2. Donations Data CSV => Politician Donation Profile CSV  
    Politician Donation Profile CSV:  
        Name: Name of politician  
        PercentFromGroup0: Percent of donations from first bin  
        PercentageFromGroup1: Percent of donations from second bin  
        PercentFromGroupN: Percent of donations from Nth bin  
    __Assigned: Nick__  
3. GovTrack Voting Data => Voting Record CSV  
    Voting Record CSV  
        BillID: Unique ID for a piece of legislation
        Name: Name of politician voting  
        Party: Party affiliation (R, D I)  
        Vote: Affirmative or negative (0, 1)  
    __Assigned: Stone__  
4. Politician Donation Profile CSV => Politician Cluster CSV  
    Name: Name of politician  
    ClusterID: ID representing cluster politician belongs too  
    __Assigned: Denizhan__  
5. Politician Cluster CSV + Voting Record CSV => Statistical Report  
    __Assigned: William__  

