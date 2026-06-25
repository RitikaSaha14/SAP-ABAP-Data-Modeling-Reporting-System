REPORT z_employee_alv.

DATA:
lt_employee TYPE TABLE OF zemployee.

SELECT *
FROM zemployee
INTO TABLE lt_employee.

DATA:
lo_alv TYPE REF TO cl_salv_table.

cl_salv_table=>factory(
IMPORTING
r_salv_table = lo_alv
CHANGING
t_table = lt_employee ).

lo_alv->display( ).
