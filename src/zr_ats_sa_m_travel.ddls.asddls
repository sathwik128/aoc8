@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Request Root Entity - start of BO'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC

define root view entity ZR_ATS_SA_M_TRAVEL as select from /dmo/travel_m
--composition of target_data_source_name as _association_name
association[1] to /DMO/I_Agency as _Agency on
$projection.AgencyId = _Agency.AgencyID
association[1] to /DMO/I_Customer as _Customer on
$projection.CustomerId = _Customer.CustomerID
association[1] to I_Currency as _Currency on
$projection.CurrencyCode = _Currency.Currency
association[1] to /DMO/I_Overall_Status_VH as _OverallStatus on
$projection.OverallStatus = _OverallStatus.OverallStatus
{
    key /dmo/travel_m.travel_id as TravelId,
    /dmo/travel_m.agency_id as AgencyId,
    /dmo/travel_m.customer_id as CustomerId,
    /dmo/travel_m.begin_date as BeginDate,
    /dmo/travel_m.end_date as EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    /dmo/travel_m.booking_fee as BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    /dmo/travel_m.total_price as TotalPrice,
    /dmo/travel_m.currency_code as CurrencyCode,
    /dmo/travel_m.description as Description,
    /dmo/travel_m.overall_status as OverallStatus,
    /dmo/travel_m.created_by as CreatedBy,
    /dmo/travel_m.created_at as CreatedAt,
    /dmo/travel_m.last_changed_by as LastChangedBy,
    /dmo/travel_m.last_changed_at as LastChangedAt,
    _Agency,
    _Customer,
    _Currency,
    _OverallStatus
    
}
