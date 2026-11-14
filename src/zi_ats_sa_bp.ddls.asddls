@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Business Partner Diemension, Basic, Interface'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
define root view entity ZI_ATS_SA_BP as select from zats_sa_bpa
{
    key bp_id as BpId,
    case bp_role 
    when '01' then 'Customer'
    when '02' then 'Supplier'
    when '03' then 'Employee'
    else 'Unknown' end as BpType,
    company_name as CompanyName,
//    street as Street,
    country as Country
//    region as Region,
//    city as City
} where bp_role = '01'
