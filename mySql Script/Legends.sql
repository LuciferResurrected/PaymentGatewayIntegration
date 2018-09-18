use Paymentgatewayintegration;

create Table IF NOT EXISTS Legends(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Country VARCHAR(100),
State VARCHAR(100),
District VARCHAR(100),
CITY VARCHAR(100),
Govt_ID_Name VARCHAR(100),
Govt_ID_Name1 VARCHAR(100),
User_Status VARCHAR(1)
);

select * from Legends;