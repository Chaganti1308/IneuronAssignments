USE ineuron_fsda;

SELECT * FROM bank_details;

-- 1. FIND SUM OF BALANCE
SELECT balance FROM bank_details;

SELECT sum(balance) FROM bank_details;
SELECT sum(balance) AS SUMMATION FROM bank_details;


-- 2. AVG OF BALANCE

SELECT avg(balance) AS Average FROM bank_details;

-- 3. WHO IS HAVING MIN BALANCE

SELECT age, job,marital,min(balance) AS Min_balance FROM bank_details;


-- 4. WHO IS HAVING MAX BALANCE
SELECT age, job,marital,max(balance) AS Max_balance FROM bank_details;


-- 5. LIST OF ALL PERSONS WHO IS HAVING LOAN
SELECT * FROM bank_details where loan = 'yes';


-- 6. FIND OUT AVG BALANCE FOR ALL THE PEOPLE WHOSE JOB ROLE IS ADMIN
SELECT  job, avg(balance) AS Avg_balance FROM bank_details WHERE job = "admin.";

-- 7. FIND OUT RECORDS WITHOUT JOB WHOSE AGE IS BELOW 45
SELECT * FROM bank_details WHERE age<45 AND job = 'services';

-- 8. FIND OUT A RECORD WHERE EDUCATION IS PRIMARY AND PERSON IS JOBLESS
SELECT * FROM bank_details WHERE age < 45 AND job = 'services';

-- 9. FIND OUT A RECORD WHOSE BANK ACCOUNT  IS HAVING A NEGATIVE BALANCE
SELECT * FROM bank_details WHERE balance < 0;

-- 10.FIND OUT A RECORD WHO IS NOT HAVING HOUSE AT ALL ALONG WITH THEIR BALANCE
SELECT * FROM bank_details WHERE housing = 'yes' AND balance > 0;