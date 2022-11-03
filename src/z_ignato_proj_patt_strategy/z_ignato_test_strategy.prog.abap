*&---------------------------------------------------------------------*
*& Report z_ignato_test_strategy
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_ignato_test_strategy.

Data(lo_dzika_kaczka) = NEW zcl_dzika_kaczka( ).
lo_dzika_kaczka->wykonaj_kwacz( ).
lo_dzika_kaczka->wykonaj_lec( ).
lo_dzika_kaczka->plywaj( ).
lo_dzika_kaczka->wyswietl( ).


DATA(lo_plaskonos_laczka) = NEW zcl_plaskonos_kaczka( ).
lo_plaskonos_laczka->wykonaj_kwacz( ).
lo_plaskonos_laczka->wykonaj_lec( ).
lo_plaskonos_laczka->plywaj( ).
lo_plaskonos_laczka->wyswietl( ).

DATA(lo_gumowa_kaczka) = NEW zcl_gumowa_kaczka( ).
lo_gumowa_kaczka->wykonaj_kwacz( ).
lo_gumowa_kaczka->wykonaj_lec( ).
lo_gumowa_kaczka->plywaj( ).
lo_gumowa_kaczka->wyswietl( ).
