*&---------------------------------------------------------------------*
*& Report ZBADER_GIT_EXAMPLE_BRANCH
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBADER_GIT_EXAMPLE_BRANCH.


*Dies ist ein Testprogramm für eine zweite Branch

PARAMETERS: p_lgort TYPE lgort_d,
            p_werks   TYPE werks_d.


SELECT * FROM mchb
  WHERE lgort = @p_lgort
  AND   werks = @p_werks
  INTO TABLE @DATA(gt_mchb).
