prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(21797995719562726)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(21798168908562727)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(21798359622562727)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(21798517271562727)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(21798772394562727)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(65394287852124928)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Container-BorderRadius":"2px","@Actions-Exp":"320px"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65394287852124928.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(65395719652131027)
,p_theme_id=>42
,p_name=>'Vita (copy_2)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Side-Exp":"320px","@g_Container-BorderRadius":"0.125rem","@Nav-Exp":"230px","@Head-Height":"48px"},"customCSS":"\n.container {\n  width: fit-content;\n}\n\n\n\n.t-Region:hover{\n  border-color: #000000;\n}\n","useCustomLess":"'
||'N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65395719652131027.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127980095134451627)
,p_theme_id=>100
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>21797995719562726
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127980290662451628)
,p_theme_id=>100
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>21798168908562727
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127980421558451628)
,p_theme_id=>100
,p_name=>'Vita (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Container-BorderRadius":"2px","@Actions-Exp":"320px"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65394287852124928.css'
,p_theme_roller_read_only=>false
,p_reference_id=>65394287852124928
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127980615458451628)
,p_theme_id=>100
,p_name=>'Vita (copy_2)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Side-Exp":"320px","@g_Container-BorderRadius":"0.125rem","@Nav-Exp":"230px"},"customCSS":".container {\n  width: fit-content;\n}\n\n\n.t-Region:hover{\n  border-color: #000000;\n}\n","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65395719652131027.css'
,p_theme_roller_read_only=>false
,p_reference_id=>65395719652131027
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127980868403451628)
,p_theme_id=>100
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>21798359622562727
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127981028136451628)
,p_theme_id=>100
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>21798517271562727
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(127981298635451628)
,p_theme_id=>100
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>21798772394562727
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(130249117020497550)
,p_theme_id=>100
,p_name=>'Vita (copy_2) (copy_1)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Side-Exp":"320px","@g_Container-BorderRadius":"0.125rem","@Nav-Exp":"230px"},"customCSS":"[data-tooltip] {\n  position: relative; \n}\n\n.t-Region-body{\n    padding: 0px;\n}\n\n[data-tooltip]::after {\n  content: attr(data-to'
||'oltip);\n  position: absolute;\n  left: 50%; \n  transform: translateX(-50%);\n  background-color: white;\n  border: 1px solid black;\n  padding: 0.5em 0.75em; \n  z-index: 100;\n  opacity: 0;\n  transition: opacity 0.3s;  \n\n  white-space: nowrap;\'
||'n  text-overflow: ellipsis;\n  max-width: 800px;\n  overflow: hidden; \n}\n[data-tooltip]:hover::after {\n  opacity: 1;  \n}\n\n\n\nh4{\n    margin: 5px;\n}\n\n.hr{\n    width:100%;\n    height: 1px;\n    border: 0;\n    background: rgba(255,255,255,'
||'0.5);\n    margin: 0;\n}\n\n.nodatafound{\n    display: none;\n}\n\n// #P800_NEW_CONTAINER{\n//     height:40px;\n//     padding-top: 0px;\n//     padding-bottom: 0px;\n//     padding-left: 0px;\n//     padding-right: 20px;\n// }\n\n.a-Switch {\n    '
||'margin-top: 0px;\n}\n\n.a-Table{\n    display: none;\n}\n\n.a-Switch-toggle {\n    margin-top: 0px;\n}\n\n.checkbox_group{\n    max-height: 100%;\n    width: 160px;\n    overflow-y: scroll;\n    overflow-x: hidden;\n}\n\n.t-Region:hover{\n  border-co'
||'lor: #000000;\n}\n\n.t-ResultsRegion-search {\n    margin-bottom: 0px;\n}\n\n.t-Region-body{\n    height:auto !important;\n}\n\n.checkbox_group{\n    height:100px;\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#130249117020497550.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
