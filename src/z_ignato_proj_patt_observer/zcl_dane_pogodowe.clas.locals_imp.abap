*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

CLASS lcl_warunki_bierzace_wyswietl DEFINITION.
    PUBLIC SECTION.
        INTERFACES zif_wyswietlacz.
    PROTECTED SECTION.
    PRIVATE SECTION.
ENDCLASS.

CLASS lcl_warunki_bierzace_wyswietl IMPLEMENTATION.

  METHOD zif_wyswietlacz~aktualizacja.

  ENDMETHOD.

ENDCLASS.


CLASS lcl_statystyka_wyswietl DEFINITION.
    PUBLIC SECTION.
        INTERFACES zif_wyswietlacz.
    PROTECTED SECTION.
    PRIVATE SECTION.
ENDCLASS.

CLASS lcl_statystyka_wyswietl IMPLEMENTATION.

  METHOD zif_wyswietlacz~aktualizacja.

  ENDMETHOD.

ENDCLASS.

CLASS lcl_prognoza_wyswietl DEFINITION.
    PUBLIC SECTION.
        INTERFACES zif_wyswietlacz.
    PROTECTED SECTION.
    PRIVATE SECTION.
ENDCLASS.

CLASS lcl_prognoza_wyswietl IMPLEMENTATION.

  METHOD zif_wyswietlacz~aktualizacja.

  ENDMETHOD.

ENDCLASS.
