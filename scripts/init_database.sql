/*
CREATE DATABASE AND SCHEMA

SCRIPT PURPOSE: 
	This creates the database "Datawarehouse" where it 
	checks first if it exists. And if it does, it is dropped and 
	recreated. It also adds the three schema bronze, silver and gold.


WARNING: 
	Running this script will drop the existing table "Datawarehouse"
	so better be careful.
*/

-- 
USE MASTER;
GO

-- Drop and create the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = "DataWarehouse")
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create the Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
