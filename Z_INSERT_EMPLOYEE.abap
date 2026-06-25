REPORT z_insert_employee.

DATA: ls_employee TYPE zemployee.

ls_employee-emp_id = '100001'.
ls_employee-emp_name = 'Ritika Saha'.
ls_employee-department = 'IT'.
ls_employee-salary = '50000'.
ls_employee-join_date = sy-datum.

INSERT zemployee FROM ls_employee.

IF sy-subrc = 0.
  WRITE: / 'Employee Record Inserted Successfully'.
ELSE.
  WRITE: / 'Insertion Failed'.
ENDIF.
