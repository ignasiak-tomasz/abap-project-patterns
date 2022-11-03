CLASS zcl_kaczka DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor IMPORTING io_latanie TYPE REF TO zif_latanie io_kwakanie TYPE REF TO zif_kwakanie,
      wykonaj_kwacz,
      plywaj,
      wyswietl ABSTRACT,
      wykonaj_lec.

  PRIVATE SECTION.
    DATA:
       _mo_latanie_interface TYPE REF TO zif_latanie,
       _mo_kwaczenie_interface TYPE REF TO zif_kwakanie.
ENDCLASS.



CLASS zcl_kaczka IMPLEMENTATION.

  METHOD constructor.
    _mo_latanie_interface = io_latanie.
    _mo_kwaczenie_interface = io_kwakanie.
  ENDMETHOD.

  METHOD wykonaj_kwacz.
    _mo_kwaczenie_interface->kwacz(  ).
  ENDMETHOD.

  METHOD plywaj.
    NEW-LINE.
    WRITE: |Plum Plum|.
  ENDMETHOD.

  METHOD wykonaj_lec.
    _mo_latanie_interface->lec(  ).
  ENDMETHOD.


ENDCLASS.
