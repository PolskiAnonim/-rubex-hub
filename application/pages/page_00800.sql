prompt --application/pages/page_00800
begin
--   Manifest
--     PAGE: 00800
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
 p_id=>800
,p_name=>unistr('Ryneczek \015Brubexu')
,p_alias=>unistr('RYNECZEK-\015ARUBEXU')
,p_step_title=>unistr('Ryneczek \015Brubexu')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(127736532937451406)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'JAKUB.WIECZOREK@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20240116220336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111591920542383807)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134066486713674746)
,p_plug_name=>'Filtry'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(127831620256451483)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134723387980196316)
,p_plug_name=>unistr('Dlugo\015B\0107_GWINTU')
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>10
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>unistr('D\0142ugo\015B\0107 gwintu')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134723956404196322)
,p_plug_name=>'Rodzaj gwintu'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>20
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>'Rodzaj gwintu'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134724086259196323)
,p_plug_name=>unistr('D\0142ugo\015B\0107 trzpienia')
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>30
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>unistr('D\0142ugo\015B\0107 trzpienia')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134724248378196325)
,p_plug_name=>'KLASA WYTRZYMALOSCI'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>40
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>unistr('Klasa wyrzyma\0142o\015Bci')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134724403169196327)
,p_plug_name=>'KOLOR'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>50
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>'Kolor'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134724611754196329)
,p_plug_name=>'MATERIAL'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>60
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>unistr('Materia\0142')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134724809478196331)
,p_plug_name=>'RODZAJ_LBA'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>70
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>unistr('Rodzaj \0142ba')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134725004141196333)
,p_plug_name=>'WYSOKOSC_LBA'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>80
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>unistr('Wysoko\015B\0107 \0142ba')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134725258872196335)
,p_plug_name=>'Gniazdo'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>90
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>'Gniazdo'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134725439786196337)
,p_plug_name=>'Typ'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>100
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'Y'
,p_plug_header=>'Typ'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134725695767196339)
,p_plug_name=>'MATERIAL'
,p_parent_plug_id=>wwv_flow_imp.id(134066486713674746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>110
,p_function_body_language=>'JAVASCRIPT'
,p_plug_source=>';'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'Y'
,p_plug_header=>unistr('Materia\0142')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138514540589940933)
,p_plug_name=>'Cart content'
,p_region_css_classes=>'t-NavigationBar-item'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127830214700451482)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BEFORE_NAVIGATION_BAR'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar">',
'   <li class="t-NavigationBar-item has-username">',
'      <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button">',
'      <span class="t-Icon fa fa fa-shopping-cart" aria-hidden="true"></span>',
'      <span class="t-Button-label">Koszyk</span><span class="t-Button-badge"></span>',
'      <span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'      </button>',
'   </li>',
'',
'',
'   <li>',
'      <ul id="bozeDlaczego" >',
'          <li >',
'                    <button class="t-Button t-Button--stretch" type="button" onclick="apex.navigation.redirect(&quot;f?p=120:803:&APP_SESSION.:::::&quot;)">',
unistr('                <span class="t-Button-label">Przejd\017A do podsumowania</span>'),
'            </button>',
'            <div style="margin: 1px; display: flex; align-items: center; ">',
'                <h4 style="margin-right: 5px; margin-top: 0px;">KOSZYK </h4>',
'                <h4 style="color: grey; margin-top: 0px;"> (&P800_ELEMENTY_W_KOSZYKU.) </h4>',
'            </div>',
'             <hr> ',
'          </li>',
'      </ul>',
'   </li>',
'</ul>',
'',
'<style>',
'   #niewierze{',
'   display: none;',
'   background-color: #181a1b;',
'',
'   }',
'   #bozeDlaczego li{',
'   color: white',
'',
'   }',
'   #bozeDlaczego{',
'   background-color: #181a1b;',
'   display: none;',
'   position:absolute;',
'   border: 1px solid #ccc; ',
'   padding: 10px;',
'   z-index: 1;',
'   overflow: auto;',
'   }',
'</style>',
'<script>',
'   let li = document.getElementById("bozeDlaczego");',
'   let button = document.querySelector(".t-Button--navBar");',
'',
'   ',
'   button.addEventListener("click", function () {',
'       toggleListVisibility();',
'   });',
'   ',
'   function toggleListVisibility() {',
'       let buttonRect = button.getBoundingClientRect();',
'       li.style.top = buttonRect.bottom + "px";',
'   ',
'       let listItems = li.querySelectorAll("li");',
'       listItems.forEach(item => {',
'           item.style.display = (item.style.display === "none" || item.style.display === "") ? "block" : "none";',
'       });',
'       li.style.display = (li.style.display === "none" || li.style.display === "") ? "block" : "none";',
'',
'        const liWidth = li.getBoundingClientRect().width; ',
'        li.style.left = (buttonRect.left - liWidth + 150) + "px";',
'   }',
'   ',
'   ',
'   document.addEventListener("DOMContentLoaded", ()=> {',
'',
'',
'       let table = document.getElementById("niewierze");',
'       // Loop through rows',
'       if(table.rows.length === 1){',
'            let liInside = document.createElement("li");',
'           liInside.classList.add("a-Menu-item");',
'   ',
'           let divInside = document.createElement("div");',
'           divInside.classList.add("a-Menu-inner");',
unistr('           divInside.textContent = "Tw\00F3j koszyk jest pusty";'),
'   ',
'           liInside.appendChild(divInside); ',
'           li.appendChild(liInside);',
'       }',
'       for (let i = 1; i < table.rows.length; i++) {',
'           let row = table.rows[i];',
'   ',
'           let name = row.cells[1].textContent;',
'           let quantity = row.cells[0].textContent;',
'           let cost = row.cells[2].textContent;',
'',
'   ',
'           let liInside = document.createElement("li");',
'           liInside.classList.add("a-Menu-item");',
'   ',
'           let divInside = document.createElement("div");',
'           divInside.classList.add("a-Menu-inner");',
'           divInside.style.display = "flex";',
'           divInside.style.justifyContent = "space-between";',
'',
'           let divInsideName = document.createElement("h4");',
'           let divInsideNumber = document.createElement("h4");',
'           let divInsideLineBreak = document.createElement("hr");',
'',
'           divInsideName.style.marginRight = "auto";',
'',
'',
'           divInsideName.textContent = name;',
unistr('           divInsideNumber.textContent = quantity + ''szt.       ''  + (quantity * cost).toFixed(2) +''z\0142'';'),
'',
'           liInside.appendChild(divInside); ',
'   ',
'           divInside.appendChild(divInsideName); ',
'           divInside.appendChild(divInsideNumber); ',
'',
'           li.appendChild(liInside);',
'           li.appendChild(divInsideLineBreak);',
'       }',
'   });',
'</script>',
''))
,p_plug_required_role=>'!'||wwv_flow_imp.id(21995650961848200)
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>unistr(':APP_USER != ''go\015B\0107''')
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(138514632879940934)
,p_plug_name=>'ElementyWZamowieniu'
,p_region_name=>'niewierze'
,p_parent_plug_id=>wwv_flow_imp.id(138514540589940933)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nazwa_sruby, liczba, cena, (cena * liczba) FROM "KOSZYK_SRUBY" NATURAL JOIN SRUBA  WHERE ID_KOSZYKA = ''T'' || (SELECT ID_KLIENTA FROM KONTO_APEX WHERE ',
'ID_APEXA = TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER) )))',
'UNION ',
'SELECT nazwa_dodatku, liczba, cena, cena * liczba FROM "KOSZYK_DODATKI" NATURAL JOIN DODATEK  WHERE ID_KOSZYKA = ''T'' || (SELECT ID_KLIENTA FROM KONTO_APEX WHERE ',
'ID_APEXA = TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER) )));',
' '))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130175398021451930)
,p_name=>'LICZBA'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Liczba'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142257142394044938)
,p_name=>'NAZWA_SRUBY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Nazwa Sruby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(150614690643910202)
,p_name=>'CENA'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Cena'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(151249176135700803)
,p_name=>'(CENA*LICZBA)'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'(cena*liczba)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(150616189669910217)
,p_plug_name=>unistr('krn\0105brny k\0105cik')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127841453146451491)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111592598223383809)
,p_plug_name=>unistr('Ryneczek \015Brubexu - \015Bruby')
,p_region_name=>'P800_SRUBY'
,p_parent_plug_id=>wwv_flow_imp.id(150616189669910217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127777036284451439)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SRUBA'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL)))',
'  AND (:P800_SEARCH IS NULL OR (UPPER(NAZWA_SRUBY) LIKE ''%'' || UPPER(:P800_SEARCH) || ''%''))',
' AND',
' ID_DOSTAWCY IS NOT NULL'))
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'N'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'  function setSelectedSruba(event,button) {',
'       event.preventDefault(); ',
'     apex.server.process("GET_ANY_URL", { ',
'        x01: 801,',
'        x02:''P801_ID'',',
'        x03:button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'',
'  }',
'',
'  function setPasujaceDodatki(event,button){',
'       event.preventDefault(); ',
'',
'    apex.server.process("GET_ANY_URL", { ',
'        x01: 804,',
'        x02:''P804_ID'',',
'        x03: button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'}',
'    function setPasujaceCertyfikaty(event,button){',
'       event.preventDefault(); ',
'',
'    apex.server.process("GET_ANY_URL", { ',
'        x01: 805,',
'        x02:''P805_ID'',',
'        x03: button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'',
'  }',
'</script>'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(134065260576674734)
,p_region_id=>wwv_flow_imp.id(111592598223383809)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
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
'  <h3 style="margin-bottom: 1px">&ILOSC_W_PUDELKU. sztuk za</h3>',
unistr('  <h3 style="margin-top: 1px; color: #056ac8;">&CENA. z\0142.</h3>'),
'  ',
'',
'',
'',
'  <div style="display: flex; justify-content: space-between; flex-direction: row;">',
'    <button id="&ID_SRUBY." class="t-Button" onclick="setPasujaceDodatki(event,this)" >',
unistr('    Poka\017C pasuj\0105ce dodatki'),
'  </button>',
'      <button id="&ID_SRUBY." class="t-Button t-Button--hot" onclick="setSelectedSruba(event,this)" >',
unistr('    Dodaj do zam\00F3wienia'),
'  </button>',
'',
'      <button id="&ID_SRUBY." class="t-Button" onclick="setPasujaceCertyfikaty(event,this)" >',
'    Kompatybilne certyfikaty',
'  </button>',
'  </div>',
'',
'',
'',
unistr('  <h3 style="margin-top: 1px; color: #536675;font-size: 0.5rem;">Pozosta\0142o &ILOSC_PUDELEK_NA_MAGAZYNIE. opak.</h3>'),
'</div>',
'',
'',
'</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID_SRUBY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134066093766674742)
,p_plug_name=>unistr('Ryneczek \015Brubexu - dodatki')
,p_parent_plug_id=>wwv_flow_imp.id(150616189669910217)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127777036284451439)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM DODATEK ',
'where (((TYP IN ( SELECT REGEXP_SUBSTR(:P800_TYP,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_TYP, '':'') + 1) AND :P800_TYP IS NOT NULL)',
' OR (:P800_TYP IS NULL))',
' AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL_DODATEK,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL_DODATEK, '':'') + 1) AND :P800_MATERIAL_DODATEK IS NOT NULL)',
' OR (:P800_MATERIAL_DODATEK IS NULL)))  AND (:P800_SEARCH IS NULL OR (UPPER(NAZWA_DODATKU) LIKE ''%'' || UPPER(:P800_SEARCH) || ''%''))'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P800_SWITCH'
,p_plug_display_when_cond2=>'Y'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <script>',
'       function setSelectedDodatek(event,button) {',
'       event.preventDefault(); ',
'     apex.server.process("GET_ANY_URL", { ',
'        x01: 801,',
'        x02:''P801_ID'',',
'        x03:button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'    }',
'       function setPasujaceSruby(event,button) {',
'       event.preventDefault(); ',
'     apex.server.process("GET_ANY_URL", { ',
'        x01: 804,',
'        x02:''P804_ID'',',
'        x03:button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'    }',
'           function setPasujaceCertyfikaty(event,button) {',
'       event.preventDefault(); ',
'     apex.server.process("GET_ANY_URL", { ',
'        x01: 805,',
'        x02:''P805_ID'',',
'        x03:button.id',
'    },{',
'        dataType: ''text'',',
'        success: (urlLink)=>{eval(urlLink);}',
'    });',
'    }',
'</script>',
'',
''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(134066106419674743)
,p_region_id=>wwv_flow_imp.id(134066093766674742)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
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
'  <h3 style="margin-bottom: 1px">&SZTUKI_W_PODELKU. sztuk za</h3>',
unistr('  <h3 style="margin-top: 1px; color: #056ac8;">&CENA. z\0142.</h3>'),
'  ',
'',
'',
'  <div style="display: flex; justify-content: space-between; flex-direction: row;">',
'    <button id="&ID_DODATKU." class="t-Button" onclick="setPasujaceSruby(event,this)" >',
unistr('    Poka\017C pasuj\0105ce \015Bruby'),
'  </button>',
'  <button id="&ID_DODATKU." class="t-Button t-Button--hot" onclick="setSelectedDodatek(event,this)">',
unistr('    Dodaj do zam\00F3wienia'),
'  </button>',
'',
'      <button id="&ID_DODATKU." class="t-Button" onclick="setPasujaceCertyfikaty(event,this)" >',
'    Kompatybilne certyfikaty',
'  </button>',
'  </div>',
'',
'',
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
 p_id=>wwv_flow_imp.id(142255958965044926)
