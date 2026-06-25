REPORT z_cds_report.

DATA:
lt_data TYPE TABLE OF z_employee_cds.

SELECT *
FROM z_employee_cds
INTO TABLE lt_data.

WRITE: / 'CDS View Report'.

LOOP AT lt_data INTO DATA(ls_data).

  WRITE: /
         ls_data-emp_id,
         ls_data-emp_name,
         ls_data-department,
         ls_data-salary.

ENDLOOP.
