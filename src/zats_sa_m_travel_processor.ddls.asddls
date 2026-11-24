@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Entity Projection layer'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #CONSUMPTION
define root view entity ZATS_SA_M_TRAVEL_PROCESSOR as projection on ZATS_SA_M_TRAVEL
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child ZATS_SA_M_BOOKING_PROCESSOR,
    _Currency,
    _Customer,
    _OverallStatus
}
