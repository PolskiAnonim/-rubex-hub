prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_name=>'dod_dod'
,p_alias=>'DOD-DOD'
,p_page_mode=>'MODAL'
,p_step_title=>'Dodatek'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(64799221816860008)
,p_step_template=>wwv_flow_imp.id(127720327755451391)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240114112419'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105513119953039352)
,p_plug_name=>'Dodatek'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DODATEK'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105522857041039370)
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
 p_id=>wwv_flow_imp.id(64810553000869750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(105522857041039370)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64810989266869751)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(105522857041039370)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P201_ID_DODATKU'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64811304772869751)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(105522857041039370)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P201_ID_DODATKU'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64811713357869751)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(105522857041039370)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'NEXT'
,p_button_condition=>'P201_ID_DODATKU'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741926527268141)
,p_name=>'P201_ID_DODATKU'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_source=>'ID_DODATKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64742020125268142)
,p_name=>'P201_NAZWA_DODATKU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>'Nazwa Dodatku'
,p_source=>'NAZWA_DODATKU'
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
 p_id=>wwv_flow_imp.id(64742149079268143)
,p_name=>'P201_TYP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>'Typ Dodatku'
,p_source=>'TYP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64742216814268144)
,p_name=>'P201_OPIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>'Opis'
,p_source=>'OPIS'
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
 p_id=>wwv_flow_imp.id(101653333228985858)
,p_name=>'P201_ID_DOSTAWCY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>'Dostawca'
,p_source=>'ID_DOSTAWCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT nazwa_dostawcy, id_dostawcy FROM dostawca ORDER BY nazwa_dostawcy'
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('-Wybierz dostawc\0119-')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105517629802039366)
,p_name=>'P201_MATERIAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>unistr('Materia\0142')
,p_source=>'MATERIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105519231553039368)
,p_name=>'P201_CENA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>'Cena'
,p_source=>'CENA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(177631662302098039)
,p_name=>'P201_SZTUKI_W_PUDELKU'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_item_source_plug_id=>wwv_flow_imp.id(105513119953039352)
,p_prompt=>unistr('Ilo\015B\0107 w Pude\0142ku')
,p_source=>'SZTUKI_W_PUDELKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183678912648036001)
,p_validation_name=>'DOSTAWCA NOT NULL'
,p_validation_sequence=>10
,p_validation=>':P201_ID_DOSTAWCY is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy wybra\0107 dostawc\0119')
,p_associated_item=>wwv_flow_imp.id(101653333228985858)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183679016702036002)
,p_validation_name=>'MATERIAL NOT NULL'
,p_validation_sequence=>20
,p_validation=>':P201_MATERIAL IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy poda\0107 materia\0142')
,p_associated_item=>wwv_flow_imp.id(105517629802039366)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183679193773036003)
,p_validation_name=>'TYP'
,p_validation_sequence=>30
,p_validation=>':P201_TYP is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy poda\0107 typ dodatku')
,p_associated_item=>wwv_flow_imp.id(64742149079268143)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183679278950036004)
,p_validation_name=>'cena'
,p_validation_sequence=>40
,p_validation=>':P201_CENA>0 and :P201_CENA is not null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Cena musi by\0107 wi\0119ksza od 0')
,p_associated_item=>wwv_flow_imp.id(105519231553039368)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(183679317438036005)
,p_validation_name=>'SZTUKI'
,p_validation_sequence=>50
,p_validation=>':P201_SZTUKI_W_PUDELKU>0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Ilo\015B\0107 dodatk\00F3w w pude\0142ku nie mo\017Ce by\0107 pusta')
,p_associated_item=>wwv_flow_imp.id(177631662302098039)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(184741410910587021)
,p_validation_name=>'USUWANIE'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'for x in ( select count(*) cnt',
'from dual',
'where exists ( SELECT null FROM WYDANIE_CERTYFIKATU_DODATKU WHERE ID_DODATKU=:P201_ID_DODATKU ) )',
'loop',
'if ( x.cnt = 1 )',
'then',
'    RETURN FALSE;',
'end if;',
'end loop;',
'',
'IF :P201_ID_DODATKU IS NULL THEN',
'    RETURN FALSE;',
'END IF;',
'for x in ( select count(*) cnt',
'from dual',
'where exists ( SELECT null FROM sruba_dodatek WHERE ID_DODATKU=:P201_ID_DODATKU) )',
'loop',
'if ( x.cnt = 1 )',
'then',
'    RETURN FALSE;',
'end if;',
'end loop;',
'',
'for x in ( select count(*) cnt',
'from dual',
'where exists ( SELECT null FROM POZYCJA_W_ZAMOWIENIU WHERE "ID_DODATKU/SRUBY"=:P201_ID_DODATKU ) )',
'loop',
'if ( x.cnt = 1 )',
'then',
'    RETURN FALSE;',
'end if;',
'end loop;',
'',
'RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Aby usun\0105\0107 dodatek nie mo\017Ce on wyst\0119powa\0107 w zam\00F3wieniach, wydaniach certyfikat\00F3w ani pasuj\0105cych dodatkach do \015Brub')
,p_when_button_pressed=>wwv_flow_imp.id(64810989266869751)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64813639751869754)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64810553000869750)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64814193334869755)
,p_event_id=>wwv_flow_imp.id(64813639751869754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183681417648036026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE DODATEK SET NAZWA_DODATKU=:P201_NAZWA_DODATKU, MATERIAL=:P201_MATERIAL, CENA=:P201_CENA, ',
'ID_DOSTAWCY=:P201_ID_DOSTAWCY, OPIS=:P201_OPIS, SZTUKI_W_PUDELKU=:P201_SZTUKI_W_PuDELKU, TYP=:P201_TYP',
'WHERE ID_DODATKU=:P201_ID_DODATKU;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(64811304772869751)
,p_internal_uid=>183681417648036026
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183681578337036027)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO DODATEK (nazwa_dodatku, id_dostawcy, material, typ, opis, cena, SZTUKI_W_PUDELKU,ILOSC_PUDELEK_NA_MAGAZYNIE)',
'VALUES (:P201_NAZWA_DODATKU, :P201_ID_DOSTAWCY, :P201_MATERIAL, :P201_TYP, :P201_OPIS, :P201_CENA, :P201_SZTUKI_W_PUDELKU,',
'    0);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(64811713357869751)
,p_internal_uid=>183681578337036027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(183681601045036028)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE'
,p_process_sql_clob=>'DELETE FROM DODATEK WHERE ID_DODATKU=:P201_ID_DODATKU;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(64810989266869751)
,p_internal_uid=>183681601045036028
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64812387655869752)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>64812387655869752
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64809467063869749)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(105513119953039352)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form dod_sr'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64809467063869749
);
wwv_flow_imp.component_end;
end;
/
