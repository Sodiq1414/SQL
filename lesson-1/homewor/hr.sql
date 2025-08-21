1. Atamalar ta’rifi:

Ma’lumotlar (данные) – bu saqlanishi, qayta ishlanishi va tahlil qilinishi mumkin bo‘lgan faktlar, raqamlar, matnlar va boshqa axborotlar.

Ma’lumotlar bazasi (база данных) – bu ma’lumotlarni tartibli saqlash, boshqarish va ulardan foydalanish uchun mo‘ljallangan tizim.

Relyatsion ma’lumotlar bazasi (реляционная база данных) – bu ma’lumotlar jadval ko‘rinishida saqlanadigan va ular o‘zaro bog‘langan bo‘ladigan ma’lumotlar bazasi.

Jadval (таблица) – bu qatorlar (rows) va ustunlardan (columns) tashkil topgan ma’lumotlar to‘plami.
  
  2. SQL Server’ning asosiy funksiyalari (5 ta):

Ma’lumotlarni saqlash va boshqarish.

Ma’lumotlarni qidirish va so‘rovlar bajarish (SQL tilida).

Ma’lumotlarni qo‘shish, yangilash va o‘chirish.

Ma’lumotlar xavfsizligi va foydalanuvchilar huquqlarini boshqarish.

Zaxira nusxa olish va ma’lumotlarni tiklash (backup & restore).


3. SQL Server autentifikatsiya rejimlari:

Windows Authentication – foydalanuvchini Windows tizimi orqali tekshirish.

SQL Server Authentication – foydalanuvchini SQL Server ichida yaratilgan login va parol orqali tekshirish.

CREATE DATABASE SchoolDB;
USE SchoolDB;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

3. SQL Server, SSMS va SQL farqlari:

SQL Server – bu ma’lumotlarni saqlash, boshqarish va ularga ishlov berish uchun mo‘ljallangan ma’lumotlar bazasi boshqaruv tizimi (DBMS).

SSMS (SQL Server Management Studio) – bu SQL Server bilan ishlash uchun qulay grafik interfeys (dastur). U orqali so‘rov yozish, bazalarni boshqarish, zaxira olish va tahlil qilish mumkin.

SQL (Structured Query Language) – bu ma’lumotlar bazasiga murojaat qilish tili. Uning yordamida jadval yaratish, ma’lumot kiritish, qidirish va tahrirlash bajariladi.

DQL (Data Query Language) – ma’lumotlarni so‘rash uchun ishlatiladi.

Misol:

SELECT * FROM Students;


DML (Data Manipulation Language) – ma’lumotlarni qo‘shish, yangilash, o‘chirish uchun.

Misol:

INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);
UPDATE Students SET Age = 21 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;


DDL (Data Definition Language) – jadval va obyektlarni yaratish, o‘zgartirish, o‘chirish.

Misol:

CREATE TABLE Teachers (TeacherID INT PRIMARY KEY, Name VARCHAR(50));
ALTER TABLE Students ADD Grade VARCHAR(10);
DROP TABLE Teachers;


DCL (Data Control Language) – huquqlarni boshqarish.

Misol:

GRANT SELECT ON Students TO User1;
REVOKE SELECT ON Students FROM User1;


TCL (Transaction Control Language) – tranzaksiyalarni boshqarish.

Misol:

BEGIN TRANSACTION;
UPDATE Students SET Age = 22 WHERE StudentID = 1;
COMMIT; -- o‘zgarishlarni saqlash
ROLLBACK; -- bekor qilish

2. Uchta yozuv qo‘shish
INSERT INTO Students (StudentID, Name, Age)
VALUES 
(1, 'Ali Valiyev', 20),
(2, 'Dilnoza Karimova', 21),
(3, 'Jahongir Rustamov', 22);

3. AdventureWorksDW2022.bak faylini tiklash tartibi

Faylni kompyuteringizga yuklab oling (havoladan).

Faylni SQL Server’ning backup papkasiga joylashtiring (odatda: C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup).

SSMSni oching va serverga ulaning.

RESTORE DATABASE buyrug‘ini bajaring:

RESTORE DATABASE AdventureWorksDW2022
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\AdventureWorksDW2022.bak'
WITH MOVE 'AdventureWorksDW2022' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2022.mdf',
     MOVE 'AdventureWorksDW2022_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2022.ldf',
     REPLACE;
