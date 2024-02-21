CREATE DATABASE IF NOT EXISTS customer;
USE customer;

CREATE TABLE IF NOT EXISTS consumer(
id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
mode VARCHAR(15) NOT NULL,
city VARCHAR(20) NOT NULL
);

INSERT INTO consumer
(id,name,mode,city)
VALUES
(101,"Jit","UPI","Kota"),
(102,"Ipsita","CreditCard","Kolkata"),
(103,"Srabanti","CreditCard","Kakora"),
(104,"Prabir","NetBanking","Panagarh"),
(105,"Maharshi","DebitCard","Durgapur"),
(106,"Hiranmay","NetBanking","Bardhaman"),
(107,"Sonali","DebitCard","Howrah"),
(108,"Haimanti","DebitCard","Vedia"),
(109,"Kuheli","UPI","Katwa"),
(110,"Samir","Cash","Beroya");

SELECT mode,COUNT(id)
FROM consumer
GROUP BY mode
ORDER BY COUNT(id) DESC;