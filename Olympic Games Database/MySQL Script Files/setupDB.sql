/* FILE FOR SOURCING AND SETTING UP DATABASE */


-- Creating olympics database
create database olympicsDB_18739376;


-- Switch to newly created olympics database
use olympicsDB_18739376;


-- Enter tables into database
source olympicsDB_tables.sql;


-- Setup triggers, procedures, views and indexes into database
source olympicsDB_triggers_and_procedures.sql;


-- Populate database tables with sample data
source olympicsDB_values.sql;


-- Check data consistency and integrity across tables
source checkDB_consistencies.sql;


-- Run a set of queries on database
source olympicsDB_queries.sql;



