# Call Center SQL Project

## Overview
This project demonstrates a lightweight analytical workflow on the **Call Center** dataset using SQLite. It includes:
- Schema definition (`schema.sql`)
- Data import script (`load_data.sql`)
- A collection of reusable query files under `queries/`
- A concise **final report** (`final_report.md`) summarising key insights.

## Prerequisites
- Windows 10/11 with PowerShell
- SQLite3 command‑line tool (download from https://sqlite.org/download.html and ensure `sqlite3.exe` is on your `PATH`).

## Setup & Execution
1. Open a PowerShell prompt and navigate to the project folder:
   ```powershell
   cd "g:/SQL PROJECT/call_center_project"
   ```
2. Create the SQLite database and load the CSV:
   ```powershell
   sqlite3 call_center.db "< schema.sql"
   sqlite3 call_center.db "< load_data.sql"
   ```
3. Run any query from the `queries/` directory, for example the sentiment distribution:
   ```powershell
   sqlite3 -header -csv call_center.db "SELECT sentiment, COUNT(*) AS calls_count FROM call_center GROUP BY sentiment ORDER BY calls_count DESC;"
   ```
   Or use the provided query files:
   ```powershell
   sqlite3 -header -csv call_center.db "< queries/sentiment_distribution.sql"
   ```
4. Open `final_report.md` (located in the artifact folder) for a ready‑made summary of the analytical results.

## Included Queries
| File | Description |
|------|-------------|
| `summary.sql` | Overall totals and averages |
| `sentiment_distribution.sql` | Call counts per sentiment |
| `agent_performance.sql` | Calls, average CSAT, avg duration per `call_center` |
| `peak_months.sql` | Calls per month (all records are Oct 2020) |
| `abandoned_calls.sql` | Calls with low CSAT (≤2) or response time `Above SLA` |
| `reason_distribution.sql` | Call counts per reason |

## End‑to‑End Process
1. **Data Ingestion** – Imported `Call Center.csv` into a SQLite table using `load_data.sql`.
2. **Schema Definition** – Created a normalized `call_center` table (`schema.sql`).
3. **Analytical Queries** – Developed a suite of SQL scripts covering summary statistics, sentiment analysis, agent performance, monthly volume, reason distribution, and SLA breach detection.
4. **Reporting** – Consolidated results and insights into `final_report.md` for easy stakeholder consumption.
5. **Version Control** – All files tracked in a Git repository and pushed to GitHub.

## Key Insights Observed
- **Sentiment Distribution:** Majority of calls are negative or neutral, with only ~5 % very positive.
- **Reason Distribution:** Over 70 % of calls are billing‑related, followed by payments and service outages.
- **Agent Performance:** The top three call centers (Los Angeles/CA, Baltimore/MD, Chicago/IL) have low average CSAT (~2) and long average call durations (~25 min), indicating potential service quality issues.
- **SLA Breaches:** 5,192 calls (≈ 16 % of total) were flagged as `Above SLA` or had CSAT ≤ 2, highlighting a significant area for improvement.
- **Temporal Scope:** All data is from October 2020; trends over time cannot be assessed without additional periods.

## Recommendations
- Prioritize improving CSAT for the high‑volume centers (Los Angeles, Baltimore, Chicago) through targeted training and process enhancements.
- Automate billing FAQs or self‑service options to reduce the large volume of billing‑related inquiries.
- Investigate root causes of SLA breaches and implement faster response mechanisms.
- Acquire data for additional months to enable trend analysis.

## License
Feel free to adapt this project for your own analysis. No external dependencies beyond SQLite.