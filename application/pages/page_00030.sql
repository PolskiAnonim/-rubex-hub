prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>unistr('\015Aruby')
,p_alias=>unistr('\015ARUBY')
,p_step_title=>unistr('\015Aruby')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(62444942272771816)
,p_page_template_options=>'#DEFAULT#'
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
,p_last_upd_yyyymmddhh24miss=>'20240115212931'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24069937705770903)
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
 p_id=>wwv_flow_imp.id(96111177310923383)
,p_plug_name=>unistr('\015Aruby')
,p_region_name=>'AAAA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ID_SRUBY,',
'       NAZWA_SRUBY,',
'       (SELECT d.nazwa_dostawcy FROM dostawca d WHERE d.id_dostawcy=s.id_dostawcy) AS dostawca,',
'       DLUGOSC_GWINTU,',
'       RODZAJ_GWINTU,',
'       DLUGOSC_TRZPIENIA,',
'       KLASA_WYTRZYMALOSCI,',
'       KOLOR,',
'       MATERIAL,',
'       RODZAJ_LBA,',
'       WYSOKOSC_LBA,',
'       GNIAZDO,',
'       ILOSC_W_PUDELKU,',
'       ILOSC_PUDELEK_NA_MAGAZYNIE,',
'       CENA,',
'       ''<a href="'' || apex_page.get_url(p_page => 301, p_items =>''P301_ID_SRUBY'', p_values => ID_SRUBY) || ''"><span class="fa fa-edit" title="Edycja"> </span></a>'' || ''&nbsp'' ||',
'       ''<a href="'' || apex_page.get_url(p_page => 305, p_items =>''P305_ID_SRUBY'', p_values => ID_SRUBY) || ''"><span class="fa fa-dynamic-content" title="Dodatkowe informacje"> </span></a>'' || ''&nbsp'' ||',
unistr('       ''<a href="'' || apex_page.get_url(p_page => 320, p_items =>''P320_ID_SRUBY'', p_values => ID_SRUBY) || ''"><span class="fa fa-tools" title="Pasuj\0105ce dodatki (ca\0142a strona)"> </span></a>'' || ''&nbsp'' ||'),
unistr('       ''<a href="'' || apex_page.get_url(p_page => 302, p_items =>''P302_ID_SRUBY'', p_values => ID_SRUBY) || ''"><span class="fa fa-plus" title="Zmie\0144 stan magazynowy"> </span></a>'' AS INFO'),
'  from SRUBA s where id_dostawcy is not null;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P30_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\015Aruby')
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
 p_id=>wwv_flow_imp.id(159727403849745903)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>159727403849745903
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159727543387745904)
,p_db_column_name=>'ID_SRUBY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Sruby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159727729967745906)
,p_db_column_name=>'NAZWA_SRUBY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Nazwa \015Bruby')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159727923093745908)
,p_db_column_name=>'CENA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Cena'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177629810451098021)
,p_db_column_name=>'ILOSC_PUDELEK_NA_MAGAZYNIE'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Stan magazynowy'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159727677218745905)
,p_db_column_name=>'INFO'
,p_display_order=>60
,p_column_identifier=>'B'
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
 p_id=>wwv_flow_imp.id(168317465545430332)
,p_db_column_name=>'DOSTAWCA'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Dostawca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168319012207430348)
,p_db_column_name=>'DLUGOSC_GWINTU'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>unistr('D\0142ugo\015B\0107 gwintu')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168319178494430349)
,p_db_column_name=>'RODZAJ_GWINTU'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Rodzaj gwintu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168319234202430350)
,p_db_column_name=>'DLUGOSC_TRZPIENIA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>unistr('D\0142ugo\015B\0107 trzpienia')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177627824320098001)
,p_db_column_name=>'KLASA_WYTRZYMALOSCI'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>unistr('Klasa wytrzyma\0142o\015Bci')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177627969069098002)
,p_db_column_name=>'KOLOR'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Kolor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177628078571098003)
,p_db_column_name=>'MATERIAL'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>unistr('Materia\0142')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177628109256098004)
,p_db_column_name=>'RODZAJ_LBA'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>unistr('Rodzaj \0142ba')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177628219367098005)
,p_db_column_name=>'WYSOKOSC_LBA'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>unistr('Wysoko\015B\0107 \0142ba')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177628334476098006)
,p_db_column_name=>'GNIAZDO'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Gniazdo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(177628443583098007)
,p_db_column_name=>'ILOSC_W_PUDELKU'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>unistr('Ilo\015B\0107 w pude\0142ku')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(159736339280746428)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1597364'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INFO:ILOSC_PUDELEK_NA_MAGAZYNIE:NAZWA_SRUBY:DLUGOSC_TRZPIENIA:KOLOR:MATERIAL:KLASA_WYTRZYMALOSCI:RODZAJ_LBA:WYSOKOSC_LBA:CENA:DOSTAWCA:GNIAZDO:ILOSC_W_PUDELKU:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168316872264430326)
,p_plug_name=>unistr('\015Aruby nieaktywne')
,p_region_name=>'NIEAK'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127779121151451441)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ID_SRUBY,',
'       NAZWA_SRUBY,',
'       DLUGOSC_GWINTU,',
'       RODZAJ_GWINTU,',
'       DLUGOSC_TRZPIENIA,',
'       KLASA_WYTRZYMALOSCI,',
'       KOLOR,',
'       MATERIAL,',
'       RODZAJ_LBA,',
'       WYSOKOSC_LBA,',
'       GNIAZDO,',
'       ''<a href="'' || apex_page.get_url(p_page => 301, p_items =>''P301_ID_SRUBY'', p_values => ID_SRUBY) || ''"><span class="fa fa-edit" title="Edycja"> </span></a>'' AS INFO',
'  from SRUBA s where id_dostawcy is null;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P30_SWITCH'
,p_plug_display_when_cond2=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\015Aruby nieaktywne')
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
 p_id=>wwv_flow_imp.id(202167257243847305)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>202167257243847305
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202167381481847306)
,p_db_column_name=>'ID_SRUBY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id Sruby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202168693870847319)
,p_db_column_name=>'INFO'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Info'
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
 p_id=>wwv_flow_imp.id(202167412763847307)
