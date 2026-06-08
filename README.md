 🏦 ApexPay — P2P Banking & Automated Transaction Schema

A pro-level, self-auditing relational database system designed in MySQL. This project simulates a fully functional Peer-to-Peer (P2P) financial ecosystem, complete with automated auditing, data integrity constraints, and optimized query routing.

⚡ Core Features Engineered:
Data Integrity: Implemented cascading deletes (`ON DELETE CASCADE`) and precision data modeling (`DECIMAL`) to ensure zero rounding errors with financial balances.
Database Automation (Triggers):Built an autonomous compliance trigger (`auditor`) that intercepts data updates and flags high-value security risks (>150k) instantly into a dedicated forensic log table.
Encapsulation (Stored Procedures):Developed `sp_execute_transfer` to abstract complex payment routing away from the application layer.
Advanced Analytics:Implemented relational joins, self-joins for tracking transactions, nested subqueries for calculating ecosystem averages, and specialized views (`Heavy_lifters`) for platform data tracking.
