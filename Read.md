# SQL 4th semester lab report

<<<< DBMS (SQL) 4th semester laboratory report >>>>


Question 1. Design a database STUDENT from the following tables:
Personal_Details(name,address,ph_no,fathers_name,age)
Class_Details(name,class_start_date,roll_no,branch,semester,ph_no)
Exam_Details(roll_no,exam_name,hall_no)
Marks_Details(roll_no,exam_name,subject_code,total_marks,marks_obt ained)
Execute the following queries:
1. Retrieve everything from the table Personal Details.
2. Find the personal details of the student with age=22
3. Find the class details of the student having roll no CSE21-01
4. Calculate the total no. Of class from class start date for all names in the table Class
5. Find the address of the student having roll no ECE21-01
6. Select and Sort by semester in the table Class Details
7. Find the student roll no with the maximum age.
8. Find the average age of the student of the same Semester.
9. Find the summation of the marks obtained by a student in different subjects in examination.
10. SELECT * FROM Class_Details WHERE roll_no = 'ECE21-01';


Question 2. Consider the following relational schema for a bank database,
Branch(Branch_name, Branch_id, address)
Customer(Branch_id,customer_name,customer_id,address,ph_no,age)
Account(holder_name,customer_id,acc_no,balance,acc_type) Loan(Borrower_name,
customer_id,loan_acc_no,amount,loan_type)
Write the SQL queries for the following:
1. Insert few records in each relation.
2. Find the address of the branch with Branch_id=B004
3. Find the name of the customer with maximum loan.
4. Modify the address of the customer with name “Ravi Kumar”
5. Check the account balance of the customer with name "Narendra Modi”
6. count the number of ‘savings’ account in the bank.
7. Display the customers name whose address is “North Block New Delhi ” and Branch_name is “SBI Delhi”
8. Here's the SQL query to display the customer name where loan_type is "Personal Loan" or
Borrower_name is "Narendra Modi"
9. Display the customers name whose balance is not 10000.
10. List the account balance in ascending and descending order
