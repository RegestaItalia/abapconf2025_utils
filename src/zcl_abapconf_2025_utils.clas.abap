CLASS zcl_abapconf_2025_utils DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS get_vat
      IMPORTING iv_country    TYPE countryiso
      RETURNING VALUE(rv_vat) TYPE i.
    CLASS-METHODS calculate_vat_price
      IMPORTING iv_price        TYPE f
                iv_vat          TYPE i
      RETURNING VALUE(rv_price) TYPE f.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abapconf_2025_utils IMPLEMENTATION.

  METHOD get_vat.
    IF iv_country EQ 'IT'.
      rv_vat = 22.
    ELSE.
      MESSAGE 'Only supported country is IT' TYPE 'E'.
    ENDIF.
  ENDMETHOD.

  METHOD calculate_vat_price.
    rv_price = COND #( WHEN iv_price GT 0 THEN iv_price * ( 1 + iv_vat / 100 ) ELSE 0 ).
  ENDMETHOD.

ENDCLASS.
