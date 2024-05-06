UPDATE dbo.ProgrammingLang
SET FName = 'Michael' WHERE PersonID = 'E046645'

DELETE FROM dbo.ProgrammingLang
WHERE PersonID = 'E046645'

DROP TABLE dbo.ProgrammingLang

CREATE PROCEDURE SPX_CAPSTONE_EXAMPLE
AS 

SELECT (
	e.EmployeeID AS EmpID,
	RTRIM(e.FName + ' ' + e.LName) AS Name,
	FORMAT(e.Created, 'MM-dd-yyyy') AS CreatedOn,
	FORMAT(b.Hdt, 'MM-dd-yyyy') AS HireDate
)
FROM dbo.Employees e 
JOIN dbo.bplus b ON b.ID = e.EmployeeID
WHERE b.ID = e.EmployeeID
AND b.[status] = 'A'

