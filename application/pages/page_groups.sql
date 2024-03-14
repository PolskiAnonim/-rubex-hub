prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(21827579128562753)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(188167373563904633)
,p_group_name=>'Certyfikaty'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(64799221816860008)
,p_group_name=>'Dodatki'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(25684233891869746)
,p_group_name=>'Klienci'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(62444942272771816)
,p_group_name=>'Sruby'
);
wwv_flow_imp.component_end;
end;
/
