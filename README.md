# ShirdiDevarla

In CDS DDIC-based views, buffering is configured via annotations.

@AbapCatalog.buffering.status defines whether and how table buffering is allowed.
@AbapCatalog.buffering.type determines the buffering type.
@AbapCatalog.buffering.numberOfKeyFields determines the number of key fields covered if generic buffering is used.

In CDS view entities, these annotations are not supported. A new buffer handling has been implemented to provide more flexibility in buffering settings and to enable customers to change the buffering settings of SAP-delivered objects.

In a CDS view entity, buffering is prepared with the annotation @AbapCatalog.entityBuffer.definitionAllowed: true|false.

If buffering is allowed, the actual buffering type can be defined by a separate CDS tuning object, called CDS entity buffer, with the DDL statement: DEFINE VIEW ENTITY BUFFER ON cds_view_entity.

Syntax - 

DEFINE VIEW ENTITY BUFFER ON <entity_name>
    TYPE SINGLE|GENERIC|FULL
    LAYER CORE|LOCALIZATION|INDUSTRY|PARTNER|CUSTOMER
    [NUMBER OF KEY ELEMENTS <number>]     // Needed for buffer type "GENERIC"

The CDS entity buffer relates the buffering type to one of the layers: core, localization, industry, partner, and customer. For each layer, one buffering type can be defined for a CDS view entity.


Please refer below link for more details - 
https://community.sap.com/t5/application-development-blog-posts/buffering-cds-view-entities/ba-p/13520422  
