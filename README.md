# FDAC_Final_Project
Open Secrets Analysis
===============
Data Flow:
1. Open Secrets Donation Data => Donations Data CSV  
    Donations Data CSV:  
        Name,DonationAmount  
2. Donations Data CSV => Politician Donation Profile CSV  
    Politician Donation Profile CSV:  
        Name,PercentFromGroup0,PercentageFromGroup1,...,PercentFromGroupN  
3. GovTrack Voting Data => Voting Record CSV  
    Voting Record CSV  
        BillID,Name,Party,Vote  
4. Politician Donation Profile CSV => Politician Cluster CSV  
    Name,ClusterID  
5. Politician Cluster CSV + Voting Record CSV => Statistical Report  

