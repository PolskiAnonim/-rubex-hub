prompt --application/pages/page_99994
begin
--   Manifest
--     PAGE: 99994
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
 p_id=>99994
,p_name=>'Dane logowania'
,p_alias=>'DANE-LOGOWANIA'
,p_page_mode=>'MODAL'
,p_step_title=>'Dane logowania'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(127731345937451402)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1000'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240116222747'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136631355730252375)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(136621132222252364)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(127871633491451517)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136631400758252375)
,p_plug_name=>'Dane logowania'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136631553390252375)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127783730784451445)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136633036662252377)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(136631553390252375)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136633336962252377)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(136631553390252375)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(127896192632451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz konto!')
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136633212094252377)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(136631553390252375)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127895353284451538)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(136634930819252379)
,p_branch_name=>'Go To Page 99993'
,p_branch_action=>'f?p=&APP_ID.:99993:&SESSION.:PREV:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(136633212094252377)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136582990416156142)
,p_name=>'P99994_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136631400758252375)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136583103924156144)
,p_name=>'P99994_NR_TELEFONU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136631400758252375)
,p_prompt=>'Nr Telefonu'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>13
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136583310821156146)
,p_name=>'P99994_ADRES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136631400758252375)
,p_prompt=>'Adres'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(136583547705156148)
,p_name=>'P99994_PASSWORD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136631400758252375)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>64
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138511982038940907)
,p_name=>'P99994_NAZWA_UZYTKOWNIKA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136631400758252375)
,p_prompt=>unistr('Nazwa u\017Cytkownika')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(136583081406156143)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'REGEXP_LIKE(:P99994_EMAIL, ''^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'')'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nale\017Cy poda\0107 prawid\0142owy adres mail')
,p_when_button_pressed=>wwv_flow_imp.id(136633336962252377)
,p_associated_item=>wwv_flow_imp.id(136582990416156142)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(136583267636156145)
,p_validation_name=>'NRTEL'
,p_validation_sequence=>20
,p_validation=>'REGEXP_LIKE(:P99994_NR_TELEFONU, ''^\+\d{12}$|^\d{9}$|^\+\d{11}$'')'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nale\017Cy poda\0107 prawid\0142owy numer telefonu:'),
'111 111 111',
'+11111111111'))
,p_when_button_pressed=>wwv_flow_imp.id(136633336962252377)
,p_associated_item=>wwv_flow_imp.id(136583103924156144)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(136583486738156147)
,p_validation_name=>'ADRESS NOT NULL'
,p_validation_sequence=>30
,p_validation=>'P99994_ADRES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Nale\017Cy poda\0107 adres')
,p_when_button_pressed=>wwv_flow_imp.id(136633336962252377)
,p_associated_item=>wwv_flow_imp.id(136583310821156146)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(136583637061156149)
,p_validation_name=>'PASSWORD NOT NULL'
,p_validation_sequence=>40
,p_validation=>'P99994_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Has\0142o nie mo\017Ce by\0107 puste')
,p_when_button_pressed=>wwv_flow_imp.id(136633336962252377)
,p_associated_item=>wwv_flow_imp.id(136583547705156148)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(138512215151940910)
,p_validation_name=>'NAZWA  UZYTKOWNIKA'
,p_validation_sequence=>60
,p_validation=>'P99994_NAZWA_UZYTKOWNIKA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Nale\017Cy poda\0107 nazw\0119 u\017Cytkownika')
,p_when_button_pressed=>wwv_flow_imp.id(136633336962252377)
,p_associated_item=>wwv_flow_imp.id(138511982038940907)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136633422384252377)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(136633036662252377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136634285627252378)
,p_event_id=>wwv_flow_imp.id(136633422384252377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(136583766831156150)
,p_name=>'New'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138511307636940901)
,p_event_id=>wwv_flow_imp.id(136583766831156150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99994_EMAIL,P99994_NR_TELEFONU,P99994_ADRES,P99994_PASSWORD,P99994_NAZWA_UZYTKOWNIKA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138511823695940906)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    found number;',
'BEGIN',
'  select count(*) into found from USER_QUEUE_OP where username = :P99994_NAZWA_UZYTKOWNIKA;',
'  IF found = 0 THEN',
'    IF :P99992_RODZAJ_KLIENTA = ''firma'' THEN',
'        INSERT INTO USER_QUQUE_FIRMA(username, passwd, nazwa, nip, rozmiar_firmy, nr_telefonu, email, adres) VALUES(:P99994_NAZWA_UZYTKOWNIKA, :P99994_PASSWORD, :P99993_NAZWA_FIRMY, :P99993_NIP, :P99993_ROZMIAR_FIRMY,:P99994_NR_TELEFONU, :P99994_EMAI'
||'L, :P99994_ADRES);',
'    ELSE',
'        INSERT INTO USER_QUEUE_OP(username, passwd, imie, nazwisko, nr_telefonu, email, adres) VALUES(:P99994_NAZWA_UZYTKOWNIKA, :P99994_PASSWORD, :P99993_IMIE, :P99993_NAZWISKO, :P99994_NR_TELEFONU, :P99994_EMAIL, :P99994_ADRES);',
'    END IF;',
'  END IF;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(136633336962252377)
,p_internal_uid=>138511823695940906
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138511746123940905)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Wyst\0105pi\0142 b\0142\0105d przy tworzeniu konta.'),
unistr('Spr\00F3buj ponownie p\00F3\017Aniej')))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(136633336962252377)
,p_process_success_message=>unistr('Prawid\0142owo utworzono konto')
,p_internal_uid=>138511746123940905
);
wwv_flow_imp.component_end;
end;
/
