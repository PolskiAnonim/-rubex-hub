prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
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
 p_id=>115
,p_name=>'nowe wydanie'
,p_alias=>'NOWE-WYDANIE'
,p_page_mode=>'MODAL'
,p_step_title=>'Nowe wydanie'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(188167373563904633)
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240109143649'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(232496761425870164)
,p_plug_name=>'Wydanie'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>20
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P115_TYP=''D'' THEN',
'return q''~',
'select ID_WYDANIA,',
'       ID_DODATKU,',
'       SYMBOL_CERTYFIKATU,',
'       DATA_WYDANIA,',
'       DATA_WAZNOSCI',
'  from WYDANIE_CERTYFIKATU_DODATKU',
'~'';',
'ELSE',
'return q''~',
'select ID_WYDANIA,',
'       ID_SRUBY,',
'       SYMBOL_CERTYFIKATU,',
'       DATA_WYDANIA,',
'       DATA_WAZNOSCI',
'  from WYDANIE_CERTYFIKATU_SRUBY',
'~'';',
'END IF;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(232500920880870168)
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
 p_id=>wwv_flow_imp.id(167039976831658795)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(232500920880870168)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161745093125982418)
,p_name=>'P115_ID_WYDANIA'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_item_source_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_source=>'ID_WYDANIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161745207752982420)
,p_name=>'P115_SYMBOL_CERTYFIKATU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_item_source_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_source=>'SYMBOL_CERTYFIKATU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161745313779982421)
,p_name=>'P115_DATA_WYDANIA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_item_source_plug_id=>wwv_flow_imp.id(232496761425870164)
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
 p_id=>wwv_flow_imp.id(161745443406982422)
,p_name=>'P115_DATA_WAZNOSCI'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_item_source_plug_id=>wwv_flow_imp.id(232496761425870164)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161745535435982423)
,p_name=>'P115_TYP'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161746226461982430)
,p_name=>'P115_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_item_source_plug_id=>wwv_flow_imp.id(232496761425870164)
,p_prompt=>unistr('Dodatek/\015Aruba')
,p_source=>'ID_SRUBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P115_TYP=''S'' THEN',
'RETURN q''~SELECT ',
unistr('NAZWA_SRUBY || '' Kl. '' || KLASA_WYTRZYMALOSCI || '' Materia\0142: '' ||'),
unistr(' MATERIAL || '' '' || KOLOR || '' \0141eb: '' || RODZAJ_LBA || '' Gniazdo: '' || GNIAZDO, '),
' ID_SRUBY FROM SRUBA;~'';',
'ELSE',
'RETURN q''~SELECT nazwa_dodatku, id_dodatku FROM dodatek~'';',
'END IF;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177631147622098034)
,p_validation_name=>'ID NOT NULL'
,p_validation_sequence=>10
,p_validation=>':P115_ID IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy wybra\0107 \015Brub\0119/dodatek do kt\00F3rego ma by\0107 przypisane wydanie')
,p_associated_item=>wwv_flow_imp.id(161746226461982430)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177631402999098037)
,p_validation_name=>'DATA NOT NULL 1'
,p_validation_sequence=>20
,p_validation=>':P115_DATA_WAZNOSCI IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy wybra\0107 dat\0119 wa\017Cno\015Bci.')
,p_associated_item=>wwv_flow_imp.id(161745443406982422)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(177631564399098038)
,p_validation_name=>'DATA NOT NULL 2'
,p_validation_sequence=>30
,p_validation=>':P115_DATA_WYDANIA IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy wybra\0107 dat\0119 wydania.')
,p_associated_item=>wwv_flow_imp.id(161745313779982421)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(167039217423658794)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P115_TYP=''D'' THEN',
'INSERT INTO WYDANIE_CERTYFIKATU_DODATKU (ID_DODATKU,SYMBOL_CERTYFIKATU,DATA_WYDANIA,DATA_WAZNOSCI) VALUES',
'(:P115_ID,:P115_SYMBOL_CERTYFIKATU,:P115_DATA_WYDANIA,:P115_DATA_WAZNOSCI);',
'ELSE',
'INSERT INTO WYDANIE_CERTYFIKATU_SRUBY (ID_SRUBY,SYMBOL_CERTYFIKATU,DATA_WYDANIA,DATA_WAZNOSCI) VALUES',
'(:P115_ID,:P115_SYMBOL_CERTYFIKATU,:P115_DATA_WYDANIA,:P115_DATA_WAZNOSCI);',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(167039976831658795)
,p_internal_uid=>167039217423658794
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(167040878104658796)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'REQUEST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>167040878104658796
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(167038888335658793)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(232496761425870164)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Pozycja zam\00F3wienia')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>167038888335658793
);
wwv_flow_imp.component_end;
end;
/
