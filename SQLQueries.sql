-- Healthcare Claims Analysis SQL Queries
-- Sample queries demonstrating claims validation, denial trends, and KPI reporting

-- 1. Total number of claims submitted
SELECT COUNT(*) AS Total_Claims
FROM Claims;

-- 2. Claims approved vs denied
SELECT 
    Status,
    COUNT(*) AS Claim_Count
FROM Claims
GROUP BY Status;

-- 3. Top 5 denial reasons
SELECT 
    DenialReason,
    COUNT(*) AS Denials
FROM Claims
WHERE Status = 'Denied'
GROUP BY DenialReason
ORDER BY Denials DESC
LIMIT 5;

-- 4. Average claim processing time (in days)
SELECT 
    AVG(DATEDIFF(PaymentDate, SubmissionDate)) AS Avg_Processing_Time
FROM Claims
WHERE Status = 'Approved';

-- 5. Monthly claim trends (submissions per month)
SELECT 
    DATE_FORMAT(SubmissionDate, '%Y-%m') AS Month,
    COUNT(*) AS Claims_Submitted
FROM Claims
GROUP BY Month
ORDER BY Month;