,p_plug_name=>'BRAK'
,p_parent_plug_id=>wwv_flow_imp.id(150616189669910217)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(127783730784451445)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nie znalaz\0142e\015B niczego dla siebie? NIE PRZEJMUJ SI\0118!!'),
unistr('Mo\017Cesz zasugerowa\0107 \015Brub\0119, kt\00F3r\0105 postanowimy doda\0107 SPECJALNIE DLA CIEBIE!')))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142256077610044927)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142255958965044926)
,p_button_name=>'P800_CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(127896059539451539)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zasugeruj teraz!'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:802:&SESSION.::&DEBUG.:802::'
,p_security_scheme=>'!'||wwv_flow_imp.id(21995650961848200)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111593583155383817)
,p_name=>'P800_ORDER_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111592598223383809)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NAZWA_SRUBY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134065869816674740)
,p_name=>'P800_SWITCH'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(111591920542383807)
,p_item_display_point=>'NEXT'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
unistr('    <h1 style="font-size: 0.8rem; height:0.8rem;margin-top: 0px;margin-bottom: 0px;">\015Arubki  </h1>'),
'</div>'))
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    <h1 style="font-size: 0.8rem; height:0.8rem;margin-top: 0px;margin-bottom: 0px;margin-right: 100px;"> Dodatki </h1>',
'</div>'))
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(127893317519451536)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134066727905674749)
,p_name=>'P800_DLUGOSC_GWINTU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134723387980196316)
,p_prompt=>'DLUGOSC_GWINTU'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    '''' || DLUGOSC_GWINTU,',
'    DLUGOSC_GWINTU',
'FROM ',
'   (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))',
'   AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' || DLUGOSC_GWINTU,',
'   DLUGOSC_GWINTU',
'ORDER BY',
'    2;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8358547342345319
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_WS151783'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134066856077674750)
,p_name=>'P800_RODZAJ_GWINTU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134723956404196322)
,p_prompt=>'RODZAJ_GWINTU'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   '''' || RODZAJ_GWINTU, RODZAJ_GWINTU',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' ||RODZAJ_GWINTU, RODZAJ_GWINTU',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134724110059196324)
,p_name=>'P800_DLUGOSC_TRZPIENIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134724086259196323)
,p_prompt=>unistr('D\0142ugo\015B\0107 trzpienia')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    '''' || DLUGOSC_TRZPIENIA, DLUGOSC_TRZPIENIA',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' || DLUGOSC_TRZPIENIA, DLUGOSC_TRZPIENIA',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134724364455196326)
,p_name=>'P800_KLASA_WYTRZYMALOSCI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134724248378196325)
,p_prompt=>'Klasa Wytrzymalosci'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   '''' || KLASA_WYTRZYMALOSCI, KLASA_WYTRZYMALOSCI',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' ||KLASA_WYTRZYMALOSCI, KLASA_WYTRZYMALOSCI',
'ORDER BY',
'    2;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134724541302196328)
,p_name=>'P800_KOLOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134724403169196327)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'     '''' || KOLOR, KOLOR',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'    '''' || KOLOR, KOLOR',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134724779484196330)
,p_name=>'P800_MATERIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134724611754196329)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   '''' ||  MATERIAL, MATERIAL',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL)))',
'GROUP BY',
'  '''' || MATERIAL, MATERIAL',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134724902058196332)
,p_name=>'P800_RODZAJ_LBA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134724809478196331)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    '''' || RODZAJ_LBA, RODZAJ_LBA',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' || RODZAJ_LBA, RODZAJ_LBA',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134725113915196334)
,p_name=>'P800_WYSOKOSC_LBA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134725004141196333)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    '''' || WYSOKOSC_LBA, WYSOKOSC_LBA',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' || WYSOKOSC_LBA, WYSOKOSC_LBA',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134725323892196336)
,p_name=>'P800_GNIAZDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134725258872196335)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    '''' || Gniazdo, Gniazdo',
'FROM ',
'    (select *',
'  from SRUBA',
' where ((DLUGOSC_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_GWINTU, '':'') + 1) AND :P800_DLUGOSC_GWINTU IS NOT NULL)',
' OR (:P800_DLUGOSC_GWINTU IS NULL))',
' AND',
' ((RODZAJ_GWINTU IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_GWINTU,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_GWINTU, '':'') + 1) AND :P800_RODZAJ_GWINTU IS NOT NULL)',
'  OR (:P800_RODZAJ_GWINTU IS NULL))',
' AND',
' ((DLUGOSC_TRZPIENIA IN ( SELECT REGEXP_SUBSTR(:P800_DLUGOSC_TRZPIENIA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_DLUGOSC_TRZPIENIA, '':'') + 1) AND :P800_DLUGOSC_TRZPIENIA IS NOT NULL)',
'  OR (:P800_DLUGOSC_TRZPIENIA IS NULL))',
' AND',
' ((KLASA_WYTRZYMALOSCI IN ( SELECT REGEXP_SUBSTR(:P800_KLASA_WYTRZYMALOSCI,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KLASA_WYTRZYMALOSCI, '':'') + 1) AND :P800_KLASA_WYTRZYMALOSCI IS NOT NULL)',
'  OR (:P800_KLASA_WYTRZYMALOSCI IS NULL))',
'   AND',
' ((KOLOR IN ( SELECT REGEXP_SUBSTR(:P800_KOLOR,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_KOLOR, '':'') + 1) AND :P800_KOLOR IS NOT NULL)',
'  OR (:P800_KOLOR IS NULL))',
'     AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL, '':'') + 1) AND :P800_MATERIAL IS NOT NULL)',
'  OR (:P800_MATERIAL IS NULL))',
'       AND',
' ((RODZAJ_LBA IN ( SELECT REGEXP_SUBSTR(:P800_RODZAJ_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_RODZAJ_LBA, '':'') + 1) AND :P800_RODZAJ_LBA IS NOT NULL)',
'  OR (:P800_RODZAJ_LBA IS NULL))',
'         AND',
' ((WYSOKOSC_LBA IN ( SELECT REGEXP_SUBSTR(:P800_WYSOKOSC_LBA,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_WYSOKOSC_LBA, '':'') + 1) AND :P800_WYSOKOSC_LBA IS NOT NULL)',
'  OR (:P800_WYSOKOSC_LBA IS NULL))',
'           AND',
' ((GNIAZDO IN ( SELECT REGEXP_SUBSTR(:P800_GNIAZDO,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_GNIAZDO, '':'') + 1) AND :P800_GNIAZDO IS NOT NULL)',
'  OR (:P800_GNIAZDO IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_SRUBY LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'  '''' || Gniazdo, Gniazdo',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134725511516196338)
,p_name=>'P800_TYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134725439786196337)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   '''' || Typ, Typ',
'FROM ',
'   (select *',
'  from DODATEK',
' where ((TYP IN ( SELECT REGEXP_SUBSTR(:P800_TYP,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_TYP, '':'') + 1) AND :P800_TYP IS NOT NULL)',
' OR (:P800_TYP IS NULL))',
' AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL_DODATEK,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL_DODATEK, '':'') + 1) AND :P800_MATERIAL_DODATEK IS NOT NULL)',
' OR (:P800_MATERIAL_DODATEK IS NULL))AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_DODATKU LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'  '''' || Typ, Typ',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134725719232196340)
,p_name=>'P800_MATERIAL_DODATEK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134725695767196339)
,p_prompt=>'Kolor'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    '''' || MATERIAL, MATERIAL',
'FROM ',
'   (select *',
'  from DODATEK',
' where ((TYP IN ( SELECT REGEXP_SUBSTR(:P800_TYP,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_TYP, '':'') + 1) AND :P800_TYP IS NOT NULL)',
' OR (:P800_TYP IS NULL))',
' AND',
' ((MATERIAL IN ( SELECT REGEXP_SUBSTR(:P800_MATERIAL_DODATEK,''[^:]+'', 1, LEVEL) FROM DUAL',
' CONNECT BY LEVEL <= REGEXP_COUNT(:P800_MATERIAL_DODATEK, '':'') + 1) AND :P800_MATERIAL_DODATEK IS NOT NULL)',
' OR (:P800_MATERIAL_DODATEK IS NULL))  AND',
'    (:P800_SEARCH IS NULL OR (NAZWA_DODATKU LIKE ''%'' || :P800_SEARCH || ''%'')))',
'GROUP BY',
'   '''' || MATERIAL, MATERIAL',
'ORDER BY',
'    1;'))
,p_display_when=>'P800_SWITCH'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(127893242764451536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150614848407910204)
,p_name=>'P800_ELEMENTY_W_KOSZYKU'
,p_item_sequence=>20
,p_item_display_point=>'BEFORE_NAVIGATION_BAR'
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) FROM "POZYCJA_W_ZAMOWIENIU" WHERE ID_ZAMOWIENIA=',
'    (SELECT ''T'' || ID_KLIENTA FROM KONTO_APEX ',
'    WHERE ID_APEXA=TO_CHAR(apex_util.get_user_id(p_username => ( :APP_USER))))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(150615802446910214)
,p_name=>'P800_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111591920542383807)
,p_item_display_point=>'NEXT'
,p_prompt=>'Wyszukaj obiekt...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(127893514922451536)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(130173915122451916)
,p_name=>'Switch'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P800_SWITCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168710795316548113)
,p_event_id=>wwv_flow_imp.id(130173915122451916)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134725830992196341)
,p_name=>'Filtry'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(134066486713674746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168710991654548115)
,p_event_id=>wwv_flow_imp.id(134725830992196341)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(150618249672910238)
,p_name=>'DialogClosed'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId == 801'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(168711171768548117)
,p_event_id=>wwv_flow_imp.id(150618249672910238)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(150618496726910240)
,p_name=>'ClearSearchBySwitch'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P800_SWITCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(150618510454910241)
,p_event_id=>wwv_flow_imp.id(150618496726910240)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P800_SEARCH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168709941823548105)
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
,p_process_error_message=>'NIEA AAAAAAAAAAAAAAAAAAAAA'
,p_process_success_message=>'AAAAAAAAAAAAAAAAAAAAAAA'
,p_internal_uid=>168709941823548105
);
wwv_flow_imp.component_end;
end;
/
