--Creating Table
CREATE TABLE FOR CUSTOMERS

CREATE TABLE Customers(
CustomersID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
PhoneNumber VARCHAR(15),
Address VARCHAR(225),
City VARCHAR(50),
RegistrationDate DATE
);

INSERT INTO Customers(CustomersID,FirstName,LastName,Email,PhoneNumber,Address,City,RegistrationDate)
VALUES('1','Amina','Abubakar','amina.abubakar@examle','0831234567','23 Adeola avenue','Lagos',GETDATE()),
('2','Chinedu','Okafor','chinedu.okafor@example.com','08061234568','14 Unity Road','Abuja',GETDATE()),
('3','Fatima','Yusuf','fatima.yusuf@gmail.com','08171234569','12 Iwo Road','Ibadan',GETDATE());


CREATE TABLE Products(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
CategoryID VARCHAR(50) NOT NULL,
Price DECIMAL(10,2)NOT NULL,
StockQuantity INT NOT NULL
)

INSERT INTO Products(ProductID,ProductName,CategoryID,Price,StockQuantity)
VALUES ('1','Mobile Phone','Electronics',50000.00,25),
('2','Bluetooth Speaker','Electronics',8000.00,100),
('3','Leather Wallet','Accessories',2000.00,50);


CREATE TABLE Orders(
OrderID INT PRIMARY KEY IDENTITY(1,1),
CustomersID INT,
OrderDate DATETIME DEFAULT GETDATE(),
TotalAmount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (CustomersID) REFERENCES Customers(CustomersID)
);

ALTER TABLE Orders
ADD OrderTime TIME;

INSERT INTO Orders(CustomersID,OrderDate,OrderTime,TotalAmount)
VALUES
('1', '2023-11-01', '10:30:00', '52000.00'),
('2', '2023-11-02', '15:45:00', '12000.00'),
('3', '2023-11-03', '09:15:00', '2000.00');


CREATE TABLE OrderDetails(
OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
Quantity INT NOT NULL,
Unitprice DECIMAl(10,2) NOT NULL,
TotalPrice DECIMAL(10,2) NOT NULL
);

INSERT INTO OrderDetails(OrderID,ProductID,Quantity,Unitprice,TotalPrice)
VALUES
(1,1,1,50000.00,50000.00),
(2,2,1,8000.00,8000.00),
(3,3,1,2000.00,2000.00);