prompt --application/pages/page_00804
begin
--   Manifest
--     PAGE: 00804
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
 p_id=>804
,p_name=>'Kompatybilne dodatki'
,p_alias=>'KOMPATYBILNE-DODATKI'
,p_page_mode=>'MODAL'
,p_step_title=>'Kompatybilne dodatki'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'18'
,p_last_updated_by=>unistr('go\015B\0107')
,p_last_upd_yyyymmddhh24miss=>'20240107122957'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168713511235548141)
,p_plug_name=>'Dodatki-sruby'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       d.ID_DODATKU,',
'       d.NAZWA_DODATKU AS "NAZWA DODATKU",',
unistr('       (SELECT do.nazwa_dostawcy FROM dostawca do WHERE do.id_dostawcy=d.id_dostawcy) AS "Dostawca dodatk\00F3w",'),
'       CENA,',
unistr('       ''<button id=''|| d.ID_DODATKU ||'' class="t-Button t-Button--hot" onclick="setSelectedDodatek(event,this)"> Sprawd\017A dodatek </button>'' as Dodatek'),
'  from Dodatek d JOIN sruba_dodatek sd ON sd.id_dodatku=d.id_dodatku WHERE sd.id_sruby=:P804_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'SUBSTR(:P804_ID,1,1) = ''S'''
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Dodatki-sruby'
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
 p_id=>wwv_flow_imp.id(175089081958666627)
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
,p_internal_uid=>175089081958666627
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175089188158666628)
,p_db_column_name=>'ID_DODATKU'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Dodatku'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175089203006666629)
,p_db_column_name=>'NAZWA DODATKU'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nazwa Dodatku'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175089336792666630)
,p_db_column_name=>unistr('Dostawca dodatk\00F3w')
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Dostawca Dodatk\00F3w')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175089483608666631)
,p_db_column_name=>'CENA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cena'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175089558444666632)
,p_db_column_name=>'DODATEK'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Dodatek'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(175324684756866078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1753247'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_DODATKU:NAZWA DODATKU:Dostawca dodatk\00F3w:CENA:DODATEK')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(173860471648508148)
,p_plug_name=>'Sruby-Dodatki'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       s.ID_SRUBY ,',
unistr('       s.NAZWA_sruby AS "NAZWA \015ARUBY",'),
unistr('       (SELECT do.nazwa_dostawcy FROM dostawca do WHERE do.id_dostawcy=s.id_dostawcy) AS "Dostawca \015Brub",'),
'       CENA,',
unistr('       ''<button id=''||s.ID_SRUBY||'' class="t-Button t-Button--hot" onclick="setSelectedSruba(event,this)"> Sprawd\017A \015Brub\0119 </button>'' as Sruba'),
'  from Sruba s JOIN sruba_dodatek sd ON sd.id_sruby=s.id_sruby WHERE sd.id_dodatku=:P804_ID ',
'',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'SUBSTR(:P804_ID,1,1) = ''A'''
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sruby-Dodatki'
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
 p_id=>wwv_flow_imp.id(175087808167666615)
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
,p_internal_uid=>175087808167666615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175087974614666616)
,p_db_column_name=>'ID_SRUBY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Sruby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175088006005666617)
,p_db_column_name=>unistr('NAZWA \015ARUBY')
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Nazwa \015Aruby')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175088130435666618)
,p_db_column_name=>unistr('Dostawca \015Brub')
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Dostawca \015Arub')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175088231494666619)
,p_db_column_name=>'CENA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cena'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175088383447666620)
,p_db_column_name=>'SRUBA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sruba'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(175140565348676159)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1751406'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ID_SRUBY:NAZWA \015ARUBY:Dostawca \015Brub:CENA:SRUBA')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168709720117548103)
,p_name=>'P804_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(173855973333508103)
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
,p_internal_uid=>173855973333508103
);
wwv_flow_imp.component_end;
end;
/
