INTERFACE zif_podmiot
  PUBLIC .
  METHODS:
    zarejestruj_obserwatora IMPORTING io_obserwator TYPE REF TO zif_obserwator,
    usun_obserwatora IMPORTING io_obserwator TYPE REF TO zif_obserwator,
    powiadom_obserwatorow.
ENDINTERFACE.
