DROP DATABASE IF EXISTS ApexPay;
CREATE DATABASE ApexPay;
Use ApexPay;
CREATE TABLE users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(200) UNIQUE NOT NULL,
    phone_number VARCHAR(200),
    created_at DATETIME DEFAULT NOW()
);
CREATE TABLE accounts(
	account_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    account_type ENUM('checking','saving','buisness wallet'),
    balance DECIMAL(15,2),
    FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE CASCADE
);
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_account_id INT,
    reciever_account_id INT,
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY(sender_account_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
    FOREIGN KEY(reciever_account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);
ALTER TABLE users ADD COLUMN profile_status ENUM('Active','Inactive');
-- USERS
INSERT INTO users(first_name,last_name,email,phone_number,profile_status) VALUES
('Ali','Khan','ali.khan1@gmail.com','03001234567','Active'),
('Ahmed','Raza','ahmed.raza@gmail.com','03011234567','Active'),
('Sara','Iqbal','sara.iqbal@gmail.com','03021234567','Active'),
('Ayesha','Malik','ayesha.malik@gmail.com','03031234567','Inactive'),
('Usman','Sheikh','usman.sheikh@gmail.com','03041234567','Active'),
('Fatima','Noor','fatima.noor@gmail.com','03051234567','Active'),
('Hassan','Ali','hassan.ali@gmail.com','03061234567','Active'),
('Zain','Ahmed','zain.ahmed@gmail.com','03071234567','Inactive'),
('Mariam','Khan','mariam.khan@gmail.com','03081234567','Active'),
('Bilal','Rashid','bilal.rashid@gmail.com','03091234567','Active'),
('Hira','Aslam','hira.aslam@gmail.com','03101234567','Active'),
('Taha','Javed','taha.javed@gmail.com','03111234567','Active'),
('Noor','Akhtar','noor.akhtar@gmail.com','03121234567','Inactive'),
('Hamza','Farooq','hamza.farooq@gmail.com','03131234567','Active'),
('Laiba','Qureshi','laiba.qureshi@gmail.com','03141234567','Active'),
('Saad','Khalid','saad.khalid@gmail.com','03151234567','Active'),
('Anaya','Zafar','anaya.zafar@gmail.com','03161234567','Active'),
('Daniyal','Hussain','daniyal.hussain@gmail.com','03171234567','Inactive'),
('Mahnoor','Tariq','mahnoor.tariq@gmail.com','03181234567','Active'),
('Shayan','Iqbal','shayan.iqbal@gmail.com','03191234567','Active'),
('Areeba','Rauf','areeba.rauf@gmail.com','03201234567','Active'),
('Muneeb','Shah','muneeb.shah@gmail.com','03211234567','Active'),
('Iqra','Siddiqui','iqra.siddiqui@gmail.com','03221234567','Inactive'),
('Huzaifa','Yousaf','huzaifa.yousaf@gmail.com','03231234567','Active'),
('Rabia','Naeem','rabia.naeem@gmail.com','03241234567','Active'),
('Talha','Butt','talha.butt@gmail.com','03251234567','Active'),
('Mehak','Arif','mehak.arif@gmail.com','03261234567','Active'),
('Umer','Latif','umer.latif@gmail.com','03271234567','Inactive'),
('Komal','Saleem','komal.saleem@gmail.com','03281234567','Active'),
('Fahad','Aziz','fahad.aziz@gmail.com','03291234567','Active');

-- ACCOUNTS
INSERT INTO accounts(user_id,account_type,balance) VALUES
(1,'checking',25000.00),
(2,'saving',40000.00),
(3,'checking',15000.00),
(4,'saving',50000.00),
(5,'buisness wallet',120000.00),
(6,'checking',18000.00),
(7,'saving',65000.00),
(8,'checking',22000.00),
(9,'saving',33000.00),
(10,'checking',27000.00),
(11,'saving',45000.00),
(12,'checking',12000.00),
(13,'saving',70000.00),
(14,'buisness wallet',150000.00),
(15,'checking',21000.00),
(16,'saving',39000.00),
(17,'checking',31000.00),
(18,'saving',47000.00),
(19,'checking',19000.00),
(20,'saving',53000.00),
(21,'checking',26000.00),
(22,'saving',68000.00),
(23,'checking',17000.00),
(24,'saving',72000.00),
(25,'checking',23000.00),
(26,'buisness wallet',200000.00),
(27,'checking',14000.00),
(28,'saving',58000.00),
(29,'checking',29000.00),
(30,'saving',80000.00);

-- TRANSACTIONS
INSERT INTO transactions(sender_account_id,reciever_account_id,amount,transaction_date) VALUES
(1,2,500.00,'2026-01-01'),
(2,3,1000.00,'2026-01-02'),
(3,4,1500.00,'2026-01-03'),
(4,5,2000.00,'2026-01-04'),
(5,6,2500.00,'2026-01-05'),
(6,7,3000.00,'2026-01-06'),
(7,8,3500.00,'2026-01-07'),
(8,9,4000.00,'2026-01-08'),
(9,10,4500.00,'2026-01-09'),
(10,11,5000.00,'2026-01-10'),
(11,12,5500.00,'2026-01-11'),
(12,13,6000.00,'2026-01-12'),
(13,14,6500.00,'2026-01-13'),
(14,15,7000.00,'2026-01-14'),
(15,16,7500.00,'2026-01-15'),
(16,17,8000.00,'2026-01-16'),
(17,18,8500.00,'2026-01-17'),
(18,19,9000.00,'2026-01-18'),
(19,20,9500.00,'2026-01-19'),
(20,21,10000.00,'2026-01-20'),
(21,22,10500.00,'2026-01-21'),
(22,23,11000.00,'2026-01-22'),
(23,24,11500.00,'2026-01-23'),
(24,25,12000.00,'2026-01-24'),
(25,26,12500.00,'2026-01-25'),
(26,27,13000.00,'2026-01-26'),
(27,28,13500.00,'2026-01-27'),
(28,29,14000.00,'2026-01-28'),
(29,30,14500.00,'2026-01-29'),
(30,1,15000.00,'2026-01-30');

SELECT * FROM users WHERE profile_status = 'Inactive';
SELECT * FROM accounts WHERE balance >= 10000.00;
SELECT * FROM transactions WHERE amount<50.00;
SELECT * FROM accounts WHERE account_type = 'buisness wallet';
UPDATE users SET profile_status='Active' where user_id =4;
UPDATE accounts SET balance = balance -5000.00 where account_id = 5;
DELETE FROM users WHERE user_id = 18;
SELECT CONCAT(first_name,last_name) AS FullName from users;
SELECT MONTHNAME(created_at) AS month from users; 
SELECT users.first_name,accounts.account_type,accounts.balance
from users inner join accounts on users.user_id = accounts.user_id;
CREATE VIEW Heavy_lifters AS
SELECT SUM(amount) as total_sent,sender_account_id FROM transactions
GROUP BY sender_account_id
HAVING SUM(amount)>=10000.00;
SELECT sender_account_id FROM transactions
UNION 
SELECT reciever_account_id FROM transactions;
SELECT account_id ,balance FROM accounts 
where balance>(
	SELECT AVG(balance) as Average_balance FROM accounts
);
CREATE VIEW v_public_profiles AS
SELECT user_id,CONCAT(first_name,' ',last_name) AS FullName FROM users;
CREATE INDEX trans_idx ON transactions(transaction_date);
DELIMITER $$
CREATE PROCEDURE sp_execute_transfer(
	IN sender_id INT,
    IN reciever_id INT,
    IN transfer_amount DECIMAL(10,2)
)
BEGIN 
	INSERT INTO transactions(sender_account_id,reciever_account_id,amount,transaction_date) 
    VALUES(sender_id,reciever_id,transfer_amount,CURDATE());
END $$
DELIMITER ;
CREATE TABLE log(
	log_id INT PRIMARY KEY auto_increment,
    account_id INT,
    old_balance DECIMAL(15,2),
    new_balance DECIMAL(15,2),
    alert TEXT,
    log_at_time DATETIME DEFAULT NOW()
);
DELIMITER $$
CREATE TRIGGER auditor
AFTER UPDATE ON accounts
FOR EACH ROW
BEGIN
	IF NEW.balance>150000.00 then insert into log(account_id,old_balance,new_balance,alert)
    values(NEW.account_id,OLD.balance,NEW.balance,'You try to exceed the value');
    END IF;
END $$
DELIMITER ;
CALL sp_execute_transfer(14, 26, 25000.00);
UPDATE accounts SET balance = 185000.00 WHERE account_id = 5;
SELECT * FROM log;
