prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('\015Arubex')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240114102327'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21835158020562762)
,p_plug_name=>unistr('\015Arubex')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127812503110451467)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55764668859391228)
,p_plug_name=>'Zarobki firmy'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_required_role=>wwv_flow_imp.id(21995039631841302)
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(55764774144391229)
,p_region_id=>wwv_flow_imp.id(55764668859391228)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(55764800204391230)
,p_chart_id=>wwv_flow_imp.id(55764774144391229)
,p_seq=>10
,p_name=>'Zarobki'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR(TRUNC(DATA_ZLOZENIA, ''MM''),''Mon-YYYY'') as data,',
'       SUM(KOSZT)',
'  from ZAMOWIENIE',
'  group by TO_CHAR(TRUNC(DATA_ZLOZENIA, ''MM''),''Mon-YYYY'')',
'  ORDER BY MIN(DATA_ZLOZENIA)'))
,p_items_value_column_name=>'SUM(KOSZT)'
,p_items_label_column_name=>'DATA'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(55764924611391231)
,p_chart_id=>wwv_flow_imp.id(55764774144391229)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Data'
,p_format_type=>'date-short'
,p_numeric_pattern=>'DD-MON'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(55765067618391232)
,p_chart_id=>wwv_flow_imp.id(55764774144391229)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_currency=>unistr('z\0142')
,p_format_scaling=>'million'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55765194694391233)
,p_plug_name=>unistr('Sk\0142ad w zarobki firmy')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_required_role=>wwv_flow_imp.id(21995039631841302)
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(55765211022391234)
,p_region_id=>wwv_flow_imp.id(55765194694391233)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(55765317790391235)
,p_chart_id=>wwv_flow_imp.id(55765211022391234)
,p_seq=>10
,p_name=>unistr('Sk\0142ad w zarobki firmy')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ZAMOWIENIA,',
'       NAZWA_SRUBY,',
'       ILOSC,',
'       CZY_ZAWARTE_NARZEDZIA,',
'       DODATKOWA_GWARANCJA',
'  from POZYCJA_W_ZAMOWIENIU JOIN SRUBA ON ID_SRUBY = "ID_DODATKU/SRUBY" ',
'  UNION',
'  select ID_ZAMOWIENIA,',
'       NAZWA_DODATKU,',
'       ILOSC,',
'       CZY_ZAWARTE_NARZEDZIA,',
'       DODATKOWA_GWARANCJA',
'  from POZYCJA_W_ZAMOWIENIU JOIN DODATEK ON ID_DODATKU = "ID_DODATKU/SRUBY" ORDER BY ILOSC DESC'))
,p_items_value_column_name=>'ILOSC'
,p_items_label_column_name=>'NAZWA_SRUBY'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_security_scheme=>wwv_flow_imp.id(21995039631841302)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(55766219145391244)
,p_name=>unistr('Zbli\017Caj\0105ce si\0119 zam\00F3wienia')
,p_template=>wwv_flow_imp.id(127831620256451483)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (SELECT "IMIE/NAZWA" FROM KLIENCI k WHERE k.ID_KLIENTA=z.ID_KLIENTA) AS KLIENT,',
'       STATUS,',
'       DATA_ZLOZENIA',
'  from ZAMOWIENIE z',
'  where DATA_ZLOZENIA BETWEEN CURRENT_DATE - 1 AND ADD_MONTHS(CURRENT_DATE,0) + 30 AND STATUS != ''KOSZYK''',
'  ORDER BY DATA_ZLOZENIA;'))
,p_required_role=>wwv_flow_imp.id(21995650961848200)
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
 p_id=>wwv_flow_imp.id(190337986892366235)
,p_query_column_id=>1
,p_column_alias=>'KLIENT'
,p_column_display_sequence=>10
,p_column_heading=>'Klient'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(55766602750391248)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>20
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(55766780603391249)
,p_query_column_id=>3
,p_column_alias=>'DATA_ZLOZENIA'
,p_column_display_sequence=>30
,p_column_heading=>'Data Zlozenia'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(202171059865847343)
,p_branch_name=>'Go To Page 800'
,p_branch_action=>'f?p=&APP_ID.:800:&SESSION.::&DEBUG.:800::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :APP_USER = ''PRACOWNIK'' then',
'    return false;',
'end if;',
'if :APP_USER = ''WLASCICIEL'' then',
'    return false;',
'end if;',
'return true;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
