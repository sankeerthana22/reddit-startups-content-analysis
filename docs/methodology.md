# Methodology

## Objective
Analyze Reddit engagement patterns across startup, data, and technology communities to support content strategy decisions.

## Workflow
1. Clean raw Reddit data
2. Remove duplicates and invalid records where applicable
3. Convert timestamps and engineer time-based features
4. Create title-length and engagement-related features
5. Generate summary tables for analysis
6. Query and visualize results using SQL and Power BI

## Engagement Metric
**Engagement Score = Upvotes + (2 × Number of Comments)**

### Rationale
Comments represent deeper interaction than upvotes, so they were weighted more heavily in the metric.

## Key Assumptions
- Comments are a stronger signal of engagement than upvotes
- Posting-time trends are interpreted directionally
- Summary tables are sufficient for descriptive analytics

## Limitations
- Observational data does not support causal claims
- Viral outliers may influence averages
- Timezone effects are not fully controlled
- Sensitivity testing on alternative engagement weights was not performed
- Statistical significance testing was not performed on the published aggregated outputs
