-- 1. Total claims by status
SELECT ClaimStatus, COUNT(*) AS TotalClaims
FROM Claims
GROUP BY ClaimStatus;

-- 2. Denied claims with reasons
SELECT DenialReason, COUNT(*) AS DeniedCount
FROM Claims
WHERE ClaimStatus = 'Denied'
GROUP BY DenialReason;

-- 3. Average processing time
SELECT AVG(DATEDIFF(day, SubmissionDate, ResolutionDate)) AS AvgCycleTime
FROM Claims;

-- 4. Total claim amount by provider
SELECT ProviderName, SUM(ClaimAmount) AS TotalClaimAmount
FROM Claims
GROUP BY ProviderName;
