CLASS zcl_plaskonos_kaczka DEFINITION
  PUBLIC
  INHERITING FROM zcl_kaczka
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: wyswietl REDEFINITION,
             constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_plaskonos_kaczka IMPLEMENTATION.

 METHOD constructor.
    super->constructor( io_kwakanie = NEW zcl_kwacz( ) io_latanie = NEW zcl_latam_bo_mam_skrzydla(  )  ).
 ENDMETHOD.

  METHOD wyswietl.
    NEW-LINE.
    WRITE: |Mam plaski nos|.
  ENDMETHOD.
ENDCLASS.
