@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Total Sales By Dimensions'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #CONSUMPTION
@Analytics.query: true
define view entity ZC_ATS_SA_TOT_QUAN
  as select from ZI_ATS_SA_CO_SLS_CUBE
{
      @EndUserText.label: 'Spider man'
  key ProductCategory,
      @EndUserText.label: 'Customer'
  key CompanyName,
      @EndUserText.label: 'Place Of Order'
  key Country,
      @EndUserText.label: 'Unit Of Measure'
  key Uom as UnitOfMeasure,
      @EndUserText.label: 'Quantity Sold'
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Qty as Quantity

}
