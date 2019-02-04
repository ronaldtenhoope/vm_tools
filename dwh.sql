drop table DimCustomer;
Create table DimCustomer
(
CustomerID int,
CustomerAltID varchar(10) not null,
CustomerName varchar(50),
Gender varchar(20)
);


Insert into DimCustomer(CustomerID,CustomerAltID,CustomerName,Gender)values (1,'IMI-001','Henry Ford','M');
Insert into DimCustomer(CustomerID,CustomerAltID,CustomerName,Gender)values (2,'IMI-002','Bill Gates','M');
Insert into DimCustomer(CustomerID,CustomerAltID,CustomerName,Gender)values (3,'IMI-003','Muskan Shaikh','F');
Insert into DimCustomer(CustomerID,CustomerAltID,CustomerName,Gender)values (4,'IMI-004','Richard Thrubin','M');
Insert into DimCustomer(CustomerId,CustomerAltID,CustomerName,Gender)values (5,'IMI-005','Emma Wattson','F');

drop table DimProduct;
Create table DimProduct
(
ProductKey int,
ProductAltKey varchar(10)not null,
ProductName varchar(100),
ProductActualCost number(12,2),
ProductSalesCost number(12,2)
);

Insert into DimProduct(ProductKey,ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values (1,'ITM-001','Wheat Floor 1kg',5.50,6.50);
Insert into DimProduct(ProductKey,ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values (2,'ITM-002','Rice Grains 1kg',22.50,24);
Insert into DimProduct(ProductKey,ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values (3,'ITM-003','SunFlower Oil 1 ltr',42,43.5);
Insert into DimProduct(ProductKey,ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values (4,'ITM-004','Nirma Soap',18,20);
Insert into DimProduct(ProductKey,ProductAltKey,ProductName, ProductActualCost, ProductSalesCost)values (5,'ITM-005','Arial Washing Powder 1kg',135,139);

drop table DimStores;
Create table DimStores
(
StoreID int,
StoreAltID varchar(10)not null,
StoreName varchar(100),
StoreLocation varchar(100),
City varchar(100),
State varchar(100),
Country varchar(100)
);

Insert into DimStores(StoreID,StoreAltID,StoreName,StoreLocation,City,State,Country )values (1,'LOC-A1','X-Mart','S.P. RingRoad','Ahmedabad','Guj','India');
Insert into DimStores(StoreID,StoreAltID,StoreName,StoreLocation,City,State,Country )values (2,'LOC-A2','X-Mart','Maninagar','Ahmedabad','Guj','India');
Insert into DimStores(StoreID,StoreAltID,StoreName,StoreLocation,City,State,Country )values (3,'LOC-A3','X-Mart','Sivranjani','Ahmedabad','Guj','India');

drop table DimSalesPerson;
Create table DimSalesPerson
(
SalesPersonID int ,
SalesPersonAltID varchar(10)not null,
SalesPersonName varchar(100),
StoreID int,
City varchar(100),
State varchar(100),
Country varchar(100)
);

Insert into DimSalesPerson(SalesPersonID,SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values (1,'SP-DMSPR1','Ashish',1,'Ahmedabad','Guj','India');
Insert into DimSalesPerson(SalesPersonID,SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values (2,'SP-DMSPR2','Ketan',1,'Ahmedabad','Guj','India');
Insert into DimSalesPerson(SalesPersonID,SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values (3,'SP-DMNGR1','Srinivas',2,'Ahmedabad','Guj','India');
Insert into DimSalesPerson(SalesPersonID,SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values (4,'SP-DMNGR2','Saad',2,'Ahmedabad','Guj','India');
Insert into DimSalesPerson(SalesPersonID,SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values (5,'SP-DMSVR1','Jasmin',3,'Ahmedabad','Guj','India');
Insert into DimSalesPerson(SalesPersonID,SalesPersonAltID,SalesPersonName,StoreID,City,State,Country )values (6,'SP-DMSVR2','Jacob',3,'Ahmedabad','Guj','India');

drop Table FactProductSales;
Create Table FactProductSales
(
TransactionId int ,
SalesInvoiceNumber int not null,
SalesDateKey int,
SalesTimeKey int,
SalesTimeAltKey int,
StoreID int not null,
CustomerID int not null,
ProductID int not null,
SalesPersonID int not null,
Quantity float,
SalesTotalCost number(12,2),
ProductActualCost number(12,2),
Deviation float
);

commit;

exit;

