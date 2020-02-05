-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
-- select p.ProductName, c.CategoryName 
-- from category as c
-- join product as p
-- on c.id = p.categoryid

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- select [order].id, shipper.companyname, [order].OrderDate
-- from [order]
-- join shipper 
-- on [order].shipvia = shipper.id
-- where [order].orderdate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
-- select od.orderid, od.quantity, p.productname
-- from orderdetail as od
-- join product as p
-- on od.productid = p.id
-- where od.orderid = '10251'
-- order by p.productname

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
-- select [order].ID, c.CompanyName as CustomerName, e.LastName
-- from [order]
-- join customer as c
-- on ([order].customerid = c.id)
-- join employee as e 
-- on ([order].employeeid = e.id)
