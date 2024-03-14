prompt --application/pages/page_00302
begin
--   Manifest
--     PAGE: 00302
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
 p_id=>302
,p_name=>'Stan magazynowy'
,p_alias=>'STAN-MAGAZYNOWY'
,p_page_mode=>'MODAL'
,p_step_title=>'Stan magazynowy'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240114121551'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168318165257430339)
,p_button_sequence=>40
,p_button_name=>'Zatwierdz'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Zatwierd\017A')
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168317974225430337)
,p_name=>'P302_STAN_MAGAZYNOWY'
,p_is_required=>true
,p_item_sequence=>30
,p_item_default=>'select ilosc_pudelek_na_magazynie from sruba where id_sruby=:P302_ID_SRUBY;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Stan Magazynowy'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168318086984430338)
,p_name=>'P302_ID_SRUBY'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(244159695492081009)
,p_name=>'P302_SRUBA'
,p_item_sequence=>20
,p_prompt=>unistr('\015Aruba')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT NAZWA_SRUBY || '' Kl. '' || KLASA_WYTRZYMALOSCI || '' Materia\0142: '' ||'),
unistr(' MATERIAL || '' '' || KOLOR || '' \0141eb: '' || RODZAJ_LBA || '' Gniazdo: '' || GNIAZDO FROM sruba where id_sruby=:P302_ID_SRUBY')))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(184739680506587003)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>':P302_STAN_MAGAZYNOWY IS NOT NULL AND REGEXP_LIKE(:P302_STAN_MAGAZYNOWY,''^[0-9]{1,}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Stan magazynowy musi by\0107 nieujemn\0105 liczb\0105 ca\0142kowit\0105')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184739460078587001)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>'UPDATE SRUBA SET ilosc_pudelek_na_magazynie=:P302_STAN_MAGAZYNOWY WHERE id_sruby=:P302_ID_SRUBY;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(168318165257430339)
,p_internal_uid=>184739460078587001
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184739530424587002)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(168318165257430339)
,p_internal_uid=>184739530424587002
);
wwv_flow_imp.component_end;
end;
/
