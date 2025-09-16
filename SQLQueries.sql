-- ============================================================
-- Healthcare Claims Analysis - SQL Queries
-- Author: Rishitha Kosuri
-- Date: September 2025
-- Purpose: Support claims optimization by identifying key KPIs
-- ============================================================


-- 1. Total claims submitted
-- Business Use: Provides total claim volume for reporting period
SELECT COUNT(*) AS Total_Claims
FROM Claims;


-- 2. Claims by status (Approved, Denied, Pending)
-- Business Use: Helps managers monitor approval ratios and backlog
SELECT 
    Status,
    COUNT(*) AS Claim_Count
FROM Claims
GROUP BY Status
ORDER BY Claim_Count DESC;


-- 3. Top 5 denial reasons
-- Business Use: Identifies most common causes of denial for process improvements
SELECT 
    DenialReason,
    COUNT(*) AS Denied_Count
FROM Claims
WHERE Status = 'Denied'
GROUP BY DenialReason
ORDER BY Denied_Count DESC
LIMIT 5;


-- 4. Average claim processing time (in days)
-- Business Use: Monitors efficiency of adjudication, tied to SLA compliance
SELECT 
    AVG(DATEDIFF(DAY, SubmissionDate, ResolutionDate)) AS Avg_Processing_Days
FROM Claims
WHERE Status IN ('Approved', 'Denied');


-- 5. Monthly claim trends
-- Business Use: Shows seasonality and volume trends to support resource planning
SELECT 
    FORMAT(SubmissionDate, 'yyyy-MM') AS Month,
    COUNT(*) AS Claims_Submitted
FROM Claims
GROUP BY FORMAT(SubmissionDate, 'yyyy-MM')
ORDER BY Month;


-- 6. High-value denied claims
-- Business Use: Prioritizes financial impact of denials
SELECT 
    ClaimID,
    ProviderName,
    ClaimAmount,
    DenialReason
FROM Claims
WHERE Status = 'Denied'
ORDER BY ClaimAmount DESC
LIMIT 10;


-- 7. Provider performance - approval vs d
