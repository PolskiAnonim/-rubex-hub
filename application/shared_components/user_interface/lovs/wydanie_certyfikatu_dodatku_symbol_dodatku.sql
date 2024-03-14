prompt --application/shared_components/user_interface/lovs/wydanie_certyfikatu_dodatku_symbol_dodatku
begin
--   Manifest
--     WYDANIE_CERTYFIKATU_DODATKU.SYMBOL_DODATKU
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(23995296350679660)
,p_lov_name=>'WYDANIE_CERTYFIKATU_DODATKU.SYMBOL_DODATKU'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'WYDANIE_CERTYFIKATU_DODATKU'
,p_return_column_name=>'ID_WYDANIA'
,p_display_column_name=>'SYMBOL_DODATKU'
,p_default_sort_column_name=>'SYMBOL_DODATKU'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
