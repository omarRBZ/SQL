SELECT COUNTRY_NAME FROM COUNTRIES WHERE LENGTH(COUNTRY_NAME) BETWEEN 5 AND 10  AND COUNTRY_NAME NOT IN ('o','u')

SELECT  CONCAT(LOWER(JOB_ID),'@oracle.com') FROM EMPLOYEES WHERE JOB_ID='PU_CLERK' 

SELECT EMPLOYEE_ID, HIRE_DATE,COMMISSION_PCT  FROM EMPLOYEES  WHERE  TO_CHAR (HIRE_DATE,'fmMM')='3'
AND COMMISSION_PCT IS NOT NULL


SELECT FIRST_NAME, LAST_NAME ,SUBSTR(JOB_ID,1,INSTR(JOB_ID,'_')-1)TIPO
FROM EMPLOYEES
WHERE JOB_ID LIKE '%MAN%'



