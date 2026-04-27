# db-schema-main (data-sql-01)

## Description
Source of truth for the system's relational data. Manages users, technical metadata, and file pointers.

## Stack
- **Engine:** MySQL 8.0
- **Migrations:** Liquibase / Raw SQL

## Structure
- `/migrations`: Incremental SQL scripts for table structures.
- `/backups`: Automated export configurations.

## Database Tuning
- **Buffer Pool Size:** Optimized for 0.6 GB - 2 GB RAM instances.
- **Port:** 3306 (Internal access only).
