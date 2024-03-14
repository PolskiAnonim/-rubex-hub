prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'Dodatki'
,p_alias=>'DODATKI'
,p_step_title=>'Dodatki'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(64799221816860008)
,p_page_template_options=>'#DEFAULT#'
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
,p_page_component_map=>'18'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240115212925'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49681009275100382)
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
 p_id=>wwv_flow_imp.id(121722248880252862)
,p_plug_name=>'Dodatki'
,p_region_name=>'DOSC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DODATKU,',
'       ''<a href="'' || apex_page.get_url(p_page => 201, p_items =>''P201_ID_DODATKU'', p_values => ID_DODATKU) || ''"><span class="fa fa-edit" title="Edycja"> </span></a>'' || ''&nbsp'' ||',
'       ''<a href="'' || apex_page.get_url(p_page => 205, p_items =>''P205_ID_DODATKU'', p_values => ID_DODATKU) || ''"><span class="fa fa-dynamic-content" title="Dodatkowe informacje"> </span></a>'' || ''&nbsp'' ||',
unistr('       ''<a href="'' || apex_page.get_url(p_page => 220, p_items =>''P220_ID_DODATKU'', p_values => ID_DODATKU) || ''"><span class="fa fa-wrench" title="Pasuj\0105ce \015Bruby (ca\0142a strona)"> </span></a>'' || ''&nbsp'' ||'),
unistr('       ''<a href="'' || apex_page.get_url(p_page => 202, p_items =>''P202_ID_DODATKU'', p_values => ID_DODATKU) || ''"><span class="fa fa-plus" title="Zmie\0144 stan magazynowy"> </span></a>''AS DZIALANIA,'),
'       (SELECT d.nazwa_dostawcy FROM dostawca d WHERE d.id_dostawcy=dodatek.id_dostawcy) AS dostawca,',
'       NAZWA_DODATKU,',
'       TYP,',
'       MATERIAL,',
'       OPIS,',
'       SZTUKI_W_PUDELKU,',
'       ILOSC_PUDELEK_NA_MAGAZYNIE,',
'       CENA',
'  from DODATEK'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Dodatki'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(130792320095969740)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>130792320095969740
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130792446469969741)
,p_db_column_name=>'ID_DODATKU'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Dodatku'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202171464837847347)
,p_db_column_name=>'DZIALANIA'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>unistr('Dzia\0142ania')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130792605295969743)
,p_db_column_name=>'NAZWA_DODATKU'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nazwa dodatku'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130792737503969744)
,p_db_column_name=>'TYP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Typ'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130792840752969745)
,p_db_column_name=>'MATERIAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Materia\0142')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130792954318969746)
,p_db_column_name=>'OPIS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Opis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130793007171969747)
,p_db_column_name=>'DOSTAWCA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Dostawca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130793155637969748)
,p_db_column_name=>'CENA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cena'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177630063538098023)
,p_db_column_name=>'ILOSC_PUDELEK_NA_MAGAZYNIE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Stan Magazynowy'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177632747384098050)
,p_db_column_name=>'SZTUKI_W_PUDELKU'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>unistr('Ilo\015B\0107 w pude\0142ku')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134060807745668643)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1340609'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DZIALANIA:ILOSC_PUDELEK_NA_MAGAZYNIE:NAZWA_DODATKU:TYP:MATERIAL:OPIS:DOSTAWCA:CENA:SZTUKI_W_PUDELKU:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64877169749374907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(121722248880252862)
,p_button_name=>'Dod_do_dod'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('\015Aruby pasuj\0105ce do dodatk\00F3w')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:220::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25614807142329486)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(121722248880252862)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj nowy dodatek'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(202405085907155223)
,p_name=>'P20_TOTALNIE_SENSOWNE'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25615766943329487)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25616256743329488)
,p_event_id=>wwv_flow_imp.id(25615766943329487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121722248880252862)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(202171527615847348)
,p_name=>'Dialog Closed mag'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId == 202'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202171625209847349)
,p_event_id=>wwv_flow_imp.id(202171527615847348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(121722248880252862)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202171793104847350)
,p_event_id=>wwv_flow_imp.id(202171527615847348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''Zmieniono ilo\015B\0107 pude\0142ek w magazynie.'');')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(202411899309158589)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'DOSTAWCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202170458157847337)
,p_event_id=>wwv_flow_imp.id(202411899309158589)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_IR.CLEAR_REPORT(',
'        p_page_id      => 20,',
'        p_region_id    => 121722248880252862,',
'        p_report_id    => NULL);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202170988462847342)
,p_event_id=>wwv_flow_imp.id(202411899309158589)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_IR.ADD_FILTER(',
'    p_page_id       =>20,',
'    p_region_id     =>121722248880252862,',
'    p_report_column =>''DOSTAWCA'',',
'    p_filter_value  =>:P20_TOTALNIE_SENSOWNE, ',
'    p_operator_abbr =>NULL, ',
'    p_report_id     =>NULL);',
'END;'))
,p_attribute_02=>'P20_TOTALNIE_SENSOWNE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202412244472158591)
,p_event_id=>wwv_flow_imp.id(202411899309158589)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TOTALNIE_SENSOWNE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202412674247158592)
,p_event_id=>wwv_flow_imp.id(202411899309158589)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_session_state(''P20_TOTALNIE_SENSOWNE'', NULL);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202170527823847338)
,p_event_id=>wwv_flow_imp.id(202411899309158589)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
