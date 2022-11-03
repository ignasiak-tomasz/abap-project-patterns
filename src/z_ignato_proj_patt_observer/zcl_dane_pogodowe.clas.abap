CLASS zcl_dane_pogodowe DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES zif_podmiot.
    METHODS:
      odczyt_zmiana,
      ustaw_odczyt
        IMPORTING
          iv_temperatura TYPE float
          iv_wilgotnosc  TYPE float
          iv_cisnienie   TYPE float.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      _mv_temperatura  TYPE float,
      _mv_wilgotnosc   TYPE float,
      _mv_cisnienie    TYPE float,
      _mt_obserwatorzy TYPE TABLE OF REF TO zif_obserwator.

ENDCLASS.

CLASS zcl_dane_pogodowe IMPLEMENTATION.
  METHOD odczyt_zmiana.
    me->zif_podmiot~powiadom_obserwatorow( ).
  ENDMETHOD.

  METHOD zif_podmiot~powiadom_obserwatorow.

    LOOP AT _mt_obserwatorzy INTO DATA(lo_obserwator).
      lo_obserwator->aktualizacja(
        EXPORTING
          iv_temp       = _mv_temperatura
          iv_wilgotnosc = _mv_wilgotnosc
          iv_cisnienie  = _mv_cisnienie
      ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zif_podmiot~usun_obserwatora.
    DELETE _mt_obserwatorzy WHERE table_line = io_obserwator.
  ENDMETHOD.

  METHOD zif_podmiot~zarejestruj_obserwatora.
    APPEND io_obserwator TO _mt_obserwatorzy.
  ENDMETHOD.

  METHOD ustaw_odczyt.
    _mv_temperatura = iv_temperatura.
    _mv_wilgotnosc = iv_wilgotnosc.
    _mv_cisnienie = iv_cisnienie.
  ENDMETHOD.

ENDCLASS.
