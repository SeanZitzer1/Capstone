CREATE TABLE dbo.ProgrammingLang(
	PersonID VARCHAR(25) PRIMARY KEY,
	FName NVARCHAR(50),
	LName NVARCHAR(50),
	Created DATETIME
);

INSERT INTO dbo.ProgrammingLang
(	
	PersonID,
	FName,
	LName,
	Created
)
VALUES
(
	'E046645',
	'Zitzer',
	'Sean',
	GETDATE()
);

SELECT * FROM dbo.ProgrammingLang

SELECT * FROM dbo.ProgrammingLang p 
JOIN dbo.Employees e ON e.EmployeeID = p.PersonID
WHERE e.EmployeeID = 'E046645'
