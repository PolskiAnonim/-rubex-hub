prompt --application/pages/page_00335
begin
--   Manifest
--     PAGE: 00335
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
 p_id=>335
,p_name=>'dod-cert-sr'
,p_alias=>'DOD-CERT-SR'
,p_page_mode=>'MODAL'
,p_step_title=>'dod-cert-sr'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240109152919'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(506771805842199705)
,p_plug_name=>unistr('Dodaj pasuj\0105ce wydanie')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'WYDANIE_CERTYFIKATU_SRUBY'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(506773540487199708)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127783730784451445)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188934212477147390)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(506773540487199708)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188934641029147390)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(506773540487199708)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'NEXT'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(184741317601587020)
,p_name=>'P335_ID_SRUBY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_item_source_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_source=>'ID_SRUBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373670691605734397)
,p_name=>'P335_ID_WYDANIA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_item_source_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_source=>'ID_WYDANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373670736519734398)
,p_name=>'P335_SYMBOL_CERTYFIKATU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_item_source_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_prompt=>'Symbol Certyfikatu'
,p_source=>'SYMBOL_CERTYFIKATU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT SYMBOL_CERTYFIKATU AS VALUE,SYMBOL_CERTYFIKATU FROM CERTYFIKAT;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Wybierz certyfikat-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373670869087734399)
,p_name=>'P335_DATA_WYDANIA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_item_source_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_prompt=>'Data Wydania'
,p_source=>'DATA_WYDANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(373670925608734400)
,p_name=>'P335_DATA_WAZNOSCI'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_item_source_plug_id=>wwv_flow_imp.id(506771805842199705)
,p_prompt=>'Data Waznosci'
,p_source=>'DATA_WAZNOSCI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(188935380214147392)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vRow WYDANIE_CERTYFIKATU_SRUBY%ROWTYPE;',
'vLicznik INTEGER;',
'BEGIN',
'vLicznik:=0;',
'FOR vRow IN',
'(SELECT * FROM wydanie_certyfikatu_SRUBY',
'WHERE id_SRUBY=:P335_ID_SRUBY AND symbol_certyfikatu=:P335_SYMBOL_CERTYFIKATU) LOOP',
'    IF :P335_DATA_WYDANIA BETWEEN vRow.data_wydania AND vRow.data_waznosci THEN',
'        vLicznik:=vLicznik+1;',
'    END IF;',
'END LOOP;',
'IF vLicznik>0 THEN ',
'    RETURN FALSE;',
'ELSE RETURN TRUE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Data wydania certyfikatu nie mo\017Ce by\0107 pomi\0119dzy datami dla istniej\0105cego wydania danego certyfikatu')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188935965428147392)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(188934212477147390)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188936428142147393)
,p_event_id=>wwv_flow_imp.id(188935965428147392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188933549756147389)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(506771805842199705)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>188933549756147389
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188935515991147392)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>188935515991147392
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188933129517147388)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(506771805842199705)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form dod-sr-dd'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>188933129517147388
);
wwv_flow_imp.component_end;
end;
/
