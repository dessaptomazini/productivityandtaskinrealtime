![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Automate](https://img.shields.io/badge/Power_Automate-3A96DD?style=for-the-badge&logo=power-automate&logoColor=white)
![Microsoft Lists](https://img.shields.io/badge/Microsoft_Lists-57A4FF?style=for-the-badge&logo=microsoft-lists&logoColor=white)
![SharePoint](https://img.shields.io/badge/SharePoint-0078D4?style=for-the-badge&logo=microsoft-sharepoint&logoColor=white)

⚡ Real-Time Productivity & Deadline Monitoring System

📌 Overview

This project was designed to resolve the lack of visibility regarding the legal team's productivity and operational deadline control. I engineered an integrated ecosystem using Microsoft Lists, Power Automate, and Power BI to create a "live" management tool.

The system does not merely visualize data; it actively participates in the workflow, automatically capturing task start and end times to generate precise efficiency metrics.

🎯 Challenges Faced

Operational "Black Box": Managers lacked real-time insight into how long tasks took to execute or the actual workload of each lawyer.

Manual Deadline Tracking: High risk of missed deadlines due to the absence of centralized alerts and visibility.

Lack of Performance Metrics: Impossibility of measuring Service Level Agreements (SLAs) or individual efficiency.

🛠️ Technical Solution Implemented: The "Productivity Triangle"

1. Operational Backend (Microsoft Lists + Planner)

Structured a SharePoint List acting as a centralized database for demand management.
Integrated with Microsoft Planner for visual task distribution to the team (Kanban style).

2. Process Automation (Power Automate) 

I developed two critical RPA (Robotic Process Automation) flows to ensure data accuracy without manual effort:

"Execution Start" Flow: Triggered when a task moves to "In Progress". The system automatically records the start Timestamp.

"Completion" Flow: Triggered upon task finalization. The system records the end Timestamp and calculates preliminary duration, ensuring the metric reflects actual working time, not just the delivery date.

Auto-Status Updates: Automatically moves tasks through the funnel: Inbox -> In Progress -> Completed/Filed.

Automated Alerts & Reminders:

For the Team: Notifications for open deadlines and tasks due today.

For Controllers & Coordinators: Critical alerts for unfinished tasks on the due date at 3:00 PM and 5:00 PM.

3. Data Intelligence (Power BI)

Direct Connection: Linked to SharePoint Lists (SharePoint.Tables) for real-time data ingestion.

Data Engineering (ETL): Expansion and cleaning of complex SharePoint records (users, dates, metadata); type conversion for precise date/time calculations.

🚀 Results & Business Impact

Implementing this productivity ecosystem transformed departmental management, enabling a shift from reactive control (based on "firefighting") to proactive data-driven management.

Key Decisions Enabled by Dashboards:

⚖️ Workload Balancing:

Before: Task distribution was based on intuition, causing burnout for some and idleness for others.

Now: The dashboard shows "Deadline Qty per Owner" in real-time. Managers can instantly reallocate demands to balance the team.

🛡️ Risk Mitigation (Deadline Compliance):

Before: Reliance on manual controls and memory for critical due dates.

Now: The "Deadlines Due in Next 7 Days" visual and automated alerts ensure no critical demand is overlooked, drastically reducing legal and financial risk.

⏱️ Process Optimization (Efficiency):

Before: Unknown duration for drafting defenses or protocols.

Now: With the "Average Execution Time" indicator, we identified that certain demands took 40% longer than predicted. This drove the creation of new templates and specific training, boosting overall productivity.

📈 Data-Based Performance Review:

Before: Subjective evaluations.

Now: Clear metrics on "% Deadline Compliance" and delivery volume per lawyer allow for objective feedback and recognition of high performers.

Quantitative Gains:

100% reduction in the use of parallel manual spreadsheets.

Real-Time Visibility of the status of all departmental demands.

Elimination of missed deadlines due to monitoring failures.
