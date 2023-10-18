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
  ORDER BY PRIMARY KEY       "Anpassung Zielsystem (S4)
  INTO TABLE @DATA(gt_mara).
