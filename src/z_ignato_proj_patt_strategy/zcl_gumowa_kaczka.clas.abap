CLASS zcl_gumowa_kaczka DEFINITION
  PUBLIC
  INHERITING FROM zcl_kaczka
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
    constructor,
    wyswietl REDEFINITION,
    wykonaj_kwacz REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_gumowa_kaczka IMPLEMENTATION.
  METHOD constructor.
    super->constructor( io_kwakanie = NEW zcl_piszcz( ) io_latanie = NEW zcl_nie_latam(  )  ).
  ENDMETHOD.
  METHOD wyswietl.
    NEW-LINE.
    WRITE: |Jestem gumową kaczka|.
  ENDMETHOD.

  METHOD wykonaj_kwacz.
    NEW-LINE.
    WRITE: |Piszczę|.
  ENDMETHOD.

ENDCLASS.
