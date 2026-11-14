@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product CDS Entity, Basic, Interface, Dimension'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
define view entity ZI_ATS_SA_PRODUCT as select from zats_sa_product
{
    key product_id as ProductId,
    name as Name,
    
    category as Category,
    price as Price,
    currency as Currency,
    discount as Discount,
    rating as Rating
}
