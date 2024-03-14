prompt --application/pages/page_00500
begin
--   Manifest
--     PAGE: 00500
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
 p_id=>500
,p_name=>unistr('Zam\00F3wienia')
,p_alias=>unistr('ZAM\00D3WIENIA')
,p_step_title=>unistr('Zam\00F3wienia')
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_imp.id(127732811418451403)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240114005558'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65439874862211311)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127792658721451452)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(21537423727562520)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(127897691758451540)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65441271316211312)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-ItemContainer--alignStretch:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(127759329521451425)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(65442034587211314)
,p_name=>'Master Records'
,p_template=>wwv_flow_imp.id(127830214700451482)
,p_display_sequence=>30
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID_ZAMOWIENIA",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P500_ID_ZAMOWIENIA'', p_values => "ID_ZAMOWIENIA") LINK,',
'    --null ICON_CLASS,',
'    null LINK_ATTR,',
'    --null ICON_COLOR_CLASS,',
'    case when coalesce(:P500_ID_ZAMOWIENIA,''0'') = "ID_ZAMOWIENIA"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr((SELECT "IMIE/NAZWA" FROM KLIENCI WHERE klienci.id_klienta=x.id_klienta), 1, 50)||( case when length("ID_KLIENTA") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    ("DATA_ZLOZENIA") LIST_TEXT--,',
'    --null LIST_BADGE',
'from "ZAMOWIENIE" x',
'where (:P500_SEARCH is null',
'        or upper(x."ID_KLIENTA") like ''%''||upper(:P500_SEARCH)||''%''',
'        or upper(x."DATA_ZLOZENIA") like ''%''||upper(:P500_SEARCH)||''%''',
'    ) AND x.status NOT LIKE ''KOSZYK''',
'order by "DATA_ZLOZENIA" DESC'))
,p_required_role=>wwv_flow_imp.id(21995650961848200)
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P500_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127846607542451495)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130172760819451904)
,p_query_column_id=>1
,p_column_alias=>'ID_ZAMOWIENIA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130173773095451914)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>100
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130172947719451906)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>30
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130173123847451908)
,p_query_column_id=>4
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>50
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130173319495451910)
,p_query_column_id=>5
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>70
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130173406052451911)
,p_query_column_id=>6
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>80
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(130173552792451912)
,p_query_column_id=>7
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>90
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(65446748590211347)
,p_name=>unistr('Zam\00F3wienie')
,p_template=>wwv_flow_imp.id(127831620256451483)
,p_display_sequence=>30
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ZAMOWIENIA,',
'       (SELECT "IMIE/NAZWA" FROM KLIENCI k WHERE z.ID_KLIENTA=k.ID_KLIENTA) AS KLIENT,',
'       (SELECT imie || '' '' || nazwisko FROM PRACOWNIK p WHERE z.ID_PRACOWNIKA=p.ID_PRACOWNIKA) AS PRACOWNIK,',
'       STATUS,',
'       DATA_ZLOZENIA,',
'       KOSZT',
'  from ZAMOWIENIE z',
' where "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
,p_display_when_condition=>'P500_ID_ZAMOWIENIA'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127852047425451500)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(65447440487211348)
,p_query_column_id=>1
,p_column_alias=>'ID_ZAMOWIENIA'
,p_column_display_sequence=>1
,p_column_heading=>'Id Zamowienia'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ZAMOWIENIE"',
'where "ID_ZAMOWIENIA" is not null',
'and "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64879022904374926)
,p_query_column_id=>2
,p_column_alias=>'KLIENT'
,p_column_display_sequence=>11
,p_column_heading=>'Klient'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64879142788374927)
,p_query_column_id=>3
,p_column_alias=>'PRACOWNIK'
,p_column_display_sequence=>21
,p_column_heading=>'Pracownik'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(65448644795211349)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>31
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ZAMOWIENIE"',
'where "STATUS" is not null',
'and "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(65449021708211350)
,p_query_column_id=>5
,p_column_alias=>'DATA_ZLOZENIA'
,p_column_display_sequence=>41
,p_column_heading=>unistr('Data z\0142o\017Cenia')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ZAMOWIENIE"',
'where "DATA_ZLOZENIA" is not null',
'and "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(65449468744211350)
,p_query_column_id=>6
,p_column_alias=>'KOSZT'
,p_column_display_sequence=>51
,p_column_heading=>'Koszt'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ZAMOWIENIE"',
'where "KOSZT" is not null',
'and "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65454139461211355)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P500_ID_ZAMOWIENIA'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(65454557451211356)
,p_name=>unistr('Dodatki w zam\00F3wieniu')
,p_template=>wwv_flow_imp.id(127831620256451483)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ZAMOWIENIA,',
unistr('       ID_DODATKU AS Usu\0144,'),
'       ''<a href="'' || apex_page.get_url(p_page => 205, p_items =>''P205_ID_DODATKU'', p_values => p.ID_DODATKU) || ''"><span class="fa fa-tools" title="Dodatkowe informacje"> </span></a>'' AS INFO,',
'        (SELECT NAZWA_DODATKU FROM DODATEK d WHERE d.id_dodatku=p.ID_DODATKU) AS NAZWA,',
'       ILOSC_PUDELEK,',
'        CASE CZY_ZAWARTE_NARZEDZIA WHEN ''Y'' THEN ''Tak'' ELSE ''Nie'' END  AS NARZEDZIA,',
'       CASE DODATKOWA_GWARANCJA WHEN ''Y'' THEN ''Tak'' ELSE ''Nie'' END  AS GWARANCJA',
'  from DODATEK_W_ZAMOWIENIU p',
' where "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
,p_display_when_condition=>':P500_ID_ZAMOWIENIA IS NOT NULL AND :P500_SWITCH=''Y'''
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127858489089451506)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(65455375615211357)
,p_query_column_id=>1
,p_column_alias=>'ID_ZAMOWIENIA'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:505:&APP_SESSION.::&DEBUG.:RP:P505_ID_ZAMOWIENIA:#ID_ZAMOWIENIA#'
,p_column_linktext=>'<span role="img" aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_report_column_width=>32
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64879491006374930)
,p_query_column_id=>2
,p_column_alias=>unistr('USU\0143')
,p_column_display_sequence=>11
,p_column_heading=>unistr('Usu\0144')
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null)'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>unistr('data-id=#USU\0143#')
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_imp.id(21995650961848200)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64879306934374929)
,p_query_column_id=>3
,p_column_alias=>'INFO'
,p_column_display_sequence=>21
,p_column_heading=>'Info'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64879295372374928)
,p_query_column_id=>4
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>61
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190335434040366210)
,p_query_column_id=>5
,p_column_alias=>'ILOSC_PUDELEK'
,p_column_display_sequence=>71
,p_column_heading=>unistr('Ilo\015B\0107')
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190335839040366214)
,p_query_column_id=>6
,p_column_alias=>'NARZEDZIA'
,p_column_display_sequence=>81
,p_column_heading=>unistr('Narz\0119dzia')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190335987083366215)
,p_query_column_id=>7
,p_column_alias=>'GWARANCJA'
,p_column_display_sequence=>91
,p_column_heading=>'Gwarancja'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65470342813211386)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>90
,p_plug_source=>'Nie wybrano pozycji'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P500_ID_ZAMOWIENIA'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(150615087158910206)
,p_name=>'Master Records - client'
,p_template=>wwv_flow_imp.id(127830214700451482)
,p_display_sequence=>40
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID_ZAMOWIENIA",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P500_ID_ZAMOWIENIA'', p_values => "ID_ZAMOWIENIA") LINK,',
'    --null ICON_CLASS,',
'    null LINK_ATTR,',
'    --null ICON_COLOR_CLASS,',
'    case when coalesce(:P500_ID_ZAMOWIENIA,''0'') = "ID_ZAMOWIENIA"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr((SELECT "IMIE/NAZWA" FROM KLIENCI WHERE klienci.id_klienta=x.id_klienta), 1, 50)||( case when length("ID_KLIENTA") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    ("DATA_ZLOZENIA") LIST_TEXT--,',
'    --null LIST_BADGE',
'from (SELECT * FROM "ZAMOWIENIE" WHERE ID_KLIENTA = (SELECT ID_KLIENTA FROM KONTO_APEX WHERE ',
'ID_APEXA = TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER) ))) ) x',
'where (:P500_SEARCH is null',
'        or upper(x."ID_KLIENTA") like ''%''||upper(:P500_SEARCH)||''%''',
'        or upper(x."DATA_ZLOZENIA") like ''%''||upper(:P500_SEARCH)||''%''',
'    )  AND x.status NOT LIKE ''KOSZYK''',
'order by "DATA_ZLOZENIA" DESC'))
,p_required_role=>'!'||wwv_flow_imp.id(21995650961848200)
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P500_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127846607542451495)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615186193910207)
,p_query_column_id=>1
,p_column_alias=>'ID_ZAMOWIENIA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615784192910213)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>70
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615240667910208)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>20
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615355703910209)
,p_query_column_id=>4
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>30
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615494148910210)
,p_query_column_id=>5
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>40
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615500227910211)
,p_query_column_id=>6
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>50
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(150615689079910212)
,p_query_column_id=>7
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>60
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(184742325601587030)
,p_name=>unistr('\015Aruby w zam\00F3wieniu')
,p_template=>wwv_flow_imp.id(127831620256451483)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ZAMOWIENIA,',
unistr('       ID_SRUBY AS Usu\0144,'),
'       ''<a href="'' || apex_page.get_url(p_page => 305, p_items =>''P305_ID_SRUBY'', p_values => p.ID_SRUBY) || ''"><span class="fa fa-wrench" title="Dodatkowe informacje"> </span></a>'' AS INFO,',
unistr('       (SELECT NAZWA_SRUBY || '' Kl. '' || KLASA_WYTRZYMALOSCI || '' Materia\0142: '' ||'),
unistr(' MATERIAL || '' '' || KOLOR || '' \0141eb: '' || RODZAJ_LBA || '' Gniazdo: '' || GNIAZDO FROM SRUBA s WHERE s.id_sruby=p.ID_SRUBY) AS NAZWA,'),
'       ILOSC_PUDELEK,',
'       CASE CZY_ZAWARTE_NARZEDZIA WHEN ''Y'' THEN ''Tak'' ELSE ''Nie'' END  AS NARZEDZIA,',
'       CASE DODATKOWA_GWARANCJA WHEN ''Y'' THEN ''Tak'' ELSE ''Nie'' END  AS GWARANCJA',
'  from SRUBA_W_ZAMOWIENIU p',
' where "ID_ZAMOWIENIA" = :P500_ID_ZAMOWIENIA'))
,p_display_when_condition=>':P500_ID_ZAMOWIENIA IS NOT NULL AND :P500_SWITCH=''N'''
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(127858489089451506)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(184742450214587031)
,p_query_column_id=>1
,p_column_alias=>'ID_ZAMOWIENIA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(184742529512587032)
,p_query_column_id=>2
,p_column_alias=>unistr('USU\0143')
,p_column_display_sequence=>20
,p_column_heading=>unistr('Usu\0144')
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null)'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>unistr('data-id=#USU\0143#')
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_imp.id(21995650961848200)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(184742630596587033)
,p_query_column_id=>3
,p_column_alias=>'INFO'
,p_column_display_sequence=>30
,p_column_heading=>'Info'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(184743047959587037)
,p_query_column_id=>4
,p_column_alias=>'NAZWA'
,p_column_display_sequence=>70
,p_column_heading=>'Nazwa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190335369469366209)
,p_query_column_id=>5
,p_column_alias=>'ILOSC_PUDELEK'
,p_column_display_sequence=>80
,p_column_heading=>unistr('Ilo\015B\0107')
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190335517155366211)
,p_query_column_id=>6
,p_column_alias=>'NARZEDZIA'
,p_column_display_sequence=>90
,p_column_heading=>unistr('Narz\0119dzia')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190335630813366212)
,p_query_column_id=>7
,p_column_alias=>'GWARANCJA'
,p_column_display_sequence=>100
,p_column_heading=>'Gwarancja'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65459587783211361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65454557451211356)
,p_button_name=>'DODAJ_DODATEK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127895353284451538)
,p_button_image_alt=>unistr('Dodaj dodatek do zam\00F3wienia')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:505:&SESSION.::&DEBUG.:RP,505:P505_ID_ZAMOWIENIA,P505_TYP:&P500_ID_ZAMOWIENIA.,A'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(184743199208587038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(184742325601587030)
,p_button_name=>'DODAJ_SRUBE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127895353284451538)
,p_button_image_alt=>unistr('Dodaj \015Brub\0119 do zam\00F3wienia')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:505:&SESSION.::&DEBUG.:RP,505:P505_ID_ZAMOWIENIA,P505_TYP:&P500_ID_ZAMOWIENIA.,S'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65470841906211387)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(65446748590211347)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(127896192632451539)
,p_button_image_alt=>'Edytuj'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:504:&APP_SESSION.::&DEBUG.:RP,504:P504_ID_ZAMOWIENIA:&P500_ID_ZAMOWIENIA.'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65440588629211311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65439874862211311)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(127896192632451539)
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:500:&APP_SESSION.:RESET:&DEBUG.:RP,500::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65440964211211312)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(65439874862211311)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(127896192632451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Stw\00F3rz nowy')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:504:&APP_SESSION.::&DEBUG.:RP,504::'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64879602651374932)
,p_name=>'P500_POZ_ID_SRDOD'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65441792335211314)
,p_name=>'P500_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65441271316211312)
,p_prompt=>'Search'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65453863703211355)
,p_name=>'P500_ID_ZAMOWIENIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65446748590211347)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184742213018587029)
,p_name=>'P500_SWITCH'
,p_item_sequence=>40
,p_item_default=>'N'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>'P500_ID_ZAMOWIENIA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65471106647211387)
,p_name=>'Dialog Closed zam'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(65446748590211347)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65471709525211388)
,p_event_id=>wwv_flow_imp.id(65471106647211387)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65446748590211347)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65472240441211388)
,p_event_id=>wwv_flow_imp.id(65471106647211387)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Dodano nowe zam\u00F3wienie.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65454689243211356)
,p_name=>'Dialog Closed dod'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(65454557451211356)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65460228032211363)
,p_event_id=>wwv_flow_imp.id(65454689243211356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65454557451211356)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336681666366222)
,p_event_id=>wwv_flow_imp.id(65454689243211356)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65446748590211347)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65460741195211363)
,p_event_id=>wwv_flow_imp.id(65454689243211356)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Dodano dodatek do zam\u00F3wienia.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190336361812366219)
,p_name=>'Dialog Closed sr'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(65454557451211356)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336480896366220)
,p_event_id=>wwv_flow_imp.id(190336361812366219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(184742325601587030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336727857366223)
,p_event_id=>wwv_flow_imp.id(190336361812366219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65446748590211347)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336564715366221)
,p_event_id=>wwv_flow_imp.id(190336361812366219)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''Dodano \015Brub\0119 do zam\005Cu00F3wienia.'');')
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65471253279211387)
,p_name=>'Perform Search'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P500_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65473040474211389)
,p_event_id=>wwv_flow_imp.id(65471253279211387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65442034587211314)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65473584712211389)
,p_event_id=>wwv_flow_imp.id(65471253279211387)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64879772710374933)
,p_name=>'USUN_POZ'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64879808515374934)
,p_event_id=>wwv_flow_imp.id(64879772710374933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Jeste\015B pewny?')
,p_attribute_06=>'Tak'
,p_attribute_07=>'Nie'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64879952678374935)
,p_event_id=>wwv_flow_imp.id(64879772710374933)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P500_POZ_ID_SRDOD'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64880061181374936)
,p_event_id=>wwv_flow_imp.id(64879772710374933)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE WHEN SUBSTR(:P500_POZ_ID_SRDOD,1,1)=''S'' THEN ',
'    DELETE FROM sruba_w_zamowieniu WHERE id_zamowienia=:P500_ID_ZAMOWIENIA AND id_sruby=:P500_POZ_ID_SRDOD;',
'ELSE',
'    DELETE FROM dodatek_w_zamowieniu WHERE id_zamowienia=:P500_ID_ZAMOWIENIA AND id_dodatku=:P500_POZ_ID_SRDOD;',
'END CASE;'))
,p_attribute_02=>'P500_ID_ZAMOWIENIA,P500_POZ_ID_SRDOD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64880105156374937)
,p_event_id=>wwv_flow_imp.id(64879772710374933)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65454557451211356)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184743552755587042)
,p_event_id=>wwv_flow_imp.id(64879772710374933)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(184742325601587030)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184743269599587039)
,p_name=>'SWITCH'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P500_SWITCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184743359581587040)
,p_event_id=>wwv_flow_imp.id(184743269599587039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
