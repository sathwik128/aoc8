@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supplement as grand child'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view entity ZATS_SA_M_BOOKSUPPL
  as select from /dmo/booksuppl_m
  association        to parent ZATS_SA_M_BOOKING as _Booking     on  $projection.TravelId  = _Booking.TravelId
                                                                 and $projection.BookingId = _Booking.BookingId
  association [1..1] to ZATS_SA_M_TRAVEL         as _Travel      on  $projection.TravelId = _Travel.TravelId
  association [1..1] to /DMO/I_Supplement        as _Product     on  $projection.SupplementId = _Product.SupplementID
  association [1..1] to /DMO/I_SupplementText    as _ProductText on  $projection.SupplementId = _ProductText.SupplementID
{
  key /dmo/booksuppl_m.travel_id             as TravelId,
  key /dmo/booksuppl_m.booking_id            as BookingId,
  key /dmo/booksuppl_m.booking_supplement_id as BookingSupplementId,
      /dmo/booksuppl_m.supplement_id         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      /dmo/booksuppl_m.price                 as Price,
      /dmo/booksuppl_m.currency_code         as CurrencyCode,
      @Semantics.user.lastChangedBy: true
      /dmo/booksuppl_m.last_changed_at       as LastChangedAt,
      _Booking,
      _Travel,
      _Product,
      _ProductText
}
