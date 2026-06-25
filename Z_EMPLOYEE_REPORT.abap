REPORT z_employee_report.

DATA:
      lt_employee TYPE TABLE OF zemployee,
      ls_employee TYPE zemployee.

SELECT *
FROM zemployee
INTO TABLE lt_employee.

WRITE: / 'Employee Master Report'.

LOOP AT lt_employee INTO ls_employee.

  WRITE: /
         ls_employee-emp_id,
         ls_employee-emp_name,
         ls_employee-department,
         ls_employee-salary,
         ls_employee-join_date.

ENDLOOP.
