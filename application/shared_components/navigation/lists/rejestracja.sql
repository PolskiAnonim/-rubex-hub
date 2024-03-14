prompt --application/shared_components/navigation/lists/rejestracja
begin
--   Manifest
--     LIST: Rejestracja
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(136621132222252364)
,p_name=>'Rejestracja'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(136622513769252365)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Rodzaj klienta'
,p_list_item_link_target=>'f?p=&APP_ID.:99992:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(136626820612252371)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dane podstawowe'
,p_list_item_link_target=>'f?p=&APP_ID.:99993:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(136631851939252376)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Dane logowania'
,p_list_item_link_target=>'f?p=&APP_ID.:99994:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
