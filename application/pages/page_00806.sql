prompt --application/pages/page_00806
begin
--   Manifest
--     PAGE: 00806
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
 p_id=>806
,p_name=>'Platnosc'
,p_alias=>'PLATNOSC'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Trwa p\0142atno\015B\0107 - nie wy\0142\0105czaj okna')
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'KACPER.KURAS@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240117160744'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187862255469597207)
,p_plug_name=>unistr('Trwa p\0142atno\015B\0107')
,p_region_template_options=>'#DEFAULT#:t-ItemContainer--wrap:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(127759329521451425)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<body style="position: relative; min-height: 100vh;">',
'',
'<progress max="100" value="0" id="progressBar" style="',
'      position: absolute;',
'      top: 50%;  ',
'      left: 50%;',
'      transform: translate(-50%, -50%); ',
'      width: 200px; margin-top: 50px;"></progress>',
'',
'<script>',
'  const progressBar = document.getElementById("progressBar");',
'  var value = 0;',
'',
'  ',
'      ',
'',
'  var interval = setInterval(frame, 50);',
'  function frame() {',
'      if (value >= 100) {',
'        clearInterval(interval);',
'        apex.item("P806_DONE").setValue("1");',
'      } else {',
'        value++;',
'        progressBar.value = value;',
'      }',
'    }',
'</script>',
'',
'</body>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190335208289366208)
,p_name=>'P806_DONE'
,p_item_sequence=>10
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(190336019251366216)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P806_DONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336170276366217)
,p_event_id=>wwv_flow_imp.id(190336019251366216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vidprac VARCHAR2(32);',
'vid VARCHAR2(32);',
'vidk VARCHAR2(32);',
'vSuma SUMA;',
'BEGIN',
'',
'SELECT ID_PRACOWNIKA INTO vidprac',
'    FROM ZAMOWIENIE',
'    WHERE ID_PRACOWNIKA IS NOT NULL',
'    GROUP BY ID_PRACOWNIKA',
'    HAVING COUNT(*) = (',
'        SELECT MIN(ILOSC)',
'            FROM (',
'            SELECT COUNT(*) AS ILOSC, ID_PRACOWNIKA',
'            FROM ZAMOWIENIE',
'            WHERE ID_PRACOWNIKA IS NOT NULL',
'            GROUP BY ID_PRACOWNIKA',
'        ) t',
'    )',
'    FETCH FIRST 1 ROW ONLY;',
'',
'SELECT ID_KLIENTA INTO vidk ',
'    FROM KONTO_APEX WHERE ID_APEXA=TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER)));',
'',
'SELECT WARTOSC_KOSZYKA(vidk) INTO vSuma FROM DUAL;',
'',
'INSERT INTO ZAMOWIENIE (ID_KLIENTA,ID_PRACOWNIKA,STATUS,DATA_ZLOZENIA,KOSZT) ',
unistr('    VALUES (vidk,vidprac,''Op\0142acone'',CURRENT_DATE,vSuma.SRUBY+vSuma.DODATKI) RETURNING ID_ZAMOWIENIA INTO vid;'),
'',
'',
'UPDATE SRUBA_W_ZAMOWIENIU SET id_zamowienia=vid WHERE id_zamowienia=''T'' || vidk;',
'--usuwanie srubek',
'FOR vSruba IN (SELECT * from sruba_w_zamowieniu where id_zamowienia=vid) LOOP',
'    update sruba set ILOSC_PUDELEK_NA_MAGAZYNIE=ILOSC_PUDELEK_NA_MAGAZYNIE-vSruba.ILOSC_PUDELEK WHERE id_sruby=vSruba.id_sruby;',
'end loop;',
'',
'UPDATE DODATEK_W_ZAMOWIENIU SET id_zamowienia=vid WHERE id_zamowienia=''T'' || vidk;',
'FOR vDodatek IN (SELECT * from dodatek_w_zamowieniu where id_zamowienia=vid) LOOP',
'    update dodatek set ILOSC_PUDELEK_NA_MAGAZYNIE=ILOSC_PUDELEK_NA_MAGAZYNIE-vDodatek.ILOSC_PUDELEK WHERE id_dodatku=vDodatek.id_dodatku;',
'end loop;',
'',
'',
'DELETE FROM "KOSZYK_ZAMOWIENIA" WHERE ID_KOSZYKA=''T'' || vidk;',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336833480366224)
,p_event_id=>wwv_flow_imp.id(190336019251366216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'POTWIERDZENIE'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Potwierdzono p\0142atno\015B\0107, zam\00F3wienie z\0142o\017Cone')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190336914007366225)
,p_event_id=>wwv_flow_imp.id(190336019251366216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'CLOSE'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/
