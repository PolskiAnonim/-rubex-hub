prompt --application/pages/page_00801
begin
--   Manifest
--     PAGE: 00801
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
 p_id=>801
,p_name=>'Ryneczek_dialog'
,p_alias=>'RYNECZEK-DIALOG'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Ile element\00F3w chcia\0142by\015B doda\0107 do koszyka?')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close: function(event, ui) {apex.navigation.dialog.close(true,{"dialogPageId":801});}'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240117023121'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142254105572044908)
,p_plug_name=>'sruby'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM SRUBA WHERE ID_SRUBY = :P801_ID'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'SUBSTR(:P801_ID,1,1) != ''A'''
,p_plug_display_when_cond2=>'SQL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column;">',
''))
,p_plug_footer=>'</div>'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(142254292859044909)
,p_region_id=>wwv_flow_imp.id(142254105572044908)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column;">',
'  <div>',
'    <h3>&NAZWA_SRUBY.</h3>  ',
'  </div>',
'<div style="display: flex; column-gap: 60px;">',
'    <div style="min-width: 0;">',
unistr('        <h1 style="font-size: 0.8rem;">D\0142ugo\015B\0107 gwintu: &DLUGOSC_GWINTU.</h1>'),
'        <h1 style="font-size: 0.8rem;">Rodzaj gwintu: &RODZAJ_GWINTU.</h1> ',
unistr('        <h1 style="font-size: 0.8rem;">D\0142ugo\015B\0107 trzpienia: &DLUGOSC_TRZPIENIA.</h1> '),
unistr('        <h1 style="font-size: 0.8rem;">Klasa wytrzyma\0142o\015Bci: &KLASA_WYTRZYMALOSCI.</h1> '),
'    </div>',
'    <div style="min-width: 0;">',
'        <h1 style="font-size: 0.8rem;">Kolor: &KOLOR.</h1> ',
unistr('        <h1 style="font-size: 0.8rem;">Materia\0142: &MATERIAL.</h1> '),
unistr('        <h1 style="font-size: 0.8rem;">Rodzaj \0142ba: &RODZAJ_LBA.</h1> '),
'        <h1 style="font-size: 0.8rem;">Gniazdo: &GNIAZDO.</h1> ',
'    </div>',
'</div>',
'',
'',
'',
'<div style="text-align: center;">',
'  <h3 id="&NAZWA_SRUBY_NARZEDZIA" style="margin-bottom: 1px">&ILOSC_W_PUDELKU. sztuk za</h3>',
unistr('  <h3 style="margin-top: 1px; color: #056ac8;">&CENA. z\0142.</h3>'),
unistr('  <h3 id="aaa" value="&ILOSC_W_PUDELKU." style="margin-top: 1px; color: #536675;font-size: 0.5rem;">Pozosta\0142o &ILOSC_PUDELEK_NA_MAGAZYNIE. opak.</h3>'),
'</div>',
'',
'',
'</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142255076634044917)
,p_plug_name=>'dodatki'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM DODATEK WHERE ID_DODATKU = :P801_ID',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'SUBSTR(:P801_ID,1,1) = ''A'''
,p_plug_display_when_cond2=>'SQL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column;">',
''))
,p_plug_footer=>'</div>'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(142255130535044918)
,p_region_id=>wwv_flow_imp.id(142255076634044917)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column;">',
'  <div>',
'    <h3>&NAZWA_DODATKU.</h3>  ',
'  </div>',
'<div style="display: flex; column-gap: 60px;">',
'    <div style="min-width: 0;">',
'        <h1 style="font-size: 0.8rem;">Typ: &TYP.</h1>',
'    </div>',
'    <div style="min-width: 0;">',
unistr('        <h1 style="font-size: 0.8rem;">Materia\0142: &MATERIAL.</h1> '),
'    </div>',
'</div>',
'        <h1 style="font-size: 0.8rem;">&OPIS.</h1> ',
'',
'',
'<div style="text-align: center;">',
'  <h3 style="margin-bottom: 1px">&ILOSC_W_PUDELKU. sztuk za</h3>',
unistr('  <h3 style="margin-top: 1px; color: #056ac8;">&CENA. z\0142.</h3>'),
'  ',
unistr('  <h3 style="margin-top: 1px; color: #536675;font-size: 0.5rem;">Pozosta\0142o &ILOSC_PUDELEK_NA_MAGAZYNIE. opak.</h3>'),
'  ',
'</div>',
'',
'',
'</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159731461487745943)
,p_plug_name=>unistr('Uk\0142adatoInator')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_header=>'  <div style="display: flex; justify-content: space-between; align-items: center; flex-direction: column;">'
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139399117104447830)
,p_button_sequence=>120
,p_button_name=>'DODAJ_DO_KOSZYKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj do koszyka'
,p_button_condition=>unistr(':APP_USER != ''go\015B\0107''')
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
,p_security_scheme=>'!'||wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142256724990044934)
,p_button_sequence=>130
,p_button_name=>'LOGOWANIE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Zaloguj si\0119, aby doda\0107 przedmiot do koszyka')
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_button_condition=>unistr(':APP_USER = ''go\015B\0107''')
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130176416661451941)
,p_name=>'P801_KLIENT'
,p_item_sequence=>50
,p_source=>'SELECT ID_KLIENTA FROM KONTO_APEX WHERE ID_APEXA=TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER)));'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139398754163447826)
,p_name=>'P801_LICZBA'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Liczba element\00F3w')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vLiczba INTEGER;',
'BEGIN',
'    IF SUBSTR(:P801_ID,1,1)=''S'' THEN',
'        SELECT LICZBA INTO vLiczba FROM "KOSZYK_SRUBY"',
'        WHERE ID_KOSZYKA = ''T'' || :P801_KLIENT AND ID_SRUBY = :P801_ID;',
'    ELSE',
'        SELECT LICZBA INTO vLiczba FROM "KOSZYK_DODATKI"',
'        WHERE ID_KOSZYKA = ''T'' || :P801_KLIENT AND ID_DODATKU = :P801_ID;',
'    END IF;',
'  ',
'  RETURN vLiczba;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN RETURN 0;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when=>unistr(':APP_USER != ''go\015B\0107''')
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'9999'
,p_attribute_03=>'left'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139400449038447843)
,p_name=>'P801_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142254351757044910)
,p_name=>'P801_MAX'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMax INTEGER;',
'BEGIN',
'CASE WHEN SUBSTR(:P801_ID,1,1)=''A'' THEN ',
'    SELECT ILOSC_PUDELEK_NA_MAGAZYNIE INTO vMax FROM DODATEK WHERE ID_DODATKU=:P801_ID;',
'ELSE',
'    SELECT ILOSC_PUDELEK_NA_MAGAZYNIE INTO vMax FROM SRUBA WHERE ID_SRUBY=:P801_ID;',
'END CASE;',
'RETURN vMax;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142255309678044920)
,p_name=>'P801_CENA'
,p_item_sequence=>80
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMax INTEGER;',
'BEGIN',
'CASE WHEN SUBSTR(:P801_ID,1,1)=''A'' THEN ',
'    SELECT CENA INTO vMax FROM DODATEK WHERE ID_DODATKU=:P801_ID;',
'ELSE',
'    SELECT CENA INTO vMax FROM SRUBA WHERE ID_SRUBY=:P801_ID;',
'END CASE;',
'RETURN vMax;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151252934528700841)
,p_name=>'P801_NARZEDZIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(159731461487745943)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Narzedzia'
,p_pre_element_text=>unistr('<div data-tooltip="Dodanie dodatkowych narz\0119dzi do poprawnego monta\017Cu produktu. Us\0142uga kosztuje 1z\0142 od pozycji w zam\00F3wieniu.">')
,p_post_element_text=>'</div>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vNarzedzia CHAR(1);',
'BEGIN',
'    IF SUBSTR(:P801_ID,1,1)=''S'' THEN',
'        SELECT NARZEDZIA INTO vNarzedzia FROM "KOSZYK_SRUBY"',
'        WHERE ID_KOSZYKA = ''T'' || :P801_KLIENT AND ID_SRUBY = :P801_ID;',
'    ELSE',
'        SELECT NARZEDZIA INTO vNarzedzia FROM "KOSZYK_DODATKI"',
'        WHERE ID_KOSZYKA = ''T'' || :P801_KLIENT AND ID_DODATKU = :P801_ID;',
'    END IF;',
'  ',
'  RETURN vNarzedzia;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN RETURN ''N'';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(151253021136700842)
,p_name=>'P801_GWARANCJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159731461487745943)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gwarancja'
,p_pre_element_text=>unistr('<div data-tooltip="Dodanie dodatkowej gwarancji na produkt. Us\0142uga kosztuje 21% ceny za opakowanie">')
,p_post_element_text=>'</div>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vGwarancja CHAR(1);',
'BEGIN',
'    IF SUBSTR(:P801_ID,1,1)=''S'' THEN',
'        SELECT GWARANCJA INTO vGwarancja FROM "KOSZYK_SRUBY"',
'        WHERE ID_KOSZYKA = ''T'' || :P801_KLIENT AND ID_SRUBY = :P801_ID;',
'    ELSE',
'        SELECT GWARANCJA INTO vGwarancja FROM "KOSZYK_DODATKI"',
'        WHERE ID_KOSZYKA = ''T'' || :P801_KLIENT AND ID_DODATKU = :P801_ID;',
'    END IF;',
'  ',
'  RETURN vGwarancja;',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN RETURN ''N'';',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(139399023150447829)
,p_validation_name=>'Odpowiednia liczba'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P801_LICZBA>:P801_MAX THEN RETURN FALSE;',
'END IF;',
'IF :P801_LICZBA<0 then return false;',
'end if;',
'IF NOT(REGEXP_LIKE(:P801_LICZBA,''^\d+$'')) THEN RETURN FALSE;',
'END IF;',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Nale\017Cy poda\0107 nieujemn\0105 ca\0142kowit\0105 liczb\0119 mniejsz\0105 b\0105d\017A r\00F3wn\0105 stanowi magazynowemu')
,p_when_button_pressed=>wwv_flow_imp.id(139399117104447830)
,p_associated_item=>wwv_flow_imp.id(139398754163447826)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184744171933587048)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DODANIE KOSZYKA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO KOSZYK_ZAMOWIENIA ',
'VALUES (''T'' || :P801_KLIENT, :P801_KLIENT, 0);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139399117104447830)
,p_process_when=>'SELECT * FROM KOSZYK_ZAMOWIENIA WHERE ID_KOSZYKA=''T'' || :P801_KLIENT;'
,p_process_when_type=>'NOT_EXISTS'
,p_internal_uid=>184744171933587048
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184744252146587049)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DODANIE KOSZYKA DODATKOW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF SUBSTR(:P801_ID, 1, 1) = ''A'' THEN ',
'  INSERT INTO "KOSZYK_DODATKI" VALUES (''T'' || :P801_KLIENT, :P801_ID, 0,''X'',''X'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139399117104447830)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_KOSZYKA FROM KOSZYK_DODATKI',
'WHERE ID_KOSZYKA=''T'' || :P801_KLIENT AND ID_DODATKU=:P801_ID;'))
,p_process_when_type=>'NOT_EXISTS'
,p_internal_uid=>184744252146587049
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184744398475587050)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DODANIE KOSZYKA SRUB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF SUBSTR(:P801_ID, 1, 1) = ''S'' THEN ',
'  INSERT INTO "KOSZYK_SRUBY" VALUES (''T'' || :P801_KLIENT, :P801_ID, 0,''X'',''X'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139399117104447830)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_KOSZYKA FROM KOSZYK_SRUBY',
'    WHERE ID_KOSZYKA=''T'' || :P801_KLIENT AND ID_SRUBY=:P801_ID;'))
,p_process_when_type=>'NOT_EXISTS'
,p_internal_uid=>184744398475587050
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190334593762366201)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ZMIANA POZYCJI KOSZYKA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF SUBSTR(:P801_ID, 1, 1) = ''A'' THEN ',
'    UPDATE "KOSZYK_DODATKI" SET LICZBA=:P801_LICZBA, GWARANCJA=:P801_GWARANCJA, NARZEDZIA=:P801_NARZEDZIA WHERE ID_KOSZYKA=''T'' || :P801_KLIENT AND ID_DODATKU=:P801_ID;',
'ELSE',
'    UPDATE "KOSZYK_SRUBY" SET LICZBA=:P801_LICZBA, GWARANCJA=:P801_GWARANCJA, NARZEDZIA=:P801_NARZEDZIA WHERE ID_KOSZYKA=''T'' || :P801_KLIENT AND ID_SRUBY=:P801_ID;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139399117104447830)
,p_internal_uid=>190334593762366201
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190334670739366202)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'USUWANIE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l1 INTEGER;',
'l2 INTEGER;',
'BEGIN',
'IF SUBSTR(:P801_ID, 1, 1) = ''A'' THEN ',
'    DELETE FROM "KOSZYK_DODATKI" WHERE ID_KOSZYKA=''T'' || :P801_KLIENT AND ID_DODATKU=:P801_ID;',
'ELSE',
'    DELETE FROM "KOSZYK_SRUBY" WHERE ID_KOSZYKA=''T'' || :P801_KLIENT AND ID_SRUBY=:P801_ID;',
'END IF;',
'SELECT COUNT(*) INTO l1 FROM "KOSZYK_DODATKI" WHERE ID_KOSZYKA=''T'' || :P801_KLIENT;',
'SELECT COUNT(*) INTO l2 FROM "KOSZYK_SRUBY" WHERE ID_KOSZYKA=''T'' || :P801_KLIENT;',
'IF l1+l2=0 THEN',
'DELETE FROM "KOSZYK_ZAMOWIENIA" WHERE ID_KOSZYKA=''T'' || :P801_KLIENT;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139399117104447830)
,p_process_when=>'P801_LICZBA'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'0'
,p_internal_uid=>190334670739366202
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190334730877366203)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(139399117104447830)
,p_internal_uid=>190334730877366203
);
wwv_flow_imp.component_end;
end;
/
