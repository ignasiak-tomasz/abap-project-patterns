CLASS zcl_latam_bo_mam_skrzydla DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_latanie.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_latam_bo_mam_skrzydla IMPLEMENTATION.
  METHOD zif_latanie~lec.
    New-Line.
    WRITE: |Latam bo mam skrzydla|.
  ENDMETHOD.

ENDCLASS.
