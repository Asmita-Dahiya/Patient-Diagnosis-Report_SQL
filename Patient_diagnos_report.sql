-- create a database named Hospital:
create database hospital;

-- select dataset:
use hospital;

-- create a patients table with the date, patient ID, patient name, age, weight, gender, location, phone number, disease, doctor name, and doctor ID fields:
create table patients_data (
Date date not null,
p_id varchar(20) not null primary key,
p_name varchar(20),
age int,
weight int,
gender varchar(1),
location varchar(25),
phn_no int (10),
disease varchar(20),
doc_name varchar(20),
doc_id varchar(10));

select*from patient_data;

-- insert values into the patients table:
insert into patients_data (date, p_id, p_name, age, weight, gender, location, phn_no, disease, doc_name, doc_id)
values ( '2019-06-15', 'AP2021', 'sarath',67, 76, 'M', 'Chennai', 876543, 'Cardiac', 'mohan', 21),
('2019-02-13', 'Ap2022', 'John', 62,80, 'M', 'Banglore', 78363554, 'Cancer', 'Suraj', 22),
('2018-01-08','AP2023', 'Henry', 43,65,'M', 'Kerala', 8757489, 'Liver', 'Mehta', 23),
('2020-02-04','AP2024','Carl',56,72,'M', 'Mumbai', 74647484, 'Asthama', 'Kartik', 24),
('2017-09-15','AP2025','Shikar',55,71,'M', 'delhi', 46743839, 'Cardiac', 'mohan', 21),
('2018-07-22','AP2026','Piyush',47,59, 'M', 'Haryana', 76457383, 'Cancer', 'suraj',22),
('2017-03-25','AP2027','Stephen', 69,55,'M','Gujrat', 73636830, 'Liver', 'Mehta', 23),
('2019-04-22','AP2028','Aaron',73,53,'M','Banglore',76543589, 'Asthama', 'Kartik',24);

select*from patients_data;

-- Write a query to display the total number of patients in the table:
select count(*) as Total_no_of_pateints from patients_data;

-- Write a query to display the patient ID, patient name, gender, and disease of the oldest (age) patient:
select p_id, p_name, gender, disease, max(age) as Max_age from patients_data;

-- Write a query to display the patients' names along with the total number of characters in their name:
select p_name, length(p_name) as total_no_of_char from patients_data;

-- write a query to display the patients name, id along with numeric part separated from p_id:
select p_name, p_id, mid(p_id,3,6) as numeric_part from patients_data;

-- Write a query to combine the patient's name and doctor's name in a new column:
select p_name, doc_name, concat(p_name,' ',doc_name) as pateint_doctor_name from patients_data;

-- Write a query to display the patients’ age along with the logarithmic value (base 10) of their age:
select age, log10(age) as log_age from patients_data;

-- Write a query to extract the year for a given date and place it in a separate column:
select*, year(date) as year from patients_data;

-- Write a query to check the patient’s name and doctor’s name are similar and display NULL, else return the patient’s name:
select nullif(p_name,doc_name) from patients_data;

-- Write a query to check if a patient’s age is greater than 40 and display Yes if it is and No if it isn't:
select age, if(age>40,'YES','NO') as Age_above_40 from patients_data;

-- Write a query to display duplicate entries in the doctor name column:
select doc_name, count(*) occurences from patients_data group by doc_name having count(*)>1;