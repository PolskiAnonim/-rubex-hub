prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
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
 p_id=>202
,p_name=>'Stan magazynowy dod'
,p_alias=>'STAN-MAGAZYNOWY-DOD'
,p_page_mode=>'MODAL'
,p_step_title=>'Stan magazynowy dodatku'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(64799221816860008)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240109143702'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(176971005974018391)
,p_button_sequence=>40
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Zatwierd\017A')
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(183680693091036018)
,p_name=>'P202_NAZWA_DODATKU'
,p_item_sequence=>20
,p_prompt=>'Nazwa Dodatku'
,p_source=>'SELECT NAZWA_DODATKU FROM DODATEK WHERE ID_DODATKU=:P202_ID_DODATKU'
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
 p_id=>wwv_flow_imp.id(345289322885448729)
,p_name=>'P202_STAN_MAGAZYNOWY'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stan Magazynowy'
,p_source=>'SELECT ILOSC_PUDELEK_NA_MAGAZYNIE FROM DODATEK WHERE ID_DODATKU=:P202_ID_DODATKU;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(345289435644448730)
,p_name=>'P202_ID_DODATKU'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183681792635036029)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>':P202_STAN_MAGAZYNOWY IS NOT NULL AND REGEXP_LIKE(:P202_STAN_MAGAZYNOWY,''^[0-9]{1,}$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Podaj poprawn\0105 dodatni\0105 liczb\0119 ca\0142kowit\0105')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183681819757036030)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>'UPDATE dodatek SET ilosc_pudelek_na_magazynie=:P202_STAN_MAGAZYNOWY WHERE id_dodatku=:P202_ID_DODATKU;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(176971005974018391)
,p_internal_uid=>183681819757036030
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183681943892036031)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(176971005974018391)
,p_internal_uid=>183681943892036031
);
wwv_flow_imp.component_end;
end;
/
