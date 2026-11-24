@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Total Sales by Dimentions'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
define view entity ZC_ATS_SA_TOT_SALES as select from ZI_ATS_SA_CO_SLS_CUBE
{

   key ProductCategory,
    key CompanyName,
    key Country,
   key  Currency,
       @Semantics.amount.currencyCode: 'Currency'
    Amount
    
}
