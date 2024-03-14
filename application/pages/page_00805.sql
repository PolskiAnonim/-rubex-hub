prompt --application/pages/page_00805
begin
--   Manifest
--     PAGE: 00805
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
 p_id=>805
,p_name=>'Kompatybilne certyfikaty'
,p_alias=>'KOMPATYBILNE-CERTYFIKATY'
,p_page_mode=>'MODAL'
,p_step_title=>'Kompatybilne certyfikaty'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'18'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240116215024'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(343094536457228176)
,p_plug_name=>'Certyfikaty'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       c.symbol_certyfikatu,',
'       c.klasyfikacje,',
'       c.opis',
'  from certyfikat c JOIN wydanie_certyfikatu_sruby wcs ON c.symbol_certyfikatu=wcs.symbol_certyfikatu WHERE wcs.id_sruby=:P805_ID and SUBSTR(:P805_ID,1,1) = ''S''',
'  UNION ALL',
'select ',
'       c.symbol_certyfikatu,',
'       c.klasyfikacje,',
'       c.opis',
'  from certyfikat c JOIN wydanie_certyfikatu_dodatku wcd ON c.symbol_certyfikatu=wcd.symbol_certyfikatu WHERE wcd.id_dodatku=:P805_ID and SUBSTR(:P805_ID,1,1) = ''A'';',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P805_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Certyfikaty-sruny'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'  function setSelectedSruba(event,button) {',
'       event.preventDefault(); ',
'     apex.server.process("GET_ANY_URL", { ',
'        x01: 801,',
'        x02:''P801_ID'',',
'        x03:button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'',
'  }',
'</script>'))
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   <script>',
'   ',
'   function setSelectedDodatek(event,button) {',
'       event.preventDefault(); ',
'     apex.server.process("GET_ANY_URL", { ',
'        x01: 801,',
'        x02:''P801_ID'',',
'        x03:button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'    }',
'',
'   </script>',
'    '))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(175090495120666641)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>175090495120666641
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175090590533666642)
,p_db_column_name=>'SYMBOL_CERTYFIKATU'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Symbol Certyfikatu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175090684236666643)
,p_db_column_name=>'KLASYFIKACJE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Klasyfikacje'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175090791135666644)
,p_db_column_name=>'OPIS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Opis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(175366858539995935)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1753669'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SYMBOL_CERTYFIKATU:KLASYFIKACJE:OPIS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(343094118280228159)
,p_name=>'P805_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(343094536457228176)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(174384894309680057)
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
,p_internal_uid=>174384894309680057
);
wwv_flow_imp.component_end;
end;
/
