@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.entityBuffer.definitionAllowed: true

define view entity zsh_single_buffer_ex
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
