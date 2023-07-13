USE AdventureWorks;
GO

CREATE ROLE HRUsers;
ALTER ROLE HRUsers ADD MEMBER superman;
GO


GRANT DELETE ON SCHEMA::HumanResources TO HRUsers;
GRANT INSERT ON SCHEMA::HumanResources TO HRUsers;
GRANT SELECT ON SCHEMA::HumanResources TO HRUsers;
GRANT UPDATE ON SCHEMA::HumanResources TO HRUsers;
GO

GRANT EXECUTE ON SCHEMA::HumanResources TO HRUsers;
GO

DENY DELETE ON OBJECT::HumanResources.EmployeePayHistory TO superman;
DENY INSERT ON OBJECT::HumanResources.EmployeePayHistory TO superman;
DENY SELECT ON OBJECT::HumanResources.EmployeePayHistory TO superman;
DENY UPDATE ON OBJECT::HumanResources.EmployeePayHistory TO superman;
GO

DENY EXECUTE ON OBJECT::HumanResources.uspUpdateEmployeeHireInfo TO superman;
GO
