prompt --application/pages/page_00401
begin
--   Manifest
--     PAGE: 00401
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
 p_id=>401
,p_name=>'Dod_dost'
,p_alias=>'DOD-DOST'
,p_page_mode=>'MODAL'
,p_step_title=>'Dostawca'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240110233123'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82600165438926403)
,p_plug_name=>'Dostawca'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOSTAWCA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82603807624926407)
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
 p_id=>wwv_flow_imp.id(31269290337414355)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(82603807624926407)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31269640964414356)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(82603807624926407)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P401_ID_DOSTAWCY'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31270066523414356)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(82603807624926407)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P401_ID_DOSTAWCY'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31270460994414356)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(82603807624926407)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'NEXT'
,p_button_condition=>'P401_ID_DOSTAWCY'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30533491224392033)
,p_name=>'P401_ID_DOSTAWCY'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_item_source_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_source=>'ID_DOSTAWCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30533508627392034)
,p_name=>'P401_NAZWA_DOSTAWCY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_item_source_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_prompt=>'Nazwa Dostawcy'
,p_source=>'NAZWA_DOSTAWCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30533642424392035)
,p_name=>'P401_TYP_MATERIALOW'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_item_source_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_prompt=>'Typ Materialow'
,p_source=>'TYP_MATERIALOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\015Aruby;\015Br,Dodatki;dod,\015Aruby i dodatki;\015Br/dod')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Wybierz typ-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Format: \015Br,&emsp;dod,&emsp;\015Br/dod &nbsp;</p>'),
unistr('<p>Dla:&emsp;\015Arub,&emsp;Dodatk\00F3w,&emsp;\015Arub oraz dodatk\00F3w</p>')))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61796797214806376)
,p_name=>'P401_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_item_source_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>unistr('Email musi by\0107 zapisany ma\0142ymi literami')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82581754573808436)
,p_name=>'P401_NR_TELEFONU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_item_source_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_prompt=>'Nr Telefonu'
,p_source=>'NR_TELEFONU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>13
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82581853361808437)
,p_name=>'P401_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_item_source_plug_id=>wwv_flow_imp.id(82600165438926403)
,p_prompt=>'Adres'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>unistr('Format: [ul./al. ]Ulica nr_domu[/nr_mieszkania], kod_pocztowy Miejscowo\015B\0107')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30534733888392046)
,p_validation_name=>'NRTEL'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE ',
'WHEN LENGTH(:P401_NR_TELEFONU)=9 THEN',
'    CASE WHEN REGEXP_LIKE(:P401_NR_TELEFONU, ''^[0-9]{9}$'')',
'        THEN RETURN TRUE;',
'        ELSE RETURN FALSE;',
'    END CASE;',
'WHEN LENGTH(:P401_NR_TELEFONU)=12 OR LENGTH(:P401_NR_TELEFONU)=13 THEN',
'    CASE WHEN REGEXP_LIKE(:P401_NR_TELEFONU, ''^\+[0-9]{11,12}$'') THEN RETURN TRUE;',
'    ELSE RETURN FALSE;',
'    END CASE;',
'ELSE',
'    RETURN FALSE;',
'END CASE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Niepoprawny numer telefonu'
,p_associated_item=>wwv_flow_imp.id(82581754573808436)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32854302028771701)
,p_validation_name=>'MA_LIT_EMAIL'
,p_validation_sequence=>40
,p_validation=>'P401_EMAIL'
,p_validation2=>'abcdefghijklmnopqrstuvwxyz@.0123456789_'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_ONLY_CHAR_IN_STRING2'
,p_error_message=>unistr('Adres email musi sk\0142ada\0107 si\0119 z ma\0142ych liter!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32854536727771703)
,p_validation_name=>'EMAIL'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE WHEN REGEXP_LIKE(:P401_EMAIL,''[a-z0-9_.-]+@[a-z0-9_.-]+\.[a-z]{2,4}'')  THEN RETURN TRUE;',
'ELSE RETURN FALSE;',
'END CASE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Niepoprawny adres email!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32854857162771706)
,p_validation_name=>'ADRES'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('CASE WHEN REGEXP_LIKE(:P401_ADRES,''^[ua]l\005C.\005Cs[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*\005Cs[0-9]{1,3}[A-Z]{0,1},\005Cs[0-9]{2}-[0-9]{3}\005Cs[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*$'')'),
'    THEN RETURN TRUE;',
unistr('WHEN REGEXP_LIKE(:P401_ADRES,''^[ua]l\005C.\005Cs[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*\005Cs[0-9]{1,3}[A-Z]{0,1}/[0-9]{1,3},\005Cs[0-9]{2}-[0-9]{3}\005Cs[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*$'')'),
'    THEN RETURN TRUE;',
unistr('WHEN REGEXP_LIKE(:P401_ADRES,''^[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*\005Cs[0-9]{1,3}[A-Z]{0,1}/[0-9]{1,3},\005Cs[0-9]{2}-[0-9]{3}\005Cs[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*$'')'),
'    THEN RETURN TRUE;',
unistr('WHEN REGEXP_LIKE(:P401_ADRES,''^[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*\005Cs[0-9]{1,3}[A-Z]{0,1},\005Cs[0-9]{2}-[0-9]{3}\005Cs[A-Z\0118\00D3\0141\015A\0104\017B\0179\0106\0143][a-z\0119\00F3\0142\015B\0105\017C\017A\0107\0144]*$'')'),
'    THEN RETURN TRUE;',
'ELSE RETURN FALSE;',
'END CASE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Z\0142y format adresu')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32854980799771707)
,p_validation_name=>'ISTNIEJACY'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vDostawca dostawca%ROWTYPE;',
'BEGIN',
'    SELECT * INTO vDostawca FROM dostawca WHERE LOWER(nazwa_dostawcy)=LOWER(:P401_NAZWA_DOSTAWCY);',
'    CASE WHEN :P401_ID_DOSTAWCY IS NOT NULL THEN RETURN TRUE;',
'        ELSE RETURN FALSE;',
'    END CASE;',
'EXCEPTION',
'    WHEN OTHERS THEN RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Taki dostawca ju\017C istnieje!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(184741565739587022)
,p_validation_name=>'USUWANIE'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'for x in ( select count(*) cnt',
'from dual',
'where exists ( SELECT null FROM dodatek WHERE ID_DOSTAWCY=:P401_ID_DOSTAWCY ) )',
'loop',
'if ( x.cnt = 1 )',
'then',
'    RETURN FALSE;',
'end if;',
'end loop;',
'',
'for x in ( select count(*) cnt',
'from dual',
'where exists ( SELECT null FROM SRUBA WHERE ID_DOSTAWCY=:P401_ID_DOSTAWCY ) )',
'loop',
'if ( x.cnt = 1 )',
'then',
'    RETURN FALSE;',
'end if;',
'end loop;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Nie mo\017Cna usun\0105\0107 dostawcy gdy istniej\0105 dostarczane \015Bruby i dodatki')
,p_when_button_pressed=>wwv_flow_imp.id(31269640964414356)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31271460731414358)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31269290337414355)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31271961423414358)
,p_event_id=>wwv_flow_imp.id(31271460731414358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31268594189414354)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(82600165438926403)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dod_firm'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31268594189414354
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31271007638414357)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>31271007638414357
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31268142392414354)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(82600165438926403)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dod_os_pryw'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31268142392414354
);
wwv_flow_imp.component_end;
end;
/
