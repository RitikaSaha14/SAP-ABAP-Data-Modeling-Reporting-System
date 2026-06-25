REPORT z_salary_summary.

TYPES:
BEGIN OF ty_summary,
department TYPE zemployee-department,
total_salary TYPE zemployee-salary,
END OF ty_summary.

DATA:
lt_summary TYPE TABLE OF ty_summary.

SELECT department,
       SUM( salary ) AS total_salary
FROM zemployee
INTO TABLE lt_summary
GROUP BY department.

WRITE: / 'Department Wise Salary Summary'.

LOOP AT lt_summary INTO DATA(ls_summary).

  WRITE: /
         ls_summary-department,
         ls_summary-total_salary.

ENDLOOP.
