# User Stories  

**Epic**: Healthcare Claims Analysis Dashboard  

---

## Story 1: Claims Status Overview  
- As a **Claims Manager**, I want to view total claims by status (Approved, Denied, Pending) so that I can monitor overall claim processing performance.  

**Acceptance Criteria**  
- Dashboard displays counts for each claim status.  
- Counts match the SQL query outputs.  
- Data refreshes daily at 6 AM.  

---

## Story 2: Denial Reason Analysis  
- As a **Business Analyst**, I want to filter claims by denial reason so that I can identify the most common causes of rejection.  

**Acceptance Criteria**  
- User can filter claims by denial reason.  
- Dashboard updates dynamically when a filter is applied.  
- Top 5 denial reasons are displayed in a bar chart.  

---

## Story 3: Provider & Regional Insights  
- As a **Finance Analyst**, I want to compare claim trends across providers and regions so that I can detect high-cost or high-denial areas.  

**Acceptance Criteria**  
- Dashboard includes filters for provider and region.  
- Trends can be displayed as line or bar charts.  
- Claims volume and denial rates are visible for each provider.  

---

## Story 4: Processing Time Monitoring  
- As a **Compliance Officer**, I want to track the average processing time for claims so that I can ensure compliance with service-level agreements (SLAs).  

**Acceptance Criteria**  
- Dashboard shows average processing time in days.  
- SLA threshold (10 days) is highlighted when exceeded.  
- Data can be exported for audit purposes.  

---

## Story 5: Export & Reporting  
- As a **Claims Manager**, I want to export claims reports to Excel/PDF so that I can share them with leadership and auditors.  

**Acceptance Criteria**  
- Export option is available on the dashboard.  
- Exported file matches the displayed dashboard view.  
- Export works for both full dataset and filtered views.  
