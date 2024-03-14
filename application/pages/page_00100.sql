prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Certyfikaty'
,p_alias=>'CERTYFIKATY1'
,p_step_title=>'Certyfikaty'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188167373563904633)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.questionMark{',
'    background-image: url(#APP_IMAGES#icons/questionMark.svg);',
'    background-size: cover;',
'    width: 24px;',
'    height: 24px;',
'}',
'',
'.sruba{',
'    background-image: url(#APP_IMAGES#icons/skrew.svg);',
'    background-size: cover;',
'    width: 24px;',
'    height: 24px;',
'}',
'',
'.dodatek{',
'    background-image: url(#APP_IMAGES#icons/nut.svg);',
'    background-size: cover;',
'    width: 24px;',
'    height: 24px;',
'}'))
,p_step_template=>wwv_flow_imp.id(127732811418451403)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'03'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240116215704'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(151251375530700825)
,p_plug_name=>'Opis'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(127787873323451448)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P100_SYMBOL'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161743540676982403)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P100_SYMBOL'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'USER'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290365704409170853)
,p_plug_name=>unistr('Brak wyda\0144')
,p_parent_plug_id=>wwv_flow_imp.id(161743540676982403)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Nie wybrano pozycji'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P100_SEARCH'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208102213629043197)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127792658721451452)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(21537423727562520)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(127897691758451540)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290365557432170852)
,p_plug_name=>'Region  Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>40
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P100_SYMBOL'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'USER'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290900346298621027)
,p_plug_name=>'Search Wydania'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127756658049451422)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P100_SYMBOL'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(161746865993982436)
,p_name=>unistr('Wydania \015Bruby')
,p_parent_plug_id=>wwv_flow_imp.id(290900346298621027)
,p_template=>wwv_flow_imp.id(127831620256451483)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_WYDANIA,',
unistr('        ID_WYDANIA AS USU\0143,'),
'       (select nazwa_sruby from sruba s where s.id_sruby=x.id_sruby) AS NAZWA_SRUBY,',
'       ''<a href="'' || apex_page.get_url(p_page => 305, p_items =>''P305_ID_SRUBY'', p_values => ID_SRUBY) || ''"><span class="fa fa-dynamic-content" title="Dodatkowe informacje"> </span></a>'' AS Informacje,',
'       DATA_WYDANIA,',
'       DATA_WAZNOSCI',
'  from WYDANIE_CERTYFIKATU_SRUBY x  WHERE SYMBOL_CERTYFIKATU=:P100_SYMBOL'))
,p_display_when_condition=>'P100_SWITCH'
,p_display_when_cond2=>'S'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127858489089451506)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747692277982444)
,p_query_column_id=>1
,p_column_alias=>'ID_WYDANIA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747744879982445)
,p_query_column_id=>2
,p_column_alias=>unistr('USU\0143')
,p_column_display_sequence=>20
,p_column_heading=>unistr('Usu\0144')
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null)'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>unistr('data-id=#USU\0143#')
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(21995650961848200)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747890485982446)
,p_query_column_id=>3
,p_column_alias=>'NAZWA_SRUBY'
,p_column_display_sequence=>40
,p_column_heading=>'Nazwa Sruby'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747978408982447)
,p_query_column_id=>4
,p_column_alias=>'INFORMACJE'
,p_column_display_sequence=>30
,p_column_heading=>'Informacje'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(21995650961848200)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161748097734982448)
,p_query_column_id=>5
,p_column_alias=>'DATA_WYDANIA'
,p_column_display_sequence=>60
,p_column_heading=>'Data Wydania'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161748151729982449)
,p_query_column_id=>6
,p_column_alias=>'DATA_WAZNOSCI'
,p_column_display_sequence=>70
,p_column_heading=>'Data Waznosci'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(161746980021982437)
,p_name=>'Wydania dodatki'
,p_parent_plug_id=>wwv_flow_imp.id(290900346298621027)
,p_template=>wwv_flow_imp.id(127831620256451483)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_WYDANIA,',
'       (select d.nazwa_dodatku from dodatek d where d.id_dodatku=x.id_dodatku) AS NAZWA_DODATKU,',
'       ''<a href="'' || apex_page.get_url(p_page => 205, p_items =>''P205_ID_DODATKU'', p_values => ID_DODATKU) || ''"><span class="fa fa-dynamic-content" title="Dodatkowe informacje"> </span></a>'' AS Informacje,',
'       DATA_WYDANIA,',
'       DATA_WAZNOSCI,',
unistr('        ID_WYDANIA AS USU\0143'),
'  from WYDANIE_CERTYFIKATU_DODATKU x WHERE SYMBOL_CERTYFIKATU=:P100_SYMBOL'))
,p_display_when_condition=>'P100_SWITCH'
,p_display_when_cond2=>'D'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127858489089451506)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747025785982438)
,p_query_column_id=>1
,p_column_alias=>'ID_WYDANIA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747100504982439)
,p_query_column_id=>2
,p_column_alias=>'NAZWA_DODATKU'
,p_column_display_sequence=>40
,p_column_heading=>'Nazwa Dodatku'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747285815982440)
,p_query_column_id=>3
,p_column_alias=>'INFORMACJE'
,p_column_display_sequence=>30
,p_column_heading=>'Informacje'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(21995650961848200)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747311514982441)
,p_query_column_id=>4
,p_column_alias=>'DATA_WYDANIA'
,p_column_display_sequence=>60
,p_column_heading=>'Data Wydania'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747416132982442)
,p_query_column_id=>5
,p_column_alias=>'DATA_WAZNOSCI'
,p_column_display_sequence=>70
,p_column_heading=>'Data Waznosci'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161747577479982443)
,p_query_column_id=>6
,p_column_alias=>unistr('USU\0143')
,p_column_display_sequence=>20
,p_column_heading=>unistr('Usu\0144')
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null)'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>unistr('data-id=#USU\0143#')
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(21995650961848200)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(290900982185621033)
,p_name=>'Certyfikaty'
,p_template=>wwv_flow_imp.id(127841453146451491)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYMBOL_CERTYFIKATU LIST_TITLE,',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P100_SYMBOL'', p_values => "SYMBOL_CERTYFIKATU") LINK,',
'    --null ICON_CLASS,',
'    null LINK_ATTR,',
'    --null ICON_COLOR_CLASS,',
'    case when coalesce(:P100_SYMBOL,''0'') = "SYMBOL_CERTYFIKATU"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    KLASYFIKACJE LIST_TEXT--,',
'    --null LIST_BADGE',
'from CERTYFIKAT x',
'  where (:P100_SEARCH is null',
'        or upper(x."SYMBOL_CERTYFIKATU") like ''%''||upper(:P100_SEARCH)||''%''',
'        or upper(x."KLASYFIKACJE") like ''%''||upper(:P100_SEARCH)||''%''',
'    )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P100_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127846607542451495)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(151251289888700824)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>70
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(151250766702700819)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>20
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(151250893745700820)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>30
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(151250973988700821)
,p_query_column_id=>4
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>40
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(151251033393700822)
,p_query_column_id=>5
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>50
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(151251166148700823)
,p_query_column_id=>6
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>60
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161744946001982417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(290900346298621027)
,p_button_name=>'NOWE_WYDANIE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(127896192632451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj nowe wydanie'
,p_button_redirect_url=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115:P115_SYMBOL_CERTYFIKATU,P115_TYP:&P100_SYMBOL.,&P100_SWITCH.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161743639376982404)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(208102213629043197)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(177630490620098027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(151251375530700825)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_WYDANIA from WYDANIE_CERTYFIKATU_DODATKU WHERE SYMBOL_CERTYFIKATU=:P100_SYMBOL',
'UNION',
'select ID_WYDANIA from WYDANIE_CERTYFIKATU_sruby WHERE SYMBOL_CERTYFIKATU=:P100_SYMBOL'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(160111341737651314)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(208102213629043197)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj nowy certyfikat'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:5,11::'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151252054003700832)
,p_name=>'P100_OPIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(151251375530700825)
,p_item_display_point=>'PREVIOUS'
,p_use_cache_before_default=>'NO'
,p_prompt=>'Opis'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT opis',
'FROM certyfikat WHERE symbol_certyfikatu=:P100_SYMBOL;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159731820662745947)
,p_name=>'P100_SYMBOL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(208102213629043197)
,p_item_display_point=>'SMART_FILTERS'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161744788378982415)
,p_name=>'P100_ID_WYDANIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(290900346298621027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161746358439982431)
,p_name=>'P100_SWITCH'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(151251375530700825)
,p_item_display_point=>'NEXT'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
unistr('    <h1 style="font-size: 0.8rem; height:0.8rem;margin-top: 0px;margin-bottom: 0px;">\015Arubki  </h1>'),
'</div>'))
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    <h1 style="font-size: 0.8rem; height:0.8rem;margin-top: 0px;margin-bottom: 0px;margin-right: 100px;"> Dodatki </h1>',
'</div>'))
,p_source=>'S'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'D'
,p_attribute_04=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(274733684634519734)
,p_name=>'P100_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(208102213629043197)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>'Search'
,p_placeholder=>'Wyszukaj certyfikat..'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(290902716465621037)
,p_name=>'P100_SEARCH_WYDANIE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(290900346298621027)
,p_item_display_point=>'SEARCH_FIELD'
,p_prompt=>'Search Wydanie'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160116894516651325)
,p_name=>'Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160117364887651325)
,p_event_id=>wwv_flow_imp.id(160116894516651325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Cancel'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160119198423651327)
,p_name=>'Usun wydanie'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160120185821651328)
,p_event_id=>wwv_flow_imp.id(160119198423651327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Confirm'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Jeste\015B pewny?')
,p_attribute_06=>'Tak'
,p_attribute_07=>'Nie'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160120667804651329)
,p_event_id=>wwv_flow_imp.id(160119198423651327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Set value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_ID_WYDANIA'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160121129224651329)
,p_event_id=>wwv_flow_imp.id(160119198423651327)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE ',
'    WHEN :P100_ID_WYDANIA IS NOT NULL AND :P100_SWITCH=''S'' THEN ',
'        DELETE FROM WYDANIE_CERTYFIKATU_SRUBY WHERE ID_WYDANIA=:P100_ID_WYDANIA;',
'    WHEN :P100_ID_WYDANIA IS NOT NULL AND :P100_SWITCH=''D'' THEN',
'        DELETE FROM WYDANIE_CERTYFIKATU_DODATKU WHERE ID_WYDANIA=:P100_ID_WYDANIA;',
'    ELSE ',
'       NULL;',
'END CASE;'))
,p_attribute_02=>'P100_ID_WYDANIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168314334779430301)
,p_event_id=>wwv_flow_imp.id(160119198423651327)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161746426176982432)
,p_name=>'SWITCH'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P100_SWITCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161746549914982433)
,p_event_id=>wwv_flow_imp.id(161746426176982432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(168314916829430307)
,p_name=>'Dodawanie'
,p_event_sequence=>190
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168315177249430309)
,p_event_id=>wwv_flow_imp.id(168314916829430307)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(177630509463098028)
,p_name=>'DELETE'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(177630490620098027)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(177630795272098030)
,p_event_id=>wwv_flow_imp.id(177630509463098028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Usun\0105\0107 certyfikat?')
,p_attribute_06=>'Tak'
,p_attribute_07=>'Nie'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187861763762597202)
,p_event_id=>wwv_flow_imp.id(177630509463098028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM CERTYFIKAT WHERE SYMBOL_CERTYFIKATU=:P100_SYMBOL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184739814394587005)
,p_event_id=>wwv_flow_imp.id(177630509463098028)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P100_SYMBOL,P100_ID_WYDANIA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187861903713597204)
,p_event_id=>wwv_flow_imp.id(177630509463098028)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(187861637200597201)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ANY_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_url VARCHAR2(4000);',
'BEGIN',
'      l_url := APEX_PAGE.GET_URL(',
'          p_page => APEX_APPLICATION.g_x01,',
'          p_items => APEX_APPLICATION.g_x02,',
'          p_values => APEX_APPLICATION.g_x03);',
'    htp.p(l_url);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>187861637200597201
);
wwv_flow_imp.component_end;
end;
/
