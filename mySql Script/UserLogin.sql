use PaymentGatewayIntegration;
create Table IF NOT EXISTS UserLogin(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Firstname VARCHAR(30) NOT NULL,
Lastname VARCHAR(30) NOT NULL,
Local_Address VARCHAR(500),
Country VARCHAR(30),
State VARCHAR(50),
District VARCHAR(50),
City VARCHAR(50),
Pincode VARCHAR(6),
Govt_ID_Name VARCHAR(100),
Govt_ID_Number VARCHAR(50),
Govt_ID_Name1 VARCHAR(100),
Govt_ID_Number1 VARCHAR(50),
Govt_ID_Name2 VARCHAR(100),
Govt_ID_Number2 VARCHAR(50),
Registered_email VARCHAR(50) NOT NULL,
Registered_Mobile INT(10) NOT NULL,
Alternate_email VARCHAR(50),
Alternate_Mobile INT(10),
OTP INT(6) UNIQUE,
User_Status VARCHAR(1),
Registration_Date TIMESTAMP
);
select * from UserLogin;