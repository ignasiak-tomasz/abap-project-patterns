CLASS zcl_wabik_kaczka DEFINITION
  PUBLIC
  INHERITING FROM zcl_kaczka
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor,
    wyswietl REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_wabik_kaczka IMPLEMENTATION.

 METHOD constructor.
    super->constructor( io_kwakanie = NEW zcl_nie_kwacz( ) io_latanie = NEW zcl_nie_latam(  )  ).
 ENDMETHOD.

  METHOD wyswietl.
    NEW-LINE.
    WRITE: |Jestem wabik kaczka|.
  ENDMETHOD.

ENDCLASS.
