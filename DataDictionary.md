# Data Dictionary – Healthcare Claims Dataset  

This data dictionary defines the key fields used in the **Claims** dataset for analysis and dashboard reporting. It provides technical details (data type, length) and business meaning to ensure consistent understanding across stakeholders.  

---

## Table: Claims  

| Field Name      | Data Type   | Length | Description                                                | Example         | Notes                                  |
|-----------------|-------------|--------|------------------------------------------------------------|-----------------|----------------------------------------|
| ClaimID         | VARCHAR     | 10     | Unique identifier for each claim record                    | CLM0001234      | Primary Key, cannot be null            |
| MemberID        | VARCHAR     | 10     | Unique identifier for insured member                       | MEM0098765      | Foreign Key linked to Member table     |
| ProviderName    | VARCHAR     | 100    | Name of the hospital/clinic submitting the claim           | ABC Hospital    | Standardized from provider master list |
| ClaimStatus     | VARCHAR     | 20     | Current status of the claim (Approved, Denied, Pending)    | Approved        | Controlled values only                 |
| DenialReason    | VARCHAR     | 50     | Reason code for denied claims                              | Invalid Coding  | Null if claim is approved              |
| ClaimAmount     | DECIMAL     | 12,2   | Total billed amount for the claim                          | 1250.75         | In USD                                 |
| SubmissionDate  | DATE        | -      | Date the claim was submitted                               | 2025-01-10      | Must be <= ResolutionDate              |
| ResolutionDate  | DATE        | -      | Date the claim was processed (approved/denied)             | 2025-01-20      | Null if claim still pending            |
| PaymentDate     | DATE        | -      | Date payment was issued (if approved)                      | 2025-01-25      | Required if status = Approved          |
| Region          | VARCHAR     | 50     | Geographic region of the provider                          | Midwest         | Useful for regional trend analysis     |
| PlanType        | VARCHAR     | 30     | Insurance plan type associated with the claim              | PPO             | Standardized from plan master list     |

---

## Notes
- **DenialReason** is only applicable when ClaimStatus = "Denied".  
- **ResolutionDate** must be greater than or equal to SubmissionDate.  
- **PaymentDate** is mandatory only for Approved claims.  
- Data is refreshed **daily at 6 AM** for dashboards.  
