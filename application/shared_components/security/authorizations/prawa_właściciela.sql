prompt --application/shared_components/security/authorizations/prawa_właściciela
begin
--   Manifest
--     SECURITY SCHEME: Prawa właściciela
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(21995039631841302)
,p_name=>unistr('Prawa w\0142a\015Bciciela')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'wlasciciel_r'
,p_attribute_02=>'A'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
