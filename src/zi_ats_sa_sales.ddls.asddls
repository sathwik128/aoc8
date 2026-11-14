@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pure transaction, basic, interface, fact'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #BASIC
@Analytics.dataCategory: #FACT
define view entity ZI_ATS_SA_SALES as select from zats_sa_so_item
association of one to one zats_sa_so_hdr as _Header on 
$projection.OrderId = _Header.order_id

{
    key item_id as ItemId,
    order_id as OrderId,
    product as Product,
    
    amount as Amount,
    currency as Currency,
    qty as Qty,
    uom as Uom,
//    created_by as CreatedBy,
//    created_at as CreatedAt,
//    changed_by as ChangedBy,
//    changed_at as ChangedAt,
    _Header
}
