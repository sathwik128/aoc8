@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for booking'
@Metadata.ignorePropagatedAnnotations: false

define view entity ZATS_SA_M_BOOKING_PROCESSOR as projection on ZATS_SA_M_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _BookStatus,
    _BOOKSUPPL: redirected to composition child ZATS_SA_M_BOOKSUPPL_PROCESSOR,
    _Carrier,
    _Connection,
    _Currency,
    _Customer,
    _Travel: redirected to parent ZATS_SA_M_TRAVEL_PROCESSOR
}
