*&---------------------------------------------------------------------*
*& Report ZBADER_GIT_EXAMPLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbader_git_example.


TABLES: mara.

SELECT-OPTIONS: so_matnr FOR mara-matnr.


SELECT * FROM mara
  WHERE matnr IN @so_matnr
  INTO TABLE @DATA(gt_mara).