,p_db_column_name=>'NAZWA_SRUBY'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Nazwa Sruby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202167586802847308)
,p_db_column_name=>'DLUGOSC_GWINTU'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Dlugosc Gwintu'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202167699742847309)
,p_db_column_name=>'RODZAJ_GWINTU'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Rodzaj Gwintu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202167768238847310)
,p_db_column_name=>'DLUGOSC_TRZPIENIA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Dlugosc Trzpienia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202167896070847311)
,p_db_column_name=>'KLASA_WYTRZYMALOSCI'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Klasa Wytrzymalosci'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202167999209847312)
,p_db_column_name=>'KOLOR'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Kolor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202168080217847313)
,p_db_column_name=>'MATERIAL'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Material'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202168118644847314)
,p_db_column_name=>'RODZAJ_LBA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Rodzaj Lba'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202168248931847315)
,p_db_column_name=>'WYSOKOSC_LBA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Wysokosc Lba'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(202168316275847316)
,p_db_column_name=>'GNIAZDO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Gniazdo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(202194546722863815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2021946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_SRUBY:INFO:NAZWA_SRUBY:DLUGOSC_GWINTU:RODZAJ_GWINTU:DLUGOSC_TRZPIENIA:KLASA_WYTRZYMALOSCI:KOLOR:MATERIAL:RODZAJ_LBA:WYSOKOSC_LBA:GNIAZDO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50304669781670838)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(96111177310923383)
,p_button_name=>'Dod_do_sr'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Dodatki pasuj\0105ce do \015Brub')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:320:&SESSION.::&DEBUG.:320::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24069342547770903)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(96111177310923383)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Dodaj now\0105 \015Brub\0119')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:301::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168316350068430321)
,p_name=>'P30_SWITCH'
,p_is_required=>true
,p_item_sequence=>20
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
unistr('    <h1 style="font-size: 0.8rem; height:0.8rem;margin-top: 0px;margin-bottom: 0px;">\015Arubki  </h1>'),
'</div>'))
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
unistr('    <h1 style="font-size: 0.8rem; height:0.8rem;margin-top: 0px;margin-bottom: 0px;margin-right: 100px;"> Zaproponowane przez klient\00F3w </h1>'),
'</div>'))
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190338065517366236)
,p_name=>'P30_TOTALNIE_SENSOWNE'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24070647462770904)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24071138205770905)
,p_event_id=>wwv_flow_imp.id(24070647462770904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96111177310923383)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168318651572430344)
,p_event_id=>wwv_flow_imp.id(24070647462770904)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(168316872264430326)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(168317725104430335)
,p_name=>'SWITCH'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SWITCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202170855178847341)
,p_event_id=>wwv_flow_imp.id(168317725104430335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(203931762580709257)
,p_name=>'New'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'DOSTAWCA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(202170702761847340)
,p_event_id=>wwv_flow_imp.id(203931762580709257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SWITCH'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(203933191630709260)
,p_event_id=>wwv_flow_imp.id(203931762580709257)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_IR.CLEAR_REPORT(',
'        p_page_id      => 30,',
'        p_region_id    => 96111177310923383,',
'        p_report_id    => NULL);',
'END;'))
,p_attribute_02=>'P30_TOTALNIE_SENSOWNE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(203934123946709261)
,p_event_id=>wwv_flow_imp.id(203931762580709257)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'APEX_IR.ADD_FILTER(',
'    p_page_id       =>30,',
'    p_region_id     =>96111177310923383,',
'    p_report_column =>''DOSTAWCA'',',
'    p_filter_value  =>:P30_TOTALNIE_SENSOWNE, ',
'    p_operator_abbr =>NULL, ',
'    p_report_id     =>NULL);',
'END;'))
,p_attribute_02=>'P30_TOTALNIE_SENSOWNE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(203932146595709259)
,p_event_id=>wwv_flow_imp.id(203931762580709257)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_TOTALNIE_SENSOWNE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(203932630390709259)
,p_event_id=>wwv_flow_imp.id(203931762580709257)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_util.set_session_state(''P30_TOTALNIE_SENSOWNE'', NULL);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(203933621711709261)
,p_event_id=>wwv_flow_imp.id(203931762580709257)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(244324994592237890)
,p_name=>'Dialog Closed mag'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId == 202'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(244325335158237892)
,p_event_id=>wwv_flow_imp.id(244324994592237890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96111177310923383)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(244159471009081007)
,p_event_id=>wwv_flow_imp.id(244324994592237890)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(168316872264430326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(244325727193237893)
,p_event_id=>wwv_flow_imp.id(244324994592237890)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''Zmieniono ilo\015B\0107 pude\0142ek w magazynie.'');')
);
wwv_flow_imp.component_end;
end;
/
