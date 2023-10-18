*&---------------------------------------------------------------------*
*& Report ZBADER_GIT_EXAMPLE_BRANCH2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbader_git_example_branch2.

*Dies ist ein Programm für Branch2 2

PARAMETERS: p_vkorg TYPE vkorg.

SELECT SINGLE * FROM vbak
  WHERE vkorg = @p_vkorg
  INTO @DATA(ls_vkorg).

* Anpassung des Programmes auf Zielsystem (S4)

SELECT * FROM VBAP
  WHERE vbeln = @ls_vkorg-vbeln
  INTO TABLE @data(lt_vbeln).
