prompt --application/pages/page_00803
begin
--   Manifest
--     PAGE: 00803
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
 p_id=>803
,p_name=>'Podsumowanie koszyka'
,p_alias=>'PODSUMOWANIE-KOSZYKA'
,p_step_title=>'Podsumowanie koszyka'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function checkBoxes() {',
'',
'  var checkboxes = document.getElementsByTagName("input");',
'  for(var i = 0; i < checkboxes.length; i++) {',
'',
'    var checkbox = checkboxes[i];',
'    if(checkbox.type === "checkbox") {',
'',
'      if(checkbox.id === "Y") {',
'',
'        checkbox.checked = true;',
'',
'      } ',
'    }',
'  }',
'}',
'',
'checkBoxes();',
'',
'',
'function setSelectedSruba(event,button) {',
'    event.preventDefault(); ',
'    apex.server.process("GET_ANY_URL", { ',
'    x01: 801,',
'    x02:''P801_ID'',',
'    x03:button.id',
'},{',
'    dataType: ''text'',',
'    success: (urlLink)=>{eval(urlLink);}',
'});',
'    checkBoxes();',
'}',
'',
'',
'',
'let list = apex.item("P803_BLAD").getValue().split('':'');',
'list.forEach( (id)=>{',
'    let button = document.getElementById(id);',
'        if(button){ ',
'            button.style.backgroundColor = "red";',
'            button.innerText = "Brak elementu! EDYTUJ!";',
'            }',
'})',
'',
'',
'',
'',
'',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240116220105'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159729896155745927)
,p_plug_name=>unistr('Wybrane \015Aruby')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159728177791745910)
,p_plug_name=>'Przedmioty - sruby'
,p_parent_plug_id=>wwv_flow_imp.id(159729896155745927)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  ks.id_sruby,',
'  s.nazwa_sruby, ',
'  ks.liczba,',
'  s.cena,',
' ',
'  ROUND((s.cena * ks.liczba) *',
'    CASE WHEN ks.gwarancja = ''Y'' THEN 1.21 ELSE 1 END +',
'    CASE WHEN ks.narzedzia = ''Y'' THEN 1 ELSE 0 END,2) AS suma,',
'  ks.narzedzia, ',
'  ks.gwarancja,',
'  ''('' || s.cena || ''*'' || ks.liczba || '')'' || CASE WHEN ks.gwarancja = ''Y'' THEN '' * 1.21'' ELSE '''' END ',
'  || CASE WHEN ks.narzedzia = ''Y'' THEN '' + 1'' ELSE '''' END as EQUATION',
'FROM',
'  "KOSZYK_SRUBY" ks',
'JOIN',
'  SRUBA s on s.id_sruby = ks.id_sruby',
'WHERE',
'  ks.id_koszyka = ''T'' || (',
'    SELECT id_klienta ',
'    FROM konto_apex',
'    WHERE id_apexa = TO_CHAR(apex_util.get_user_id(:APP_USER))  ',
'  )'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>unistr('Brak przedmiot\00F3w.')
,p_show_total_row_count=>false
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function setSelectedSruba(event,button) {',
'    event.preventDefault(); ',
'    apex.server.process("GET_ANY_URL", { ',
'    x01: 801,',
'    x02:''P801_ID'',',
'    x03:button.id',
'},{',
'    dataType: ''text'',',
'    success: (urlLink)=>{eval(urlLink); }',
'});',
'   ',
'}',
'',
'',
'',
'</script>'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(159728662721745915)
,p_region_id=>wwv_flow_imp.id(159728177791745910)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column; width: 100%;">',
'<div style="display: flex; justify-content: space-between; align-items: center; width: 100%; column-gap: 120px;">',
'    <div style="min-width: 0;">',
'        <h4>&NAZWA_SRUBY.</h4>',
'    </div>',
'    <div style="display: flex; flex-wrap: nowrap; align-items: center; min-width: 300px;  column-gap: 40px;">',
'        <div style="white-space: nowrap; flex-wrap: nowrap;">',
'            <h4 style="color: grey; white-space: nowrap; flex-wrap: nowrap;">&EQUATION.</h4>',
unistr('            <h4 style=" flex-wrap: nowrap;  white-space: nowrap; ">= &SUMA. z\0142</h4>'),
'        </div>',
unistr('        <button id="&ID_SRUBY." class="t-Button t-Button--hot" onclick="setSelectedSruba(event,this)" >Edytuj pozycj\0119</button> '),
'      <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column; width: 100%;">',
'       <div style="min-width: 0; display: flex; justify-content: flex-end; align-items: center;">',
'            <input type="checkbox" id="&GWARANCJA." name="Dodatkowa gwarancja" value="&GWARANCJA." disabled>',
'            <label for="Gwarancja">Dodatkowa gwarancja</label>',
'        </div>',
'',
'        <div style="min-width: 0; display: flex; justify-content: flex-end; align-items: center;">',
unistr('            <input type="checkbox" id="&NARZEDZIA."  name="Dodatkowe narz\0119dzia" value="&NARZEDZIA." disabled>'),
unistr('            <label for="Narzedzia">Dodatkowe narz\0119dzia</label>'),
'',
'        </div>',
'</div>',
'',
'',
'    </div>',
'</div>',
'</div>',
'',
''))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159729947973745928)
,p_plug_name=>'Wybrane Dodatki'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159729554234745924)
,p_plug_name=>'Przedmioty - dodatki'
,p_parent_plug_id=>wwv_flow_imp.id(159729947973745928)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    kd.id_dodatku,',
'    d.nazwa_dodatku, ',
'    kd.liczba, ',
'    d.cena, ',
'    ROUND((d.cena * kd.liczba) *',
'    CASE WHEN kd.gwarancja = ''Y'' THEN 1.21 ELSE 1 END +',
'    CASE WHEN kd.narzedzia = ''Y'' THEN 1 ELSE 0 END,2) AS suma,',
'     ''('' || d.cena || ''*'' || kd.liczba || '')'' || CASE WHEN kd.gwarancja = ''Y'' THEN '' * 1.21'' ELSE '''' END ',
'  || CASE WHEN kd.narzedzia = ''Y'' THEN '' + 1'' ELSE '''' END as EQUATION,',
'    NARZEDZIA, ',
'    GWARANCJA  ',
'FROM',
' "KOSZYK_DODATKI" kd ',
'JOIN DODATEK d on kd.id_dodatku = d.id_dodatku  ',
'    WHERE ID_KOSZYKA = ''T'' || (',
'        SELECT ID_KLIENTA ',
'        FROM KONTO_APEX ',
'        WHERE ',
'            ID_APEXA = TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER) ))',
'            );',
' ',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>unistr('Brak przedmiot\00F3w.')
,p_show_total_row_count=>false
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <script>',
'',
'',
'function setSelectedDodatek(event,button) {',
'    event.preventDefault(); ',
'    apex.server.process("GET_ANY_URL", { ',
'    x01: 801,',
'    x02:''P801_ID'',',
'    x03:button.id',
'},{',
'    dataType: ''text'',',
'    success: (urlLink)=>{eval(urlLink); }',
'});',
'   ',
'}',
'',
'',
'</script>',
''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(159729639938745925)
,p_region_id=>wwv_flow_imp.id(159729554234745924)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column; width: 100%;">',
'<div style="display: flex; justify-content: space-between; align-items: center; width: 100%; column-gap: 120px;">',
'    <div style="min-width: 0;">',
'        <h4>&NAZWA_DODATKU.</h4>',
'    </div>',
'    <div style="display: flex; flex-wrap: nowrap; align-items: center; min-width: 300px;  column-gap: 40px;">',
'        <div style="white-space: nowrap; flex-wrap: nowrap;">',
'            <h4 style="color: grey; white-space: nowrap; flex-wrap: nowrap;">&EQUATION.</h4>',
unistr('            <h4 style=" flex-wrap: nowrap;  white-space: nowrap; ">= &SUMA. z\0142</h4>'),
'        </div>',
unistr('        <button id="&ID_DODATKU." class="t-Button t-Button--hot" onclick="setSelectedDodatek(event,this)">Edytuj pozycj\0119</button> '),
'        <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column; width: 100%;">',
'         <div style="min-width: 0; display: flex; justify-content: flex-end; align-items: center;">',
'            <input type="checkbox" id="&GWARANCJA." name="Dodatkowa gwarancja" value="&GWARANCJA." disabled>',
'            <label for="Gwarancja">Dodatkowa gwarancja</label>',
'',
'        </div>',
'',
'        <div style="min-width: 0; display: flex; justify-content: flex-end; align-items: center;">',
unistr('            <input type="checkbox" id="&NARZEDZIA."  name="Dodatkowe narz\0119dzia" value="&NARZEDZIA." disabled>'),
unistr('            <label for="Narzedzia">Dodatkowe narz\0119dzia</label>'),
'',
'        </div>',
'',
'        </div>',
'',
'    </div>',
'</div>',
'',
'</div>',
''))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159730182676745930)
,p_plug_name=>'Calc'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="t-Card-title" style="display: flex; justify-content: space-between; align-items: center; flex-direction: column;">',
unistr('             <h3 style="margin: 0px;">Ca\0142kowita kwota za zam\00F3wienie wynosi:</h3>'),
unistr('        <h3 style="margin: 0px;">&P803_KWOTA. z\0142</h3> ')))
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160213512093704864)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(159730071570745929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159730182676745930)
,p_button_name=>'Platnosc'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Dokonaj p\0142atno\015Bci')
,p_button_condition=>'P803_KWOTA'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_cattributes=>'style="width: 200px;margin:auto;background-color: #a91409"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(270579046917686808)
,p_branch_action=>'f?p=&APP_ID.:806:&SESSION.::&DEBUG.:806::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(159730071570745929)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159729113854745920)
,p_name=>'P803_SELECTED_SRUBA'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159729285764745921)
,p_name=>'P803_SELECTED_DODATEK'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159731352553745942)
,p_name=>'P803_KWOTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(159730182676745930)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vSuma SUMA;',
'vId VARCHAR2(32);',
'BEGIN',
'SELECT id_klienta into vId',
'   FROM konto_apex  ',
'   WHERE id_apexa = TO_CHAR(apex_util.get_user_id(:APP_USER));',
'SELECT WARTOSC_KOSZYKA(vId) INTO vSuma FROM dual;',
'return vSuma.SRUBY + vSuma.DODATKI;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(270578885913686806)
,p_name=>'P803_BLAD'
,p_item_sequence=>70
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    (SELECT LISTAGG(id_sruby,'':'') AS SRUBY',
'    FROM ',
'        (select id_sruby  ',
'        FROM koszyk_sruby k WHERE LICZBA>',
'            (SELECT ILOSC_PUDELEK_NA_MAGAZYNIE FROM sruba ',
'                WHERE id_sruby=k.id_sruby) AND ',
'                    id_koszyka = ''T'' || (',
'                    SELECT id_klienta ',
'                    FROM konto_apex',
'                        WHERE id_apexa = TO_CHAR(apex_util.get_user_id(:APP_USER)))',
'                ))',
'    || '':'' ||',
'    (SELECT LISTAGG(id_dodatku,'':'') AS DODATKI',
'    FROM ',
'        (select id_dodatku ',
'        FROM koszyk_dodatki k WHERE LICZBA>',
'            (SELECT ILOSC_PUDELEK_NA_MAGAZYNIE FROM dodatek ',
'                WHERE id_dodatku=k.id_dodatku) AND',
'                                    id_koszyka = ''T'' || (',
'                    SELECT id_klienta ',
'                    FROM konto_apex',
'                        WHERE id_apexa = TO_CHAR(apex_util.get_user_id(:APP_USER)))',
'            )) AS BLAD',
'    FROM DUAL;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(270578768005686805)
,p_validation_name=>'NOT_IN_STOCK'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF LENGTH(:P803_BLAD)>1 THEN RETURN FALSE;',
'END IF;',
'RETURN TRUE;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Wymagana jest edycja nieistniej\0105cych produkt\00F3w na stanie.')
,p_when_button_pressed=>wwv_flow_imp.id(159730071570745929)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(151252222701700834)
,p_name=>'DialogClosed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(151252430945700836)
,p_event_id=>wwv_flow_imp.id(151252222701700834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P803_SELECTED_SRUBA,P803_SELECTED_DODATEK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168711643119548122)
,p_event_id=>wwv_flow_imp.id(151252222701700834)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168711566317548121)
,p_event_id=>wwv_flow_imp.id(151252222701700834)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function checkBoxes() {',
'',
'  var checkboxes = document.getElementsByTagName("input");',
'  for(var i = 0; i < checkboxes.length; i++) {',
'',
'    var checkbox = checkboxes[i];',
'    if(checkbox.type === "checkbox") {',
'',
'      if(checkbox.id === "Y") {',
'',
'        checkbox.checked = true;',
'',
'      } ',
'    }',
'  }',
'}',
'',
'checkBoxes();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168711319174548119)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ANY_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_url VARCHAR2(4000);',
'BEGIN',
'      l_url := APEX_PAGE.GET_URL(',
'          p_page => APEX_APPLICATION.g_x01,',
'          p_items => APEX_APPLICATION.g_x02,',
'          p_values => APEX_APPLICATION.g_x03);',
'    htp.p(l_url);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>168711319174548119
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(187865255347597237)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ErrorList'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    htp.prn(:P803_BLAD);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>187865255347597237
);
wwv_flow_imp.component_end;
end;
/
