/*
GENERAR UNA CONSULTA QUE MUESTRE LOS SIGUIENTES CAMPOS
Tabla Customers: CompanyName
Tabla Orders: OrderId y OrderDate
Tabla Products: ProductName
Tabla Categories: CategoryName
Tabla Suppliers: CompanyName
Tabla [Orders Details]: Quantity y UnitPrice
Tabla Employees: LastName
*/
use Northwind
go
select	c.CompanyName,o.OrderID,o.OrderDate, p.ProductName, ca.CategoryName,
		s.CompanyName, od.UnitPrice,od.Quantity, e.LastName

from Orders o

inner Join [Order Details] od On od.OrderID = od.OrderID
inner join Products p on p.ProductID = od.ProductID
inner join Customers c on c.CustomerID = o.CustomerID
inner join Categories ca on ca.CategoryID = p.CategoryID
INNER JOIN Suppliers s on s.SupplierID = p.SupplierID
INNER JOIN Employees e ON e.EmployeeID = o.EmployeeID
go
