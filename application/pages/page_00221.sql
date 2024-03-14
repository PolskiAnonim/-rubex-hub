prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_name=>'dod-dod-sr'
,p_alias=>'DOD-DOD-SR'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Pasuj\0105ce \015Bruby')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(64799221816860008)
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240109143732'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129683173033151719)
,p_plug_name=>unistr('Dodaj pasuj\0105c\0105 \015Brub\0119')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_SRUBY,',
'       ID_DODATKU',
'  from SRUBA_DODATEK;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129684907678151722)
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
 p_id=>wwv_flow_imp.id(64911294100466866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129684907678151722)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64910800909466865)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(129684907678151722)
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
 p_id=>wwv_flow_imp.id(129650310112735001)
,p_name=>'P221_ID_SRUBY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129683173033151719)
,p_item_source_plug_id=>wwv_flow_imp.id(129683173033151719)
,p_prompt=>'New'
,p_source=>'ID_SRUBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
unistr('NAZWA_SRUBY || '' Kl. '' || KLASA_WYTRZYMALOSCI || '' Materia\0142: '' ||'),
unistr(' MATERIAL || '' '' || KOLOR || '' \0141eb: '' || RODZAJ_LBA || '' Gniazdo: '' || GNIAZDO, '),
' ID_SRUBY FROM SRUBA',
'WHERE id_sruby NOT IN (SELECT id_sruby FROM sruba_dodatek WHERE id_dodatku=:P221_ID_DODATKU)',
'ORDER BY nazwa_sruby;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('-Wybierz pasuj\0105c\0105 \015Brub\0119-')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129684487450151724)
,p_name=>'P221_ID_DODATKU'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129683173033151719)
,p_item_source_plug_id=>wwv_flow_imp.id(129683173033151719)
,p_source=>'ID_DODATKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64912264163466867)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64911294100466866)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64912759340466868)
,p_event_id=>wwv_flow_imp.id(64912264163466867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64910176600466864)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(129683173033151719)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form dod-sr-dd'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64910176600466864
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64911843625466867)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>64911843625466867
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64909781595466864)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(129683173033151719)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form dod-sr-dd'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64909781595466864
);
wwv_flow_imp.component_end;
end;
/
