--Using the Payroll Database

Use PAYROLL_MANAGEMENT

-- Set the path where you want to save the CSV file
DECLARE @FilePath NVARCHAR(255)
SET @FilePath = 'C:\Users\user\Desktop\Salary.csv'

-- Set the table name
DECLARE @TableName NVARCHAR(255)
SET @TableName = 'Salary'

-- Build the BULK INSERT query
DECLARE @SqlQuery NVARCHAR(MAX)
SET @SqlQuery = 'BULK INSERT ' + @TableName + ' FROM ''' + @FilePath + ''' WITH (FORMAT=''CSV'')'

-- Execute the BULK INSERT query to export the data to the CSV file
EXEC (@SqlQuery)
