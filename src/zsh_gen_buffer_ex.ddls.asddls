@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.entityBuffer.definitionAllowed: true

define view entity zsh_gen_buffer_ex
  as select from sairport
{

  key id        as Id,
  key name      as Name,
      time_zone as Time_Zone
}
