REPORT z_emp_filter_report.

PARAMETERS:
p_dept TYPE zemployee-department.

DATA:
lt_emp TYPE TABLE OF zemployee.

SELECT *
FROM zemployee
INTO TABLE lt_emp
WHERE department = p_dept.

WRITE: / 'Department Report'.

LOOP AT lt_emp INTO DATA(ls_emp).

  WRITE: /
         ls_emp-emp_id,
         ls_emp-emp_name,
         ls_emp-salary.

ENDLOOP.
