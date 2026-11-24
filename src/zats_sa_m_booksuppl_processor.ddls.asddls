@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Processor Supplement Data'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #CONSUMPTION
define view entity ZATS_SA_M_BOOKSUPPL_PROCESSOR as projection on ZATS_SA_M_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZATS_SA_M_BOOKING_PROCESSOR,
    _Product,
    _ProductText,
    _Travel
}
