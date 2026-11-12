CLASS zcl_ats_demo_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ats_demo_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write(
  EXPORTING
  data = |welcome to ATS ABAP on cloud|
  ).

  SELECT * from I_ExchangeRateRawData into table @DATA(itab) UP TO 2 ROWS.

  out->write(
  EXPORTING
  data = itab
  ).

  ENDMETHOD.
ENDCLASS.
