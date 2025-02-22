use master;
go

-- Drop and recreate the 'DataWarehouse' database
if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
end;
go


-- Create Database 'DataWarehouse'

create database DataWarehouse;
go

use DataWarehouse;
go

-- Create Schemas
create schema bronze;
go
create schema silver;
go
create schema gold;
go





