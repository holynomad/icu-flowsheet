{===============================================================================
   Program ID    : MDN110UM
   Program Name  : ICU/NICU/SU 통합 간호기록지 시스템
   Program Desc. : ICU Patient Monitoring & OCS 간호 기록지 통합 시스템
                 : SU(Stroke Unit) 간호기록지 시스템 연동

   Author : Lee, Se-Ha
   Date   : 2010.12.24
===============================================================================}
unit MDN110UM;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Grids, UltraGrid, Buttons, Bianco_Panel, Mask,
  Menus, CheckLst, BaseGrid, AdvGrid, AdvPanel, Db, DBClient, Printers, QRPrntr,
  FileCtrl, QuickRpt, Qrctrls, Variants, VclTee.TeEngine, VclTee.Series,
  VclTee.TeeProcs, VclTee.Chart, AdvObj, VclTee.TeeGDIPlus,
  // [EMR연계] 2016.04.12 홍창한 추가함(장은석). SComReport 연결을 위한 추가
  SComFunc;

type
  TMDN110FM = class(TForm)
    stb_Message: TStatusBar;
    pn_ICU: TPanel;
    pn_List1: TPanel;
    asg_IcuMon: TAdvStringGrid;
    pn_Line2: TPanel;
    cds_MonItem: TClientDataSet;
    cds_MonItemsetcode: TStringField;
    cds_MonItemsetname: TStringField;
    cds_MonItemitemcode: TStringField;
    cds_MonItemitemname: TStringField;
    cds_MonItemdispseq: TStringField;
    cds_MonIteminputtyp: TStringField;
    cds_MonItemlimit: TStringField;
    cds_SaveItem: TClientDataSet;
    cds_SaveItemsetcode: TStringField;
    cds_SaveItemacttime: TStringField;
    cds_SaveItemitemvalue: TStringField;
    cds_MonItemupcode: TStringField;
    cds_SaveItemmodflag: TStringField;
    cds_SaveItemintflag: TStringField;
    cds_SaveItemaddinfo: TStringField;
    apn_Note: TAdvPanel;
    pn_Loading: TPanel;
    lb_LoadingBar: TLabel;
    ani_setuser: TAnimate;
    pb_DataLoading: TProgressBar;
    pn_If: TPanel;
    bbt_VS: TBitBtn;
    chr_VS: TChart;
    pn_MoniPrd: TPanel;
    lb_MoniPrd: TLabel;
    combx_Moniprd: TComboBox;
    bbt_Moniprd: TBitBtn;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series10: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Advpn_Log: TAdvPanel;
    Memo1: TMemo;
    asg_IoSum: TAdvStringGrid;
    pn_Top: TPanel;
    sbt_Refresh: TSpeedButton;
    lb_PatName: TLabel;
    bv_Hemo: TBevel;
    lb_FDietName: TLabel;
    lb_DietName: TLabel;
    lb_FPatInfo: TLabel;
    lb_PatInfo: TLabel;
    lb_OpName: TLabel;
    lb_FOpName: TLabel;
    lb_SexAge: TLabel;
    bv_Neuro: TBevel;
    bv_Io: TBevel;
    bv_Interface: TBevel;
    lb_RgtDate: TLabel;
    lb_ActTime: TLabel;
    sbt_PrevDate: TSpeedButton;
    sbt_NextDate: TSpeedButton;
    sbt_AddTime: TSpeedButton;
    sbt_Print: TSpeedButton;
    sbt_DelTime: TSpeedButton;
    bbt_ShowNote: TBitBtn;
    dtp_RgtDate: TDateTimePicker;
    cbx_Interface: TCheckBox;
    cbx_Hemo: TCheckBox;
    cbx_Neuro: TCheckBox;
    cbx_Io: TCheckBox;
    bbt_MoniSave: TBitBtn;
    med_ActTime: TMaskEdit;
    bbt_Quality: TBitBtn;
    bbt_Ass: TBitBtn;
    bbt_Close: TBitBtn;
    bbt_Print: TBitBtn;
    bbt_Monitor: TBitBtn;
    asg_Print: TAdvStringGrid;
    apn_InsTempl: TAdvPanel;
    Shape5: TShape;
    Shape3: TShape;
    Label10: TLabel;
    Label22: TLabel;
    Panel5: TPanel;
    bbt_SetInsert: TBitBtn;
    bbt_SetExit: TBitBtn;
    ed_SetTitle: TEdit;
    Panel1: TPanel;
    rbt_Ward: TRadioButton;
    rbt_Nrs: TRadioButton;
    Popup_Act: TPopupMenu;
    mi_InsBsAct: TMenuItem;
    mi_DelAct: TMenuItem;
    apn_InsActing: TAdvPanel;
    Shape2: TShape;
    Label12: TLabel;
    Panel2: TPanel;
    bbt_InsActing: TBitBtn;
    bbt_ActExit: TBitBtn;
    ed_ActRemark: TEdit;
    combx_ActList: TComboBox;
    Label15: TLabel;
    Shape1: TShape;
    mi_InsCvpAct: TMenuItem;
    mi_InsVsAct: TMenuItem;
    apn_PatList: TAdvPanel;
    pn_PatList: TPanel;
    Bevel33: TBevel;
    ugd_PatList: TUltraGrid;
    cbx_NowPos: TCheckBox;
    combx_WardNm: TComboBox;
    combx_WardCd: TComboBox;
    cbx_Dsch: TCheckBox;
    cbx_Cancel: TCheckBox;
    rbt_SortDept: TRadioButton;
    rbt_SortName: TRadioButton;
    rbt_SortRoom: TRadioButton;
    lb_FDgpWks: TLabel;
    lb_DgpWks: TLabel;
    lb_FWgt: TLabel;
    lb_Wgt: TLabel;
    lb_FHgt: TLabel;
    lb_Hgt: TLabel;
    lb_FHsize: TLabel;
    lb_Hsize: TLabel;
    lb_FCsize: TLabel;
    lb_CSize: TLabel;
    lb_FBsize: TLabel;
    lb_BSize: TLabel;
    lb_NowWks: TLabel;
    pn_SelNote: TPanel;
    lb_BgSelNote: TLabel;
    lb_SelNote: TLabel;
    asg_Note: TAdvStringGrid;
    pn_InsNote: TPanel;
    sbt_Nrrec: TSpeedButton;
    Bevel17: TBevel;
    Bevel18: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Bevel19: TBevel;
    Label21: TLabel;
    lb_InsUp: TLabel;
    lb_ActDate: TLabel;
    lb_ActSeqNo: TLabel;
    Bevel22: TBevel;
    bbt_Cancel: TSpeedButton;
    lb_Flag: TLabel;
    lb_BgInsNote: TLabel;
    lb_InsNote: TLabel;
    Bevel2: TBevel;
    sbt_TemplSel: TSpeedButton;
    sbt_TemplIns: TSpeedButton;
    sbt_SelVs: TSpeedButton;
    sbt_SelResp: TSpeedButton;
    sbt_SelBst: TSpeedButton;
    sbt_SelO2: TSpeedButton;
    dtp_RecDate: TDateTimePicker;
    ed_RecName: TEdit;
    ed_RecDept: TEdit;
    me_Content: TMemo;
    pn_UserList: TPanel;
    ugd_UserList: TUltraGrid;
    ed_RecId: TEdit;
    ed_Hour: TEdit;
    ed_Min: TEdit;
    pn_EmrList: TPanel;
    Panel14: TPanel;
    Panel18: TPanel;
    bbt_Ok: TBitBtn;
    bbt_ListExit: TBitBtn;
    Panel27: TPanel;
    ugd_EmrList: TUltraGrid;
    bbt_Select: TBitBtn;
    pn_If_Su: TPanel;
    BitBtn1: TBitBtn;
    chr_VS_Su: TChart;
    lb_MoniPrd_Su: TLabel;
    combx_Moniprd_Su: TComboBox;
    BitBtn2: TBitBtn;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    LineSeries6: TLineSeries;
    LineSeries7: TLineSeries;
    combx_DiagName: TComboBox;
    pn_Note: TPanel;
    lb_NoteTitle: TLabel;
    me_Note: TMemo;
    bbt_ConfirmInputNote: TBitBtn;
    bbt_CancelInputNote: TBitBtn;
    apn_Bst: TAdvPanel;
    Panel3: TPanel;
    bbt_BstClose: TBitBtn;
    ugd_BsData: TUltraGrid;
    mi_InsBsData: TMenuItem;
    lb_BsStatus: TLabel;
    apn_IoChk: TAdvPanel;
    Panel4: TPanel;
    lb_IoStatus: TLabel;
    bbt_IoClose: TBitBtn;
    ugd_IoData: TUltraGrid;
    mi_InsIoData: TMenuItem;
    apn_NoteSearch: TAdvPanel;
    Label1: TLabel;
    asd_NoteSearch: TAdvStringGrid;
    dtp_Fromdate: TDateTimePicker;
    dtp_Todate: TDateTimePicker;
    bbt_NoteSearch: TBitBtn;
    bbt_ShowNoteSearch: TBitBtn;
    bbt_NurseWrite: TBitBtn;
    apn_Crrt: TAdvPanel;
    asg_Crrt: TAdvStringGrid;
    dtb_Crrt: TDateTimePicker;
    bbt_CrrtBefor: TBitBtn;
    bbt_CrrtClose: TBitBtn;
    bbt_CrrtSave: TBitBtn;
    lb_Crrt: TLabel;
    bbt_Crrt: TBitBtn;
    me_CrrtNrrec: TMemo;
    ed_CrrtHour: TEdit;
    ed_CrrtMin: TEdit;
    bbt_CrrtClear: TBitBtn;
    bbt_CrrtAfter: TBitBtn;
    lb_CrrtTime: TLabel;
    sbt_Printer: TSpeedButton;
    lb_Birtdate: TLabel;
    lb_Meddept: TLabel;
    lb_Wardno: TLabel;
    bt_print: TButton;


    // Event Handler -----------------------------------------------------------

    procedure bbt_CloseClick(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormDestroy(Sender: TObject);

    procedure FormShow(Sender: TObject);

    procedure bbt_MonitorClick(Sender: TObject);

    procedure dtp_RgtDateChange(Sender: TObject);

    procedure FormCreate(Sender: TObject);

    procedure asg_IcuMonGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);

    procedure asg_IcuMonGetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);

    procedure asg_IcuMonSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);

    procedure cbx_InterfaceClick(Sender: TObject);

    procedure bbt_MoniprdClick(Sender: TObject);

    procedure asg_IcuMonKeyPress(Sender: TObject; var Key: Char);

    procedure bbt_MoniSaveClick(Sender: TObject);

    procedure bbt_AssClick(Sender: TObject);

    procedure asg_IcuMonGetEditorType(Sender: TObject; ACol, ARow: Integer; var AEditor: TEditorType);

    procedure asg_IcuMonEditingDone(Sender: TObject);

    procedure asg_IcuMonClickCell(Sender: TObject; ARow, ACol: Integer);

    procedure bbt_PrevDateClick(Sender: TObject);

    procedure bbt_NextDateClick(Sender: TObject);

    procedure dtp_RgtDateCloseUp(Sender: TObject);

    procedure bbt_CancelInputNoteClick(Sender: TObject);

    procedure bbt_ConfirmInputNoteClick(Sender: TObject);

    procedure asg_IcuMonMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

    procedure bbt_QualityClick(Sender: TObject);

    procedure bbt_ShowNoteClick(Sender: TObject);

    procedure sbt_AddTimeClick(Sender: TObject);

    procedure bbt_PrintClick(Sender: TObject);

    procedure chr_VSAfterDraw(Sender: TObject);

    procedure sbt_RefreshClick(Sender: TObject);
    procedure chr_VSMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbt_DelTimeClick(Sender: TObject);
    procedure bbt_CancelClick(Sender: TObject);
    procedure asg_PrintDblClick(Sender: TObject);
    procedure sbt_NrrecClick(Sender: TObject);
    procedure ed_RecNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ugd_UserListDblClick(Sender: TObject);
    procedure sbt_SelVsClick(Sender: TObject);
    procedure sbt_TemplSelClick(Sender: TObject);
    procedure sbt_TemplInsClick(Sender: TObject);
    procedure bbt_SetInsertClick(Sender: TObject);
    procedure bbt_SetExitClick(Sender: TObject);
    procedure Popup_ActPopup(Sender: TObject);
    procedure mi_InsBsActClick(Sender: TObject);
    procedure asg_IcuMonDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbt_ActExitClick(Sender: TObject);
    procedure bbt_InsActingClick(Sender: TObject);
    procedure mi_DelActClick(Sender: TObject);
    procedure sbt_SelRespClick(Sender: TObject);
    procedure mi_InsCvpActClick(Sender: TObject);
    procedure mi_InsVsActClick(Sender: TObject);
    procedure asg_IcuMonGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure sbt_SelBstClick(Sender: TObject);
    procedure sbt_SelO2Click(Sender: TObject);
    procedure ugd_PatListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ugd_PatListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ugd_PatListClick(Sender: TObject);
    procedure combx_WardNmChange(Sender: TObject);
    procedure cbx_DschClick(Sender: TObject);
    procedure rbt_SortNameClick(Sender: TObject);
    procedure bbt_SelectClick(Sender: TObject);
    procedure bbt_OkClick(Sender: TObject);
    procedure chr_VS_SuAfterDraw(Sender: TObject);
    procedure mi_InsBsDataClick(Sender: TObject);
    procedure bbt_BstCloseClick(Sender: TObject);
    procedure ugd_BsDataDblClick(Sender: TObject);
    procedure ugd_BsDataDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure mi_InsIoDataClick(Sender: TObject);
    procedure bbt_IoCloseClick(Sender: TObject);
    procedure ugd_IoDataDblClick(Sender: TObject);
    procedure ugd_IoDataDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbt_NoteSearchClick(Sender: TObject);
    procedure asd_NoteSearchGetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure bbt_ShowNoteSearchClick(Sender: TObject);
    procedure bbt_NurseWriteClick(Sender: TObject);
    procedure asg_IcuMonExit(Sender: TObject);
    procedure asg_IcuMonCellChanging(Sender: TObject; OldRow, OldCol,
      NewRow, NewCol: Integer; var Allow: Boolean);
    procedure asg_CrrtCanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure asg_CrrtKeyPress(Sender: TObject; var Key: Char);
    procedure asg_CrrtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbt_CrrtSaveClick(Sender: TObject);
    procedure bbt_CrrtBeforClick(Sender: TObject);
    procedure bbt_CrrtCloseClick(Sender: TObject);
    procedure bbt_CrrtClick(Sender: TObject);
    procedure bbt_CrrtClearClick(Sender: TObject);
    procedure bbt_CrrtAfterClick(Sender: TObject);
    procedure dtb_CrrtChange(Sender: TObject);
    procedure sbt_PrinterClick(Sender: TObject);
    procedure bt_printClick(Sender: TObject);


  private
    { Private declarations }
    sl_CodeList : TStringList;         // 모니터링Code 리스트
    sl_TimeList : TStringList;         // 모니터링시간 리스트
    l_CodeItem  : TList;               // Set코드별 입력값 속성리스트
    l_SaveItem  : TList;               // 모니터링항목 입력값 임시저장리스트

    gNowRow     : Integer;             // 현 Cell 좌표 (Y)
    gNowCol     : Integer;             // 현 Cell 좌표 (X)

    // [구로] 대변의 양(g) 수치 확인 -2013.08.06 smpark
    gMF24Row     : Integer;
    gMF24Col     : Integer;

    // [구로] CRRT 체크 구분자 -2013.09.02 smpark
    gCrrtDate    : String;

    FsKoihaPrtyn : String;  // 인증평가 관련 출력 기능 제한 -2014.12.10 smpark

    saveCheck : boolean;

    // [EMR연계] 2016.04.12 홍창한 추가함(장은석). EMR연동 변수 선언
    pv_SComReport  : HSComReport;
    pv_Patsect     : String;
    pv_Meddate     : String;
    pv_Reptid      : String;

    // Chart 그리기, 2011.01.04 LSH
    Procedure Drawchart(Sender: TObject);

    // 중환자 기본정보 내역 조회, 2011.01.04 LSH
    // sType5, sType6 추가 -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // ICU 환자목록 조회, 2011.08.29 LSH
    procedure GetPatList(Sender : TObject);

    // ICU 환자 상세정보 조회, 2011.08.29 LSH
    procedure SelectPatInfo(in_Flag : String);

    // 환자기본정보 Setting, 2011.01.04 LSH
    procedure SetPatInfo(in_Flag : String);

    // 메인 폼 기본정보 Setting, 2011.08.29 LSH
    procedure SetFormInfo;

    // SetCode 항목 생성 및 업데이트, 2011.01.17 LSH
    procedure SetCodeList(sGubun : String);

    // Time 항목 생성 및 업데이트, 2011.01.17 LSH
    procedure SetTimeList(sGubun : String);

    // 환자별 모니터링SET 여부 체크, 2011.01.05 LSH
    procedure CheckFormSet;

    // 전체 입력항목별 입력 값 목록 조회
    procedure GetAllItems;

    // 모니터링 항목별 입력값 임시저장
    procedure GetSaveList(sSetCode, sActTime, sItemVal, sIntFlag, sAddInfo : String);

    // 임시저장된 Data-Set 화면에 Setting
    procedure SetSaveList(sGubun : String);

    // 일자별 모니터링 상세내역 조회 (MDICMONT), 2011.01.20 LSH
    procedure SelectMonItem(dtp_ActDate : TDateTime);

    // Client DataSet 초기화 (Close & Create)
    procedure InitDataSet(cds_Temp : TClientDataSet);

    // Chart 초기화
    procedure InitChart;

    // 모든 Note 내역 조회
    procedure CheckAllNote;

    // SetCode 항목 가져오기, 2011.01.11 LSH
    function GetCodeList(sPatNo, sAdmDate : String) : Integer;

    // Time 항목 가져오기, 2011.01.11 LSH
    function GetTimeList(sPatNo, sAdmDate : String) : Integer;

    // Data Loading Bar 상태 변경
    procedure SetLoadingBar(AsStatus : String);

    // ICU 노트 병동간호기록 조회, 2011.08.03 LSH
    procedure SelNote(in_ActDate, in_ActTime : String);

    // NICU 환자 체중-신장-복위-흉위-두위 조회, 2011.12.05 LSH
    procedure SetNicuInfoAdded(in_PatNo, in_AdmDate : String);

    // NICU 교정연령 계산, 2011.12.06 LSH
    function CalcNowDay(in_FstWks, in_FstDay, in_BornDate, in_RgtDate : String) : String;

    // 윤년 계산 추가 @ 2012.04.19 LSH
    function isYunYear(in_Year : Integer) : Boolean;

    // 순 경과일수 Calculating Function @ 2012.04.20 LSH
    function GetDiffDay(in_BornDate, in_RgtDate : String) : Integer;

    // 진단명(주진단) 가져오기 @ 2012.04.23 LSH
    procedure GetMainDiag(in_PatNo, in_MedDept, in_AdmDate, in_Locate, in_Gubun, in_DiagType, in_ChaDr, in_PatCls : String);

    // B/S 측정 내역 조회 - SU 간호기록지 연동 (GR_73W 이형숙요청) @ 2012.05.14
    procedure GetBsData;


    // I/O 측정 내역 조회 - SU 간호기록지 연동 (GR_73W 이형숙요청) @ 2012.05.15
    procedure GetIoCheck(in_Gubun : Integer);

    // 구로병원 ICU Note 기간별 조회 값 셋팅 -2013.05.16 smpark
    procedure SetNoteSearch;

    //2013.06.18 khs 신생아대장에서 출생일자와 재태기간 구해서 교정연령 계산
    procedure GetNbabyBorndate;

    // CRRT 간호기록 최종기록 조회
    procedure CrrtnMaxData;

    // CRRT 간호기록 병동 간호기록 연동
    procedure CrrtNrrecSave;

    // CRRT 처방 체크 -2013.09.02 smpark
    function CrrtCheck(in_Patno,in_Orddate:String) : String;

  public
    { Public declarations }
    ActCont    : String;

    P_PatNo       : String;   // 병동간호 호출 BPL 변수, 2011.01.04 LSH
    P_PatName     : String;
    P_SexAge      : String;
    P_AdmDate     : String;
    P_WardNo      : String;
    P_RoomNo      : String;
    G_SetFlag     : String;   // 환자 모니터링 SET 저장유무 (Y: 환자 모니터링 SET 저장내역 유, N: 환자 모니터링SET 저장내역 무)
    P_RgtDate     : String;   // [병동기록지 출력/환자기록통합조회] 호출시 넘겨준 기록일자, 2011.07.15 LSH
    P_PatFlag     : String;   // [병동기록지 출력/환자기록통합조회] 호출시 넘겨준 환자위치, 2011.07.15 LSH
    P_DschDate    : String;   // [의무기록 자동서식스캔] 퇴원일자, 2011.08.11 LSH
    P_PreviewYn   : String;   // [의무기록 자동서식스캔] 미리보기, 2011.08.11 LSH
    P_EMRPrintYn  : String;   // [의무기록 자동서식스캔] 출력여부, 2011.08.11 LSH
    P_EMRTitle    : String;   // [의무기록 자동서식스캔] Report Title, 2011.08.11 LSH
    P_NicuFlag    : String;   // NICU 간호기록지 호출여부(Y/N), 2011.10.10 LSH
    P_ChaDr       : String;   // [환자기록 통합조회] SU 간호기록지 진단명조회 위한 담당교수 @ 2012.05.08
    P_MedDept     : String;   // [환자기록 통합조회] SU 간호기록지 진단명조회 위한 진료과 @ 2012.05.08

    G_EmrYn       : String;   // [의무기록 자동서식스캔] 출력유효성 여부 (Y/N), 2011.09.08 LSH
    G_EmrPrtIdx   : Integer;  // [의무기록 자동서식스캔] 출력Index, 2011.09.15 LSH
    G_LastEmrDateYn : String; // [의무기록 자동서식스캔] 마지막 출력일자 @ 2012.10.31 LSH
    G_LastPageIdx   : Integer;// [의무기록 자동서식스캔] 마지막 Page 인덱스 @ 2012.10.31 LSH

    P_EMRFromDt   : String;   // 장기재원환자 검색 시작일자 -2015.05.27 smpark
    P_EMRToDt     : String;   // 장기재원환자 검색 종료일자 -2015.05.27 smpark

  published
    property prop_PatNo      : String read P_PatNo      write P_PatNo;
    property prop_PatName    : String read P_PatName    write P_PatName;
    property prop_SexAge     : String read P_SexAge     write P_SexAge;
    property prop_AdmDate    : String read P_AdmDate    write P_AdmDate;
    property prop_WardNo     : String read P_WardNo     write P_WardNo;
    property prop_RoomNo     : String read P_RoomNo     write P_RoomNo;
    property prop_RgtDate    : String read P_RgtDate    write P_RgtDate;       // 퇴원환자 병동기록지/환자기록통합조회 출력위한 일자, 2011.07.15 LSH
    property prop_PatFlag    : String read P_PatFlag    write P_PatFlag;       // 호출옵션 ('D': 병동기록지 출력/환자기록통합조회, 'MDP110F2': 의사조회), 2011.07.15 LSH
    property prop_DschDate   : String read P_DschDate   write P_DschDate  ;    // 의무기록 자동서식스캔 위한 퇴원일자, 2011.08.11 LSH
    property prop_PreviewYn  : String read P_PreviewYn  write P_PreviewYn ;    // 의무기록 자동서식스캔 위한 미리보기, 2011.08.11 LSH
    property prop_EMRPrintYn : String read P_EMRPrintYn write P_EMRPrintYn;    // 의무기록 자동서식스캔 여부,          2011.08.11 LSH
    property prop_EMRTitle   : String read P_EMRTitle   write P_EMRTitle  ;    // 의무기록 자동서식스캔 Report Title,  2011.08.11 LSH
    property prop_NicuFlag   : String read P_NicuFlag   write P_NicuFlag  ;    // SU/NICU 간호기록지 호출여부(Y : NICU, S : SU) @ 2011.10.10 LSH
    property prop_ChaDr      : String read P_ChaDr      write P_ChaDr     ;    // 퇴원환자 [병동기록지/환자기록통합조회] 담당교수 @ 2012.05.08
    property prop_MedDept    : String read P_MedDept    write P_MedDept   ;    // 퇴원환자 [병동기록지/환자기록통합조회] 진료과 @ 2012.05.08

    property prop_EMRFromDt  : String read P_EMRFromDt  write P_EMRFromDt ;    // 장기재원환자 검색 시작일자 -2015.05.27 smpark
    property prop_EMRToDt    : String read P_EMRToDt    write P_EMRToDt   ;    // 장기재원환자 검색 종료일자 -2015.05.27 smpark


    // 인증평가 관련 출력 기능 제한 -2014.12.10 smpark
    property prop_KoihaPrtyn : String read FsKoihaPrtyn write FsKoihaPrtyn;

    // [EMR연계] 2016.04.12 홍창한 추가함(장은석). EMR연동 변수 선언
    property prop_SComReport  : HSComReport write pv_SComReport;
    property prop_Patsect     : String      write pv_Patsect   ;
    property prop_Meddate     : String      write pv_Meddate   ;
    property prop_Reptid      : String      write pv_Reptid    ;
    // 2016-06-03 장은석 , 입원기록지 Fromdate - Todate 조건 추가 START
    property prop_Fromdate    : String      write P_EMRFromDt  ;
    property prop_Todate      : String      write P_EMRToDt    ;
    // 2016-06-03 장은석 , 입원기록지 Fromdate - Todate 조건 추가 END

    // Refresh (폼구성-> Code/Time/Data 저장 -> Client DataSet 세팅-> 차트그리기)
    // MDN110FP에서 호출위해 'Published'으로 세팅.
    procedure Refresh;

    // ICU 통합 간호기록지 의무기록 자동서식스캔, 2011.08.11 LSH
    //  --> CPU 점유율 많이 잡아먹는 관계로 2012.01.30 부터 사용중지.
    procedure AutoScanPrint;

    // [자동서식변환용] 화면 Refresh, 2012.01.20 LSH
    procedure Refresh_AutoScan;

    // ICU 통합 간호기록지 의무기록 자동서식스캔 New Version, 2012.01.30 LSH
    //  --> CPU 점유율 사용량 1/3으로 줄임.
    procedure AutoScanPrint_New;



  end;


var
  MDN110FM: TMDN110FM;


implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom, MDCLASS1, MComFunc, HisUtil, MDN110UM_P01,
   MDN110UM_P02,
   // [EMR연계] 2016.04.12 홍창한 추가함(장은석). TpSvc 추가
   TpSvc;

{$R *.DFM}

const
   CLR_INTERFACE_NRS = clRed;     // 장비 Int'f Data 간호사 수정 FontColor
   C_DUTYCLS_DAY     = '14:00';   // Duty별 Sum위한 기준시간 (Day)
   C_DUTYCLS_EVNG    = '22:00';   // Duty별 Sum위한 기준시간 (Evening)
   C_DUTYCLS_NIGT    = '06:00';   // Duty별 Sum위한 기준시간 (Night)

   C_STARTTM    = '0601';         // 메인화면 Time List 시작시간
   C_ENDTM      = '0600';         // 메인화면 Time List 종료시간
   C_MONIPRD    = 12;             // 모니터링 입력주기 개수
   C_CHARTCNT   = 8;              // 차트 Series항목 수(왼쪽 범례항목 개수)
   C_MINLINE    = 50;             // 차트 Minimal Line-Value
   C_MIDLINE    = 100;            // 차트 Middle Line-Value
   C_MAXLINE    = 150;            // 차트 Maximal Line-Value

   C_GYUNGGOO   = 1;              // [SU 간호기록지] 경구
   C_BIGYUNGGOO = 2;              // [SU 간호기록지] 비경구
   C_HYULEK     = 3;              // [SU 간호기록지] 혈액
   C_BAENYO     = 4;              // [SU 간호기록지] 배뇨(오줌)
   C_BAENONG    = 5;              // [SU 간호기록지] 배농/흡인(Suction)
   C_GOOTO      = 6;              // [SU 간호기록지] 구토(Vomitus)
   C_BAESUL     = 7;              // [SU 간호기록지] 배설(Stool)
   C_HUO        = 9;              // [SU 간호기록지] HUO




//------------------------------------------------------------------------------
// [종료] Button onClick Event Handler
// - Close Form
//
// Author : Lee, Se-Ha
// Date   : 2011.01.22
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;


//------------------------------------------------------------------------------
// Form onClose Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.22
//------------------------------------------------------------------------------
procedure TMDN110FM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   // 1. Code List
   sl_CodeList.Free;

   // 2. Time List
   sl_TimeList.Free;

   // 3. Code값 List
   l_CodeItem.Free;

   // 3. Grid List
   l_SaveItem.Free;

   // 4. 화면Data 임시 Data-Set
   cds_SaveItem.Close;

   // 5. 모니터링 속성값 Data-Set
   cds_MonItem.Close;

   // 6. Form Free
   Action := caFree;
end;


//------------------------------------------------------------------------------
// Form onDestroy Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.22
//------------------------------------------------------------------------------
procedure TMDN110FM.FormDestroy(Sender: TObject);
begin
   MDN110FM := Nil;
end;


//------------------------------------------------------------------------------
// Form onShow Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.22
//------------------------------------------------------------------------------
procedure TMDN110FM.FormShow(Sender: TObject);
begin
   //---------------------------------------------------
   // 1. 폼 기본정보, 2011.08.29 LSH
   //---------------------------------------------------
   SetFormInfo;


   //---------------------------------------------------
   // 2. 환자기본정보, 2011.01.04 LSH
   //---------------------------------------------------
   SetPatInfo('FORMSHOW');



   //---------------------------------------------------
   // 3. 저장/조회권한 setting, 2011.08.09 LSH
   //---------------------------------------------------
   if (P_PatFlag = 'MDP110F2') then
   // 환자상세정보 (의사호출시)
   begin
      if (P_NicuFlag = 'Y') then
      // NICU 간호기록지
      begin
         bbt_MoniSave.Enabled := False;
         bbt_Monitor.Enabled  := False;
         bbt_Quality.Enabled  := True;    // NICU 임상질지표 조회
         bbt_Ass.Enabled      := True;    // NICU 간호사정   조회
         bbt_Print.Enabled    := False;
         bbt_MoniPrd.Enabled  := False;
         sbt_Nrrec.Enabled    := False;
         sbt_AddTime.Enabled  := False;
         sbt_DelTime.Enabled  := False;
         sbt_SelVs.Enabled    := False;
         sbt_TemplSel.Enabled := False;
         sbt_TemplIns.Enabled := False;
      end
      else if (P_NicuFlag = 'S') then
      // Stroke Unit 간호기록지 @ 2012.04.21 LSH
      begin
         bbt_MoniSave.Enabled := False;
         bbt_Monitor.Enabled  := False;
         bbt_Quality.Enabled  := False;
         bbt_Ass.Enabled      := False;
         bbt_Print.Enabled    := False;
         bbt_MoniPrd.Enabled  := False;
         sbt_Nrrec.Enabled    := False;
         sbt_AddTime.Enabled  := False;
         sbt_DelTime.Enabled  := False;
         sbt_SelVs.Enabled    := False;
         sbt_TemplSel.Enabled := False;
         sbt_TemplIns.Enabled := False;
         apn_PatList.Visible  := True;    // 2012.06.01 사용하기로 수정(이형숙)
      end
      else
      // ICU 통합 간호기록지
      begin
         bbt_MoniSave.Enabled := False;
         bbt_Monitor.Enabled  := False;
         bbt_Quality.Enabled  := False;
         bbt_Ass.Enabled      := False;
         bbt_Print.Enabled    := False;
         bbt_MoniPrd.Enabled  := False;
         sbt_Nrrec.Enabled    := False;
         sbt_AddTime.Enabled  := False;
         sbt_DelTime.Enabled  := False;
         sbt_SelVs.Enabled    := False;
         sbt_TemplSel.Enabled := False;
         sbt_TemplIns.Enabled := False;
      end;
   end
   else if (P_PatFlag = 'D') or
           (P_PatFlag = 'W') then
   // 병동기록지 출력(퇴원) or 환자기록 통합조회(퇴원환자)
   begin
      bbt_MoniSave.Enabled := False;
      bbt_Monitor.Enabled  := False;
      bbt_Quality.Enabled  := False;
      bbt_Ass.Enabled      := False;
      bbt_Print.Enabled    := True;
      bbt_MoniPrd.Enabled  := False;
      sbt_Nrrec.Enabled    := False;
      sbt_AddTime.Enabled  := False;
      sbt_DelTime.Enabled  := False;
      sbt_SelVs.Enabled    := False;
      sbt_TemplSel.Enabled := False;
      sbt_TemplIns.Enabled := False;
      apn_PatList.Visible  := False;

      // 통합기록에서 퇴원환자 간호기록 되므로 변경함 -2014.12.10 smpark
      bbt_NurseWrite.Enabled := False;
   end
   else
   begin
      bbt_MoniSave.Enabled := True;
      bbt_Monitor.Enabled  := True;
      bbt_Quality.Enabled  := True;
      bbt_Ass.Enabled      := True;
      bbt_Print.Enabled    := True;
      bbt_MoniPrd.Enabled  := True;
      sbt_Nrrec.Enabled    := True;
      sbt_AddTime.Enabled  := True;
      sbt_DelTime.Enabled  := True;
      sbt_SelVs.Enabled    := True;
      sbt_TemplSel.Enabled := True;
      sbt_TemplIns.Enabled := True;
   end;


   //---------------------------------------------------
   // 4. Button Setting
   //---------------------------------------------------
   if (P_NicuFlag = 'Y') then
   // NICU 간호기록지
   begin
      bbt_MoniSave.Top     := 5;
      bbt_MoniSave.Left    := 959;
      bbt_Monitor.Top      := 42;
      bbt_Monitor.Left     := 1019;
      bbt_ShowNote.Top     := 5;
      bbt_ShowNote.Left    := 1019;
      bbt_Quality.Top      := 5;
      bbt_Quality.Left     := 1095;
      bbt_Ass.Top          := 42;
      bbt_Ass.Left         := 1095;
      bbt_Print.Top        := 5;
      bbt_Print.Left       := 1184;
      bbt_Close.Top        := 5;
      bbt_Close.Left       := 1244;
   end
   else if (P_NicuFlag = 'S') then
   // Stroke Unit 간호기록지 @ 2012.04.21 LSH
   begin
      bbt_MoniSave.Top     := 5;
      bbt_MoniSave.Left    := 959;
      bbt_Monitor.Top      := 42;
      bbt_Monitor.Left     := 1019;
      bbt_ShowNote.Top     := 5;
      bbt_ShowNote.Left    := 1019;
      bbt_Quality.Top      := 5;
      bbt_Quality.Left     := -2000;
      bbt_Ass.Top          := 42;
      bbt_Ass.Left         := -2000;
      bbt_Print.Top        := 5;
      bbt_Print.Left       := 1095;
      bbt_Close.Top        := 5;
      bbt_Close.Left       := 1155;

      sbt_Refresh.Top      := -2000;
      apn_PatList.Visible  := True;
   end
   else
   // ICU 통합 간호기록지
   begin
      bbt_MoniSave.Top     := 5;
      bbt_MoniSave.Left    := 959;
      bbt_Monitor.Top      := 42;
      bbt_Monitor.Left     := 1019;
      bbt_ShowNote.Top     := 5;
      bbt_ShowNote.Left    := 1019;
      bbt_Quality.Top      := 5;
      bbt_Quality.Left     := 1095;
      bbt_Ass.Top          := 42;
      bbt_Ass.Left         := 1095;
      bbt_Print.Top        := 5;
      bbt_Print.Left       := 1184;
      bbt_Close.Top        := 5;
      bbt_Close.Left       := 1244;
   end;

   // ---------------------------------------------------------------------
   // 구로병원 ICU Note 기간별 조회 -2013.05.20 smpark
   // ---------------------------------------------------------------------
   if (md_Userid = '99995') or
      (G_Locate = 'GR') then
   begin
      bbt_ShowNoteSearch.Visible := True;
      //2013.06.05 khs 구로만 간호기록 버튼 활성화(구로 중환자실1 이신애 요청)
      bbt_NurseWrite.Visible     := True;

      // [구로] CRRT 간호기록 -2013.08.26 smpark
      bbt_MoniSave.Height := 37;
      bbt_Crrt.Visible    := True;
      //신체억제대 출력 버튼 추가로 보이게  2014.10.27 Yoon
      sbt_Printer.Visible := True;
      sbt_Printer.Left    := 822;
   end
   else
   begin
      bbt_ShowNoteSearch.Visible := False;
      //2013.06.05 khs 구로만 간호기록 버튼 활성화(구로 중환자실1 이신애 요청)
      bbt_NurseWrite.Visible     := False;

      // [구로] CRRT 간호기록 -2013.08.26 smpark
      bbt_MoniSave.Height := 74;
      bbt_Crrt.Visible    := False;
      //신체억제대 출력 버튼 안보이게  2014.10.27 Yoon
      sbt_Printer.Visible := False;
   end;


   // ----------------------------------------------------------------------
   // 2014년 인증평가 관련 출력 기능 제한 값 추가
   // 2014.12.10 smpark
   // ----------------------------------------------------------------------
   if FsKoihaPrtyn = 'Y' then
   begin
      bbt_Print.Visible := False;
   end;

   //---------------------------------------------------
   // 5. 화면 Setting Refresh
   //---------------------------------------------------
   Refresh;


end;




//------------------------------------------------------------------------------
// [중환자 기본정보] 조회 (입원정보/혈액형/성별/식이/수술/진단) Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.03.03
//------------------------------------------------------------------------------
// sType5, sType6 추가 -2015.05.27 smpark
procedure TMDN110FM.GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);
var
   RowNo, i    : Integer;
   iPats       : HmdIcpatt;
   tmpBldType  : String;
begin



   //---------------------------------------------------------------
   // 0. Initialization
   //---------------------------------------------------------------
   Screen.Cursor   := crHourglass;


   try
      iPats := HmdIcpatt.Create;



      //--------------------------------------------
      // 1. Load Data
      //--------------------------------------------
      RowNo := iPats.SelIcuPat(sType1, sType2, sType3, sType4, sType5, sType6, sFlag1);

      // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := RowNo;     //결과값, 음수:에러, 0:건수없음, 양수: 정상
         pv_SComReport.RsltMsg  := GetTxMsg;  //결과 메시지
      end;
      // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iPats.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;


      // 조회건수 없음
      if RowNo = 0 then
      begin
         iPats.Free;
         Exit;
      end;


      // 혈액형 검사 미실시경우, Null 로 표기 @ 2012.04.23 LSH
      if (iPats.sBldType[0] <> '') then
         tmpBldType := iPats.sBldType[0] + ','
      else
         tmpBldType := '';


      //--------------------------------------------
      // 2. [1,2,3] Display Data
      //--------------------------------------------
      if (sFlag1 <> '4') then
      begin
         with iPats do
         begin
            if (sFlag1 = '1') then
            //------------------------------------------------------------------
            // ICU 재원중인 경우,
            //------------------------------------------------------------------
            begin
               if (P_NicuFlag = 'Y') then
               begin
                  // NICU 환자입원정보 (환자번호/환자명/성별나이/HD)
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       // NICU는 ICU 재원일수 아닌, H/D로 쓰기로 함 by 이진희 @ 2012.04.13
                                       // 그런데, 진료 Main의 H/D가 아니라, [해당 기록일자]를 기준으로한 H/D로 표기요청.
                                       + CopyByte(GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date{StrToDate(P_DschDate)}),
                                              1,
                                              PosByte('.', GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date))-1)
                                       + '일]';
               end
               else
               begin
                  // 일반 ICU 환자입원정보 (환자번호/환자명/성별나이/혈액형/ICU재원일수)
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       + tmpBldType
                                       + sIcuDays[0]        + '일]';
               end;
            end
            else if (sFlag1 = '2') then
            //------------------------------------------------------------------
            // ICU 재원아닌 "병동재원" 경우,
            //   - 2011.05.26 LSH
            //------------------------------------------------------------------
            begin
               // Stroke Unit 경우, 재원일수 적용 @ 2012.04.23 LSH
               if (P_NicuFlag = 'S') then
               begin
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       + tmpBldType
                                       + sIcuDays[0]        + '일]';
               end
               else
               begin
                  // ICU미재원] -> 집중치료실로 변경 -2015.08.04 smpark
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       + tmpBldType
                                       + '집중치료실]';
               end;
            end
            else if (sFlag1 = '3') then
            //------------------------------------------------------------------
            // 퇴원환자 ICU 재원정보 추가, 2011.07.15 LSH
            // [환자기록통합조회/자동서식스캔] 로직분기, 2012.03.08 LSH
            //------------------------------------------------------------------
            begin

               if (P_PatFlag = 'W') or
                  (P_PatFlag = 'D') then
               begin
                  // 환자기록 통합조회
                  if (P_NicuFlag = 'Y') then
                  begin
                     // NICU 환자입원정보 (환자번호/환자명/성별/HD)
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + CopyByte(Trim(sSexAge[0]), 1, 1) + ','
                                          // NICU는 ICU 재원일수 아닌, H/D로 쓰기로 함 by 이진희 @ 2012.04.13
                                          // 그런데 진료 Main의 H/D가 아니라, [해당 기록일자]를 기준으로한 H/D로 표기요청.
                                          + CopyByte(GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date{StrToDate(P_DschDate)}),
                                                 1,
                                                 PosByte('.', GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date))-1)
                                          + '일]';
                  end
                  else
                  begin
                     // 일반 ICU 환자입원정보
                     // Stroke Unit 포함(환자번호/환자명/혈액형/성별) @ 2012.05.08
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + tmpBldType
                                          + CopyByte(Trim(sSexAge[0]), 1, 1) + ']';
                  end;
               end
               else
               begin
                  // 자동서식스캔
                  if (P_NicuFlag = 'Y') then
                  begin
                     // NICU 환자입원정보 (환자번호/환자명/성별나이/HD)
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + Trim(sSexAge[0])   + ','
                                          // NICU는 ICU 재원일수 아닌, H/D로 쓰기로 함 by 이진희 @ 2012.04.13
                                          // 그런데, 진료 Main의 H/D가 아니라, [해당 기록일자]를 기준으로한 H/D로 표기요청.
                                          + CopyByte(GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date{StrToDate(P_DschDate)}),
                                                 1,
                                                 PosByte('.', GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date))-1)
                                          + '일]';
                  end
                  else
                  begin
                     // 일반 ICU 환자입원정보 (환자번호/환자명/성별나이/혈액형/재원일수)
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + Trim(sSexAge[0])   + ','
                                          + tmpBldType
                                          + sIcuDays[0]        + '일]';
                  end;
               end;
            end;


            // 최종 수술명(or 진단명 @ SU 간호기록지)
            lb_OpName.Caption   := sLstOprNm[0];

            // 최종 식이명
            lb_DietName.Caption := sLstDietNm[0];

            // 생년월일, 진료과, 병실정보 추가 -2015.08.03 smpark
            lb_Birtdate.Caption := ConvertSDate(sBirtdate[0]);
            lb_Meddept.Caption  := sDeptnm[0];
            lb_Wardno.Caption   := sWardno[0] +'-'+ sRoomno[0];

         end;
      end
      else
      //--------------------------------------------
      // [4] 자동서식변환(EMR) 대상환자 조회
      //   - 2012.01.26 LSH
      //--------------------------------------------
      begin

         ugd_EmrList.RowCount := RowNo + 1;


         with ugd_EmrList do
         begin

            for i := 0 to RowNo - 1 do
            begin
               Cells[0, i+1] := iPats.sPatNo[i];                  // 변환대상 환자번호
               Cells[1, i+1] := iPats.sAdmDate[i];                // 입원일자
               Cells[2, i+1] := ConvertSDate(iPats.sActDate[i]);  // 기록일자
               Cells[3, i+1] := iPats.sMoniPrd[i];                // SETTYPE (MON = ICU 기록지, NIC = NICU 기록지, STR = SU 기록지)
            end;


            // 변환대상 환자 한 Row 씩 선택하며, EMR 출력.
            for i := 1 to RowCount - 1 do
            begin

               // 대상환자 마지막 출력일자 여부 @ 2012.10.31 LSH
               if i = RowCount -1 then
               begin
                  G_LastEmrDateYn := 'Y';
               end
               else
               begin
                  G_LastEmrDateYn := 'N';
               end;

               Row := i;

               // 기록일자 Set
               dtp_RgtDate.Date := StrToDateTime(Cells[2, i]);

               // 선택된 Row의 기록정보 조회
               bbt_OkClick(ugd_EmrList);

               // EMR 출력 진행
               bbt_PrintClick(nil);

            end;
            // 변환대상 환자 한 Row 씩 선택하며, EMR 출력. end

         end;
      end;



      iPats.Free;



      //------------------------------------------------------------------------
      // NICU 체중-신장-복위-흉위-두위-재태연령 조회
      //  - 2011.12.05 LSH
      //------------------------------------------------------------------------
      if (P_NicuFlag = 'Y') then
         SetNicuInfoAdded(sType2, sType3)   // 환자번호, 입원일자
      else if (P_NicuFlag = 'S') then
      begin
         //-----------------------------------------------------------
         // SU 환자들도 키, 몸무게 추가 @ 2012.05.04 (이형숙)
         //-----------------------------------------------------------
         SetNicuInfoAdded(sType2, sType3);


         //-----------------------------------------------------------
         // Stroke Unit 진단명(주진단) 가져오기 @ 2012.04.23
         //-----------------------------------------------------------
         if (P_PatFlag = 'W') or
            (P_PatFlag = 'D') then
         begin
            // (환자기록 통합조회) SU 기록지 조회 시
            GetMainDiag(P_PatNo,                               // 환자번호
                        P_MedDept,                             // 진료과
                        DelChar(P_AdmDate, '-'),               // 입원일자
                        G_Locate,                              // 현 위치
                        '1',                                   //
                        'A',                                   // 주진단 개편관련 Flag
                        P_ChaDr,                               // 담당교수
                        'I'                                    // 환자위치(I = '입원')
                        );
         end
         else
         begin
            // (일반) SU 환자 조회 시
            GetMainDiag(ugd_PatList.Cells[3, ugd_PatList.Row], // 환자번호
                        ugd_PatList.Cells[8, ugd_PatList.Row], // 진료과
                        ugd_PatList.Cells[4, ugd_PatList.Row], // 입원일자
                        G_Locate,                              // 현 위치
                        '1',                                   //
                        'A',                                   // 주진단 개편관련 Flag
                        ugd_PatList.Cells[14,ugd_PatList.Row], // 담당교수
                        'I'                                    // 환자위치(I = '입원')
                        );
         end;
      end;



   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// [차트] Graph Display Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02.28
//------------------------------------------------------------------------------
procedure TMDN110FM.Drawchart(Sender: TObject);
var
   i, j, hh, mm : integer;
   iStart       : Integer;
   Now_ChartVs  : TChart;
begin

   //---------------------------------------------------------------------------
   // [1] 차트 Clear
   //  - 장비연동하는 Data항목은 총 11개이지만, Chart에 뿌려주는 항목은 8개, 2011.02.28
   //  - 실제 사용은 5개(C_CHARTCNT), 2011.07.23
   //  - NICU 간호기록지 오픈에 따른 분기, 2011.12.22
   //  - SU 간호기록지 분기(Chr_Vs_Su) @ 2012.04.21
   //---------------------------------------------------------------------------
   if (P_NicuFlag = 'S') then
      Now_ChartVs := Chr_Vs_Su
   else
      Now_ChartVs := Chr_Vs;





   for i := 0 to C_CHARTCNT - 1 do
   begin
      // chart Clear
      Now_ChartVs.SeriesList[i].Clear;



      //------------------------------------------------------------------------
      // 활력징후 (V/S) 뿌려주기위한, StartRow 설정
      //   - BST 처치항목 2011.08.25 추가에 따른 하드코딩..
      //   - [구로] 신형장비 [SpO2 L] code 전송따른 분기 @ 2012.11.07 LSH
      //------------------------------------------------------------------------
      if ((i = 6) and (sl_CodeList.Strings[i] = 'MA08')) then        // 7번째 SetCode가 'BST처치' 항목인 경우((MA03 SpO2 신형장비 코드 없는 경우)
      begin
         iStart := 9;
         Break;
      end
      else if ((i = 7) and (sl_CodeList.Strings[i] = 'MA08')) then   // 8번째 SetCode가 'BST처치' 항목인 경우(MA03 SpO2 신형장비 코드 추가된 경우) @ 2012.11.07 LSH
      begin
         iStart := 10;
         Break;
      end
      else if ((i = 1) and (sl_CodeList.Strings[i] = 'SA03')) then   // 2번째 SetCode가 'BST처치(Stroke Unit) 항목이면,
      begin
         iStart := 4;
         Break;
      end
      else
      begin
         iStart := 8;
      end;


      //------------------------------------------------------------------------
      // NICU 간호기록지 활력징후(V/S) StartRow 설정
      //------------------------------------------------------------------------
      if (P_NicuFlag = 'Y') then
         iStart := 6;

   end;





   //---------------------------------------------------------------------------
   // [2] 차트 Drawing
   //  - NICU 간호기록지 분기, 2011.12.22
   //  - NICU 하삼주외 2명...말이 안통해서, DrawChart로직 하드코딩 분기, 2011.12.27
   //---------------------------------------------------------------------------

   // Series Index만큼 돌면서, (j = 2는 fixedCol이 2칸이기 때문)
   for j := 2 to sl_TimeList.Count+1 do
   begin

      // 실 chart에 연동할 활력징후 항목수만큼(C_CHARTCNT), loop count (차트연동 안하는 항목 3개(RR, CVP/CVP 매뉴얼)포함)
      // for i := 8 to {6 + 3} 8 +  C_CHARTCNT - 1 do    // 8 : HR 시작 index ~ 15개 (MB03 ~ MB17까지), 2011.08.25 LSH
      // NICU 인터페이스 연동위해 iStart 삽입, 2011.12.22 LSH
      // SU   인터페이스 항목 추가 @ 2012.04.23 LSH (인터페이스 로직은 미연동)
      for i := iStart to {6 + 3} iStart +  C_CHARTCNT - 1 do
      begin

         // 측정시간(hh)
         hh := strtoint(CopyByte(asg_IcuMon.Cells[j,0],1,2));

         // 측정시간(mm)
         mm := strtoint(CopyByte(asg_IcuMon.Cells[j,0],4,2));


         if (asg_IcuMon.Cells[j,i] <> '') and ((CopyByte(sl_CodeList.Strings[i-1],1,2) = 'MB')  or    // ICU  모니터링 항목
                                               (CopyByte(sl_CodeList.Strings[i-1],1,2) = 'NB')  or    // NICU 모니터링 항목
                                               (CopyByte(sl_CodeList.Strings[i-1],1,2) = 'SB')) then  // SU   모니터링 항목
         begin

            if (i >= iStart) then
            begin
               //---------------------------------------------------------------
               // 06시 이전 Data + 06:00 Data는  해당일자 + 1
               //---------------------------------------------------------------
               if (hh < 6) or ((hh = 6)  and
                               (mm = 0)) then
               begin
                  //------------------------------------------------------------
                  // BT 값중 '.' 값(default)은 Drawing 제외, 2011.08.24 LSH
                  //------------------------------------------------------------
                  if (Trim(asg_IcuMon.Cells[j,i]) = '.') then
                     Continue;


                  if (P_NicuFlag = 'Y') then
                  begin
                     //---------------------------------------------------------
                     // [NICU]  BT->HR->(RR skip)->NBP->SBP 순서로 Chart 그리기
                     //---------------------------------------------------------
                     if (sl_CodeList.Strings[i-1] = 'NB02') then       // Heart Rate
                     begin
                        try
                           Now_ChartVs.SeriesList[0].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB02] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB03') then  // Body Temp.
                     begin
                        try
                           Now_ChartVs.SeriesList[1].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB03] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB04') then  // SBP(NBP)
                     begin
                        try
                           Now_ChartVs.SeriesList[2].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB04] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB05') then  // DBP(NBP)
                     begin
                        try
                           Now_ChartVs.SeriesList[3].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB05] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB07') then  // ASBP(ABP)
                     begin
                        try
                           Now_ChartVs.SeriesList[5].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB07] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB08') then  // ADBP(ABP)
                     begin
                        try
                           Now_ChartVs.SeriesList[6].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB08] Chart Exception');
                        end;
                     end;
                  end
                  else
                  begin
                     //---------------------------------------------------------
                     // [ICU]  HR->BT->NBP->ABP 순서로 Chart 그리기
                     // [SU]   SpO2->RR->HR->BT->NBP Charting
                     //---------------------------------------------------------
                     Now_ChartVs.SeriesList[i-iStart].AddXY(EncodeTime( hh, mm, 0, 0) + 1,
                                                            StrToFloat(asg_IcuMon.Cells[j,i]),
                                                            '',
                                                            clTeeColor);

                  end;


               end
               else
               //---------------------------------------------------------------
               // 06시 이후 Data 는 해당일자
               //---------------------------------------------------------------
               begin

                  // BT 값중 '.' 값은 Drawing 제외, 2011.08.24 LSH
                  if (Trim(asg_IcuMon.Cells[j,i]) = '.') then
                     Continue;



                  if (P_NicuFlag = 'Y') then
                  begin
                     //---------------------------------------------------------
                     // [NICU]  BT->HR->(RR Skip)->NBP->SBP 순서로 Chart 그리기
                     //---------------------------------------------------------
                     if (sl_CodeList.Strings[i-1] = 'NB02') then       // Heart Rate
                     begin
                        try
                           Now_ChartVs.SeriesList[0].AddXY(EncodeTime( hh, mm, 0, 0),
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB02] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB03') then  // Body Temp.
                     begin
                        try
                           Now_ChartVs.SeriesList[1].AddXY(EncodeTime( hh, mm, 0, 0),
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB03] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB04') then  // SBP(NBP)
                     begin
                        try
                           Now_ChartVs.SeriesList[2].AddXY(EncodeTime( hh, mm, 0, 0),
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB04] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB05') then  // DBP(NBP)
                     begin
                        try
                           Now_ChartVs.SeriesList[3].AddXY(EncodeTime( hh, mm, 0, 0),
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB05] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB07') then  // ASBP(ABP)
                     begin
                        try
                           Now_ChartVs.SeriesList[5].AddXY(EncodeTime( hh, mm, 0, 0),
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB07] Chart Exception');
                        end;
                     end
                     else if (sl_CodeList.Strings[i-1] = 'NB08') then  // ADBP(ABP)
                     begin
                        try
                           Now_ChartVs.SeriesList[6].AddXY(EncodeTime( hh, mm, 0, 0),
                                                           StrToFloat(asg_IcuMon.Cells[j,i]),
                                                           '',
                                                           clTeeColor);
                        except
                           ShowMessage('[NB08] Chart Exception');
                        end;
                     end;
                  end
                  else
                  begin
                     //---------------------------------------------------------
                     // [ICU 기록지]  HR->BT->NBP->ABP 순서로 Chart 그리기
                     // [SU  기록지]  SpO2->RR->HR->BT->NBP Charting
                     //---------------------------------------------------------
                     Now_ChartVs.SeriesList[i-iStart].AddXY(EncodeTime( hh, mm, 0, 0),
                                                            StrToFloat(asg_IcuMon.Cells[j,i]),
                                                            '',
                                                            clTeeColor);
                  end;
               end;
            end;
         end;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [항목관리 ] 항목관리(모니터링 SET 추가/삭제) 화면 호출
//
// Author : Lee, Se-Ha
// Date   : 2011.02.28
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_MonitorClick(Sender: TObject);
var
   FForm : TForm;
   sPatNo, sAdmDate, sActDate, sSetType : String;
begin
   //---------------------------------------------------------------------------
   // 환자별 모니터링 Set 저장여부에 따른, 최초저장여부 확인
   //---------------------------------------------------------------------------
   sPatNo     := P_PatNo;
   sAdmDate   := P_AdmDate;
   sActDate   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);



   //---------------------------------------------------------------------------
   // 최초 저장유무 Check
   //---------------------------------------------------------------------------
   if not CheckIcuFstSave(sPatNo, sAdmDate, sActDate, P_NicuFlag) then
   begin
      MessageBox(Self.Handle,
                 '모니터링 측정주기를 선택후, 해당일자의 [최초저장]을 시행해 주십시오.',
                 '해당일자 모니터링 SET 미저장',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;



   //---------------------------------------------------------------------------
   // 가변 항목관리 (ICU처방-SET Mapping관리) 화면 호출
   //---------------------------------------------------------------------------
   FForm := BplFormCreate('MDN110FP');

   SetBplStrProp('MDN110FP', 'prop_PatNo'   , P_PatNo);
   SetBplStrProp('MDN110FP', 'prop_PatName' , P_PatName);
   SetBplStrProp('MDN110FP', 'prop_AdmDate' , P_AdmDate);
   SetBplStrProp('MDN110FP', 'prop_SexAge'  , P_SexAge);


   //---------------------------------------------------------------------------
   // ICU - NICU 간호기록지 모니터링 SET 분기, 2011.10.26 LSH
   // SU 간호기록지 분기 @ 2012.04.21 LSH
   //---------------------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
      sSetType := 'NIC'
   else if (P_NicuFlag = 'S') then
      sSetType := 'STR'
   else
      sSetType := 'MON';


   SetBplStrProp('MDN110FP', 'prop_Settype' , sSetType);

   MComFormShow(FForm);

end;





//------------------------------------------------------------------------------
// [작성일자] DateTimePicker onChange Event handler
// - Refresh
//
// Author : Lee, Se-Ha
// Date   : 2011.02.22
//------------------------------------------------------------------------------
procedure TMDN110FM.dtp_RgtDateChange(Sender: TObject);
begin
   //-------------------------------------------------------------
   // 1. Data-Set 초기화
   //-------------------------------------------------------------
   InitDataSet(cds_SaveItem);



   //------------------------------------------------------------------
   // 2. [NICU 간호기록지] 환자상세정보 Refresh, 2012.03.08 LSH
   //  - "기록일자" 변경시 환자 상세정보(신장/체중/재태연령 등) 해당날짜 값으로 다시 fetch
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') and
      (P_PatFlag = '')   then
   begin
      SelectPatInfo('REFRESH');
   end
   else if (P_NicuFlag = 'Y') and
           ((P_PatFlag = 'W')  or
            (P_PatFlag = 'D'))  then
   begin
      SelectPatInfo('SELECTED');
   end;




   //---------------------------------------------------
   // 3. 화면 Refresh
   //---------------------------------------------------
   if (cbx_Hemo.Checked) then
      // 화면 Refresh
      Refresh
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;

end;





//------------------------------------------------------------------------------
// Form onCreate Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.28
//------------------------------------------------------------------------------
procedure TMDN110FM.FormCreate(Sender: TObject);
begin
   //----------------------------
   // 1. Code 리스트 객체 생성
   //----------------------------
   sl_CodeList := TStringList.Create;

   //----------------------------
   // 2. Time 리스트 객체 생성
   //----------------------------
   sl_TimeList := TStringList.Create;


   //----------------------------
   // 3. 항목 Value 객체 생성
   //----------------------------
   l_SaveItem := TList.Create;


   //----------------------------
   // 4. 입력항목 속성 객체 생성
   //----------------------------
   l_CodeItem := TList.Create;


   //--------------------------------------------------------
   // 5. Form 생성시, 모니터링항목 임시저장 Data-Set 초기화
   //--------------------------------------------------------
   InitDataSet(cds_SaveItem);


   //--------------------------------------------------------
   // 6. 관리자(99995/08368 이세하)만, Log Panel Visible
   //--------------------------------------------------------
   if (md_UserId = '99995') or (md_UserId = '08368') then
      Advpn_Log.Visible := True
   else
      Advpn_Log.Visible := False;


   //--------------------------------------------------------
   // 7. 자동서식변환 EMR 출력 Index 초기화
   //--------------------------------------------------------
   G_EmrPrtIdx := 0;
   G_LastEmrDateYn := 'N';


   //--------------------------------------------------------
   // 8. 최초 Form Create 여부 Check하는 Tag값.
   //  - 2012.03.07 LSH
   //--------------------------------------------------------
   asg_IcuMon.Tag := 0;


   //--------------------------------------------------------
   // 9. 20인치 Display 최적화 개발에 따른 하드코딩
   //  - 2012.03.02 LSH
   //--------------------------------------------------------
   Self.Width := 1563;

end;


//------------------------------------------------------------------------------
// Grid OnGetAlignment Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02.22
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   // NICU 간호기록지 - 필수항목은 Center Align
   if (P_NicuFlag = 'Y') then
   begin
      if (ARow >= 0) and (ARow <= 5) then
         HAlign := taCenter
      else
         HAlign := taLeftJustify;
   end
   else if (P_NicuFlag = 'S') then
   // SU 간호기록지 @ 2012.04.21 LSH
   begin
      if (ARow >= 0) and (ARow <= 3) then
         HAlign := taCenter
      else
         HAlign := taLeftJustify;
   end
   else
   // ICU 통합 간호기록지
   begin
      if (ARow >= 0) and (ARow <= 8) then
         // [구로] SpO2 신형장비 코드추가로 Row Index 7->8로 수정 @ 2012.11.05 LSH
         HAlign := taCenter
      else
         HAlign := taLeftJustify;
   end;


   VAlign := vtaCenter;


end;


//------------------------------------------------------------------------------
// Grid onGetCellColor Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02.22
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin

   if ARow = 0 then
      Exit;

   //--------------------------------------------
   // 입력항목 속성 Client Data Set 셀 컬러 지정
   //--------------------------------------------
   with cds_MonItem do
   begin
      // 1. 입력항목 코드에 따른 입력 값 목록 검색
      Filter := 'setcode = ''' + sl_CodeList.Strings[ARow-1] + ''' ';

      Filtered := True;


      // 2. 상위 타이틀 - 통계 (총섭취량, 총배설량)
      if (FindField('setcode').AsString = 'ME01') or
         (FindField('setcode').AsString = 'ME02') or
         (FindField('setcode').AsString = 'NE01') or  // NICU 간호기록지 항목code 추가, 2011.10.31 LSH
         (FindField('setcode').AsString = 'NE02')     // NICU 간호기록지 항목code 추가, 2011.10.31 LSH
         then
      begin
         ABrush.Color := $00E9CBEB;
         AFont.Style  := [fsBold];
      end
      else if (FindField('setcode').AsString = 'SE01') or  // SU   간호기록지 항목code 추가, 2012.04.21 LSH
              (FindField('setcode').AsString = 'SE02')     // SU   간호기록지 항목code 추가, 2012.04.21 LSH
               then
      begin
         ABrush.Color := $00E9CBEB;

         {
         if (ACol = 0) then
            asg_IcuMon.FontStyles[ACol, ARow] := []
         else if (ACol > 0) then
            asg_IcuMon.FontStyles[ACol, ARow] := [fsBold]
         }

         AFont.Style  := [fsBold];
      end;

      Filtered := False;

   end;

end;


//------------------------------------------------------------------------------
// Grid Cell클릭시, UnderLine(Blue) 세팅
//
// Author : Lee, Se-Ha
// Date   : 2011.01.28
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
var
   u_Rectangle : TRect;
begin
   u_Rectangle  := asg_IcuMon.CellRect(2, ARow);
   pn_Line2.Top := u_Rectangle.Top + asg_IcuMon.RowHeights[ARow];

   // 현재 Cell 좌표 정보 @ 2012.05.14
   gNowRow := ARow;
   gNowCol := ACol;
end;



//------------------------------------------------------------------------------
// 인터페이스 그래프 Click Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2010.12.24
//------------------------------------------------------------------------------
procedure TMDN110FM.cbx_InterfaceClick(Sender: TObject);
begin
   //-------------------------
   // 1-1. 그래프 visible
   //-------------------------
   if cbx_Interface.Checked then
   begin
      if (P_NicuFlag = 'S') then
      // SU 간호기록지 분기 @ 2012.04.21 LSH
      begin
         pn_If.Visible     := False;

         pn_If_Su.Visible  := True;
         pn_If_Su.Parent   := pn_ICU;
         pn_If_Su.Align    := alTop;

         pn_List1.Align    := alClient;

         asg_IcuMon.Height := 565;
      end
      else
      begin
         pn_If.Visible     := True;

         pn_If_Su.Visible  := False;
         pn_If.Parent      := pn_ICU;
         pn_If.Align       := alTop;

         pn_List1.Align    := alClient;

         asg_IcuMon.Height := 565;
      end;
   end
   else
   //-------------------------
   // 1-2. 그래프 invisible
   //-------------------------
   begin
      if (P_NicuFlag = 'S') then
      begin
         pn_If_Su.Visible     := False;
         pn_If_Su.Align       := alNone;
      end
      else
      begin
         pn_If.Visible     := False;
         pn_If.Align       := alNone;
      end;

      asg_IcuMon.Height := 905;
   end;


   //---------------------------------------------------
   // 2. Code-Time 리스트 재구성 및 입력항목 속성조회
   //---------------------------------------------------
   CheckFormSet;


   //---------------------------------------------------
   // 3. Data Loading bar 보이기
   //---------------------------------------------------
   SetLoadingBar('ON');


   //---------------------------------------------------
   // 3. Grid의 입력값을 Client Data-Set에 assign
   //---------------------------------------------------
   SetSaveList('TOGRID');


   //---------------------------------------------------
   // 4. Data Loading bar 숨기기
   //---------------------------------------------------
   SetLoadingBar('OFF');


end;




//------------------------------------------------------------------------------
// 모니터링 입력주기 Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.24
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_MoniprdClick(Sender: TObject);
var
  iPats  : HmdIcpatt;
  RowNo  : integer;
  ls_Msg : string;
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //--------------------------------------
   // 1. 측정주기 입력확인
   //--------------------------------------
   if ((P_NicuFlag  = 'S') and (combx_Moniprd_Su.Text = '')) or
      ((P_NicuFlag <> 'S') and (combx_Moniprd.Text    = '')) then
   begin
      MessageBox(Self.Handle, '측정주기를 입력하세요.', '장비 인터페이스 접속오류', MB_OK + MB_ICONINFORMATION);
      exit;
   end;


   //--------------------------------------
   // 2. 확인 메세지
   //--------------------------------------
   ls_Msg := lb_PatName.Caption + '환자의 Interface측정 주기를 현재시각부터 '+ combx_Moniprd.Text + '분단위로 등록하시겠습니까?';



   //--------------------------------------
   // 3. 메세지박스 처리
   //--------------------------------------
   if Application.MessageBox(Pchar(ls_Msg), '측정주기 등록',MB_OKCANCEL) = IDCANCEL then
      Exit;


   Screen.Cursor := crHourglass;


   //--------------------------------------
   // 4. 모니터링 주기 Transition Logic
   //--------------------------------------
   try
      iPats := HmdIcpatt.Create;

      with iPats do
      begin
         sPatno     := P_PatNo;
         sAdmdate   := P_AdmDate;
         sActdate   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);

         sEditid    := md_Userid;
         sEditip    := G_Userip;

         // SU 기록지 분기 @ 2012.04.21 LSH
         if (P_NicuFlag = 'S') then
            sMoniprd   := combx_Moniprd_Su.Text
         else
            sMoniprd   := combx_Moniprd.Text
      end;



      //---------------------------------------
      // 4-1. 중환자마스터(MDICUSET) 업데이트
      //---------------------------------------
      RowNo := iPats.InsertIcuPat;



      //---------------------------------------
      // 4-2. Insert Error Msg
      //---------------------------------------
      if RowNo = -1 then
      begin
         iPats.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end
      else
      begin
         //----------------------------
         // 4-3. Return 메세지 처리
         //----------------------------
         if (iPats.iRtnCd[0] = '0') then
            //---------------------------------
            // 최초 저장내역 미존재시
            //---------------------------------
            MessageBox(Self.Handle,
                       '최초저장 내역이 존재하지 않습니다.' + #13#10 + '[저장]을 누르신후, [측정주기]를 변경하실 수 있습니다.',
                       '장비 인터페이스 접속오류',
                       MB_OK + MB_ICONINFORMATION)

         else if (iPats.iRtnCd[0] = '1') then
            //---------------------------------
            // 최초 저장내역 존재시
            //---------------------------------
            MessageBox(Self.Handle,
                       '모니터링 측정주기가 변경되었습니다.',
                       '장비 인터페이스 접속알림',
                       MB_OK + MB_ICONINFORMATION);

      end;


      iPats.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// AdvStringGrid Key Press Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.24
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonKeyPress(Sender: TObject; var Key: Char);
var
   bExist : Boolean;
begin
   //-----------------------------------
   // 1. Enter키 입력 시, 아래 row로
   //-----------------------------------
   if (Key = char(VK_RETURN)) then
   begin

      with cds_MonItem do
      begin
         // 입력항목 코드에 따른 입력 값 목록 검색
         Filter := 'setcode = ''' + sl_CodeList.Strings[asg_IcuMon.Row-1] + ''' ';

         Filtered := True;


         // 상위 타이틀 - 통계 (총섭취량, 총배설량) 입력제한
         if (FindField('setcode').AsString = 'ME01') or
            (FindField('setcode').AsString = 'NE01') or
            (FindField('setcode').AsString = 'SE01') then

            asg_IcuMon.Row := asg_IcuMon.Row + 2

         else if (FindField('setcode').AsString = 'ME02') or
                 (FindField('setcode').AsString = 'NE02') or
                 (FindField('setcode').AsString = 'SE02') then

            asg_IcuMon.Row := asg_IcuMon.Row + 1;

         Filtered := False;

      end;

      // 해당Cell 내역 Hint로 보여주는 로직.
      asg_IcuMonClickCell(Sender, asg_IcuMon.Row, asg_IcuMon.Col);

   end;


   //-----------------------------------
   // 2. 아래방향키 입력 시
   //-----------------------------------
   if (Key = char(VK_DOWN)) then
   begin
      Key := #0;
   end
   //-----------------------------------
   // 3. 윗방향키 입력 시
   //-----------------------------------
   else if (Key = Char(VK_UP)) then
   begin
      Key := #0;
   end
   else
   //-----------------------------------
   // 4. 기타 Key입력시
   //-----------------------------------
   begin
      // 입력속성 Client Data-Set을 검색.
      with cds_MonItem do
      begin

         // DataSet중에서, SetCode별 1Row를 검색.
         bExist := Locate('setcode', sl_CodeList.Strings[asg_IcuMon.Row-1], [loCaseInsensitive]);

         // 검색한 1개의 Row에서
         if bExist then
         begin
            //------------------------------------------------------------------
            // 입력속성(InputType)이 'ED'이면, '-', '.' , Numeric값만 입력가능.
            //   - '-' 음수부호 추가, 2011.08.18 LSH
            //   - 활력징후(*B**)가 아닌경우 적용조건 추가 @ 2012.05.18 LSH
            //------------------------------------------------------------------
            if (FindField('inputtyp').AsString = 'ED') and
               (CopyByte(FindField('setcode').AsString, 2, 1) <> 'B')  then
            begin
               //---------------------------------------------------------------
               // SU 기록지 [활력징후] 제외한 ED 항목에 Key(알파벳) 입력가능
               //  - 2012.06.01 (이형숙 요청)
               //---------------------------------------------------------------
               if (P_NicuFlag = 'S') then
               begin
                  if (Not (Key in ['a'..'z', 'A'..'Z', '-', '.', '0'..'9'
                         ,Char(VK_LEFT),Char(VK_RIGHT)
                         ,Char(VK_BACK),Char(VK_DELETE)
                         ,Char(VK_RETURN)])) then
                  begin
                     Beep;
                     Key := #0;
                     exit;
                  end;
               end
               else
               begin
                  //------------------------------------------------------------
                  // [I/O] 배설량 가변항목(Residual, 양상 등) 입력시, TEXT 가능
                  //   - 2012.10.16 LSH (김재경 요청)
                  //------------------------------------------------------------
                  if (FindField('setcode').AsString >= 'MF18') and
                     (FindField('setcode').AsString <= 'MF22') then
                  begin
                     if (Not (Key in ['a'..'z', 'A'..'Z', '-', '.', '0'..'9'
                            ,Char(VK_LEFT),Char(VK_RIGHT)
                            ,Char(VK_BACK),Char(VK_DELETE)
                            ,Char(VK_RETURN)])) then
                     begin
                        Beep;
                        Key := #0;
                        exit;
                     end;
                  end
                  else if (Not (Key in ['-','.', '0'..'9'
                               ,Char(VK_LEFT),Char(VK_RIGHT)
                               ,Char(VK_BACK),Char(VK_DELETE)
                               ,Char(VK_RETURN)])) then
                  begin
                     Beep;
                     Key := #0;
                     exit;
                  end;
               end;
            end
            //------------------------------------------------------------------
            // 활력징후(*B**) + 입력속성(InputType)이 'ED'이면, 무조건 Numeric.
            //   - 2012.05.18 LSH
            //------------------------------------------------------------------
            else if (FindField('inputtyp').AsString = 'ED') and
                    (CopyByte(FindField('setcode').AsString, 2, 1) = 'B')  then
            begin
               //---------------------------------------------------------------
               // NICU 기록지 [활력징후] 중 인터페이스 미연동항목은 특수key 가능
               //  - 2012.06.04 (이진희 요청)
               //---------------------------------------------------------------
               if (P_NicuFlag = 'Y') and
                  (FindField('setcode').AsString >= 'NB11') // Desaturation
                  then
               begin
                  if (Not (Key in ['a'..'z', 'A'..'Z', '-', '.', '0'..'9'
                         ,Char(VK_LEFT),Char(VK_RIGHT)
                         ,Char(VK_BACK),Char(VK_DELETE)
                         ,Char(VK_RETURN)])) then
                  begin
                     Beep;
                     Key := #0;
                     exit;
                  end;
               end
               else
               begin
                  //------------------------------------------------------------
                  // [활력징후] CVP(cmH₂O) 입력하는 부분에 '음수' 및 '.' 가능
                  //   - 2012.06.22 LSH (이명희 요청)
                  //------------------------------------------------------------
                  if (FindField('setcode').AsString = 'MB12') then
                  begin
                     if (Not (Key in ['0'..'9', '-', '.'
                            ,Char(VK_LEFT),Char(VK_RIGHT)
                            ,Char(VK_BACK),Char(VK_DELETE)
                            ,Char(VK_RETURN)])) then
                     begin
                        Beep;
                        Key := #0;
                        exit;
                     end;
                  end
                  else
                  begin
                     if (Not (Key in ['0'..'9'
                            ,Char(VK_LEFT),Char(VK_RIGHT)
                            ,Char(VK_BACK),Char(VK_DELETE)
                            ,Char(VK_RETURN)])) then
                     begin
                        Beep;
                        Key := #0;
                        exit;
                     end;
                  end;
               end;
            end;
         end;
      end;

      // 해당Cell 내역 Hint로 보여주는 로직.
      asg_IcuMonClickCell(Sender, asg_IcuMon.Row, asg_IcuMon.Col);

   end;

end;



//------------------------------------------------------------------------------
// 모니터링 상세내역 저장 Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.05
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_MoniSaveClick(Sender: TObject);
begin
   ugd_PatList.Enabled := False;
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;


   //---------------------------------------------------------
   // 1. 저장시, Grid 모든 항목이 Open되어야 함.
   //---------------------------------------------------------
   if not (cbx_Hemo.Checked) then
      cbx_Hemo.Checked := True;

   if not (cbx_Neuro.Checked) then
      cbx_Neuro.Checked := True;

   if not (cbx_Io.Checked) then
      cbx_Io.Checked := True;



   //---------------------------------------------------------
   // 2. 모니터링 입력주기 선택확인
   //---------------------------------------------------------
   if ((P_NicuFlag = 'S')  and (combx_Moniprd_Su.Text = '')) or
      ((P_NicuFlag <> 'S') and (combx_Moniprd.Text    = '')) then
   begin
      MessageBox(Self.Handle,
                 '모니터링 측정주기를 선택후, [저장]을 눌러주세요.',
                 '모니터링 측정주기 확인',
                 MB_OK + MB_ICONINFORMATION);
      exit;
   end;



   //---------------------------------------------------------
   // 3. SetCode 항목이 MDICUSET 있으면 skip, 없으면 insert.
   //---------------------------------------------------------
   SetCodeList('REFRESH');



   //---------------------------------------------------------
   // 4. Time 항목 MDICUTMT 있으면 skip, 없으면 insert.
   //---------------------------------------------------------
   SetTimeList('REFRESH');



   //---------------------------------------------------------
   // 5. 임시 Data-Set Value를 D/B Table에 Insert.
   //---------------------------------------------------------
   SetSaveList('TOTABLE');



   //---------------------------------------------------------
   // 6. Refresh
   //---------------------------------------------------------
   Refresh;

   ugd_PatList.Enabled := True;

end;




//------------------------------------------------------------------------------
// [Form 생성시] 중환자 기본정보 Set Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.04
//------------------------------------------------------------------------------
procedure TMDN110FM.SetPatInfo(in_Flag : String);
begin
   //----------------------------------------------------
   // 1. 기본정보 변수 초기화
   //----------------------------------------------------
   lb_PatInfo.Caption  := '';
   lb_PatName.Caption  := '';
   lb_SexAge.Caption   := '';
   lb_DietName.Caption := '';
   lb_OpName.Caption   := '';

   // 2015.08.03 smpark
   lb_Birtdate.Caption := '';
   lb_Meddept.Caption  := '';
   lb_Wardno.Caption   := '';


   //----------------------------------------------------
   // 2. 병동정보 초기화
   //----------------------------------------------------
   combx_WardCd.Clear;
   combx_WardNm.ItemIndex := -1;


   //----------------------------------------------------
   // ICU 환자조회 Positioning 분기
   //----------------------------------------------------
   if (P_NicuFlag <> 'N') then
   begin
      //-------------------------------------------------
      // SU 간호기록지 분기 @ 2012.04.21 LSH
      //-------------------------------------------------
      if (P_NicuFlag = 'S') then
         apn_PatList.Caption.Text := 'SU 환자조회'
      else if (P_NicuFlag = 'Y') then
         apn_PatList.Caption.Text := 'NICU 환자조회'
      else
         apn_PatList.Caption.Text := 'ICU 환자조회';

      apn_PatList.Left      := 961;
      apn_PatList.Top       := 80;
      apn_PatList.Visible   := True;
   end
   else
   begin
      apn_PatList.Left      := 1306;

      // 생년월일 보이도록 변경 -2015.08.12 smpark
      if G_Locate = 'AA' then
         apn_PatList.Top := 80
      else
         apn_PatList.Top := 4;

      apn_PatList.Visible   := True;
   end;



   if cbx_NowPos.Checked then
      GetNowPos(combx_WardCd, combx_WardNm)  // NowPos Code Setting.
   else
      GetWardNo(combx_WardCd, combx_WardNm); // Ward Code Setting.



   combx_WardNm.Enabled := True;


   //----------------------------------------------------
   // 의사 호출시
   //----------------------------------------------------
   if (P_PatFlag = 'MDP110F2') then
   begin
      // 의사호출시만, [원무승인 병동정보]로 Setting. (전과전실이 완료되었다는 전제)
      Combx_WardNm.ItemIndex := combx_WardCd.Items.IndexOf(md_WardNo);
      Combx_Wardcd.ItemIndex := Combx_Wardnm.ItemIndex;
   end
   //----------------------------------------------------
   // 병동기록지 출력[MDN252F1] or 자동서식스캔 호출시
   //----------------------------------------------------
   else if (P_PatFlag = 'D') or
           (P_PatFlag = 'W') then
   begin
      // 환자기록 통합조회 연동하며, 아래 주석처리, 2012.03.07 LSH
      //P_PatFlag := '';   // 초기화


      // 선택된 환자정보 조회
      SelectPatInfo('SELECTED');


      Exit;

   end
   {   AutoScan New-version 사용하면서, 주석처리함. 2012.01.30 LSH
   // 자동서식스캔 시
   else if (P_EMRPrintYn = 'Y') then
   begin
      // 서식스캔 대상환자 정보조회
      SelectPatInfo(in_Flag);


      // 자동서식스캔 출력
      //bbt_PrintClick(Self);


      Exit;
   end
   }
   //----------------------------------------------------
   // 기타 호출시 (병동간호 등 )
   //----------------------------------------------------
   else
   begin
      Combx_WardNm.ItemIndex := combx_WardCd.Items.IndexOf((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Items[(GetComp('MDN110F1', 'combx_WardNm') as TComboBox).ItemIndex]);
      Combx_Wardcd.ItemIndex := Combx_Wardnm.ItemIndex;
   end;



   //----------------------------------
   // 3. ICU 환자 리스트 조회 및 선택
   //----------------------------------
   GetPatList(Self);



   //-----------------------------------------------------------------------------------
   // 4. 정보조회 (환자명/성별나이/수술정보/식이정보/재원일수/혈액형)
   //   - ICU에서 일반 병동으로 Transfer된 case도 조회가능 (CCU 김연아요청), 2011.05.26
   //-----------------------------------------------------------------------------------
   SelectPatInfo(in_Flag)




end;




//------------------------------------------------------------------------------
// 모니터링 메인화면 Form Set Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2010.12.26
//------------------------------------------------------------------------------
procedure TMDN110FM.CheckFormSet;
begin
   //----------------------------------------------------
   // 1. 화면 Clear 및 변수 초기화
   //----------------------------------------------------
   asg_IcuMon.Clear;
   med_ActTime.Text := '';
   stb_Message.Panels[0].text := '';

   // B/S, I/O 측정내역 조회 Panel 닫기 @ 2012.05.14
   bbt_BstClose.Click;
   bbt_IoClose.Click;



   //----------------------------------------------------
   // 2. 모니터링 Set코드 항목(Row-Title) 구성하기
   //----------------------------------------------------
   if GetCodeList(P_PatNo, DelChar(P_AdmDate,'-')) < 0 then
   begin
      MessageBox(Self.Handle,
                 '모니터링 Code 구성을 실패하였습니다. 문의 [T.920-6218]',
                 '기록지 모니터링 SetCode 충돌 알림',
                 MB_OK + MB_ICONERROR);

      // 최초저장/항목관리 및 Refresh Disabled
      bbt_MoniSave.Enabled := False;
      bbt_Monitor.Enabled  := False;
      sbt_Refresh.Enabled  := False;

      Exit;
   end;

   //----------------------------------------------------
   // 3. 모니터링 Time코드 항목(Col-Title) 구성하기
   //----------------------------------------------------
   if GetTimeList(P_PatNo, DelChar(P_AdmDate,'-')) < 0 then
   begin
      MessageBox(Self.Handle,
                 '모니터링 Time 구성을 실패하였습니다. 문의 [T.920-6218]',
                 '기록지 모니터링 Time 충돌 알림',
                 MB_OK + MB_ICONERROR);

      // 최초저장/항목관리 및 Refresh Disabled
      bbt_MoniSave.Enabled := False;
      bbt_Monitor.Enabled  := False;
      sbt_Refresh.Enabled  := False;

      Exit;
   end;



   //----------------------------------------------------
   // 4. Set코드별 입력속성값(InputTyp/Limit) 구성
   //----------------------------------------------------
   if (P_EmrPrintYn <> 'Y') then
      GetAllItems;



   //----------------------------------------------------
   // 5. Fixed Title Column 구성 (모니터링항목)
   //----------------------------------------------------
   with asg_IcuMon do
   begin
      // 모니터링 항목명 표기
      Cells[0,0]  := '모니터링 항목';

      // 모니터링 항목명 Cell Merging
      MergeCells(0,0,2,1);

      // Stroke Unit 간호기록지 분기 @ 2012.04.21 LSH
      if (P_NicuFlag = 'S') then
      begin
         // 상위분류 colwidth
         ColWidths[0] := 55;

         // 하위분류 colwidth
         ColWidths[1] := 85;
      end
      else
      // ICU - NICU 간호기록지
      begin
         // 상위분류 colwidth
         ColWidths[0] := 65;

         // 하위분류 colwidth
         ColWidths[1] := 75;
      end;
   end;


end;


//------------------------------------------------------------------------------
// 환자별 모니터링 Code 항목 Set Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.05
//------------------------------------------------------------------------------
procedure TMDN110FM.SetCodeList(sGubun : String);
var
   i, j, Rowno: Integer;
   iBaseRow, iRowSpan : Integer;

   sType1, sType2, sType3, sType4, sSettype : String;
   sPrevUptitle : String;

   rowItem : HmdIcutot;
   iCrect  : HmdIcutot;
begin

   j := 0;

   //-----------------------------------------------------------------
   // 1. 환자기본정보 및 기록일자 유효성 Check
   //-----------------------------------------------------------------
   if (Trim(lb_PatInfo.Caption) = '') then
   begin
      // [환자기록 통합조회] 또는 [자동서식변환] 관련, 2011.09.07 LSH
      if (P_RgtDate <> '') then
      begin
         MessageBox(Self.Handle,
                    '조회일자에 대한 기록내역이 존재하지 않습니다.' + #13#10 +
                    '조회일자 확인바랍니다.',
                    '환자기록통합조회 기록 없음',
                    MB_OK + MB_ICONINFORMATION);

         Exit;
      end;


      MessageBox(Self.Handle,
                 pchar('해당환자의 현 위치 정보가 정확하지 않습니다.' + #13#10 + #13#10 +
                 '원무팀 전과전실 [승인완료] 여부 확인바랍니다.'),
                 '환자정보 조회 실패 알림',
                 MB_OK + MB_ICONWARNING
                 );


      // Control Button Set
      bbt_MoniSave.Enabled := False;
      bbt_Monitor.Enabled  := False;
      bbt_Quality.Enabled  := False;
      bbt_Ass.Enabled      := False;
      bbt_Print.Enabled    := False;
      bbt_MoniPrd.Enabled  := False;

      sbt_PrevDate.Enabled := False;
      sbt_NextDate.Enabled := False;
      dtp_RgtDate.Enabled  := False;
      sbt_Refresh.Enabled  := False;
      sbt_AddTime.Enabled  := False;
      sbt_DelTime.Enabled  := False;

      Exit;
   end;



   //---------------------------------------------------------------------------
   // 당일 새벽(00:00~06:59)에 입원하는 case위해,
   // 입원일자-1 일까지 기록일자 조회 가능하도록 로직 변경, 2011.05.25 LSH
   //---------------------------------------------------------------------------
   if dtp_RgtDate.Date < StrToDate(ConvertSDate(DelChar(P_AdmDate,'-'))) - 1 then
   begin
      MessageBox(Self.Handle,
                 '기록일자를 확인해주십시오.',
                 '모니터링 SET 구성실패',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;



   //-----------------------------------------------------------------
   // 2-1. Monitoring 항목 최초 구성
   //-----------------------------------------------------------------
   if (sGubun = 'FORMSHOW') then
   begin
      //-----------------------------------------------------
      // 모니터링 기본 전체항목 (SetType = 'MON') 가져오기
      //-----------------------------------------------------
      sType1   := '6';


      // ICU - NICU 간호기록지 모니터링 SET 분기, 2011.10.26 LSH
      // SU 간호기록지 분기 @ 2012.04.21 LSH
      if (P_NicuFlag = 'Y') then
         sType2 := 'NIC'
      else if (P_NicuFlag = 'S') then
         sType2 := 'STR'
      else
         sType2 := 'MON';

      sType3   := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date);
      sType4   := '';
      sSetType := '';



      Screen.Cursor   := crHourglass;



      try
         iCrect := HmdIcutot.Create;

         //-----------------------------------------------------
         // 모니터링 Default Set (전체항목) 가져오기
         //-----------------------------------------------------
         RowNo := iCrect.GetMonitorDayList(sType1, sType2, sType3, sType4, sSetType);


         // SYSTEM ERROR
         if RowNo = -1 then
         begin
            iCrect.Free;
            ShowErrMsg(stb_Message);
            Exit;
         end;


         // 조회건수 없음
         if RowNo = 0 then
         begin
            iCrect.Free;
            stb_Message.Panels[0].Text := 'D/B에 모니터링 코드항목이 없습니다. 문의 [T.920-6218]';
            Exit;
         end;


         // SetCode별 HmdIcutot객체 보관 List Clear
         l_CodeItem.Clear;


         // SetCode값만 보관할 List Clear
         sl_CodeList.Clear;


         // 입력넣은 순서로 출력되도록 자동정렬 안함
         sl_CodeList.Sorted := False;



         //----------------------------------------------
         // SET 코드항목 배치, 정렬
         //----------------------------------------------
         with iCrect, asg_IcuMon do
         begin

            // Merge 변수
            iBaseRow       := 0;
            iRowSpan       := 1;
            sPrevUptitle   := ''; // C_CODEVAL로 치환예정..


            for i := 0 to RowNo - 1 do
            begin
               // 2.3.2. restore classification code
               rowItem := HmdIcutot.Create;


               //-----------------------------------------
               // 필수 고정항목 (Default)
               //-----------------------------------------
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin

                  Cells[0, RowCount - 1] := sSettitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := '';              // 하위분류

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               //------------------------------------
               // Hemodynamic
               //------------------------------------
               if (cbx_Hemo.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  continue;
               end
               //---------------------------------------------------------------
               // [구로] 신형 P/M RR(Respiration Rate) 코드 Hide @ 2012.10.15 LSH
               //   - 장비와 OCS 연동만 하고, 화면에는 RESP 1개만 표기
               //   - 신형장비 Ps(ABPs),Pd(ABPd), Pm(ABPm) 추가 @ 2012.11.01 LSH
               //---------------------------------------------------------------
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') and
                       ((sItemCode[i] = 'RR') or
                        (sItemCode[i] = 'PS') or
                        (sItemCode[i] = 'PD') or
                        (sItemCode[i] = 'PM') or
                        // [구로] 73W BMCentral 인터페이스 -2013.11.28 smpark
                        (sItemCode[i] = 'SPO2-%') or
                        (sItemCode[i] = 'NIBP-S') or
                        (sItemCode[i] = 'NIBP-D')) then
               begin
                  Continue;
               end
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := sSettitle[i];   // 하위분류

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               //------------------------------------
               // 의식-신경계, 호흡기
               //------------------------------------
               if (cbx_Neuro.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  continue;
               end
               else if (cbx_Neuro.Checked) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := sSettitle[i];   // 하위분류

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               //----------------------------------------------
               // 섭취량(MD**), Total Sum(ME**), 배설량(MF**)
               //----------------------------------------------
               if (cbx_Io.Checked = False) and ((CopyByte(sSetCode[i],2,1) = 'D') or
                                                (CopyByte(sSetCode[i],2,1) = 'E') or
                                                (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin
                  continue;
               end
               else if (cbx_Io.Checked) and ((CopyByte(sSetCode[i],2,1) = 'D') or
                                             (CopyByte(sSetCode[i],2,1) = 'E') or
                                             (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin

                  Cells[0, RowCount - 1] := sSettitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := '';              // 하위분류 (Duty별 Sum으로 사용할 컬럼)

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               // List에 인스턴스 추가 (Pointer)
               l_CodeItem.Add(rowItem);


               //--------------------------------------------
               // Cell Merge and Rearranging
               //--------------------------------------------
               // [필수항목]은 Row Cell-Merge 적용.
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin

                  MergeCells(0, i+1, 2, 1);

                  // [구로] 신형장비 SpO2 코드추가 항목 Cell Remove @ 2012.11.05 LSH
                  if (sItemCode[i] = 'SPO2 L') then
                  begin
                     RowHeights[i+1] := 0;
                  end;
               end
               else
               // [I/O항목]은 각 항목별 Row-Sum위해 Cell-Merge 하지 않음, 2011.02.16 LSH <AN 이혜원교수 요청>
               if ((CopyByte(sSetCode[i],2,1) = 'D') or
                   (CopyByte(sSetCode[i],2,1) = 'E') or
                   (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin
                  MergeCells(0, iBaseRow, 1, 1);
               end
               else
               // 그외에 [Hemodynamic], [의식신경계,호흡기]는 iBaseRow를 기준으로 Cell-Merge 진행.
               begin
                  // 상위분류 항목 MergeCell 체크
                  if sUptitle[i] <> sPrevUptitle then
                  begin

                     // 이전 분류와 다른 경우
                     if i > 0 then
                     begin
                        MergeCells(0, iBaseRow, 1, iRowSpan);
                        iRowSpan := 1;
                     end;

                     // ★★★★★ Key Point
                     iBaseRow := RowCount - 1;

                  end
                  else
                  begin
                     // 이전 분류와 동일한 경우
                     Inc(iRowSpan);
                  end;
               end;


               // set previous value
               sPrevUptitle  := sUptitle[i];


               // RowCount 다음줄로 넘김.
               RowCount := RowCount + 1;

            end;
         end;

         // ★★★ 최종 Code List-up후,
         asg_IcuMon.MergeCells(0, iBaseRow, 1, iRowSpan);


         asg_IcuMon.RowCount := asg_IcuMon.RowCount - 1;


         iCrect.Free;


         // 최초 CodeList 생성시, 모니터링 입력주기 초기화, 2011.03.21
         // SU 간호기록지 분기 @ 2012.04.21 LSH
         if (P_NicuFlag = 'S') then
            combx_Moniprd_Su.ItemIndex := -1
         else
            combx_Moniprd.ItemIndex    := -1


         finally
            Screen.Cursor := crDefault;
         end;


   end
   //-----------------------------------------------------------------
   // 2-2. Monitoring 항목 저장
   //-----------------------------------------------------------------
   else if (sGubun = 'REFRESH') then
   begin

      Screen.Cursor := crHourglass;


      try
         iCrect := HmdIcutot.Create;

         //-----------------------------
         // Set Parameter Value
         //-----------------------------
         sType1 := '1';


         with iCrect do
         begin
            sPatno   := P_PatNo  ;
            sAdmDate := P_AdmDate;
            sActDate := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);

            // ICU - NICU 간호기록지 모니터링 SET 분기, 2011.10.26 LSH
            // SU 간호기록지 분기 @ 2012.04.21 LSH
            if (P_NicuFlag = 'Y') then
            begin
               sSetType := 'NIC';
               sMoniPrd := combx_Moniprd.Text;
            end
            else if (P_NicuFlag = 'S') then
            begin
               sSetType := 'STR';
               sMoniPrd := combx_Moniprd_Su.Text;
            end
            else
            begin
               sSetType := 'MON';
               sMoniPrd := combx_Moniprd.Text;
            end;

            sEditId  := md_UserId;

            //--------------------------------------------
            // SetCode Looping돌면서 Code값 Variant 추가
            //--------------------------------------------
            for i := 0 to sl_CodeList.Count do
            begin
                  if (i = sl_CodeList.Count) then
                     break
                  else
                     j := j + 1;

                  // StringList에 저장된 SetCode값을 Array에 추가
                  AppendVariant(sSetCode , sl_CodeList.Strings[i]);
            end;
         end;


         //-----------------------------------------------
         // Insert CodeList to MDICUSET
         //-----------------------------------------------
         RowNo := iCrect.InsertDayMonitorList(sType1, j);


         if Rowno <> 1 then
         begin
            ShowErrMsg(stb_Message);
            iCrect.Free;
            exit;
         end;

         iCrect.Free;

         stb_Message.Panels[0].Text := '모니터링 SET이 저장되었습니다.';


         finally
            screen.Cursor := crDefault;
         end;
   end;

end;



//------------------------------------------------------------------------------
// 환자별 모니터링 Code 항목 Get Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.05
//------------------------------------------------------------------------------
function TMDN110FM.GetCodeList(sPatNo, sAdmDate : String) : Integer;
var
   RowNo, i  : integer;
   iBaseRow, iRowSpan : Integer;

   sPrevUptitle : String;

   sType1, sType2, sType3, sType4, sType5 : String;
   rowItem    : HmdIcutot;
   iCrect     : HmdIcutot;
   tmpMoniPrd : String;
begin

   //---------------------------
   // 1. Return Value is False
   //---------------------------
   GetCodeList := -1;


   //---------------------------
   // 2. 화면 Clear 및 초기화
   //---------------------------
   asg_IcuMon.Clear;
   asg_IcuMon.RowCount := 2;



   Screen.Cursor := crHourglass;



   //------------------------------------------------------
   // 3. 모니터링 항목 일자별/SET별 화면 구성하기
   //------------------------------------------------------
   Screen.Cursor   := crHourglass;

      try
         iCrect := HmdIcutot.Create;

         //------------------------------------------------
         // Set Parameter Value
         //------------------------------------------------
         sType1 := '8';
         sType2 := sPatNo;
         sType3 := sAdmDate;
         sType4 := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date);

         // ICU - NICU 간호기록지 모니터링 SET 분기, 2011.10.26 LSH
         // SU 간호기록지 분기 @ 2012.04.21 LSH
         if (P_NicuFlag = 'Y') then
            sType5 := 'NIC'
         else if (P_NicuFlag = 'S') then
            sType5 := 'STR'
         else
            sType5 := 'MON';


         //----------------------------------------------------
         // 최근 적용된 SetCode 저장내역 가져오기
         //----------------------------------------------------
         RowNo := iCrect.GetMonitorDayList(sType1, sType2, sType3, sType4, sType5);



         // SYSTEM ERROR
         if RowNo = -1 then
         begin
            // 자동서식변환 EMR Flag
            G_EmrYn := 'N';

            iCrect.Free;

            ShowErrMsg(stb_Message);

            Exit;
         end;


         //------------------------------------------------------
         // 최초 미저장시(MDICUSET에 저장된 SetCode 내역이 없음)
         //------------------------------------------------------
         if RowNo = 0 then
         begin
            // 자동서식변환 EMR Flag
            G_EmrYn := 'N';

            // Class Buffer Free
            iCrect.Free;

            // 모니터링 Code 최초구성
            SetCodeList('FORMSHOW');

            // 중환자 Set내역이 아직 저장되지 않음 (Tag = 0)
            asg_IcuMon.Tag := 0;

            // Return Value is True
            GetCodeList   := 1;

            // Exit
            Exit;

         end;

         // 자동서식변환 대상유무 flag
         G_EmrYn := 'Y';


         // SetCode별 HmdIcutot객체 보관 List Clear
         l_CodeItem.Clear;


         // Code항목 List Clear
         sl_CodeList.Clear;


         // 입력넣은 순서로 출력되도록 자동정렬 안함
         sl_CodeList.Sorted := False;


         //----------------------------------------------
         // SET 코드항목 배치, 정렬
         //----------------------------------------------
         with iCrect, asg_IcuMon do
         begin

            // Merge 변수
            iBaseRow       := 0;
            iRowSpan       := 1;
            sPrevUptitle   := ''; // C_CODEVAL로 치환예정..


            for i := 0 to RowNo - 1 do
            begin
               // 객체 생성
               rowItem := HmdIcutot.Create;


               //-----------------------------------------
               // 필수고정항목 (Default)
               //-----------------------------------------
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin

                  Cells[0, RowCount - 1] := sSettitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := '';              // 하위분류

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);


                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               //----------------------------------------
               // Hemodynamic
               //----------------------------------------
               if (cbx_Hemo.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  continue;
               end
               //---------------------------------------------------------------
               // [구로] 신형 P/M RR(Respiration Rate) 코드 Hide @ 2012.10.15 LSH
               //   - 장비와 OCS 연동만 하고, 화면에는 RESP 1개만 표기
               //   - 신형장비 Ps(ABPs),Pd(ABPd), Pm(ABPm) 추가 @ 2012.11.01 LSH
               //---------------------------------------------------------------
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') and
                       ((sItemCode[i] = 'RR') or
                        (sItemCode[i] = 'PS') or
                        (sItemCode[i] = 'PD') or
                        (sItemCode[i] = 'PM') or
                        // [구로] 73W BMCentral 인터페이스 -2013.11.28 smpark
                        (sItemCode[i] = 'SPO2-%') or
                        (sItemCode[i] = 'NIBP-S') or
                        (sItemCode[i] = 'NIBP-D')) then
               begin
                  Continue;
               end
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := sSettitle[i];   // 하위분류

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               //------------------------------------
               // 의식-신경계, 호흡기
               //------------------------------------
               if (cbx_Neuro.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  continue;
               end
               else if (cbx_Neuro.Checked) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := sSettitle[i];   // 하위분류

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               //----------------------------------------------
               // 섭취량(MD**), Total Sum(ME**), 배설량(MF**)
               //----------------------------------------------
               if (cbx_Io.Checked = False) and ((CopyByte(sSetCode[i],2,1) = 'D') or
                                                (CopyByte(sSetCode[i],2,1) = 'E') or
                                                (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin
                  continue;
               end
               else if (cbx_Io.Checked) and ((CopyByte(sSetCode[i],2,1) = 'D') or
                                             (CopyByte(sSetCode[i],2,1) = 'E') or
                                             (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin

                  Cells[0, RowCount - 1] := sSettitle[i];    // 상위분류
                  Cells[1, RowCount - 1] := '';              // 하위분류 (Duty별 Sum으로 사용할 컬럼)


                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set 코드
                  rowItem.sSetTitle := sSetTitle[i];  // Set 명
                  rowItem.sInputTyp := sInputTyp[i];  // 입력 형식
                  rowItem.sItemCode := sItemCode[i];  // 하위코드(예: 장비interface 코드, property 코드..)
               end;


               // List에 인스턴스 추가 (Pointer)
               l_CodeItem.Add(rowItem);


               //--------------------------------------------
               // Cell Merge & Rearranging
               //--------------------------------------------
               // [필수항목]은 Row Cell-Merge 적용.
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin
                  MergeCells(0, i+1, 2, 1);

                  //------------------------------------------------------------
                  // [구로] 신형장비 SpO2 코드추가 항목 Cell Remove @ 2012.11.05 LSH
                  //------------------------------------------------------------
                  if (sItemCode[i] = 'SPO2 L') then
                  begin
                     RowHeights[i+1] := 0;
                  end;
               end
               else
               // [I/O항목]은 각 항목별 Row-Sum위해 Cell-Merge 하지 않음, 2011.02.16 LSH <이혜원교수 요청>
               if ((CopyByte(sSetCode[i],2,1) = 'D') or
                   (CopyByte(sSetCode[i],2,1) = 'E') or
                   (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin
                  MergeCells(0, iBaseRow, 1, 1);
               end
               else
               // 그외에 [Hemodynamic], [의식신경계,호흡기]는 iBaseRow를 기준으로 Cell-Merge 진행.
               begin
                  // 상위분류 항목 MergeCell 체크
                  if sUptitle[i] <> sPrevUptitle then
                  begin

                     // 이전 분류와 다른 경우
                     if i > 0 then
                     begin
                        MergeCells(0, iBaseRow, 1, iRowSpan);
                        iRowSpan := 1;
                     end;

                     // ★★★★★ Key Point
                     iBaseRow := RowCount - 1;

                  end
                  else
                  begin
                     // 이전 분류와 동일한 경우
                     Inc(iRowSpan);
                  end;
               end;

               // set previous value
               sPrevUptitle  := sUptitle[i];

               // RowCount 다음줄로 넘김.
               RowCount := RowCount + 1;

            end;

            //----------------------------------------------------------------
            // 최근 적용 Monitoring 입력주기 임시변수 assign, 2011.03.17 LSH
            //----------------------------------------------------------------
            tmpMoniPrd := sLimit[0];

         end;


         // ★★★ 최종 Code List-up후,
         asg_IcuMon.MergeCells(0, iBaseRow, 1, iRowSpan);

         // 최종 RowCount 정리
         asg_IcuMon.RowCount := asg_IcuMon.RowCount - 1;


         // Return Value is True
         GetCodeList   := 1;


         iCrect.Free;


         //-----------------------------------------------------------------
         // 최근 적용 Monitoring 입력주기 콤보박스 assign, 2011.03.17 LSH
         //-----------------------------------------------------------------
         if (tmpMoniPrd = '') then
         begin
            // SU 간호기록지 분기 @ 2012.04.21 LSH
            if (P_NicuFlag = 'S') then
               combx_Moniprd_Su.ItemIndex := -1
            else
               combx_Moniprd.ItemIndex    := -1;
         end
         else
         begin
            // SU 간호기록지 분기 @ 2012.04.21 LSH
            if (P_NicuFlag = 'S') then
            begin
               for i := 0 to C_MONIPRD do
               begin
                  if (combx_Moniprd_Su.Items.Strings[i] = tmpMoniPrd) then
                     combx_Moniprd_Su.ItemIndex := i
                  else
                     continue;
               end;
            end
            else
            begin
               for i := 0 to C_MONIPRD do
               begin
                  if (combx_Moniprd.Items.Strings[i] = tmpMoniPrd) then
                     combx_Moniprd.ItemIndex := i
                  else
                     continue;
               end;
            end;
         end;


      finally
         Screen.Cursor := crDefault;
      end;


end;




//------------------------------------------------------------------------------
// 환자별 모니터링 Time Set Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.17
//------------------------------------------------------------------------------
procedure TMDN110FM.SetTimeList(sGubun : String);
var
   i, j, k, Rowno: Integer;
   sType1  : String;
   iCrect  : HmdIcutot;
   t_addDate : String;
begin


   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   j := 0;


   //-----------------------------------------------------------------
   // 2. Time 항목 최초 구성
   //-----------------------------------------------------------------
   if (sGubun = 'FORMSHOW') then
   begin

      // FixedCol (2) + 24hour (24) = 26개
      asg_IcuMon.ColCount := 26;

      //------------------------------------------------------------------------
      // 초기 시간정보 하드코딩.. 누구 더 좋은 아이디어 있으면, 의견좀 내주시길 !!
      //  - MDMCOMCT에 COMCD1 = 'ICU' 하나 넣고, Time 값 가져오는건?, 2011.12.22
      //------------------------------------------------------------------------
      asg_IcuMon.Cells[0,0]  := '';
      asg_IcuMon.Cells[1,0]  := '';
      asg_IcuMon.Cells[2,0]  := '07:00';
      asg_IcuMon.Cells[3,0]  := '08:00';
      asg_IcuMon.Cells[4,0]  := '09:00';
      asg_IcuMon.Cells[5,0]  := '10:00';
      asg_IcuMon.Cells[6,0]  := '11:00';
      asg_IcuMon.Cells[7,0]  := '12:00';
      asg_IcuMon.Cells[8,0]  := '13:00';
      asg_IcuMon.Cells[9,0]  := '14:00';
      asg_IcuMon.Cells[10,0] := '15:00';
      asg_IcuMon.Cells[11,0] := '16:00';
      asg_IcuMon.Cells[12,0] := '17:00';
      asg_IcuMon.Cells[13,0] := '18:00';
      asg_IcuMon.Cells[14,0] := '19:00';
      asg_IcuMon.Cells[15,0] := '20:00';
      asg_IcuMon.Cells[16,0] := '21:00';
      asg_IcuMon.Cells[17,0] := '22:00';
      asg_IcuMon.Cells[18,0] := '23:00';
      asg_IcuMon.Cells[19,0] := '00:00';
      asg_IcuMon.Cells[20,0] := '01:00';
      asg_IcuMon.Cells[21,0] := '02:00';
      asg_IcuMon.Cells[22,0] := '03:00';
      asg_IcuMon.Cells[23,0] := '04:00';
      asg_IcuMon.Cells[24,0] := '05:00';
      asg_IcuMon.Cells[25,0] := '06:00';



      Screen.Cursor   := crHourglass;



      try
         // Time 리스트 Clear
         sl_TimeList.Clear;

         // StringList Not Sorted
         sl_TimeList.Sorted := False;


         //------------------------------------
         // 시간대별 기록일자(Actdate) 세팅
         //------------------------------------
         with asg_IcuMon do
         begin
            // Formshow시 ColCount = 26인데, TimeList는 24시간 이므로 '-2'
            for i := 0 to ColCount - 2 do
            begin
               // 시작시간 ~ 23:59 은 당일로 세팅.
               //  --> [변경] 시작시간 ~ 23:59까지 당일, 2011.05.31 LSH
               if  (DelChar(Cells[i+2,0],':') >= C_STARTTM) and
                   (DelChar(Cells[i+2,0],':') <= '2359') then
               begin
                  sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date));
               end
               // 00:00 ~ 종료시간 은 당일+1 로 세팅.
               //  --> [변경] 00:00 ~ 종료시간까지 익일, 2011.05.31 LSH
               //  -->        00:00 (23:01~24:00)은, 화면 디스플레이 문제로 익일로 세팅.
               else if (DelChar(Cells[i+2,0],':') >= '0000') and
                       (DelChar(Cells[i+2,0],':') <= C_ENDTM) then
               begin
                  sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1));
               end;
            end;
         end;


      finally
         Screen.Cursor := crDefault;
      end;


   end
   //-----------------------------------------------------
   // Time 항목 추가 or 모니터링 내역저장
   //-----------------------------------------------------
   else if (sGubun = 'REFRESH') then
   begin

      Screen.Cursor := crHourglass;

      try
         iCrect := HmdIcutot.Create;


         //-----------------------------------------------
         // Set Parameter Value : Time 항목 저장
         //-----------------------------------------------
         sType1 := '2';


         with iCrect do
         begin

            sPatno   := P_PatNo  ;
            sAdmDate := P_AdmDate;
            sSetType := '';
            sMoniPrd := '';
            sEditId  := md_UserId;


            for i := 0 to sl_TimeList.Count do
            begin
               //-----------------------------------
               // 제일 마지막 TimeList 인덱스면,
               //-----------------------------------
               if (i = sl_TimeList.Count ) then
               begin

                  if (Trim(med_ActTime.Text) <> ':') then
                  begin
                     // 시간삽입할 index 하나 더 추가.
                     j := j + 1;

                     //-----------------------------------------
                     // 삽입할 시간대별 기록일자(Actdate) 세팅
                     //-----------------------------------------
                     if  (DelChar(Trim(med_ActTime.Text),':') >= C_STARTTM) and
                         (DelChar(Trim(med_ActTime.Text),':') <= '2359') then
                     begin
                        // 시작시간 ~ 00:00 은 당일로 세팅.
                        //  --> [변경] 시작시간 ~ 23:59까지 당일, 2011.05.31 LSH
                        t_addDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date);
                     end
                     else if (DelChar(Trim(med_ActTime.Text),':') >= '0000') and
                             (DelChar(Trim(med_ActTime.Text),':') <= C_ENDTM) then
                     begin
                        // 00:00 ~ 종료시간 은 당일+1 로 세팅.
                        //  --> [변경] 00:00 ~ 종료시간까지 익일, 2011.05.31 LSH
                        //  -->        00:00 (23:01~24:00)은, 화면 디스플레이 문제로 익일로 세팅.
                        t_addDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1);
                     end;


                     //----------------------------------------
                     // 기록일자 및 측정시간 Assign
                     //----------------------------------------
                     AppendVariant(sActDate , t_addDate);               // ActDate
                     AppendVariant(sSetCode , Trim(med_ActTime.Text));  // ActTime


                     break;

                  end
                  else
                     break;
               end
               else
               //-----------------------------------
               // 아직 인덱스가 Looping 중이면,
               //-----------------------------------
               begin
                  //--------------------------------------------------------------------
                  // Time항목 List가 미생성된 경우 (장비연동 Data로 Time추가된 경우)
                  //--------------------------------------------------------------------
                  if (sl_TimeList.Count = 0) then
                  begin
                     with asg_IcuMon do
                     begin
                        for k := 0 to ColCount - 2 do
                        begin
                           //----------------------------
                           // 시간대별 기록일자 세팅
                           //----------------------------
                           if  (LengthByte(DelChar(Cells[k+2,0],':')) = 4)  and
                               (DelChar(Cells[k+2,0],':') >= C_STARTTM) and
                               (DelChar(Cells[k+2,0],':') <= '2359') then
                           begin
                              // 시작시간 ~ 23:59 은 당일로 세팅.
                              //  --> [변경] 시작시간 ~ 23:59까지 당일, 2011.05.31 LSH
                              sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date));
                           end
                           else if (LengthByte(DelChar(Cells[k+2,0],':')) = 4) and
                                   (DelChar(Cells[k+2,0],':') >= '0000')   and
                                   (DelChar(Cells[k+2,0],':') <= C_ENDTM) then
                           begin
                              // 00:00 ~ 종료시간 은 당일+1 로 세팅.
                              //  --> [변경] 00:00 ~ 종료시간까지 익일, 2011.05.31 LSH
                              //  -->        00:00 (23:01~24:00)은, 화면 디스플레이 문제로 익일로 세팅.
                              sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1));
                           end;
                        end;
                     end;
                  end;


                  // Time 항목들이 Setting 되었으면, 변수로 Assign @ 2012.05.07
                  if (sl_TimeList.Count > 0) then
                  begin
                     // 시간삽입할 index 하나 더 추가.
                     j := j + 1;

                     //--------------------------------------
                     // 신규 추가할 기록일자, 측정시간
                     //--------------------------------------
                     AppendVariant(sActDate , sl_TimeList.Strings[i]);  // ActDate
                     AppendVariant(sSetCode , asg_IcuMon.Cells[i+2,0]); // ActTime (FixedCol = 2이므로 +2)
                  end
                  else
                  begin
                     // 유효한 Time 항목구성이 안되었으면, 초기 Default Setting @ 2012.05.07
                     SetTimeList('FORMSHOW');

                     Exit;
                  end;
               end;
            end;
         end;


         //-----------------------------------------------
         // Execute Transaction
         //-----------------------------------------------
         RowNo := iCrect.InsertDayMonitorList(sType1, j);



         if Rowno <> 1 then
         begin
            ShowErrMsg(stb_Message);
            iCrect.Free;
            exit;
         end;


         iCrect.Free;

         stb_Message.Panels[0].Text := '모니터링 Time이 저장되었습니다.';


         finally
            screen.Cursor := crDefault;
         end;
   end;
end;




//------------------------------------------------------------------------------
// 환자별 모니터링 Time Get Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.11
//------------------------------------------------------------------------------
function TMDN110FM.GetTimeList(sPatNo, sAdmDate : String) : Integer;
var
   RowNo, i : integer;
   sType1, sType2, sType3, sType4, sType5 : String;
   iCrect : HmdIcutot;
begin

   //-----------------------------
   // 1. Return value is False
   //-----------------------------
   GetTimeList := -1;


   Screen.Cursor := crHourglass;



   //-----------------------------------------------------------------
   // 2. 모니터링항목 일자별/SET별 화면 구성하기
   //-----------------------------------------------------------------
   Screen.Cursor   := crHourglass;



   try
      iCrect := HmdIcutot.Create;


      //------------------------------------------------
      // 최근 적용 Time항목 리스트 가져오기
      //------------------------------------------------
      sType1 := '9';
      sType2 := sPatNo;
      sType3 := sAdmDate;
      sType4 := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date)     + C_STARTTM;
      sType5 := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1) + C_ENDTM;



      //------------------------------------------------
      // Load Data
      //------------------------------------------------
      RowNo := iCrect.GetMonitorDayList(sType1, sType2, sType3, sType4, sType5);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iCrect.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // FixedCol (2개) + Start Col (1개)
      asg_IcuMon.ColCount := 3;


      // 조회건수 없음
      if RowNo = 0 then
      begin
         iCrect.Free;


         // Time 항목 최초 구성
         SetTimeList('FORMSHOW');

         // Return value is True
         GetTimeList := 1;


         Exit;
      end;


      // Time 리스트 Clear
      sl_TimeList.Clear;


      // Sorting 해제 (입력한 순서대로 정렬)
      sl_TimeList.Sorted := False;


      //-----------------------------------------------
      // Time 항목 및 기록일자 속성 세팅
      //-----------------------------------------------
      with iCrect, asg_IcuMon do
      begin
         for i := 0 to RowNo - 1 do
         begin
            // Column 항목에 측정시간(Acttime) setting
            Cells[ColCount-1, 0] := sActTime[i];

            // Time List에 적용일자(Actdate) setting
            sl_TimeList.add(sActDate[i]);

            ColCount := ColCount + 1;
         end;
      end;



      asg_IcuMon.ColCount := asg_IcuMon.ColCount - 1;



      // Return Value is True
      GetTimeList   := 1;


      iCrect.Free;


   finally
      Screen.Cursor := crDefault;
   end;


end;




//------------------------------------------------------------------------------
// [중환자실 통합기록지] - 간호사정 BPL 호출
//
// Author : Lee, Byoung-Sik
// Date   : 2011.01.11
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_AssClick(Sender: TObject);
var
   FForm : TForm;
begin
   //----------------------------------------------------------
   // NICU 간호기록지 "간호사정" 추가, 2011.12.07 LSH
   //----------------------------------------------------------
   if (P_NicuFlag = 'Y') then
      FForm := BplFormCreate('MDN110FW')
   else
      FForm := BplFormCreate('MDN110FU');


   SetBplStrProp(FForm.Name, 'propPatNo'  , P_PatNo);
   SetBplStrProp(FForm.Name, 'propPatName', P_PatName);
   SetBplStrProp(FForm.Name, 'propAdmDate', P_AdmDate);
   SetBplStrProp(FForm.Name, 'propWardNo' , P_WardNo);
   SetBplStrProp(FForm.Name, 'propRoomNo' , P_RoomNo);
   SetBplStrProp(FForm.Name, 'propPatFlag', P_PatFlag);     // NICU/ICU 의사조회시 [조회]가능만 활성화, 2012.03.05 LSH

   MComFormShow(FForm);
end;


//------------------------------------------------------------------------------
// Set코드 항목별 속성 Value Get Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.17
//------------------------------------------------------------------------------
procedure TMDN110FM.GetAllItems;
var
   items   : HmdIcutot; // 입력 항목별 입력 값 관리
   iRowCnt : Integer;   // the number of searched rows
   i       : Integer;   // Loop Index
   sType1, sType2, sType3, sType4, sType5 : String;
begin


   //-------------------------------------------------------------------
   // 1. Initiate Client Data Set
   //-------------------------------------------------------------------
   if cds_MonItem <> nil then
      cds_MonItem.Close;




   //-------------------------------------------------------------------
   // 2. 조회
   //-------------------------------------------------------------------
   Screen.Cursor := crHourGlass;




   try
      // Create Object
      items := HmdIcutot.Create;


      // Create Data-Set Dynamically
      cds_MonItem.CreateDataSet;



      //------------------------------------------------
      // 2.1. Set Value
      //------------------------------------------------
      sType1 := '10';


      // ICU - NICU 간호기록지 모니터링 SET 분기, 2011.10.26 LSH
      // SU 간호기록지 분기 @ 2012.04.21 LSH
      if (P_NicuFlag = 'Y') then
         sType2 := 'NIC'
      else if (P_NicuFlag = 'S') then
         sType2 := 'STR'
      else
         sType2 := 'MON';


      sType3 := FormatDateTime('YYYYMMDD', dtp_RgtDate.Date);
      sType4 := '';
      sType5 := '';


      //------------------------------------------------
      // 2.2. Load Data
      //------------------------------------------------
      iRowCnt := items.GetMonitorDayList(sType1, sType2, sType3, sType4, sType5);



      // Show Error Message
      if iRowCnt < 0 then
      begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then
      begin
         Exit;
      end;



      //------------------------------------------------
      // 2.3. Restore Data to Cache
      //------------------------------------------------
      for i := 0 to iRowCnt - 1 do
      begin
         with cds_MonItem do
         begin
            // Append New Row
            Append;

            // Set Value to each field of new row
            FindField('setcode').AsString  := items.sSetCode  [i];    // Set 코드
            FindField('setname').AsString  := items.sSetTitle [i];    // Set 이름
            FindField('inputtyp').AsString := items.sInputtyp [i];    // 입력형태
            FindField('limit').AsString    := items.slimit    [i];    // 입력제한
            FindField('upcode').AsString   := items.sUpcode   [i];    // 상위코드
            FindField('itemcode').AsString := items.sItemCode [i];    // Value 코드
            FindField('itemname').AsString := items.sItemTitle[i];    // Value 이름
            FindField('dispseq').AsString  := items.sDispSeq  [i];    // 출력 순서
         end;

      end;


      // Refresh
      cds_MonItem.Filtered := False;

      items.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;



//------------------------------------------------------------------------------
// Grid Editor-Type Get Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.21
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
var
   i : Integer;   // Loop Index
begin

   with HmdIcutot(l_CodeItem.Items[ARow-1]) do
   begin
      with cds_MonItem do
      begin

         // 1. 입력항목 코드에 따른 입력 값 목록 검색
         Filter := 'setcode = ''' + sSetCode + ''' ';

         Filtered := True;



         // 2. 입력 형식에 따른 Control 생성
         with asg_IcuMon do
         begin
            //--------------------------------
            // Combo 박스 형식
            //--------------------------------
            if sInputTyp = 'CO' then
            begin

               AEditor := edComboList;

               ClearComboString;

               for i := 1 to RecordCount do
               begin
                  RecNo := i;

                  AddComboString(FindField('itemname').AsString);
               end;

            end
            //--------------------------------
            // Edit 박스 형식
            //--------------------------------
            else if sInputTyp = 'ED' then
            begin
               //AEditor := edRichEdit;
            end
            //--------------------------------
            // Date 형식
            //--------------------------------
            else if sInputTyp = 'DT' then
            begin
               AEditor := edDateEdit;
            end
            //--------------------------------
            // Check 박스 형식
            //--------------------------------
            else if sInputTyp = 'CK' then
            begin
               //
            end
            else if sInputTyp = '' then
            //------------------------------------------------
            // 입력형태가 비어있는 경우 ( 예: 대분류 항목 ..)
            //------------------------------------------------
            begin
               // 입력안되도록 다음줄로 Line-Feed.
               asg_IcuMon.Row := asg_IcuMon.Row + 1;
            end;
         end;


         // Sorting 해제
         Filtered := False;

      end;
    end;
end;




//------------------------------------------------------------------------------
// 모니터링 항목별 입력값 Get Event Handler
//     Grid Cell -> Client Data Set(cds_SaveItem)
// Author : Lee, Se-Ha
// Date   : 2011.01.11
//------------------------------------------------------------------------------
procedure TMDN110FM.GetSaveList(sSetCode, sActTime, sItemVal, sIntFlag, sAddInfo : String);
var
   bExist : Boolean;
begin


   //-------------------------------------------------------------------
   // 1. 조회
   //-------------------------------------------------------------------
   Screen.Cursor := crHourGlass;


   try
   //------------------------------------------------
   // Restore Data to Cache
   //------------------------------------------------
      with asg_IcuMon do
      begin
         with cds_SaveItem do
         begin
            if (Trim(Cells[Col,Row]) <> '') then
            begin
               //----------------------------------------
               // 1-1. Search Data
               //----------------------------------------
               bExist := cds_SaveItem.Locate('setcode;acttime',
                                             VarArrayOf([ sSetCode, sActTime ]),
                                             [loCaseInsensitive]
                                             );


               //----------------------------------------
               // 1-2. Set Cell-Data to Data-Set
               //----------------------------------------
               if bExist then
               begin
                  // 기존 값이 존재하면, 업데이트
                  cds_SaveItem.Edit;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;     // Set 코드
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;     // 측정시간
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;     // 입력값
                  cds_SaveItem.FindField('modflag').AsString   := 'U';          // 데이터변경 flag = 'U'
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;     // 장비 Int'f Data 수정유무 flag (Y: 수정, N: 원본)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;     // 셀 추가정보(예: 장비Int'f Data Fetch시간 등)
               end
               else
               begin
                  // 기존값이 존재하지 않으면, 추가
                  cds_SaveItem.Append;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;    // Set 코드
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;    // 측정시간
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;    // 입력값
                  cds_SaveItem.FindField('modflag').AsString   := 'A';         // 신규추가 flag
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;    // 장비 Int'f Data 수정유무 flag (Y: 수정, N: 원본)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;    // 셀 추가정보(예: 장비Int'f Data Fetch시간 등)
               end
            end
            //-----------------------------------------------------------------------------------
            // 1-3. 기존 l_CodeItem의 setcode와 acttime 을 filtering 해서, 해당 record를 DeleteByte
            //-----------------------------------------------------------------------------------
            else  if (Trim(Cells[Col,Row]) = '') then
            begin
               //----------------------------------------
               // Search Data
               //----------------------------------------
               bExist := cds_SaveItem.Locate('setcode;acttime', VarArrayOf([ sSetCode, sActTime ]), [loCaseInsensitive]);


               // Set Cell-Data to Data-Set
               if bExist then
               begin
                  // 기존 값이, not null..
                  cds_SaveItem.Edit;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;    // Set 코드
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;    // 측정시간
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;
                  cds_SaveItem.FindField('modflag').AsString   := 'D';         // 삭제 flag
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;    // 장비 Int'f Data 수정유무 flag (Y: 수정, N: 원본)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;    // 셀 추가정보(예: 장비Int'f Data Fetch시간 등)
               end
               else
               begin
                  // Adv-Grid는 Null이고, CDS도 매칭되는 값없이 비어있을때, 기존값이 존재하지 않으면 추가
                  cds_SaveItem.Append;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;    // Set 코드
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;    // 측정시간
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;    // 입력값
                  cds_SaveItem.FindField('modflag').AsString   := 'N';         // 업데이트(null To null) flag
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;    // 장비 Int'f Data 수정유무 flag (Y: 수정, N: 원본)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;    // 셀 추가정보(예: 장비Int'f Data Fetch시간 등)
               end;
            end;
         end;
      end;


      // Update Loading Bar
      pb_DataLoading.StepIt;



   finally
      Screen.Cursor := crDefault;
   end;

end;


//------------------------------------------------------------------------------
// 모니터링 항목별 입력값 Set Event Handler
//     Client Data Set(cds_SaveItem) --> Grid (sGubun : ToGrid)
//     Client Data Set(cds_SaveItem) --> D/B  (sGubun : ToTable)
// Author : Lee, Se-Ha
// Date   : 2011.01.18
//------------------------------------------------------------------------------
procedure TMDN110FM.SetSaveList(sGubun : String);
var
   i : Integer;   // Loop Index
   j : Integer;   // Loop Index

   items    : HmdIcutot;
   iResult  : Integer;
   iFromRow, iToRow, oFromRow, oToRow, SumRow, tmpToRow : Integer;
   bExist   : Boolean;
   idx_FromRow, idx_ToRow                  : Integer;
   idx_DutyDay, idx_DutyEvng, idx_DutyNigt : Integer;
   iVsCnt   : Integer;
   iSkipRow : Integer;
   oToUrine : Integer;
   idx1_Residue, idx2_Residue, idx3_Residue, idx4_Residue, idx5_Residue : Integer;
begin

   //---------------------------------------------------------
   // 1. Set Data To Grid
   //---------------------------------------------------------
   try
      asg_IcuMon.RowCount := sl_CodeList.Count + 1; // FixedRow = 1개
      asg_IcuMon.ColCount := sl_TimeList.Count + 2; // FixedCol = 2개


      // restore classification code
      items := HmdIcutot.Create;


      // 모니터링 상세항목 보관 List Clear
      l_SaveItem.Clear;


      // assign되는 변수 초기화
      idx_DutyDay  := 0;
      idx_DutyEvng := 0;
      idx_DutyNigt := 0;

      SumRow       := 0;
      iFromRow     := 0;
      iToRow       := 0;
      oFromRow     := 0;
      oToRow       := 0;
      tmpToRow     := 0;

      oToUrine     := 1;   // default Row는 첫번째줄(Note) 숫자입력 불가항목 @ 2012.06.05

      idx_FromRow  := 0;
      idx_ToRow    := 0;

      // 양상 및 Residual 항목 초기화(초기값 1인이유는 아래로직을 봐) @ 2012.10.17 LSH
      idx1_Residue := 1;
      idx2_Residue := 1;
      idx3_Residue := 1;
      idx4_Residue := 1;
      idx5_Residue := 1;


      for i := 0 to sl_CodeList.Count - 1 do
      begin
         //---------------------------------------------------------------------
         // Neonatal ICU 간호기록지 I/O Sum 구성, 2011.10.26 LSH
         //---------------------------------------------------------------------
         if (P_NicuFlag = 'Y') then
         begin
            //------------------------------------------
            // 1-1. 섭취량 Sum위한 From 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'ND04') then    // [섭취량 - 경구(식이)]가 StartRow --> L-tube(cc)가 StartRow 수정, 2012.01.18 LSH
            begin
               iFromRow    := i+1;                       // 섭취량 ColSum 시작 Index
               idx_FromRow := i+1;                       // RowSum 시작 Index
            end;


            //------------------------------------------------------------------
            // 1-1.5.Feeding/Kg 계산을 위해 Bottle(cc)을 임시 ToRow 변수 assign
            //  - 2012.01.18 LSH
            //------------------------------------------------------------------
            if (sl_CodeList.Strings[i] = 'ND05') then
               tmpToRow := i+1;


            //------------------------------------------
            // 1-2. 섭취량 Sum위한 To 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NE01') then    // [총섭취량]이면, 바로 이전 섭취량 항목 index가 EndRow
            begin
               iToRow := i;                              // 섭취량 ColSum 종료 Index
               SumRow := i+1;                            // 실제 Total Sum을 진행할, 총섭취량 항목 Row-index
            end;

            //------------------------------------------
            // 1-3. 배설량 Sum위한 From 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF02') then    // [배설량 - 자연배뇨(cc)]가 StartRow
            begin
               oFromRow := i+1;                          // 배설량 ColSum 시작 Index
            end;

            //------------------------------------------
            // 1-4. Urine Sum위한 인덱스 Set 추가
            //   - 2012.06.05 LSH (이진희 요청..후..)
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF03') then    // [배설량 - 유치배뇨(cc)]가 Urine-Sum EndRow
            begin
               oToUrine := i+1;                          // 노트조회 -> 배설량 Urine Sum 종료 Index
            end;

            //-------------------------------------------------------
            // 1-5. 배설량 Sum Skip(대변횟수) 위한 인덱스 Set
            //   - 초기 배설량 Col-Sum은 자연배뇨+유치도뇨였지만,
            //     대변횟수를 제외한 모든 항목 Sum으로 변경원함.
            //   - 2012.05.29 LSH (NICU 이진희 요청)
            //-------------------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF04') then    // [배설량 - 대변(회)]이면,
            begin
               iSkipRow := i+1;                          // 배설량 Skip Index
            end;

            //------------------------------------------
            // 1-6. 배설량 Sum위한 To 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF25') then    // [배설량 - amount(Suction)] EndRow
            begin
               oToRow    := i+1;                         // 배설량 ColSum 종료 Index
               idx_ToRow := i+1;                         // RowSum 종료 Index
            end;

         end
         else if (P_NicuFlag = 'S') then
         //---------------------------------------------------------------------
         // Stroke Unit 간호기록지 I/O Sum 구성 @ 2012.04.21 LSH
         //---------------------------------------------------------------------
         begin
            //------------------------------------------
            // 1-1. 섭취량 Sum위한 From 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SD02') then    // [섭취량 - 경구(cc)]가 StartRow
            begin
               iFromRow    := i+1;                       // 섭취량 ColSum 시작 Index
               idx_FromRow := i+1;                       // RowSum 시작 Index
            end;

            //------------------------------------------
            // 1-2. 섭취량 Sum위한 To 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SE01') then    // [총섭취량]이면, 바로 이전 섭취량 항목 index가 EndRow
            begin
               iToRow := i;                              // 섭취량 ColSum 종료 Index
               SumRow := i+1;                            // 실제 Total Sum을 진행할, 총섭취량 항목 Row-index
            end;

            //------------------------------------------
            // 1-3. 배설량 Sum위한 From 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SF02') then    // [배설량 - 자연배뇨(cc)]가 StartRow
            begin
               oFromRow := i+1;                          // 배설량 ColSum 시작 Index
            end;

            //------------------------------------------
            // 1-4. 배설량 Sum위한 To 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SF25') then    // [배설량 - 대변(횟수)] EndRow
            begin
               oToRow    := i+1;                         // 배설량 ColSum 종료 Index
               idx_ToRow := i+1;                         // RowSum 종료 Index
            end;
         end
         else
         //---------------------------------------------------------------------
         // 일반 ICU 통합 간호기록지 I/O Sum 구성
         //---------------------------------------------------------------------
         begin
            //------------------------------------------
            // 1-1. 섭취량 Sum위한 From 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'MD02') then    // [섭취량 - 경구(cc)]가 StartRow
            begin
               iFromRow    := i+1;                       // 섭취량 ColSum 시작 Index
               idx_FromRow := i+1;                       // RowSum 시작 Index
            end;

            //------------------------------------------
            // 1-2. 섭취량 Sum위한 To 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'ME01') then    // [총섭취량]이면, 바로 이전 섭취량 항목 index가 EndRow
            begin
               iToRow := i;                              // 섭취량 ColSum 종료 Index
               SumRow := i+1;                            // 실제 Total Sum을 진행할, 총섭취량 항목 Row-index
            end;

            //------------------------------------------
            // 1-3. 배설량 Sum위한 From 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF02') then    // [배설량 - 자연배뇨(cc)]가 StartRow
            begin
               oFromRow := i+1;                          // 배설량 ColSum 시작 Index
            end;


            //------------------------------------------------
            // 1-4. 배설량추가6(TEXT) Sum Skip위한 인덱스 Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF18') then    // [배설량추가6(TEXT)]
            begin
               idx1_Residue := i+1;
            end;

            //------------------------------------------------
            // 1-5. 배설량추가7(TEXT) Sum Skip위한 인덱스 Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF19') then    // [배설량추가7(TEXT)]
            begin
               idx2_Residue := i+1;
            end;


            //------------------------------------------------
            // 1-6. 배설량추가8(TEXT) Sum Skip위한 인덱스 Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF20') then    // [배설량추가8(TEXT)]
            begin
               idx3_Residue := i+1;
            end;

            //------------------------------------------------
            // 1-7. 배설량추가9(TEXT) Sum Skip위한 인덱스 Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF21') then    // [배설량추가9(TEXT)]
            begin
               idx4_Residue := i+1;
            end;

            //------------------------------------------------
            // 1-8. 배설량추가10(TEXT) Sum Skip위한 인덱스 Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF22') then    // [배설량추가10(TEXT)]
            begin
               idx5_Residue := i+1;
            end;

            //------------------------------------------
            // 1-9. 배설량 Sum위한 To 인덱스 Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF25') then    // [배설량 - 대변(횟수)] EndRow
            begin
               oToRow    := i+1;                         // 배설량 ColSum 종료 Index
               idx_ToRow := i+1;                         // RowSum 종료 Index
            end;


         end;




         for j := 0 to sl_TimeList.Count - 1 do
         begin
            //---------------------------------------------
            // 1-5. Data 검색
            //
            //  - SetCode별, 측정시간 데이터 필터링
            //---------------------------------------------
            cds_SaveItem.Filter := 'setcode = ''' + sl_CodeList.Strings[i] + ''' '                // SetCode 항목
                                 + ' and acttime = ''' + Trim(asg_IcuMon.Cells[j+2,0])  + ''' ';  // 측정시간


            cds_SaveItem.Filtered := True;





            with cds_SaveItem do
            begin
               //---------------------------------------------------------------
               // 1-6. I/O 항목 Duty별 Sum Time-Index 설정
               //    - [60분 주기] 인터페이스 연동아닌 경우,
               //      Duty 정시값(14:00/22:00/06:00) 안들어오기 때문에
               //      각 Duty별 Change시간대 범위내 마지막값 index로 사용 @ 2012.11.16
               //---------------------------------------------------------------
               if (asg_IcuMon.Cells[j+2,0] >  C_DUTYCLS_NIGT) and           // 당일 06:01 ~
                  (asg_IcuMon.Cells[j+2,0] <= C_DUTYCLS_DAY)  then          // 당일 14:00 까지 Day-Sum Range
                  idx_DutyDay  := j+2
               else if (asg_IcuMon.Cells[j+2,0] >  C_DUTYCLS_DAY) and       // 당일 14:01 ~
                       (asg_IcuMon.Cells[j+2,0] <= C_DUTYCLS_EVNG) then     // 당일 22:00 까지 Evening-Sum Range
                  idx_DutyEvng := j+2
               else if (asg_IcuMon.Cells[j+2,0] >  C_DUTYCLS_EVNG) or       // 당일 22:01 ~ 이거나,
                       (asg_IcuMon.Cells[j+2,0] <= C_DUTYCLS_NIGT) then     // 익일 06:00 까지 Night-Sum Range
                  idx_DutyNigt := j+2;


               //---------------------------------------------------------------
               // 1-7. Assign Cds.ItemValue to Cell-Grid
               //---------------------------------------------------------------
               asg_IcuMon.Cells[j+2, i+1] := FindField('itemvalue').AsString;


               //---------------------------------------------------------------------------------
               // 1-8. Cell-Value 저장 (값이 존재하지 않아도.. Null로 수정해서 저장하는경우 포함)
               //---------------------------------------------------------------------------------
               if (FindField('modflag').AsString <> '') then
               begin
                  // TList에 객체 추가 (Pointer)
                  l_SaveItem.Add(HmdIcutot.Create);

                  with HmdIcutot(l_SaveItem.Last) do
                  begin
                     sPatno    := P_PatNo;                            // 환자번호
                     sAdmDate  := DelChar(P_AdmDate,'-');             // 입원일자
                     sActDate  := sl_TimeList.Strings[j];             // 기록일자
                     sSetCode  := sl_CodeList.Strings[i];             // Set  코드
                     sActTime  := asg_IcuMon.Cells[j+2,0];            // Time 코드
                     sItemVal  := FindField('itemvalue').AsString;    // 상세 Value
                     sEditId   := md_UserId;                          // 기록자ID
                  end;
               end;


               //-------------------------------------------------------------------------------------
               // 1-9. 장비 Int'f 항목이 수정되면(원본Data와 저장된Data 값 다르면), FontColor = 'Red'
               //-------------------------------------------------------------------------------------
               if FindField('intflag').AsString = 'Y' then
               begin
                  asg_IcuMon.FontColors[j+2, i+1] := CLR_INTERFACE_NRS;
               end
               else if FindField('intflag').AsString = 'C' then
               begin
                  // ICU 수행예정 등록, 특별한 action은 없음 by LSH
               end;

            end;

            // Release filter
            cds_SaveItem.Filtered := False;

         end;
      end;




      //----------------------------------------------
      // 2. Total Sum (Row/Column) 계산, 2011.02.11
      //----------------------------------------------
      if (cbx_Io.Checked) then
      begin
         //-------------------------------------------------------------
         // NICU 간호기록지 [총배설량]은 (자연배뇨+유치도뇨)만 SUM
         //  - NICU_하삼주 요청, 2011.10.27 LSH
         //-------------------------------------------------------------
         if (P_NicuFlag = 'Y') then
         begin
            //------------------------------------------------------------------
            // 2-1-1. NICU 총섭취량, 총배설량 Col-Sum 계산
            //  - 대변(회) 항목제외한 모든 배설량 Col-Sum 적용 @ 2012.05.29 LSH
            //  - NICU 이진희 요청
            //------------------------------------------------------------------
            for j := 0 to sl_TimeList.Count - 1 do
            begin
               with asg_IcuMon do
               begin
                  if (sl_CodeList.Strings[oFromRow + 1] = 'NF02') then                           // 배설량 중, 유치도뇨 추가되었으면,
                  begin
                     Cells[j+2, SumRow+1] := FloatToStr(ColumnSum(j+2, oFromRow,   iSkipRow-1) +
                                                        ColumnSum(j+2, iSkipRow+1, oToRow));     // 총배설량 Col-Sum(자연배뇨~대변(회) 전 + 대변(회) 후~amount(Suction))
                  end
                  else
                  begin
                     Cells[j+2, SumRow+1] := FloatToStr(ColumnSum(j+2, oFromRow,   iSkipRow-1) +
                                                        ColumnSum(j+2, iSkipRow+1, oToRow));      // 총배설량 Col-Sum(자연배뇨~대변(회) 전 + 대변(회) 후~amount(Suction))
                  end;

                  // 총섭취량 Col-Sum
                  Cells[j+2, SumRow  ] := FloatToStr(ColumnSum(j+2, iFromRow, iToRow));

               end;
            end;
         end
         else
         begin
            //---------------------------------------------
            // 2-1-2. ICU 총섭취량, 총배설량 Col-Sum 계산
            //---------------------------------------------
            for j := 0 to sl_TimeList.Count - 1 do
            begin
               with asg_IcuMon do
               begin
                  Cells[j+2, SumRow  ] := FloatToStr(ColumnSum(j+2, iFromRow, iToRow));   // 총섭취량 Col-Sum
                  Cells[j+2, SumRow+1] := FloatToStr(ColumnSum(j+2, oFromRow, oToRow-1) - ColumnSum(j+2, idx1_Residue, idx1_Residue)   // Residue 1 Sum에서 제외 @ 2012.10.17 LSH (김재경 요청)
                                                                                        - ColumnSum(j+2, idx2_Residue, idx2_Residue)   // Residue 2 Sum에서 제외 @ 2012.10.17 LSH (김재경 요청)
                                                                                        - ColumnSum(j+2, idx3_Residue, idx3_Residue)   // Residue 3 Sum에서 제외 @ 2012.10.17 LSH (김재경 요청)
                                                                                        - ColumnSum(j+2, idx4_Residue, idx4_Residue)   // Residue 4 Sum에서 제외 @ 2012.10.17 LSH (김재경 요청)
                                                                                        - ColumnSum(j+2, idx5_Residue, idx5_Residue)   // Residue 5 Sum에서 제외 @ 2012.10.17 LSH (김재경 요청)
                                                      ); // 총배설량 Col-Sum (-1 이유 :맨 마지막 대변-횟수는 카운트 제외 by MIC 이명희)
               end;
            end;
         end;



         //---------------------------------------------
         // 2-2. I/O 항목 24-Hour Total Row-Sum 계산
         //---------------------------------------------
         for i := idx_FromRow to idx_ToRow do
         begin
            with asg_IcuMon do
            begin
               Cells[1, i]      := FloatToStr(RowSum(i, 2, ColCount-1));  // 24-hour total                                                           //
               FontStyles[1, i] := [fsBold];
               Colors[1, i]     := $00E9CBEB;
            end;
         end;




         //--------------------------------------------------------------------------//
         // 2-3. I/O 항목 Duty별 Row-Sum 계산                                        //
         //   - Sum 기준 변경 및 Note의 I/O Grid에 업데이트, 2011.05.31 LSH          //
         //                                                                          //
         //      |   07:00   |   08:00   |   09:00   | ..                            //
         // 초기 |07:00~07:59|08:00~08:59|09:00~09:59| ..                            //
         // 변경 |06:01~07:00|07:01~08:00|08:01~09:00| ..                            //
         //                                                                          //
         // DaySum (06:01~14:00) / EveningSum (14:01~22:00) / NightSum (22:01~06:00) //
         //--------------------------------------------------------------------------//
         with asg_IcuMon do
         begin
            // Duty별 Row-Sum "Day"  - 최초코딩..
            //Cells[idx_DutyDay,  1] := 'Day Sum[06:01~14:00]' + #13#10 +
            //                          'Intake: ' + FloatToStr({StrToFloat(Cells[ColCount-1, SumRow])   +} RowSum(SumRow,   2, idx_DutyDay)) + #13#10 +
            //                         'Outtake: '+ FloatToStr({StrToFloat(Cells[ColCount-1, SumRow+1]) +} RowSum(SumRow+1, 2, idx_DutyDay)) + #13#10;
            // Duty별 Row-Sum "Evening"
            //Cells[idx_DutyEvng, 1] := 'Evening Sum[14:01~22:00]' + #13#10 +
            //                          'Intake: ' + FloatToStr(RowSum(SumRow,   idx_DutyDay+1,  idx_DutyEvng)) + #13#10 +
            //                          'Outtake: '+ FloatToStr(RowSum(SumRow+1, idx_DutyDay+1,  idx_DutyEvng)) + #13#10;
            // Duty별 Row-Sum "Night"
            //Cells[idx_DutyNigt, 1] := 'Night Sum[22:01~06:00]' + #13#10 +
            //                          'Intake: ' + FloatToStr(RowSum(SumRow,   idx_DutyEvng+1, idx_DutyNigt)) + #13#10 +
            //                          'Outtake: '+ FloatToStr(RowSum(SumRow+1, idx_DutyEvng+1, idx_DutyNigt)) + #13#10;



            // [변경] Duty별 Row-Sum "Day"
            asg_IoSum.Cells[1,1] := FloatToStr(RowSum(SumRow,   2, idx_DutyDay));
            asg_IoSum.Cells[1,2] := FloatToStr(RowSum(SumRow+1, 2, idx_DutyDay));
            asg_IoSum.Cells[1,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[1,1])-StrToFloat(asg_IoSum.Cells[1,2]));         // Day In-Out 추가, 2011.08.18 LSH

            // NICU 노트조회 추가항목 "Day" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[1,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow, 2, idx_DutyDay) + RowSum(tmpToRow, 2, idx_DutyDay)) / StrToFloat(lb_Wgt.Caption) * 1000, 3));                      // Feeding/Kg 계산위한 Day-Sum (L-Tube + Bottle), 2012.01.18 LSH


                  asg_IoSum.Cells[1,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, 2, idx_DutyDay) +   // 자연배뇨
                                                                 RowSum(oToUrine, 2, idx_DutyDay))    // 유치도뇨
                                                     / StrToFloat(lb_Wgt.Caption) /8 * 1000, 3));     // NICU 간호기록지 Duty별 Urine/kg/hour "Day" @ 2012.06.05 LSH
               except
                  on e : Exception do
                  begin
                     // 예외발생시, Null 로 업데이트 @ 2012.06.01
                     asg_IoSum.Cells[1,4] := '';
                     asg_IoSum.Cells[1,5] := '';
                  {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum 예외처리(Day) : 체중정보 없음',
                                MB_OK + MB_ICONINFORMATION);
                  }
                  end;
               end;
            end;


            // 값에 따른 FontColor 지정
            if (CopyByte(asg_IoSum.Cells[1,3],1,1) = '-') then
               asg_IoSum.FontColors[1,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[1,3],1,1) = '0') then
               asg_IoSum.FontColors[1,3] := clBlack
            else
               asg_IoSum.FontColors[1,3] := clBlue;



            // [변경] Duty별 Row-Sum "Evening"
            asg_IoSum.Cells[2,1] := FloatToStr(RowSum(SumRow,   idx_DutyDay+1,  idx_DutyEvng));
            asg_IoSum.Cells[2,2] := FloatToStr(RowSum(SumRow+1, idx_DutyDay+1,  idx_DutyEvng));
            asg_IoSum.Cells[2,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[2,1])-StrToFloat(asg_IoSum.Cells[2,2]));                       // Evening In-Out 추가, 2011.08.18 LSH

            // NICU 노트조회 추가항목 "Evn" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[2,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow, idx_DutyDay+1,  idx_DutyEvng) + RowSum(tmpToRow, idx_DutyDay+1,  idx_DutyEvng)) / StrToFloat(lb_Wgt.Caption) * 1000, 3));       // Feeding/Kg 계산위한 Evn-Sum (L-Tube + Bottle), 2012.01.18 LSH


                  asg_IoSum.Cells[2,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, idx_DutyDay+1,  idx_DutyEvng) +   // 자연배뇨
                                                                 RowSum(oToUrine, idx_DutyDay+1,  idx_DutyEvng))    // 유치도뇨
                                                     / StrToFloat(lb_Wgt.Caption) /8 * 1000, 3));                   // NICU 간호기록지 Duty별 Urine/kg/hour "Evening" @ 2012.06.05 LSH
               except
                  on e : Exception do
                  begin
                     // 예외발생시, Null 로 업데이트 @ 2012.06.01
                     asg_IoSum.Cells[2,4] := '';
                     asg_IoSum.Cells[2,5] := '';
                    {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum 예외처리(Evn) : 체중정보 없음',
                                MB_OK + MB_ICONINFORMATION);
                    }
                  end;
               end;
            end;


            // 값에 따른 FontColor 지정
            if (CopyByte(asg_IoSum.Cells[2,3],1,1) = '-') then
               asg_IoSum.FontColors[2,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[2,3],1,1) = '0') then
               asg_IoSum.FontColors[2,3] := clBlack
            else
               asg_IoSum.FontColors[2,3] := clBlue;



            // [변경] Duty별 Row-Sum "Night"
            asg_IoSum.Cells[3,1] := FloatToStr(RowSum(SumRow,   idx_DutyEvng+1, idx_DutyNigt));
            asg_IoSum.Cells[3,2] := FloatToStr(RowSum(SumRow+1, idx_DutyEvng+1, idx_DutyNigt));
            asg_IoSum.Cells[3,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[3,1])-StrToFloat(asg_IoSum.Cells[3,2]));      // Night In-Out 추가, 2011.08.18 LSH

            // NICU 노트조회 추가항목 "Ngt" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[3,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow, idx_DutyEvng+1, idx_DutyNigt) + RowSum(tmpToRow, idx_DutyEvng+1, idx_DutyNigt)) / StrToFloat(lb_Wgt.Caption) * 1000, 3));      // Feeding/Kg 계산위한 Ngt-Sum (L-Tube + Bottle), 2012.01.18 LSH


                  asg_IoSum.Cells[3,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, idx_DutyEvng+1, idx_DutyNigt) +   // 자연배뇨
                                                                 RowSum(oToUrine, idx_DutyEvng+1, idx_DutyNigt))    // 유치도뇨
                                                     / StrToFloat(lb_Wgt.Caption) /8 * 1000, 3));                   // NICU 간호기록지 Duty별 Urine/kg/hour "Night" @ 2012.06.05 LSH
               except
                  on e : Exception do
                  begin
                     // 예외발생시, Null 로 업데이트 @ 2012.06.01
                     asg_IoSum.Cells[3,4] := '';
                     asg_IoSum.Cells[3,5] := '';
                     {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum 예외처리(Ngt) : 체중정보 없음',
                                MB_OK + MB_ICONINFORMATION);
                      }
                  end;
               end;
            end;


            // 값에 따른 FontColor 지정
            if (CopyByte(asg_IoSum.Cells[3,3],1,1) = '-') then
               asg_IoSum.FontColors[3,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[3,3],1,1) = '0') then
               asg_IoSum.FontColors[3,3] := clBlack
            else
               asg_IoSum.FontColors[3,3] := clBlue;



            // [변경] Total
            asg_IoSum.Cells[4,1] := FloatToStr(StrToFloat(asg_IoSum.Cells[1,1])+StrToFloat(asg_IoSum.Cells[2,1])+StrToFloat(asg_IoSum.Cells[3,1]));
            asg_IoSum.Cells[4,2] := FloatToStr(StrToFloat(asg_IoSum.Cells[1,2])+StrToFloat(asg_IoSum.Cells[2,2])+StrToFloat(asg_IoSum.Cells[3,2]));
            asg_IoSum.Cells[4,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[4,1])-StrToFloat(asg_IoSum.Cells[4,2]));                                       // Total In-Out 추가, 2011.08.18 LSH


            // NICU 노트조회 추가항목 "Total" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[4,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow,   2, idx_DutyNigt) +
                                                                 RowSum(tmpToRow,   2, idx_DutyNigt))
                                                      / StrToFloat(lb_Wgt.Caption) * 1000, 3));        // Feeding/Kg 계산위한 Tot-Sum (L-Tube + Bottle), 2012.01.18 LSH

                  asg_IoSum.Cells[4,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, 2, idx_DutyNigt) +   // 자연배뇨
                                                                 RowSum(oToUrine, 2, idx_DutyNigt))    // 유치도뇨
                                                      / StrToFloat(lb_Wgt.Caption) /24 * 1000, 3));    // NICU 간호기록지 Duty별 Urine/kg/hour "Total" @ 2012.06.05 LSH


               except
                  on e : Exception do
                  begin
                     // 예외발생시, Null 로 업데이트 @ 2012.06.01
                     asg_IoSum.Cells[4,4] := '';
                     asg_IoSum.Cells[4,5] := '';
                    {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum 예외처리(Total) : 체중정보 없음',
                                MB_OK + MB_ICONINFORMATION);
                     }
                  end;
               end;
            end;


            // I/O Sum 값에 따른 FontColor 지정
            if (CopyByte(asg_IoSum.Cells[4,3],1,1) = '-') then
               asg_IoSum.FontColors[4,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[4,3],1,1) = '0') then
               asg_IoSum.FontColors[4,3] := clBlack
            else
               asg_IoSum.FontColors[4,3] := clBlue;


         end;





         //-------------------------------------------------------------
         // 3. 항목저장 상세 프로세스 (sGubun)
         //   - TOGRID : Client Data Set에 각 Cell 항목 Value를 저장
         //   - TOTABLE: CDS에 있는 각 Value들을 D/B(MDICMONT)에 저장
         //-------------------------------------------------------------
         if (sGubun = 'TOGRID') then
         begin
            // Log
            //Memo1.Lines.Add('Set Data To AdvStringGrid!!');
         end
         else if (sGubun = 'TOTABLE') then
         begin
            //---------------------------------------------------------
            // 3-1. Set Data To Table (MDICMONT)
            //---------------------------------------------------------
            iResult := items.InsertMonItem(l_SaveItem);



            // Show Error Message
            if iResult < 0 then
            begin
               items.Free;
               ShowMessage(GetTxMsg);
               Exit;
            end
            else if iResult = 0 then
            begin
               items.Free;
               stb_message.Panels[0].Text := '.';
               Exit;
            end;

            //---------------------------------------------------------
            // 3-2. Show Messages
            //---------------------------------------------------------
            stb_message.Panels[0].Text := '정상적으로 모니터링항목이 [저장]되었습니다.';
         end;





         //---------------------------------------------------------------------
         // 4. [SU 간호기록지] V/S 연동 입력 @ 2012.05.18 LSH
         //  - 기존 ICU/NICU 기록지는 V/S를 통합기록지안에서만 사용키로 함.
         //  - Stroke Unit은 특수치료실이지만, 병동소속이기에 V/S 연동원함.
         //  - Refresh 등은 V/S 저장안되고, Table 저장모드일때만, V/S 연동.
         //---------------------------------------------------------------------
         if (P_NicuFlag = 'S') and
            (sGubun = 'TOTABLE') then
         begin
            for j := 0 to sl_TimeList.Count - 1 do
            begin
               with asg_IcuMon do
               begin
                  // V/S 항목중, 1가지라도 입력된 값이 있으면, 연동저장.
                  if (DelChar(Cells[j+2,5],'.') <> '') or                 // RR
                     (DelChar(Cells[j+2,6],'.') <> '') or                 // HR
                     (DelChar(Cells[j+2,7],'.') <> '') or                 // BT
                     (DelChar(Cells[j+2,8],'.') <> '') or                 // SBP
                     (DelChar(Cells[j+2,9],'.') <> '') then               // DBP
                  begin
                     // 각 시간대별 V/S 항목값을 병동 V/S(MDVITALT)로 연동 입력.
                     if InsVitalRec('N',                                // SU 기록지 구분 flag
                                    P_PatNo,                            // 환자번호
                                    DelChar(P_AdmDate,'-'),             // 입원일자
                                    sl_TimeList.Strings[j],             // 측정일자(기록일자)
                                    sl_TimeList.Strings[j] + DelChar(Cells[j+2,0],':'),
                                                                        // 측정일시
                                    Cells[j+2,7],                       // B.T
                                    DelChar(Cells[j+2,6],'.'),          // Heart Rate(Pulse)
                                    DelChar(Cells[j+2,5],'.'),          // Resp
                                    DelChar(Cells[j+2,8],'.'),          // SBP
                                    DelChar(Cells[j+2,9],'.')           // DBP
                                    ) then
                     begin
                        { // 입력완료는 메세지 띄우기 생략.
                        MessageBox(Self.Handle,
                                   '각 시간대별 V/S(RR/HR/BT/SBP/DBP)가 병동 V/S로 연동 저장되었습니다.',
                                   'SU 기록지 V/S 연동입력 성공',
                                   MB_OK + MB_ICONINFORMATION);
                        }
                     end
                     else
                     begin
                        // 입력실패는 해당 시간대 V/S 내역 재입력 메세지 띄움.
                        MessageBox(Self.Handle,
                                   PChar('병동 V/S 연동 저장을 실패하였습니다.' + sl_TimeList.Strings[j] + ' ' + Cells[j+2,0] + ' V/S 입력값을 재확인후, 저장해주세요.'),
                                   'SU 기록지 V/S 연동입력 실패',
                                   MB_OK + MB_ICONERROR);
                     end;
                  end;
               end;
            end;
         end;
   end;



   finally
      Screen.Cursor := crDefault;
      items.Free;
   end;




end;




//------------------------------------------------------------------------------
// 일자별 모니터링 상세내역 Select Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.20
//------------------------------------------------------------------------------
procedure TMDN110FM.SelectMonItem(dtp_ActDate : TDateTime);
var
   items   : HmdIcutot;
   iRowCnt : Integer;    // the number of rows searched
   i       : Integer;    // Loop Index
   sPatNo, sAdmDate, sFromActDate, sToActDate, tmpItemVal : String;
begin

   //------------------------------------------------
   // 1. 조회
   //------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      items := HmdIcutot.Create;




      //---------------------------------------------
      // 1-1. Set Parameter Value
      //---------------------------------------------
      sPatNo       := P_PatNo;
      sAdmDate     := DelChar(P_AdmDate,'-');
      sFromActDate := FormatDateTime('YYYYMMDD',dtp_ActDate)     + C_STARTTM;
      sToActDate   := FormatDateTime('YYYYMMDD',dtp_ActDate + 1) + C_ENDTM;


      //---------------------------------------------
      // 1-2. Load Data from D/B
      //---------------------------------------------
      iRowCnt := items.LoadMonItem(sPatNo, sAdmDate, sFromActDate, sToActDate);





      // Show Error Message
      if iRowCnt < 0 then
      begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';

         Exit;
      end;


      // Maximum value of progress status
      pb_DataLoading.Max := iRowCnt;



      //----------------------------------------------------
      // 1-3. Display Data
      //----------------------------------------------------
      with items do
      begin
         for i := 0 to iRowCnt - 1 do
         begin

            tmpItemVal := '';

            //------------------------------------------------------------------
            // 장비 Int'f 연동항목(활력징후) 여부 체크
            //------------------------------------------------------------------
            if (sOrgActTime[i] <> '') then
            begin

               //------------------------------------------------------------
               // 장비 연동data 중, Raw-Data('OBX||~')로 가져오는 오류 개선
               //  - 2012.06.15
               //------------------------------------------------------------
               if PosByte('OBX', sItemVal[i]) > 0 then
               begin
                  tmpItemVal := CopyByte(sItemVal[i], 9, PosByte('^',sItemVal[i]) - 9);
               end
               else
                  tmpItemVal := sItemVal[i];


               // Int'f Data가 원본과 같은지 (간호사 수정여부) check
               if (Trim(sOrgActTime[i]) <> ':') and (sItemVal[i] = sOrgItemVal[i]) then
               begin
                  // 최초 Data를 항목별로 Client Data-Set(cds_SaveItem)에 저장 (변경여부는 'N' : Black)
                  GetSaveList(sSetCode[i],
                              sActTime[i],
                              tmpItemVal,
                              'N',
                              sOrgActTime[i]);
               end
               else if (Trim(sOrgActTime[i]) = ':') and (sItemVal[i] = sOrgItemVal[i]) then
               begin
                  // 최초 Data를 항목별로 Client Data-Set(cds_SaveItem)에 저장 (변경여부는 'N' : Black)
                  GetSaveList(sSetCode[i],
                              sActTime[i],
                              tmpItemVal,
                              'N',
                              '');
               end
               else
               begin
                  // 최초 Data를 항목별로 Client Data-Set(cds_SaveItem)에 저장 (변경여부는 'Y' : Red)
                  GetSaveList(sSetCode[i],
                              sActTime[i],
                              tmpItemVal,
                              'Y',
                              '');
               end;
            end
            else if
                    ((CopyByte(sSetCode[i],1,2) = 'MB') or (sSetCode[i] = 'MA03')) or
                     (CopyByte(sSetCode[i],1,2) = 'NB') or
                     (CopyByte(sSetCode[i],1,2) = 'SB') then
            begin
               // Sp02 또는 활력징후 항목 간호사 최초입력시 수정모드('Y': Red) 저장, 2011.08.17 LSH
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           'Y',
                           '');
            end
            else
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           '',
                           '');





            //------------------------------------------------------------------
            // 수행예정 항목여부 체크
            //------------------------------------------------------------------
            if (sItemVal[i] = 'BST') then
            // B/S 수행예정 셀 컬러링 추가, 2011.08.18 LSH
            begin
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           'C',
                           mi_InsBsAct.Caption);
            end
            else if (sItemVal[i] = 'CVP') then
            // CVP 수행예정 셀 컬러링 추가, 2011.08.24 LSH
            begin
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           'D',
                           mi_InsCvpAct.Caption);
            end
            else if (sItemVal[i] = 'VS') then
            // 활력징후 가변항목 수행예정 셀 컬러링 추가, 2011.08.24 LSH
            begin
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           'E',
                           mi_InsVsAct.Caption);
            end;
         end;
      end;


   finally
      Screen.Cursor := crDefault;
      items.Free;
   end;

end;




//------------------------------------------------------------------------------
// Grid Editing-Done Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonEditingDone(Sender: TObject);
var
   in_SetCode, in_ActTime : String;
begin
   with asg_IcuMon do
   begin
      // 변수 assign
      in_SetCode := sl_CodeList.Strings[Row-1];
      in_ActTime := Cells[Col,0];

      // 실시간 Cell 데이터 Client Data-Set에 업데이트 (임시저장)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  Cells[Col,Row],
                  '',
                  '');

   end;
end;



//------------------------------------------------------------------------------
// Grid OnClick ShowHint Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.23
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonClickCell(Sender: TObject; ARow,
   ACol: Integer);
var
   i, NihSum, SumCnt : Integer;
   u_Rectangle : TRect;
begin

   // Fixed Row & Column 은 No Action
   if (ARow = 0) or (ACol = 0) or (ACol = 1) or (cds_SaveItem.IsEmpty) then
   begin
      Exit;
   end;

   // -------------------------------------------------------------------------
   // [구로] SETCODE : MF24(대변(g)) 0또는 5이상만 입력될 수 있도록 함
   // 2013.08.05 smpark
   // -------------------------------------------------------------------------
   if (gMF24Row > 0) and (gMF24Col > 0) then
   begin
      asg_IcuMon.Row := gMF24Row;
      asg_IcuMon.Col := gMF24Col;

      gMF24Row := 0;
      gMF24Col := 0;

      exit;
   end;


   // NIHSS Total 및 MRS Sum 위한 변수 @ 2012.04.23 LSH
   NihSum  := 0;
   SumCnt  := 0;



   with asg_IcuMon do
   begin
      //------------------------------------------------------------------------
      // 클릭한셀의 SetCode가 'Note'(MA02/NA02 @ NICU 기록지/SA02 @ SU 기록지)이면,
      // Note Panel Visible
      //------------------------------------------------------------------------
      if (sl_CodeList.Strings[ARow-1] = 'MA02') or
         (sl_CodeList.Strings[ARow-1] = 'NA02') or
         (sl_CodeList.Strings[ARow-1] = 'SA02') then
      begin
         // 좌표위치 얻기 @ 2012.05.14
         u_Rectangle            := asg_IcuMon.CellRect(gNowCol, gNowRow);


         //sFlag := 'I';
         dtp_RecDate.Date       := Date;
         ed_Hour.Text           := FormatDateTime('hh',Now);
         ed_Min .Text           := FormatDateTime('nn',Now);

         if md_Userid <> '' then
         begin
            ed_RecName.Text     := md_UserNm;
            ed_RecDept.Text     := md_DeptCd;
            ed_RecId.Text       := md_UserId;
         end
         else
         begin
            ed_RecName.Text     := G_UserNm;
            ed_RecDept.Text     := G_DeptCd;
            ed_RecId.Text       := G_UserId;
         end;


         // 해당 ActTime별 Note 내역 조회
         SelNote(sl_TimeList.Strings[ACol-2], asg_IcuMon.Cells[ACol, 0]);



         // Note 입력모드 ('I' = 저장) - 추후 수정 및 삭제기능 요청 고려한 확장 Flag.. by LSH
         lb_InsUp.Caption     := 'I';


         //-------------------------------------------
         // ICU NOTE 입력모드 활성화
         //  - NICU용 추가, 2011.12.07
         //  - SU 용 추가,  2012.04.23
         //-------------------------------------------
         if (P_NicuFlag = 'Y') then
         begin
            pn_SelNote.Left  := 0;
            pn_SelNote.Top   := 142;

            // 입력부분 가리기
            apn_Note.Height  := 515;

            apn_Note.Caption.Text      := 'Neonatal ICU Note';
            apn_Note.Caption.Color     := $00C08000;
            apn_Note.Caption.ColorTo   := clNavy;
            lb_BgSelNote.Color         := $00C08000;
            lb_BgInsNote.Color         := $00C08000;
            lb_SelNote.Color           := $00C08000;
            lb_InsNote.Color           := $00C08000;
         end
         else if (P_NicuFlag = 'S') then
         begin
            pn_SelNote.Left  := 0;
            pn_SelNote.Top   := 19;

            // 입력부분 가리기
            apn_Note.Height  := 392;

            apn_Note.Caption.Text      := 'Stroke Unit';
            apn_Note.Caption.Color     := $000EB7D7;
            apn_Note.Caption.ColorTo   := clOlive;
            lb_BgSelNote.Color         := $000EB7D7;
            lb_BgInsNote.Color         := $000EB7D7;
            lb_SelNote.Color           := $000EB7D7;
            lb_InsNote.Color           := $000EB7D7;

            // SU 에서는 [인공호흡기] 미사용 @ 2012.04.23 LSH
            sbt_SelResp.Visible        := False;
            sbt_SelO2.Visible          := False;
            sbt_SelBst.Visible         := False;
            sbt_SelVs.Visible          := False;
         end
         else
         // ICU 통합 간호기록지 Note 보기
         begin
            pn_SelNote.Left  := 0;
            pn_SelNote.Top   := 100;

            // 입력부분 가리기
            apn_Note.Height  := 471;


            apn_Note.Caption.Text      := 'ICU Note';
            apn_Note.Caption.Color     := clPurple;
            apn_Note.Caption.ColorTo   := clFuchsia;
            lb_BgSelNote.Color         := clPurple;
            lb_BgInsNote.Color         := clPurple;
            lb_SelNote.Color           := clPurple;
            lb_InsNote.Color           := clPurple;
         end;

         // Panel 위치 세팅 및 visible @ 2012.05.14
         if (asg_IcuMon.Width - asg_IcuMon.CellRect(gNowCol, gNowRow).Left) > (apn_Note.Width) then
         begin
            apn_Note.Top  := u_Rectangle.Top + 65;
            apn_Note.Left := asg_IcuMon.CellRect(gNowCol, gNowRow).Left;
         end
         else
         begin
            apn_Note.Top  := u_Rectangle.Top + 65;
            apn_Note.Left := asg_IcuMon.CellRect(gNowCol, gNowRow).Left - apn_Note.Width;
         end;


         // Note 창 Display
         apn_Note.Visible := True;

         // 노트입력부분 Clear
         me_Content.Lines.Text := '';

         // Note 입력 focus
         me_Content.SetFocus;


      end
      //------------------------------------------------------------------------
      // SU 간호기록지 NIHSS 평가 Total Point Sum @ 2012.04.23 LSH
      //------------------------------------------------------------------------
      else if (sl_CodeList.Strings[ARow-1] = 'SC17') then
      begin
         // NIH Stroke Scale 평가항목은 15개(Fix)이므로, 15번 Looping.
         for i := 0 to 14 do
         begin
            if (CopyByte(asg_IcuMon.Cells[ACol, ARow-15+i], 1, 1) <> '') then
            begin
               NihSum := NihSum + StrToInt(CopyByte(asg_IcuMon.Cells[ACol, ARow-15+i], 1, 1));
               Inc(SumCnt);
            end
            else
               Continue;
         end;


         // NIHSS Total 점수 표기
         if SumCnt > 0 then
            asg_IcuMon.Cells[ACol, ARow] := IntToStr(NihSum) + '점'
         else
            asg_IcuMon.Cells[ACol, ARow] := '';


         // 입력된 Total 점수 [임시 Data Grid]에 저장.
         asg_IcuMonEditingDone(Sender);

      end
      //------------------------------------------------------------------------
      // SU 간호기록지 MRS 평가 Total Point Sum @ 2012.04.23 LSH
      //------------------------------------------------------------------------
      else if (sl_CodeList.Strings[ARow-1] = 'SC19') then
      begin
         // MRS 평가항목은 1회(Fix).
         if (CopyByte(asg_IcuMon.Cells[ACol, ARow-1], 1, 1) <> '') then
         begin
            NihSum := NihSum + StrToInt(CopyByte(asg_IcuMon.Cells[ACol, ARow-1], 1, 1));
            Inc(SumCnt);
         end;

         // MRS Total 점수 표기
         if SumCnt > 0 then
            asg_IcuMon.Cells[ACol, ARow] := IntToStr(NihSum) + '점'
         else
            asg_IcuMon.Cells[ACol, ARow] := '';


         // 입력된 Total 점수 [임시 Data Grid]에 저장.
         asg_IcuMonEditingDone(Sender);
      end;

      // ComboBox 선택시 첫번째 Row 선택 되는 로직 추가 -2016.01.22 smpark
      if (ComboBox.Text = '') and (ComboBox.Items.Count > 0) then
      begin
         ComboBox.ItemIndex := 0;
      end;

   end;
end;


//------------------------------------------------------------------------------
// 기록일자 Jog Event Handler (PrevDate)
//
// Author : Lee, Se-Ha
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_PrevDateClick(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_RgtDate.Date := dtp_RgtDate.Date - 1;


   //------------------------------------------------------------------
   // 2. Init Data-Set
   //------------------------------------------------------------------
   InitDataSet(cds_SaveItem);



   //------------------------------------------------------------------
   // 3. NICU 간호기록지 경우) 환자상세정보 Refresh, 2011.12.06 LSH
   //  - "기록일자" 변경시 환자 상세정보(신장/체중/재태연령 등) 해당날짜 값으로 다시 fetch
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') and
      (P_PatFlag = '')   then
   begin
      SelectPatInfo('REFRESH');
   end
   else if (P_NicuFlag = 'Y') and
           ((P_PatFlag = 'W')  or
            (P_PatFlag = 'D'))  then
   begin
      SelectPatInfo('SELECTED');
   end;


   //------------------------------------------------------------------
   // 4. [기록지통합] 통합조회 환자상세정보 Refresh
   //  - 2012.03.07 LSH
   //------------------------------------------------------------------
   {
   if (P_PatFlag = 'W') or
      (P_PatFlag = 'D') then
      SelectPatInfo('SELECTED');
   }


   //------------------------------------------------------------------
   // 5. Refresh
   //------------------------------------------------------------------
   if (cbx_Hemo.Checked) then
      // 화면 Refresh
      Refresh
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;


   //------------------------------------------------------------------
   // 6. NICU 체중-신장-복위-흉위-두위-재태연령 조회
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      SetNicuInfoAdded(P_PatNo, P_AdmDate);   // 환자번호, 입원일자
   end;



end;


//------------------------------------------------------------------------------
// 기록일자 Jog Event Handler (NextDate)
//
// Author : Lee, Se-Ha
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_NextDateClick(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_RgtDate.Date := dtp_RgtDate.Date + 1;


   //------------------------------------------------------------------
   // 2. Init Data-Set
   //------------------------------------------------------------------
   InitDataSet(cds_SaveItem);



   //------------------------------------------------------------------
   // 3. 자동서식변환인 경우, 기록일자 + 1일 내역조회, 2011.09.09 LSH
   //------------------------------------------------------------------
   if (P_EMRPrintYn = 'Y') then
   begin
      SetPatInfo('SELECTED');
      Exit;
   end;


   //------------------------------------------------------------------
   // 4. [NICU 간호기록지] 환자상세정보 Refresh, 2011.12.06 LSH
   //  - "기록일자" 변경시 환자 상세정보(신장/체중/재태연령 등) 해당날짜 값으로 다시 fetch
   //------------------------------------------------------------------
   if (P_EMRPrintYn <> 'Y') then
   begin
      if (P_NicuFlag = 'Y') and
         (P_PatFlag = '')   then
      begin
         SelectPatInfo('REFRESH');
      end
      else if (P_NicuFlag = 'Y') and
              ((P_PatFlag = 'W')  or
               (P_PatFlag = 'D'))  then
      begin
         SelectPatInfo('SELECTED');
      end;
   end;



   //------------------------------------------------------------------
   // 5. [기록지통합] 통합조회 환자상세정보 Refresh
   //  - 2012.03.07 LSH
   //------------------------------------------------------------------
   {
   if (P_PatFlag = 'W') or
      (P_PatFlag = 'D') then
      SelectPatInfo('SELECTED');
   }




   //------------------------------------------------------------------
   // 6. 화면 Refresh
   //------------------------------------------------------------------
   if (cbx_Hemo.Checked) then
   begin
      // 화면 Refresh
      Refresh;
   end
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;



   //------------------------------------------------------------------
   // 7. NICU 체중-신장-복위-흉위-두위-재태연령 조회
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      SetNicuInfoAdded(P_PatNo, P_AdmDate);   // 환자번호, 입원일자
   end;




end;


//------------------------------------------------------------------------------
// 기록일자 Change Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FM.dtp_RgtDateCloseUp(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. 조회
   //------------------------------------------------------------------
   InitDataSet(cds_SaveItem);


   //------------------------------------------------------------------
   // 2. NICU 간호기록지 경우) 환자상세정보 Refresh, 2011.12.06 LSH
   //  - "기록일자" 변경시 환자 상세정보(신장/체중/재태연령 등) 해당날짜 값으로 다시 fetch
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') and
      (P_PatFlag = '')   then
   begin
      SelectPatInfo('REFRESH');
   end
   else if (P_NicuFlag = 'Y') and
           ((P_PatFlag = 'W')  or
            (P_PatFlag = 'D'))  then
   begin
      SelectPatInfo('SELECTED');
   end;


   //------------------------------------------------------------------
   // 3. Refresh
   //------------------------------------------------------------------
   if (cbx_Hemo.Checked) then
      // 화면 Refresh
      Refresh
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;
end;


//------------------------------------------------------------------------------
// Client Data Set 초기화 (Close & Create)
//
// Author : Lee, Se-Ha
// Date   : 2011.01.31
//------------------------------------------------------------------------------
procedure TMDN110FM.InitDataSet(cds_Temp : TClientDataSet);
begin
   // Close
   if cds_Temp <> nil then
      cds_Temp.Close;

   // Create
   cds_Temp.CreateDataSet;
end;


//------------------------------------------------------------------------------
// Chart 초기화
//
// Author : Lee, Se-Ha
// Date   : 2011.01.31
//------------------------------------------------------------------------------
procedure TMDN110FM.InitChart;
var
   i, iChartCnt : integer;
   Now_ChartVs : TChart;
begin
   //------------------------------------------
   // 1. SU 간호기록지 Chart 분기 @ 2012.04.21
   //------------------------------------------
   if (P_NicuFlag = 'S') then
   begin
      Now_ChartVs := Chr_Vs_Su;
      iChartCnt  := 6;
   end
   else
   begin
      Now_ChartVs := Chr_Vs;
      iChartCnt  := 8;
   end;


   //------------------------------------------
   // 2. Chart 시리즈 항목 Clear
   //------------------------------------------
   for i := 0 to iChartCnt - 1do
   begin
      Now_ChartVs.SeriesList[i].Clear;
   end;


   //------------------------------------------
   // 3. Chart BottomAxis 초기화 및 set
   //------------------------------------------
   Now_ChartVs.BottomAxis.Automatic       := False ;
   Now_ChartVs.BottomAxis.Maximum         := EncodeTime(23, 59, 59, 59) + EncodeTime(6, 1, 0, 0);    // [CCU 김연아요청] 오전 06:01 ~ 익일 06:00, 2011.08.16 LSH
   Now_ChartVs.BottomAxis.Minimum         := EncodeTime(0, 0, 0, 0)     + EncodeTime(6, 0, 0, 0);
   Now_ChartVs.BottomAxis.Increment       := DateTimeStep[dtOneHour];
   Now_ChartVs.BottomAxis.DateTimeFormat  := 'hh:nn';


   //------------------------------------------
   // 4. Repaint
   //------------------------------------------
   Now_ChartVs.Repaint;



end;


//------------------------------------------------------------------------------
// 화면 Refresh
//     (폼구성-> Code/Time/Data 저장 -> Client DataSet 세팅-> 차트그리기)
// Author : Lee, Se-Ha
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FM.Refresh;
begin
   // Code-Time 리스트 재구성 및 입력항목 속성값 가져오기
   CheckFormset;


   // Data Loading bar 보이기
   SetLoadingBar('ON');


   // 일자별 모니터링 상세내역(저장) 조회
   SelectMonItem(dtp_RgtDate.Date);


   // Client Data Set 세팅
   SetSaveList('TOGRID');


   // Data Loading bar 숨기기
   SetLoadingBar('OFF');


   // Chart Clear
   InitChart;


   // 차트 생성
   DrawChart(Self);


   // Note 내역 전체조회
   SelNote(FormatDateTime('yyyymmdd',dtp_RgtDate.Date), 'ALL');

   // 구로병원 ICU Note 기간별 조회 기능 개발 -2013.05.16 smpark
   if (md_Userid = '99995') or
      (G_Locate = 'GR') then
   begin
      if (apn_NoteSearch.Visible = True) then
      begin
         bbt_NoteSearchClick(nil);
      end;

      // CRRT 처방 체크 -2013.09.02 smpark
      gCrrtDate := '';
      gCrrtDate := CrrtCheck(P_PatNo,FormatDateTime('yyyymmdd',dtp_RgtDate.Date));

      if gCrrtDate <> '' then
      begin
         bbt_Crrt.Enabled := True;
      end
      else
      begin
         bbt_Crrt.Enabled := False;
      end;

   end;



end;



//-------------------------------
// Note 입력 - 취소
//-------------------------------
procedure TMDN110FM.bbt_CancelInputNoteClick(Sender: TObject);
begin
   // 1.1. Show Panel
   pn_Note.Visible := False;

   // 1.2. Clear Input Box
   me_Note.Clear;
end;



//-------------------------------
// Note 입력 - 확인
//-------------------------------
procedure TMDN110FM.bbt_ConfirmInputNoteClick(Sender: TObject);
begin
   // assign
   asg_IcuMon.Cells[asg_IcuMon.Col,asg_IcuMon.Row] := me_Note.Text;

   // Panel 종료
   bbt_CancelInputNoteClick(Sender);

   // 전체 Note 조회정보 Update
   CheckAllNote;

   // GetSaveList에 해당 Cell정보 assign
   asg_IcuMonEditingDone(Sender);
end;



//------------------------------------------------------------------------------
// MouseMove ShowHint Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   NowCol, NowRow : Integer;
   bExist : Boolean;
begin

   with asg_IcuMon do
   begin
      // 현재 Cell 좌표 가져오기
      MouseToCell(X, Y, NowCol, NowRow);


      if (NowCol >= 0) and
         (NowRow >= 1) then
         //(Cells[NowCol,NowRow] <> '') then
      begin

         Hint := '';

         // 입력속성 Client Data-Set중에서, SetCode별 1Row를 검색.
         bExist := cds_SaveItem.Locate('setcode;acttime',
                                       VarArrayOf([sl_CodeList.Strings[NowRow-1], Cells[NowCol,0]]),
                                       [loCaseInsensitive]);


         // 검색한 1개의 Row에서,
         if bExist then
         begin
            // 셀 추가정보(addinfo)값이 is Not Null이면, 해당 info를 Hint로 보여줌(예: 장비Int'f Fetch시간 등)
            // 수행예정등록(Intflag = 'C') 경우도, 추가정보 Hint, 2011.08.17 LSH
            if (cds_SaveItem.FindField('addinfo').AsString <> '')  or
               ((cds_SaveItem.FindField('addinfo').AsString <> '')  and
                ((cds_SaveItem.FindField('intflag').AsString = 'C') or
                 (cds_SaveItem.FindField('intflag').AsString = 'D'))) then
            begin
               Hint := cds_SaveItem.FindField('addinfo').AsString;
            end
            // VS 가변항목 수행예정인 경우, 모니터링 항목명 Hint에 붙여주기, 2011.08.24 LSH
            else if (cds_SaveItem.FindField('addinfo').AsString <> '')  and
                    (cds_SaveItem.FindField('intflag').AsString = 'E') then
            begin
               Hint := asg_IcuMon.Cells[1, NowRow] + ' ' + cds_SaveItem.FindField('addinfo').AsString;
            end
            else
            // 셀 추가정보가 없는경우, 현재 Cell 입력값을 보여줌.
            begin
               Hint := cds_SaveItem.FindField('itemvalue').AsString;
            end;
         end
         else
         // 검색된 항목이 없으면(Cds_SaveItem에 등록되지 않은상태), 현재 Cell 정보를 Hint로 뿌려줌.
         begin
            Hint := Trim(Cells[NowCol,NowRow]);
         end;

         // Hint Activation
         Application.ActivateHint(Mouse.CursorPos);

         // 유효성 True
         ShowHint := True;
      end
      else
      begin
         Hint := '';

         Application.ActivateHint(Mouse.CursorPos);

         ShowHint := True;
      end;

   end;

end;



//------------------------------------------------------------------------------
// [중환자실 통합기록지] - ICU 임상질지표 BPL 호출
//
// Author : Lee, Byoung-Sik
// Date   : 2011.01.31
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_QualityClick(Sender: TObject);
var
   FForm : TForm;
begin

   //----------------------------------------------------------
   // NICU 간호기록지 "임상질지표" 추가, 2011.12.08 LSH
   //----------------------------------------------------------
   if (P_NicuFlag = 'Y') then
      FForm := BplFormCreate('MDN110FX')
   else
      FForm := BplFormCreate('MDN110FV');

   SetBplStrProp(FForm.Name, 'propPatNo'  , P_PatNo);
   SetBplStrProp(FForm.Name, 'propAdmDate', P_AdmDate);
   SetBplStrProp(FForm.Name, 'propPatFlag', P_PatFlag);     // NICU/ICU 의사조회시 [조회]가능만 활성화, 2012.03.05 LSH

   MComFormShow(FForm);
end;


//------------------------------------------------------------------------------
// Note내역 전체보기
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_ShowNoteClick(Sender: TObject);
begin

   // 해당 ActTime별 Note 내역 조회
   SelNote(FormatDateTime('yyyymmdd',dtp_RgtDate.Date), 'ALL');


   // NICU 간호기록지 Note 기능개선, 2011.12.07 LSH
   if (P_NicuFlag = 'Y') then
   begin
      pn_SelNote.Left  := 0;
      pn_SelNote.Top   := 142;

      // 입력부분 가리기
      apn_Note.Height  := 370;

      apn_Note.Caption.Text      := 'Neonatal ICU Note';
      apn_Note.Caption.Color     := $00C08000;
      apn_Note.Caption.ColorTo   := clNavy;
      lb_BgSelNote.Color         := $00C08000;
      lb_BgInsNote.Color         := $00C08000;
      lb_SelNote.Color           := $00C08000;
      lb_InsNote.Color           := $00C08000;
   end
   else if (P_NicuFlag = 'S') then
   // SU 간호기록지 Note @ 2012.04.23 LSH
   begin
      pn_SelNote.Left  := 0;
      pn_SelNote.Top   := 19;

      // 입력부분 가리기
      apn_Note.Height  := 247;

      apn_Note.Caption.Text      := 'Stroke Unit';
      apn_Note.Caption.Color     := $000EB7D7;
      apn_Note.Caption.ColorTo   := clOlive;
      lb_BgSelNote.Color         := $000EB7D7;
      lb_BgInsNote.Color         := $000EB7D7;
      lb_SelNote.Color           := $000EB7D7;
      lb_InsNote.Color           := $000EB7D7;

      sbt_SelResp.Visible        := False;
   end
   else
   // ICU 통합 간호기록지 Note 보기
   begin
      pn_SelNote.Left  := 0;
      pn_SelNote.Top   := 100;

      // 입력부분 가리기
      apn_Note.Height  := 328;

      apn_Note.Caption.Text      := 'ICU Note';
      apn_Note.Caption.Color     := clPurple;
      apn_Note.Caption.ColorTo   := clFuchsia;
      lb_BgSelNote.Color         := clPurple;
      lb_BgInsNote.Color         := clPurple;
      lb_SelNote.Color           := clPurple;
      lb_InsNote.Color           := clPurple;
   end;

   // Note 보여주기
   apn_Note.Visible := True;


end;



//------------------------------------------------------------------------------
// Note 내역 List-Up Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.03.07
//------------------------------------------------------------------------------
procedure TMDN110FM.CheckAllNote;
var
   j : integer;
begin

   //---------------------------------
   // 1. Grid 초기화
   //---------------------------------
   with asg_Note do
   begin
      // RowCount 초기화
      RowCount := 2;

      Cells[0,1] := '';
      Cells[1,1] := '';
   end;


   //---------------------------------
   // 2. Note 내용 Assign To Grid
   //---------------------------------
   with asg_IcuMon do
   begin
      // Time 항목수만큼 Looping
      for j := 2 to sl_TimeList.Count+1 do
      begin


         // 해당 시간대에 Note 기록이 있으면, Adv-Grid에 추가
         if (Cells[j,1] <> '') then
         begin
            if (Cells[j,0] = '00:00') then
               // 00:00 인경우, 시간기준 변경되면서 전일자로 가져오도록 함,
               // 하지만 실제 Actdate는 화면 display때문에 익일로 세팅, 2011.05.31 LSH
               asg_Note.Cells[0, asg_Note.RowCount-1] := CopyByte(sl_TimeList.Strings[j-3],5,2) + '-' + // mm
                                                         CopyByte(sl_TimeList.Strings[j-3],7,2) + ' ' + // dd
                                                         CopyByte(Trim(Cells[j-1,0]),1,2) + ':01 ~ '  +
                                                         CopyByte(Trim(Cells[j,0]),1,2)   + ':00'       // hh:nn
            else if (Cells[j,0] <> '07:00') then
               asg_Note.Cells[0, asg_Note.RowCount-1] := CopyByte(sl_TimeList.Strings[j-2],5,2) + '-' + // mm
                                                         CopyByte(sl_TimeList.Strings[j-2],7,2) + ' ' + // dd
                                                         CopyByte(Trim(Cells[j-1,0]),1,2) + ':01 ~ '  +
                                                         CopyByte(Trim(Cells[j,0]),1,2)   + ':00'       // hh:nn

            else if (Cells[j,0] = '07:00') then
               asg_Note.Cells[0, asg_Note.RowCount-1] := CopyByte(sl_TimeList.Strings[j-2],5,2) + '-' + // mm
                                                         CopyByte(sl_TimeList.Strings[j-2],7,2) + ' ' + // dd
                                                         '06:01 ~ ' +
                                                         CopyByte(Trim(Cells[j,0]),1,2)   + ':00';      // hh:nn


            // NOTE내용
            asg_Note.Cells[1, asg_Note.RowCount-1] := Trim(Cells[j,1]);


            // Row Size를 입력하는 Data에 맞도록 auto-Sizing
            asg_Note.AutoSizeRow(asg_Note.RowCount-1);


            // RowCount 증가
            asg_Note.RowCount := asg_Note.RowCount + 1;


         end;
      end;
   end;


   // 마지막 index 증가분 제거
   if (asg_Note.RowCount = 2) then
      asg_Note.RowCount := asg_Note.RowCount
   else
      asg_Note.RowCount := asg_Note.RowCount - 1;


end;


//------------------------------------------------------------------------------
// 시간 삽입 Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.24
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_AddTimeClick(Sender: TObject);
begin

   if (Trim(med_ActTime.Text) =  ':') or
      (LengthByte(Trim(med_ActTime.Text)) <> 5) then
   begin
      MessageBox(Self.Handle,
                 '시간(hh:mm)을 정확하게 입력해주십시오.',
                 '모니터링 시간 추가',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if LengthByte(CopyByte(Trim(med_ActTime.Text),1,2)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '작성시간은 두자리로 입력해 주십시오.',
                 '모니터링 시간 추가',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if LengthByte(CopyByte(Trim(med_ActTime.Text),4,2)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '작성분은 두자리로 입력해 주십시오.',
                 '모니터링 시간 추가',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if StrToint(CopyByte(Trim(med_ActTime.Text),1,2)) > 23 then
   begin
      MessageBox(Self.Handle,
                 '시간을 다시 입력하시기 바랍니다.',
                 '모니터링 시간 추가',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if StrToint(CopyByte(Trim(med_ActTime.Text),4,2)) > 59 then
   begin
      MessageBox(Self.Handle,
                 '분을 다시 입력하시기 바랍니다.',
                 '모니터링 시간 추가',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;


   // 모니터링 시간 추가
   SetTimeList('REFRESH');


   // 화면 Refresh
   Refresh;


end;




//------------------------------------------------------------------------------
// ICU 통합 간호기록지 서식출력
//
// Author : Lee, Se-Ha
// Date   : 2011.03.24
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_PrintClick(Sender: TObject);
var
   srcPrt   : TMDN110FM_P01;
   srcPrt2  : TMDN110FM_P02;
   iRowCnt, iColCnt, i, j, iStartCol : Integer;
   iPrinterIndex : Integer;
   FForm    : TForm;
   SrcChart : TChart;
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('PRINT', '', '', '', self.Name) = False then Exit;


   //-------------------------------------------------------
   // 1. 24hour 초과 기록지 출력로직 추가, 2011.07.15 LSH
   //-------------------------------------------------------
   iStartCol := 0;
   G_LastPageIdx := 0;


   //-------------------------------------------------------
   // 2. SU 간호기록지 Source Chart 분기 @ 2012.04.21
   //-------------------------------------------------------
   if (P_NicuFlag = 'S') then
      SrcChart := Chr_Vs_Su
   else
      SrcChart := Chr_Vs;



   with asg_IcuMon do
   begin
      if asg_IcuMon.RowCount = 0 then
         Close;

      // Row - Col 변수 Assign
      iRowCnt := asg_IcuMon.RowCount;
      iColCnt := asg_IcuMon.ColCount;


      // 프린트 그리드 Clear, 2011.09.09 LSH
      asg_Print.Clear;


      // 24hour 초과 기록지 정보담을 Grid
      asg_Print.RowCount := iRowCnt;



      for i := 0 to iRowCnt do // - 1 do
      begin

         // 1-1. Mainform의 TimeList 가 24시간이 넘는경우, iStartCol Set
         if sl_TimeList.Count > 24 then
                iStartCol := 2;

         for j := 0 to iColCnt do
         begin
            // 1-2. 모니터링 항목 컬럼 Set
            if (j <= 1) then
               asg_Print.Cells[j,i]   := Cells[j ,i]
            else if (j >= 26) then
            // 1-3. 초과 Time분부터, Target Grid에 신규로 정보이동.
            begin
               asg_Print.Cells[iStartCol,i]   := Cells[j ,i];
               Inc(iStartCol);
            end;
         end;


      end;
   end;



   //----------------------------
   // 3. Create Print Form
   //----------------------------
   srcPrt  := TMDN110FM_P01.Create(Application);   // A3 (자동변환서식)
   srcPrt2 := TMDN110FM_P02.Create(Application);   // A4 (프린트서식)


   //----------------------------
   // 4. Set Property value
   //----------------------------
   with srcPrt do
   begin
      // 3-1. MainForm BPL 변수 assign [A3 - 자동변환서식]
      propSourceChart := SrcChart;
      propCodeList    := sl_CodeList;
      propTimeList    := sl_TimeList;
      propPrintGrid   := asg_IcuMon;
      propPrtIdx      := '1';
      propNicuFlag    := P_NicuFlag;               // 신생아 중환자실 환자여부, 2011.11.01 LSH
      propIsLastPage  := G_LastPageIdx;            // EndMark 출력위한 Page 인덱스 @ 2012.10.31 LSH
      propLastDateYn  := G_LastEmrDateYn;          // EndMark 출력위한 마지막 출력일자 @ 2012.10.31 LSH

      // [A4 - 출력] 양식 assign
      srcPrt2.propSourceChart := SrcChart;
      srcPrt2.propCodeList    := sl_CodeList;
      srcPrt2.propTimeList    := sl_TimeList;
      srcPrt2.propPrintGrid   := asg_IcuMon;
      srcPrt2.propPrtIdx      := '1';
      srcPrt2.propNicuFlag    := P_NicuFlag;       // 신생아 중환자실 or Stroke Unit 환자여부, 2011.11.01 LSH



      // EMR 미리보기 모드
      if P_PreviewYn = 'Y' then
      begin

         // 출력여부 Global Var (당일자 ICU 기록지 저장내역 있는경우 Y)
         if (G_EmrYn = 'Y') then
         begin
            FForm := BplFormCreate('PTP001F1');

            SetBplStrProp  ('PTP001F1','prop_Caption', srcPrt2.Caption);      // 미리보기 타이틀
            SetBplClassProp('PTP001F1','prop_Report' , srcPrt2.qr_Icu_A4);    // 출력 첫장에 올릴 레포트임
            SetBplStrProp  ('PTP001F1','prop_Zoom'   , 'Fit');                 // 출력물 배율 지정

            FForm.ShowModal;
         end;


         { AutoScan_New version 시행하면서, 아래 주석처리. 2012.01.30 LSH
         // 퇴원일자 전까지 기록일자 + 1일씩 조회하며 출력.
         if (DateToStr(dtp_RgtDate.Date) < P_DschDate) then
         begin
            // 기록일자 + 1일 조회
            bbt_NextDateClick(Sender);
         end;
         }


         // 자동으로 EMR 출력연계 안되도록 Exit
         Exit;


      end;


      //------------------------------------------------------------------------
      // 3-1. ICU 기록지 자동서식변환 [A3] , 2011.09.09 LSH
      //------------------------------------------------------------------------
      if P_EMRPrintYn = 'Y' then
      begin

         // 3-2. 자동서식변환 출력여부 Global Var
         if (G_EmrYn = 'Y') then
         begin

            // EMR Index 증가
            Inc(G_EmrPrtIdx);


            // Print(EMR Image)
            iPrinterIndex := Printer.Printers.IndexOf('bitPrinter');
            // iPrinterIndex := Printer.Printers.IndexOf('Microsoft XPS Document Writer');


            // EMR 프린터 선택
            qr_Icu.PrinterSettings.PrinterIndex := iPrinterIndex;

            // EMR Report 제목 생성
            qr_Icu.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);;

            // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
            // // Main Form Print
            // qr_Icu.Print;

            if pv_SComReport <> nil then
            begin
               pv_SComReport.AddReport(qr_Icu); // 기록지를 Add
               pv_SComReport.PageTextList.Add('');             // 위변조방지용 문구. 현재는 없어서 공백
            end
            else
            begin
               qr_Icu.Print;
            end;
            // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End

            // 3-3. [자동변환서식] 24hour 초과 기록지 출력기능 추가, 2011.07.15 LSH
            if (asg_Print.Cells[2,0] <> '') then
            begin
               // SubForm (24h 초과된 내역) BPL 변수 assign
               propSourceChart := SrcChart;
               propCodeList    := sl_CodeList;
               propTimeList    := sl_TimeList;
               propPrintGrid   := asg_Print;
               propPrtIdx      := '2';
               propNicuFlag    := P_NicuFlag;       // 신생아 중환자실 or Stroke Unit 여부, 2011.11.01 LSH

               // EMR Index 증가
               Inc(G_EmrPrtIdx);

               // EMR 프린터 선택
               iPrinterIndex := Printer.Printers.IndexOf('bitPrinter');

               qr_Icu.PrinterSettings.PrinterIndex := iPrinterIndex;

               // EMR Report 제목 생성
               qr_Icu.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);

               // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
               // // SubForm (24h 초과된 내역) Print
               // qr_Icu.Print;

               if pv_SComReport <> nil then
               begin
                  pv_SComReport.AddReport(qr_Icu); // 기록지를 Add
                  pv_SComReport.PageTextList.Add('');             // 위변조방지용 문구. 현재는 없어서 공백
               end
               else
               begin
                  qr_Icu.Print;
               end;
               // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End
            end;
         end;


         // 3-4. Close
         Close;


         { AutoScan New-Version 시행하면서, 아래 주석처리. 2012.01.30 LSH
         // 퇴원일자 전까지 기록일자 + 1일씩 조회하며 출력.
         if (DateToStr(dtp_RgtDate.Date) < P_DschDate) then
         begin
            // 기록일자 + 1일 조회
            bbt_NextDateClick(Sender);
         end
         else
         begin
            Close;
         end;
         }


      end
      else
      // 일반프린터 출력 [A4]양식
      begin
         // Print(Local Printer)

         //-------------------------------------------------------
         // 개인정보보호 출력물관리, 2011.11.25 LSH
         //-------------------------------------------------------
         srcPrt2.qr_Icu_A4.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
         fn_SetReportID(srcPrt2.qr_Icu_A4);

         // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
         // srcPrt2.qr_Icu_A4.Print;

         if pv_SComReport <> nil then
         begin
            pv_SComReport.AddReport(srcPrt2.qr_Icu_A4); // 기록지를 Add
            pv_SComReport.PageTextList.Add('');         // 위변조방지용 문구. 현재는 없어서 공백
         end
         else
         begin
            srcPrt2.qr_Icu_A4.Print;
         end;
         // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End



         // 3-4. 일반프린터 출력 [24hour 초과] 기록지 추가, 2011.07.15 LSH
         if (asg_Print.Cells[2,0] <> '') then
         begin
            // SubForm (24h 초과된 내역) BPL 변수 assign
            srcPrt2.propSourceChart := SrcChart;
            srcPrt2.propCodeList    := sl_CodeList;
            srcPrt2.propTimeList    := sl_TimeList;
            srcPrt2.propPrintGrid   := asg_Print;
            srcPrt2.propPrtIdx      := '2';
            srcPrt2.propNicuFlag    := P_NicuFlag;       // 신생아 중환자실 or Stroke Unit 여부, 2011.11.01 LSH


            // SubForm (24h 초과된 내역) Print
            //-------------------------------------------------------
            // 개인정보보호 출력물관리, 2011.11.25 LSH
            //-------------------------------------------------------
            srcPrt2.qr_Icu_A4.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
            fn_SetReportID(srcPrt2.qr_Icu_A4);

            // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
            // srcPrt2.qr_Icu_A4.Print;

            if pv_SComReport <> nil then
            begin
               pv_SComReport.AddReport(srcPrt2.qr_Icu_A4); // 기록지를 Add
               pv_SComReport.PageTextList.Add('');         // 위변조방지용 문구. 현재는 없어서 공백
            end
            else
            begin
               srcPrt2.qr_Icu_A4.Print;
            end;
            // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End
         end;


         // 3-4. Close
         srcPrt2.Close;

      end;

   end;

end;




//------------------------------------------------------------------------------
// Data Loading Bar Controller
//
// Author : Lee, Se-Ha
// Date   : 2011.03.28
//------------------------------------------------------------------------------
procedure TMDN110FM.SetLoadingBar(AsStatus : String);
begin
   if AsStatus = 'ON' then
   begin
      // 진행중 표시 보이기
      pn_Loading.Left    := 656;
      pn_Loading.Top     := 392;
      pn_Loading.Visible := True;

      pn_Loading.Repaint;

      // 조회중 다른 작업 Lock
      pn_Top.Enabled     := False;
      asg_IcuMon.Enabled := False;


   end
   else if AsStatus = 'OFF' then
   begin
      // 진행중 표시 끄기
      pb_DataLoading.Position := 0;
      pn_Loading.Visible      := False;

      // 다른 작업 Lock release
      pn_Top.Enabled     := True;
      asg_IcuMon.Enabled := True;


   end;
end;




//------------------------------------------------------------------------------
// Chart After Draw Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.04.04
//------------------------------------------------------------------------------
procedure TMDN110FM.chr_VSAfterDraw(Sender: TObject);
Var
   YMinPosition, YMidPosition, YMaxPosition : Longint;
begin

   //---------------------------------------------------------------------------
   // 최초 저장유무 Check후, 기준선 Drawing.
   //---------------------------------------------------------------------------
   if CheckIcuFstSave(P_PatNo,
                      DelChar(P_AdmDate, '-'),
                      FormatDateTime('yyyymmdd',dtp_RgtDate.Date),
                      P_NicuFlag) then
   begin
      With Chr_Vs, Canvas do
      Begin
          YMinPosition := LeftAxis.CalcYPosValue(C_MINLINE);
          YMidPosition := LeftAxis.CalcYPosValue(C_MIDLINE);
          YMaxPosition := LeftAxis.CalcYPosValue(C_MAXLINE);

          // change pen and draw the line
          // Min-Line
          Pen.Width := 2;
          Pen.Style := psSolid;
          Pen.Color := clBlack; //clRed; <- MIC/SIC/CCU 수선생님 요청, 눈아프다고 함.....;;
          MoveTo(ChartRect.Left,YMinPosition);
          LineTo(ChartRect.Right,YMinPosition);
          LineTo(ChartRect.Right+Width3D,YMinPosition-Height3D);

          // Mid-Line
          Pen.Width := 2;
          Pen.Style := psSolid;
          Pen.Color := clBlack;
          MoveTo(ChartRect.Left,YMidPosition);
          LineTo(ChartRect.Right,YMidPosition);
          LineTo(ChartRect.Right+Width3D,YMidPosition-Height3D);

          // Max-Line
          Pen.Width := 2;
          Pen.Style := psSolid;
          Pen.Color := clBlack;
          MoveTo(ChartRect.Left,YMaxPosition);
          LineTo(ChartRect.Right,YMaxPosition);
          LineTo(ChartRect.Right+Width3D,YMaxPosition-Height3D);

          Font.Name := 'Arial';

          Font.Height := -15;   // <-- express font size in "Height", NOT "Size" ※ Best Size = -24

          Font.Color  := $005C70D5; //clYellow;
          Font.Style  := [fsBold];

          Brush.Style := bsClear;

          // 모니터링 항목추가(편집) 위한 최초저장여부 Set, 2011.07.19 LSH
          asg_IcuMon.Tag := 1;

      end;
   end;
end;




//------------------------------------------------------------------------------
// 모니터링 상세내역 Refresh Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.05.20
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_RefreshClick(Sender: TObject);
begin

   //---------------------------------------------------------
   // 1. 저장시, Grid 모든 항목을 Open되어야 함.
   //---------------------------------------------------------
   if not (cbx_Hemo.Checked) then
      cbx_Hemo.Checked := True;

   if not (cbx_Neuro.Checked) then
      cbx_Neuro.Checked := True;

   if not (cbx_Io.Checked) then
      cbx_Io.Checked := True;



   //---------------------------------------------------------
   // 2. SetCode 항목이 MDICUSET 있으면 skip, 없으면 insert.
   //---------------------------------------------------------
   SetCodeList('REFRESH');

   //---------------------------------------------------------
   // 3. Time 항목 MDICUTMT 있으면 skip, 없으면 insert.
   //---------------------------------------------------------
   SetTimeList('REFRESH');

   //---------------------------------------------------------
   // 4. 임시 Data-Set Value를 D/B Table에 Insert.
   //---------------------------------------------------------
   SetSaveList('TOGRID');

   //---------------------------------------------------------
   // 5. Refresh
   //---------------------------------------------------------
   Refresh;



end;



//------------------------------------------------------------------------------
// [차트좌표보기] On Mouse Move Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.06.03
//  - 미사용 중...
//------------------------------------------------------------------------------
procedure TMDN110FM.chr_VSMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
   idx, i : Integer;
   dx, dy : double;
begin

   for i := 0 to C_CHARTCNT - 1 do
   begin

      idx := Chr_Vs.SeriesList[i].GetCursorValueIndex;

      if (idx >= 0) then
      begin

         Chr_Vs.SeriesList[i].GetCursorValues(dx,dy);

         Chr_Vs.Hint := '[' + IntToStr(X) + ' , ' + IntToStr(Y) + ']';

         // Hint Activation
         Application.ActivateHint(Mouse.CursorPos);

         // 유효성 True
         //Chr_Vs.ShowHint := True;

      end
      else
      begin
         Chr_Vs.Hint := '';

         // 유효성 False
         //Chr_Vs.ShowHint := False;
      end;

   end;


end;




//------------------------------------------------------------------------------
// [Time 항목삭제] OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.07.11
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_DelTimeClick(Sender: TObject);
var
   RowNo, j  : Integer;
   iCrect    : HmdIcutot;
   sType1, t_DelDate : String;
begin


   if (Trim(med_ActTime.Text) =  ':') or
      (LengthByte(Trim(med_ActTime.Text)) <> 5) then
   begin
      MessageBox(Self.Handle,
                 '시간(hh:mm)을 정확하게 입력해주십시오.',
                 '모니터링 시간 삭제',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;


   Screen.Cursor := crHourglass;

   try
      iCrect := HmdIcutot.Create;

      //-----------------------------------------------
      // Set Parameter Value : Time 항목 삭제
      //-----------------------------------------------
      sType1 := '4';
      j      := 1;


      with iCrect do
      begin
         sPatno   := P_PatNo  ;
         sAdmDate := P_AdmDate;
         sSetType := '';
         sMoniPrd := '';
         sEditId  := md_UserId;


         if (Trim(med_ActTime.Text) <> ':') then
         begin
            //-----------------------------------------
            // 삭제할 시간대별 기록일자(Actdate) 세팅
            //-----------------------------------------
            if  (DelChar(Trim(med_ActTime.Text),':') >= C_STARTTM) and
                (DelChar(Trim(med_ActTime.Text),':') <= '2359') then
            begin
               // 시작시간 ~ 23:59까지 당일, 2011.05.31 LSH
               t_DelDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date);
            end
            else if (DelChar(Trim(med_ActTime.Text),':') >= '0000') and
                    (DelChar(Trim(med_ActTime.Text),':') <= C_ENDTM) then
            begin
               //  00:00 ~ 종료시간까지 익일, 2011.05.31 LSH
               //  -->  00:00 (23:01~24:00)은, 화면 디스플레이 문제로 익일로 세팅.
               t_DelDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1);
            end;


            //----------------------------------------
            // 기록일자 및 측정시간 Assign
            //----------------------------------------
            AppendVariant(sActDate , t_DelDate);               // ActDate
            AppendVariant(sSetCode , Trim(med_ActTime.Text));  // ActTime

         end;
      end;



      //-----------------------------------------------
      // Execute Transaction
      //-----------------------------------------------
      RowNo := iCrect.InsertDayMonitorList(sType1, j);



      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         iCrect.Free;
         exit;
      end;


      iCrect.Free;


      // 화면 Refresh
      Refresh;


      stb_Message.Panels[0].Text := '모니터링 Time이 삭제되었습니다.';



      finally
         screen.Cursor := crDefault;
      end;

end;


//------------------------------------------------------------------------------
// ICU Note 입력취소
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_CancelClick(Sender: TObject);
begin
   // 1.1. Show Panel
   apn_Note.Visible := False;

   // 1.2. Clear Input Box
   me_Content.Clear;
end;


//------------------------------------------------------------------------------
// Test 버젼..(Visible = True로 놓고 24hour 초과 Data 넘겨지는 부분 확인가능 함 by LSH)
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_PrintDblClick(Sender: TObject);
begin
   asg_Print.Visible := False;
end;




//------------------------------------------------------------------------------
// [ICU 노트 병동간호기록 저장] Button OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.03
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_NrrecClick(Sender: TObject);
var
   RowNo, i, j  : Integer;
   iCrect       : HmdIcutot;
   sType1       : String;
   sIcuNoteCd   : String;   // NICU와 ICU 노트 항목Code 구분을 위한 flag, 2011.10.31 LSH
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;


   //---------------------------------------------------
   // Check
   //---------------------------------------------------
   if (Trim(ed_RecName.Text) = '') or (Trim(ed_RecDept.Text) = '') or (Trim(ed_RecId.Text) = '') then
   begin
      MessageBox(Self.Handle,
                 '작성자를 입력해 주십시오.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if (Trim(ed_Hour.Text) = '') or (Trim(ed_Min.Text) = '') then
   begin
      MessageBox(Self.Handle,
                 '작성시간을 입력해 주십시오.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if LengthByte(Trim(ed_Hour.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '작성시간은 두자리로 입력해 주십시오.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if LengthByte(Trim(ed_Min.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '작성분은 두자리로 입력해 주십시오.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if (Trim(me_Content.Text) = '') then
   begin
      MessageBox(Self.Handle,
                 '내용을 작성해주십시오.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if StrToint(ed_Hour.Text) > 23 then
   begin
      MessageBox(Self.Handle,
                 '시간을 다시 입력하시기 바랍니다.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      ed_Hour.Text := '';
      Exit;
   end;

   if StrToint(ed_Min.Text) > 59 then
   begin
      MessageBox(Self.Handle,
                 '분을 다시 입력하시기 바랍니다.',
                 '노트 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      ed_Min.Text := '';
      Exit;
   end;

   // 저장전 최종 Confirm
   if Application.MessageBox('작성하신 노트를 저장하시겠습니까?',
                             '병동간호기록 저장전 확인',
                             MB_OKCANCEL)
                             <> IDOK then exit;


   Screen.Cursor := crHourglass;

   try
      iCrect := HmdIcutot.Create;

      //---------------------------------------------------
      // Set Parameter Value : ICU 노트 병동간호기록 저장
      //---------------------------------------------------
      sType1 := '5';
      j      := 1;


      with iCrect do
      begin
         sPatno   := P_PatNo  ;
         sAdmDate := P_AdmDate;
         sSetType := '';
         sMoniPrd := '';
         sActDate := FormatDateTime('yyyymmdd', dtp_RecDate.Date);
         sActTime := ed_Hour.Text + ':' + ed_Min.Text;
         sNoteTxt := Trim(me_Content.Lines.Text);
         sNoteId  := Trim(ed_RecId.Text);
         sEditId  := md_UserId;

         // [EMR연계] 간호기록 자동발생 적용(NEW EMR) -2016.07.18 smpark
         sEmrFlag := G_EMRFLAG;
      end;



      //-----------------------------------------------
      // Execute Transaction
      //-----------------------------------------------
      RowNo := iCrect.InsertDayMonitorList(sType1, j);



      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         iCrect.Free;
         exit;
      end;


      iCrect.Free;


      // 저장후, 자동 Clear 추가 @ 2012.06.08 LSH (이형숙 요청)
      me_Content.Clear;

      stb_Message.Panels[0].Text := '[노트]가 병동간호기록에 저장되었습니다.';



      // NOTE 항목Code 분기, 2011.10.31 LSH
      if (P_NicuFlag = 'Y') then
         sIcuNoteCd := 'NA02'
      else if (P_NicuFlag = 'S') then
      // SU 간호기록지 항목Code 분기 @ 2012.04.26 LSH
         sIcuNoteCd := 'SA02'
      else
         sIcuNoteCd := 'MA02';



      // ICU 노트 작성항목 Display, 2011.08.03 LSH
      if (ed_Min.Text = '00') then
      begin
         // 노트기록이 정각 입력이면, 해당 Time 리스트에 저장.
         for i := 2 to asg_IcuMon.ColCount do
         begin
            if (CopyByte(asg_IcuMon.Cells[i, 0], 1, 2) = ed_Hour.Text) then
            begin
               asg_IcuMon.Cells[i,1] := '☎';

               // Grid에 해당 Cell내역 임시저장
               GetSaveList(sIcuNoteCd,
                           asg_IcuMon.Cells[i,0],
                           asg_IcuMon.Cells[i,1],
                           '',
                           '');
            end
         end;
      end
      else
      begin
         // 노트기록이 정각입력이 아니면, 해당 Time 리스트 +1 에 저장.
         for i := 2 to asg_IcuMon.ColCount do
         begin
            if (Trim(ed_Hour.Text) <> '06') and (CopyByte(asg_IcuMon.Cells[i, 0], 1, 2) = ed_Hour.Text) then
            begin
               asg_IcuMon.Cells[i+1,1] := '☎';

               // Grid에 해당 Cell내역 임시저장
               GetSaveList(sIcuNoteCd,
                           asg_IcuMon.Cells[i+1,0],
                           asg_IcuMon.Cells[i+1,1],
                           '',
                           '');
            end
            // 06:01 ~ 06:59 입력은 당일 07:00 Time 리스트에 저장, 2011.09.01 LSH
            else if (Trim(ed_Hour.Text) = '06') and (CopyByte(asg_IcuMon.Cells[i, 0], 1, 2) = '07') then
            begin
               asg_IcuMon.Cells[i, 1] := '☎';

               // Grid에 해당 Cell내역 임시저장
               GetSaveList(sIcuNoteCd,
                           asg_IcuMon.Cells[i,0],
                           asg_IcuMon.Cells[i,1],
                           '',
                           '');
            end;

         end;
      end;


      // 자동 저장
      bbt_MoniSaveClick(Sender);


      finally
         screen.Cursor := crDefault;
      end;

end;



//------------------------------------------------------------------------------
// [ICU 노트 병동간호기록 조회] Button OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.03
//------------------------------------------------------------------------------
procedure TMDN110FM.SelNote(in_ActDate, in_ActTime : String);
var
   sType1, sType2, sType3, sType4, sType5, sType6, sType7 : String;
   RowNo, i, CurRow : Integer;
   iNrect : HmdNrrect;
   sActDate, sFromActTime, sToActTime : String;
   sIcuNoteCd : String;
begin
   //------------------------------------------------------------
   // 1. Initialization
   //------------------------------------------------------------
   CurRow := 0;

   asg_Note.RowCount   := 2;
   asg_Note.Cells[0,1] := '';
   asg_Note.Cells[1,1] := '';
   asg_Note.Cells[2,1] := '';



   //------------------------------------------------------------
   // 2. Set Parameter
   //------------------------------------------------------------

   // 전체 노트 보기
   if (in_ActTime = 'ALL') then
   begin
      sType1       := '6';
      sActDate     := in_ActDate;
      sFromActTime := '06:01';
      sToActTime   := '06:00';
   end
   else
   // 시간대별 노트 보기
   begin
      // 전일 23:01 ~ 자정(00:00)
      if (CopyByte(in_ActTime, 1, 2) = '00') then
      begin
         sType1       := '5';
         sActDate     := in_ActDate;
         sFromActTime := '23:01';
         sToActTime   := in_ActTime;
      end
      else if (CopyByte(in_ActTime, 1, 2) >= '11') and (CopyByte(in_ActTime, 1, 2) <= '23') then // 두자리수 시간대
      begin
         sType1       := '4';
         sActDate     := in_ActDate;
         sFromActTime := IntToStr(StrToInt(CopyByte(in_ActTime, 1, 2)) - 1) + ':01';
         sToActTime   := in_ActTime;
      end
      else // 한자리수 시간대 (앞에 0을 붙여줘야함)
      begin
         sType1       := '4';
         sActDate     := in_ActDate;
         sFromActTime := '0' + IntToStr(StrToInt(CopyByte(in_ActTime, 1, 2)) - 1) + ':01';
         sToActTime   := in_ActTime;
      end;
   end;


   // NOTE 항목Code 분기, 2011.10.31 LSH
   // SU 간호기록지 분기 @ 2012.04.21 LSH
   if (P_NicuFlag = 'Y') then
      sIcuNoteCd := 'NA02'
   else if (P_NicuFlag = 'S') then
      sIcuNoteCd := 'SA02'
   else
      sIcuNoteCd := 'MA02';


   //------------------------------------------------------------
   // 3. ICU 노트 병동간호기록 조회
   //------------------------------------------------------------
   Screen.Cursor := crHourglass;


   try
      iNrect := HmdNrrect.Create;


      //-------------------------------------------------
      // Set Parameter (추가)
      //-------------------------------------------------
      sType2 := P_PatNo;
      sType3 := sActDate;
      sType4 := sFromActTime;
      sType5 := sToActTime;
      sType6 := DelChar(P_AdmDate,'-');
      sType7 := G_Locate;



      //-------------------------------------------------
      // Load Data
      //-------------------------------------------------
      RowNo := iNrect.ListNrrect(sType1, sType2, sType3, sType4, sType5, sType6, sType7, '');



      // System Error
      if (RowNo = -1) then
      begin
         iNrect.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;



      if (RowNo = 0) then
      begin
         iNrect.Free;

         // 작성된 ICU 노트내역이 모두 삭제되어 없는경우, 해당 시간대 NOTE 항목 Clear, 2011.08.10 LSH
         asg_IcuMon.Cells[asg_IcuMon.Col,1] := '';

         // Grid에 해당 Cell 변동내역 임시저장
         GetSaveList(sIcuNoteCd,
                     asg_IcuMon.Cells[asg_IcuMon.Col,0],
                     asg_IcuMon.Cells[asg_IcuMon.Col,1],
                     '',
                     '');


         Exit;
      end;



      //-------------------------------------------------
      // Display Data
      //-------------------------------------------------
      with asg_Note, iNrect do
      begin

         asg_Note.RowCount := RowNo + 1;

         for i := 0 to RowNo - 1 do
         begin
            Cells[0 , CurRow+1] := sActDate[i] + ' ' + sActTime[i];              // 일시
            Cells[1 , CurRow+1] := ReplaceStr((Trim(sActTxt[i])),'&','＆');      // 간호기록 내용
            Cells[2 , CurRow+1] := Trim(sExecnm[i]);                             // 기록 간호사 명


            // Hidden Information
            Cells[3 , CurRow+1] := Trim(sActseqno[i]);   // 기록 일련번호
            Cells[4 , CurRow+1] := Trim(sActTxt  [i]);   // 기록 내용
            Cells[5 , CurRow+1] := Trim(sExecid  [i]);   // 기록 간호사ID
            Cells[6 , CurRow+1] := sActDate[i];          // 기록일자
            Cells[7 , CurRow+1] := sActTime[i];          // 기록시간
            Cells[8 , CurRow+1] := sActDate[i];          // 기록일자
            Cells[9 , CurRow+1] := Trim(sDeptcd[i]);     // 병동
            Cells[10, CurRow+1] := Trim(sExecnm[i]);     // 기록 간호사명
            Cells[11, CurRow+1] := sMedtime[i];          // 진료일시(응급환자)


            AutoSizeRow(CurRow+1);


            // 내용이 많을경우 선택 안되는 문제 수정
            if RowHeights[CurRow+1] > 500 then
            begin
               RowHeights[CurRow+1] := 500;
            end;


            Inc(CurRow);


         end;

         Free;

      end;

   finally
      Screen.Cursor := crDefault;
   end;


end;




//------------------------------------------------------------------------------
// [ICU 노트 작성자정보 확인] Button OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.03
//------------------------------------------------------------------------------
procedure TMDN110FM.ed_RecNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i, RowNo : Integer;
begin
   ed_RecDept.Clear;
   ed_RecId.Clear;

   if key <> 13 then
      Exit;

   if trim(ed_RecName.Text) = '' then
   begin
      MessageBox(Self.Handle,
                 '작성자 이름을 입력하세요.',
                 '작성자 정보 확인',
                 MB_OK + MB_ICONINFORMATION);

      ed_RecName.SetFocus;

      Exit;
   end;

   if HLength(trim(ed_RecName.Text)) < 2 then
   begin
      MessageBox(Self.Handle,
                 '사용자명을 2글자이상 입력하세요.',
                 '작성자 정보 확인',
                 MB_OK + MB_ICONINFORMATION);

      ed_RecName.setfocus;

      exit;
   end;

   Screen.Cursor := crHourglass;

   try
      mdInsamt := HmdInsamt.Create;

      RowNo    := mdInsamt.ListUserInfo('Y','2',(ed_RecName.Text),G_LOCATE);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdInsamt.Free;
         ShowErrMsg();
         Exit;
      end;


      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdInsamt.Free;

         ShowMessage('해당 사용자는 존재하지 않습니다. 사용자명을 다시 입력하십시오.');

         ed_RecName.Clear;
         ed_RecDept.Clear;
         ed_RecId.Clear;
         Exit;
      end;

      if RowNo = 1 then
      begin
         ed_RecName.Text := mdInsamt.sEmpNm[0];
         ed_RecDept.Text := mdInsamt.sDeptCd[0];
         ed_RecId.Text   := mdInsamt.sEmpNo[0];
         pn_UserList.Visible := False;
      end
      else
      begin
         ugd_UserList.Clear;
         ugd_UserList.RowCount := RowNo + 1;

         for i := 0 to RowNo - 1 do
         begin
            ugd_UserList.Cells[0,i+1] := mdInsamt.sEmpNm[i];
            ugd_UserList.Cells[1,i+1] := mdInsamt.sComCdNm[i];
            ugd_UserList.Cells[2,i+1] := mdInsamt.sDeptNm[i];
            ugd_UserList.Cells[3,i+1] := mdInsamt.sDeptCd[i];
            ugd_UserList.Cells[4,i+1] := mdInsamt.sEmpNo[i];
         end;

         pn_UserList.Top     := 75;
         pn_UserList.Left    := 177;
         pn_UserList.Visible := True;

      end;

      mdInsamt.Free;

   finally
      screen.Cursor  :=  crDefault;
   end;

end;



// ICU 노트 작성자 정보 선택
procedure TMDN110FM.ugd_UserListDblClick(Sender: TObject);
begin
   ed_RecName.Text     := ugd_UserList.Cells[0,ugd_UserList.Row];
   ed_RecDept.Text     := ugd_UserList.Cells[3,ugd_UserList.Row];
   ed_RecId.Text       := ugd_UserList.Cells[4,ugd_UserList.Row];
   pn_UserList.Visible := False;
end;





//------------------------------------------------------------------------------
// ICU 통합 간호기록지 자동스캔 서식출력
// - 환자별 출력
//
// Author : Lee, Se-Ha
// Date   : 2011.09.09
//------------------------------------------------------------------------------
procedure TMDN110FM.AutoScanPrint;
begin
   //---------------------------------------------------
   // 1. 폼 기본정보
   //---------------------------------------------------
   SetFormInfo;


   //---------------------------------------------------
   // 2. 환자기본정보
   //---------------------------------------------------
   SetPatInfo('SELECTED');

end;



//------------------------------------------------------------------------------
// ICU 노트 - 해당 시간대 V/S 가져오기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelVsClick(Sender: TObject);
var
   sTempVs : String;
   i       : Integer;
begin
   // 초기화
   sTempVs := '';

   // NICU 간호기록지 오픈 분기, 2011.10.27 LSH
   if (P_NicuFlag = 'Y') then
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do // C_Chart_Cnt로 하지 않고.. 그냥 하드코딩 by LSH -_-;
         begin
            if (Cells[Col,i-1] <> '') and
               (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'NB')  // 활력징후 모든 항목
               then
            begin
               sTempVs := sTempVs + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempVs := sTempVs + #13#10;
            end;
         end;
      end;
   end
   else
   // 일반 ICU 통합 기록지
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do // C_Chart_Cnt로 하지 않고.. 그냥 하드코딩 by LSH -_-;
         begin
            if (Cells[Col,i-1] <> '') and
               ((sl_CodeList.Strings[i-2] = 'MA03') or      // SpO2
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'MB') // 활력징후 나머지 모든 항목
                )  then
            begin
               sTempVs := sTempVs + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempVs := sTempVs + #13#10;
            end;
         end;
      end;
   end;


   // V/S 유효성 체크
   if (sTempVs = '') then
   begin
      MessageBox(Self.Handle,
                 '해당 시간대에 입력된 V/S가 존재하지 않습니다.',
                 '노트 V/S 조회',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU 노트 메모창에 V/S 복사
      me_Content.Lines.Text := me_Content.Lines.Text + sTempVs;



end;



//------------------------------------------------------------------------------
// ICU 노트 - 예문 모음 조회
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_TemplSelClick(Sender: TObject);
var
   FForm : TForm;
begin
   FForm := BplFormCreate('MDB260F2');

   SetBplStrProp('MDB260F2'  , 'prop_SetItem','ICUNO'      ); // ICU 노트 예문항목
   SetBplClassProp('MDB260F2', 'prop_Form'   , Self        );
   SetBplClassProp('MDB260F2', 'prop_Control', me_Content  );
   SetBplClassProp('MDB260F2', 'prop_Item1'  , me_Content  );

   FForm.FormStyle := fsStayOnTop;

   McomFormShow(FForm);
end;



//------------------------------------------------------------------------------
// ICU 노트 - 예문 등록창 열기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_TemplInsClick(Sender: TObject);
begin
   apn_InsTempl.Left    := 560;
   apn_InsTempl.Top     := 359;
   apn_InsTempl.Visible := True;

   sbt_SelVs.Enabled    := False;
   sbt_Nrrec.Enabled    := False;
   sbt_TemplSel.Enabled := False;
   sbt_TemplIns.Enabled := False;
   asg_IcuMon.Enabled   := False;

   rbt_Nrs.Checked      := True;

   ed_SetTitle.Clear;
   ed_SetTitle.SetFocus;
end;



//------------------------------------------------------------------------------
// ICU 노트 - 예문 등록
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_SetInsertClick(Sender: TObject);
var
   Cnt : LongInt;
   SetType, SetTitle, Contents, EditId, EditIp : String;
begin
   // 예문제목명을 입력하지 않은 경우, Exit
   if Trim(ed_SetTitle.Text) = '' then
   begin
       ShowMessage('예문제목을 입력하세요.');
       ed_SetTitle.SetFocus;
       Exit;
   end;

   // 등록할 내용을 입력하지 않은 경우, Exit
   if Trim(me_Content.Text) = '' then
   begin
       ShowMessage('등록할 내용을 입력하세요.');
       Exit;
   end;


   // 예문모음 Insert 처리
   Screen.Cursor := crHourGlass;

   try
      mdTemplt := HmdTemplt.Create;

      SetTitle := ed_SetTitle.Text;   // 예문제목

      if rbt_Nrs.Checked then
      begin
         if md_UserId <> '' then
            SetType := md_UserId
         else
            SetType := G_UserId;
      end
      else if rbt_Ward.Checked then
      begin
         if md_DeptCd <> '' then
            SetType  := md_DeptCd
         else
            SetType  := G_DePtcd;
      end;


      Contents := me_Content.Lines.Text;


      if md_Userid <> '' then
         EditId := md_UserId
      else
         EditId := G_UserId;

      EditIp    := G_USERIP;                    // 수정자IP

      with mdTemplt do
      begin
         AppendVariant(sFlag, 'I');
         AppendVariant(iSetseqno, '0');
         AppendVariant(sSetitem , 'ICUNO');     // 모음/예문종목
         AppendVariant(sSettype , SetType);     // SET/모음구분
         AppendVariant(sTitle   , SetTitle);    // 제목/예문명
         AppendVariant(sContents, Contents);    // 내용
         AppendVariant(sContent2, '');          // 내용2
         AppendVariant(sContent3, '');          // 내용3
         AppendVariant(sContent4, '');          // 내용4
         AppendVariant(sContent5, '');          // 내용5
         AppendVariant(sContent6, '');          // 내용6
         AppendVariant(sEditid  , EditId);      // 수정자 ID
         AppendVariant(sEditip  , EditIp);      // 수정자 IP
      end;

      Cnt := mdTemplt.NREXL_I1;

      if (Cnt <> 1) then
      begin
         mdTemplt.Free;
         Exit;
      end;

      mdTemplt.Free;



   finally
      Screen.Cursor := crDefault;
   end;


   // 예문저장 Panel Invisible
   bbt_SetExitClick(Sender);

end;



//------------------------------------------------------------------------------
// ICU 노트 - 예문 등록창 닫기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_SetExitClick(Sender: TObject);
begin
   apn_InsTempl.Visible := False;

   sbt_SelVs.Enabled    := True;
   sbt_Nrrec.Enabled    := True;
   sbt_TemplSel.Enabled := True;
   sbt_TemplIns.Enabled := True;
   asg_IcuMon.Enabled   := True;
end;




//------------------------------------------------------------------------------
// [팝업메뉴 활성화] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.Popup_ActPopup(Sender: TObject);
begin
   //-------------------------------------------------------
   // NICU 간호기록지 오픈 분기, 2011.10.27 LSH
   //-------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      if (asg_IcuMon.Col >= 2) and
         (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'NA07') then          // [BST 항목] Row에서만 마우스 팝업 활성화
      begin
         // Grid안에서만 활성화 가능.
         mi_InsBsAct.Visible  := True;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;
      end
      else
      begin
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;

         Exit;
      end;
   end
   else if (P_NicuFlag = 'S') then
   //-------------------------------------------------------
   // Stroke Unit 간호기록지 @ 2012.04.24 LSH
   //-------------------------------------------------------
   begin
      if (asg_IcuMon.Col >= 2) and
         (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'SA03') then          // [BST 항목] Row에서만 마우스 팝업 활성화
      begin
         // Grid안에서만 활성화 가능.
         mi_InsBsAct.Visible  := True;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := True;
         mi_InsIoData.Visible := False;
      end
      else if (asg_IcuMon.Col >= 2) and
              (sl_CodeList.Strings[asg_IcuMon.Row-1] <> 'SF24') and     // 대변(g) 항목은 조회대상 제외 @ 2012.06.01 (이형숙)
              ((CopyByte(sl_CodeList.Strings[asg_IcuMon.Row-1], 1, 2) = 'SD')  or
               (CopyByte(sl_CodeList.Strings[asg_IcuMon.Row-1], 1, 2) = 'SF')
               ) then                                                   // [I/O 항목] Row에서만 마우스 팝업 활성화
      begin
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := True;
      end
      else
      begin
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;

         Exit;
      end;
   end
   else
   //-------------------------------------------------------
   // ICU 통합 기록지
   //-------------------------------------------------------
   begin
      if (asg_IcuMon.Col >= 2) and
         (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'MA07') then          // [BST 항목] Row에서만 마우스 팝업 활성화
      begin
         // Grid안에서만 활성화 가능.
         mi_InsBsAct.Visible  := True;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := True;
         mi_InsIoData.Visible := False;
      end
      else if (asg_IcuMon.Col >= 2) and
              (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'MB12') then     // [CVP(mmH2O) 항목] Row에서만 마우스 팝업 활성화
      begin
         // Grid안에서만 활성화 가능.
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := True;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;
      end
      else if (asg_IcuMon.Col >= 2) and
              ((sl_CodeList.Strings[asg_IcuMon.Row-1] >= 'MB13')  and
               (sl_CodeList.Strings[asg_IcuMon.Row-1] <= 'MB17')) then   // [활력징후 가변항목] Row에서만 마우스 팝업 활성화
      begin
         // Grid안에서만 활성화 가능.
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := True;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;
      end
      else
      begin
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;

         Exit;
      end;
   end;

end;


//------------------------------------------------------------------------------
// [B/S 수행예정 등록] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.18
//------------------------------------------------------------------------------
procedure TMDN110FM.mi_InsBsActClick(Sender: TObject);
var
   in_ActTitle, in_ActFlag, in_ActRemark : String;
   in_SetCode,  in_ActTime : String;
begin

   in_ActTitle  := '';
   in_ActFlag   := '';
   in_ActRemark := '';


   with asg_IcuMon do
   begin
      // 변수 assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := 'BST';
      in_ActFlag   := 'C';
      in_ActRemark := mi_InsBsAct.Caption;


      // 실시간 Cell 데이터 Client Data-Set에 업데이트 (임시저장)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;

end;



//------------------------------------------------------------------------------
// [수행예정 Cell 색상지정] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.18
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
   bExist : Boolean;
begin

   if (ACol > 0) and  (ARow > 1) then
   begin
      // 입력속성 Client Data-Set중에서, SetCode별 1Row를 검색.
      bExist := cds_SaveItem.Locate('setcode;acttime',
                                    VarArrayOf([sl_CodeList.Strings[ARow-1], asg_IcuMon.Cells[ACol,0]]),
                                    [loCaseInsensitive]);


      // 검색한 1개의 Row에서,
      if bExist then
      begin
         // 셀 Int'f 정보가 수행예정 등록('C')이면, Color 지정.
         if cds_SaveItem.FindField('intflag').AsString = 'C' then  // BST
         begin
             asg_IcuMon.Canvas.Brush.Color := $0070D3DF;
             asg_IcuMon.Canvas.FillRect(Rect);
         end;

         if cds_SaveItem.FindField('intflag').AsString = 'D' then  // CVP
         begin
             asg_IcuMon.Canvas.Brush.Color := clTeal;
             asg_IcuMon.Canvas.FillRect(Rect);
         end;


         if cds_SaveItem.FindField('intflag').AsString = 'E' then  // VS 가변항목
         begin
             asg_IcuMon.Canvas.Brush.Color := $00364EE1;
             asg_IcuMon.Canvas.FillRect(Rect);
         end;
      end;
   end;



end;


//------------------------------------------------------------------------------
// [사용보류] 수행예정 등록창 닫기
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_ActExitClick(Sender: TObject);
begin
   apn_InsActing.Visible := False;

   ed_ActRemark.Clear;
   Combx_ActList.ItemIndex := -1;
end;


//------------------------------------------------------------------------------
// [사용보류] 특기사항 다이나믹 관리 문제.. LSH
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_InsActingClick(Sender: TObject);
var
   in_ActTitle, in_ActFlag, in_ActRemark : String;
   in_SetCode,  in_ActTime : String;
begin
   in_ActTitle  := '';
   in_ActFlag   := '';
   in_ActRemark := '';


   with asg_IcuMon do
   begin
      // 변수 assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];

      if (Combx_ActList.ItemIndex = 1) then       // 특기사항 입력
      begin
         in_ActTitle  := 'ACT';
         in_ActFlag   := 'C';
         in_ActRemark := Trim(ed_ActRemark.Text);
      end
      else if (Combx_ActList.ItemIndex = 2) then  // B/S 측정
      begin
         in_ActTitle  := 'BST';
         in_ActFlag   := 'B';
         in_ActRemark := Combx_ActList.Items.Strings[Combx_ActList.ItemIndex];
      end;

      // 실시간 Cell 데이터 Client Data-Set에 업데이트 (임시저장)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;
end;



//------------------------------------------------------------------------------
// [수행예정 해제] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.18
//------------------------------------------------------------------------------
procedure TMDN110FM.mi_DelActClick(Sender: TObject);
var
   in_ActTitle, in_ActFlag, in_ActRemark : String;
   in_SetCode,  in_ActTime : String;
begin
   in_ActTitle  := '';
   in_ActFlag   := '';
   in_ActRemark := '';


   with asg_IcuMon do
   begin
      // 변수 assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := '';
      in_ActFlag   := '';
      in_ActRemark := '';


      // 실시간 Cell 데이터 Client Data-Set에 업데이트 (임시저장)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;

end;



//------------------------------------------------------------------------------
// ICU 노트 - 해당 시간대 인공호흡기 가져오기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.24
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelRespClick(Sender: TObject);
var
   sTempResp : String;
   i       : Integer;
begin
   // 초기화
   sTempResp := '';


   // NICU 간호기록지 오픈 분기, 2011.10.27 LSH
   if (P_NicuFlag = 'Y') then
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 11) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'NC')   // 인공호흡기(NICU) 하위항목 모두 포함
                )  then
            begin
               sTempResp := sTempResp + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempResp := sTempResp + #13#10;
            end;
         end;
      end;
   end
   else
   // 일반 ICU 통합 기록지
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 22) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'MC')   // 인공호흡기 하위항목 모두 포함
                )  then
            begin
               sTempResp := sTempResp + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempResp := sTempResp + #13#10;
            end;
         end;
      end;
   end;



   // V/S 유효성 체크
   if (sTempResp = '') then
   begin
      MessageBox(Self.Handle,
                 '해당 시간대에 입력된 인공호흡내역이 존재하지 않습니다.',
                 'ICU 노트 인공호흡기 조회',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU 노트 메모창에 인공호흡내역 복사
      me_Content.Lines.Text := me_Content.Lines.Text + sTempResp;

end;


//------------------------------------------------------------------------------
// [CVP 수행예정 등록] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.24
//------------------------------------------------------------------------------
procedure TMDN110FM.mi_InsCvpActClick(Sender: TObject);
var
   in_ActTitle, in_ActFlag, in_ActRemark : String;
   in_SetCode,  in_ActTime : String;
begin

   in_ActTitle  := '';
   in_ActFlag   := '';
   in_ActRemark := '';


   with asg_IcuMon do
   begin
      // 변수 assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := 'CVP';
      in_ActFlag   := 'D';
      in_ActRemark := mi_InsCvpAct.Caption;


      // 실시간 Cell 데이터 Client Data-Set에 업데이트 (임시저장)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;

end;


//------------------------------------------------------------------------------
// [활력징후 가변항목 수행예정 등록] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.24
//------------------------------------------------------------------------------
procedure TMDN110FM.mi_InsVsActClick(Sender: TObject);
var
   in_ActTitle, in_ActFlag, in_ActRemark : String;
   in_SetCode,  in_ActTime : String;
begin

   in_ActTitle  := '';
   in_ActFlag   := '';
   in_ActRemark := '';


   with asg_IcuMon do
   begin
      // 변수 assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := 'VS';
      in_ActFlag   := 'E';
      in_ActRemark := mi_InsVsAct.Caption;


      // 실시간 Cell 데이터 Client Data-Set에 업데이트 (임시저장)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);
   end;

end;



//------------------------------------------------------------------------------
// BT 항목 자동소수점 계산
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin

   // NICU 간호기록지 오픈 분기, 2011.10.27 LSH
   if (P_NicuFlag = 'Y') then
   begin
      // 활력징후 BT 항목 (NICU)
      if (sl_CodeList.Strings[ARow-1] = 'NB03') then
         Value := '##.#';
   end
   else if (P_NicuFlag = 'S') then
   // SU 간호기록지 분기 @ 2012.04.24 LSH
   begin
      // 활력징후 BT 항목 (SU)
      if (sl_CodeList.Strings[ARow-1] = 'SB05') then
         Value := '##.#';
   end
   else
   begin
      // 활력징후 BT 항목 (ICU)
      if (sl_CodeList.Strings[ARow-1] = 'MB04') then
         Value := '##.#';
   end;


end;




//------------------------------------------------------------------------------
// ICU 노트 - 해당 시간대 BST/BST 처치 가져오기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.26
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelBstClick(Sender: TObject);
var
   sTempBst : String;
   i : Integer;
begin
   // 초기화
   sTempBst := '';


   // NICU 간호기록지 오픈
   // 기존 ICU 기록지와 SETCODE 동일, 2011.10.27 LSH
   with asg_IcuMon do
   begin
      for i := 2 to RowCount - 1 do
      begin
         if (Cells[Col,i-1] <> '') and
            (
             (sl_CodeList.Strings[i-2] = 'MA07') or
             (sl_CodeList.Strings[i-2] = 'MA08') or     // [ICU]  BST ~ BST처치 모두 포함
             (sl_CodeList.Strings[i-2] = 'NA07') or
             (sl_CodeList.Strings[i-2] = 'NA08')        // [NICU] BST ~ BST처치 모두 포함
             )  then
         begin
            sTempBst := sTempBst + Cells[1, i-1] + ': ' + Cells[Col, i-1];
            sTempBst := sTempBst + #13#10;
         end;
      end;
   end;




   // BST 유효성 체크
   if (sTempBst = '') then
   begin
      MessageBox(Self.Handle,
                 '해당 시간대에 입력된 BST/BST처치 내역이 존재하지 않습니다.',
                 'ICU 노트 BST 조회',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU 노트 메모창에 BST 복사
      me_Content.Lines.Text := me_Content.Lines.Text + sTempBst;


end;



//------------------------------------------------------------------------------
// ICU 노트 - 해당 시간대 산소요법 가져오기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.26
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelO2Click(Sender: TObject);
var
   sTempO2 : String;
   i : Integer;
begin
   // 초기화
   sTempO2 := '';

   //----------------------------------------------------
   // NICU 간호기록지 오픈 분기, 2011.10.27 LSH
   //----------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 06) and
                (StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) <= 10) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'NC')                 // 산소요법(NICU) 하위항목 모두 포함
                )  then
            begin
               sTempO2 := sTempO2 + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempO2 := sTempO2 + #13#10;
            end;
         end;
      end;
   end
   else
   //----------------------------------------------------
   // ICU 기록지
   //----------------------------------------------------
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 18) and
                (StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) <= 21) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'MC')                 // 산소요법 하위항목 모두 포함
                )  then
            begin
               sTempO2 := sTempO2 + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempO2 := sTempO2 + #13#10;
            end;
         end;
      end;
   end;


   //----------------------------------------------------
   // 산소요법 유효성 체크
   //----------------------------------------------------
   if (sTempO2 = '') then
   begin
      MessageBox(Self.Handle,
                 '해당 시간대에 입력된 산소요법 내역이 존재하지 않습니다.',
                 'ICU 노트 산소요법 조회',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU 노트 메모창에 산소요법 복사
      me_Content.Lines.Text := me_Content.Lines.Text + sTempO2;



end;




//------------------------------------------------------------------------------
// [ICU 메인화면 정보세팅]
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.SetFormInfo;
var
   systime : TDateTime;
begin
   //---------------------------------------------------------------
   // 1. 초기화
   //---------------------------------------------------------------
   GetSysDate(systime);



   //---------------------------------------------------------------
   // 1-1. 작성일자 초기화
   //---------------------------------------------------------------
   // [병동기록지출력/의무기록 자동서식스캔] 호출시, 넘겨준 기록일자 Set, 2011.07.15 LSH
   if (P_RgtDate <> '') then
   begin
       dtp_RgtDate.Date := StrToDate(P_RgtDate);

       // ICU Note 기간별 조회 -2014.12.22 smpark
       dtp_Fromdate.Date := systime - 6;
       dtp_Todate.Date   := systime;
   end
   else
   // 일반 Formshow시, 현재 시각을 기준으로 기록일자 Set.
   begin
      if  (
          (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
          (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
          ) then
      begin
         dtp_RgtDate.Date := systime;

         // ICU Note 기간별 조회 -2013.05.15 smpark
         dtp_Fromdate.Date := systime - 6;
         dtp_Todate.Date   := systime;

         // CRRT 간호기록 -2013.08.23 smpark
         dtb_Crrt.Date     := systime;
      end
      else if (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
              (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
      begin
         dtp_RgtDate.Date := systime - 1;

         // ICU Note 기간별 조회 -2013.05.15 smpark
         dtp_Fromdate.Date := systime - 7;
         dtp_Todate.Date   := systime - 1;

         // CRRT 간호기록 -2013.08.23 smpark
         dtb_Crrt.Date     := systime - 1;
      end;
   end;



   //---------------------------------------------------------------
   // 1-2. 화면 기본 setting
   //---------------------------------------------------------------
   // SU(Stroke Unit) 간호기록지 개발에 따른 분기 @ 2012.04.21 LSH
   if (P_NicuFlag = 'S') then
   begin
      pn_If.Visible    := False;
      pn_If_Su.Visible := True;
      pn_If_Su.Parent  := pn_ICU;
      pn_If_Su.Align   := alTop;
      pn_List1.Align   := alClient;
   end
   else
   // ICU 통합 간호기록지 (N) + NICU 간호기록지 (Y) Set
   begin
      pn_If.Visible    := True;
      pn_If_Su.Visible := False;
      pn_If.Parent     := pn_ICU;
      pn_If.Align      := alTop;
      pn_List1.Align   := alClient;
   end;


   //---------------------------------------------------------------
   // 1-3. Form생성시, 그래프 + 그리드.
   //---------------------------------------------------------------
   asg_IcuMon.Height := 565;



   //---------------------------------------------------------------
   // NICU 간호기록지 Form Set, 2011.10.10 LSH
   //---------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      // 화면 U/I Color
      pn_Top.Color        := $00D58D53;
      cbx_Interface.Color := $00D58D53;
      cbx_Hemo.Color      := $00D58D53;
      cbx_Neuro.Color     := $00D58D53;
      cbx_Io.Color        := $00D58D53;

      // NICU 헤드라인 B/G Color
      lb_FPatInfo.Color   := $00D58D53;
      lb_PatInfo.Color    := $00D58D53;
      lb_RgtDate.Color    := $00D58D53;
      lb_FOpName.Color    := $00D58D53;
      lb_OpName.Color     := $00D58D53;
      lb_FDietName.Color  := $00D58D53;
      lb_DietName.Color   := $00D58D53;
      lb_ActTime.Color    := $00D58D53;
      lb_FDgpWks.Color    := $00D58D53;
      lb_DgpWks.Color     := $00D58D53;
      lb_NowWks.Color     := $00D58D53;
      lb_FWgt.Color       := $00D58D53;
      lb_Wgt.Color        := $00D58D53;
      lb_FHgt.Color       := $00D58D53;
      lb_Hgt.Color        := $00D58D53;
      lb_FHsize.Color     := $00D58D53;
      lb_Hsize.Color      := $00D58D53;
      lb_FCsize.Color     := $00D58D53;
      lb_Csize.Color      := $00D58D53;
      lb_FBsize.Color     := $00D58D53;
      lb_Bsize.Color      := $00D58D53;


      // NICU 헤드라인 Font Color
      lb_PatInfo.Font.Color   := $0076FFF3;
      lb_OpName.Font.Color    := $0076FFF3;
      lb_DietName.Font.Color  := $0076FFF3;
      lb_DgpWks.Font.Color    := $0076FFF3;
      lb_NowWks.Font.Color    := $0076FFF3;
      lb_Wgt.Font.Color       := $0076FFF3;
      lb_Hgt.Font.Color       := $0076FFF3;
      lb_Hsize.Font.Color     := $0076FFF3;
      lb_Csize.Font.Color     := $0076FFF3;
      lb_Bsize.Font.Color     := $0076FFF3;


      // NICU 헤드라인 레이아웃
      bv_Interface.Top    := 8;
      bv_Interface.Left   := 3;
      bv_Interface.Width  := 93;
      cbx_Interface.Top   := 16;
      cbx_Interface.Left  := 9;

      // Hemo
      bv_Hemo.Top         := 40;
      bv_Hemo.Left        := 3;
      cbx_Hemo.Top        := 47;
      cbx_Hemo.Left       := 9;

      // 의식.신경계.호흡기
      bv_Neuro.Top        := 8;
      bv_Neuro.Left       := 94;
      cbx_Neuro.Top       := 16;
      cbx_Neuro.Left      := 100;

      // 섭취량, 배설량
      bv_Io.Top           := 40;
      bv_Io.Left          := 121;
      cbx_Io.Top          := 47;
      cbx_Io.Left         := 127;

      // Refresh
      sbt_Refresh.Top     := 41;
      sbt_Refresh.Left    := 235;

      // 환자정보
      lb_FPatInfo.Top     := 10;
      lb_FPatInfo.Left    := 348;
      lb_PatInfo.Top      := 11;
      lb_PatInfo.Left     := 424;

      // 기록일자
      lb_RgtDate.Top      := 30;
      lb_RgtDate.Left     := 348;
      dtp_RgtDate.Top     := 25;
      dtp_RgtDate.Left    := 446;

      // 전일조회
      sbt_PrevDate.Top    := 25;
      sbt_PrevDate.Left   := 422;

      // 익일조회
      sbt_NextDate.Top    := 25;
      sbt_NextDate.Left   := 556;

      // 수술명
      lb_FOpName.Top      := 49;
      lb_FOpName.Left     := 348;
      lb_OpName.Top       := 49;
      lb_OpName.Left      := 425;

      // 식이
      lb_FDietName.Top    := 49;
      lb_FDietName.Left   := 1000;
      lb_DietName.Top     := 67;
      lb_DietName.Left    := 1000;

      // 시간레이블
      lb_ActTime.Top      := 11;
      lb_ActTime.Left     := 681;
      med_ActTime.Top     := 6;
      med_ActTime.Left    := 730;

      // 시간추가
      sbt_AddTime.Top     := 7;
      sbt_AddTime.Left    := 777;

      // 시간삭제
      sbt_DelTime.Top     := 7;
      sbt_DelTime.Left    := 809;

      // 재태주령
      lb_FDgpWks.Top      := 68;
      lb_FDgpWks.Left     := 348;
      lb_DgpWks.Top       := 68;
      lb_DgpWks.Left      := 459;
      lb_NowWks.Top       := 68;
      lb_NowWks.Left      := 508;

      // 체중
      lb_FWgt.Caption     := '▣체중(g):';
      lb_FWgt.Top         := 32;
      lb_FWgt.Left        := 681;
      lb_Wgt.Top          := 33;
      lb_Wgt.Left         := 756;

      // 신장
      lb_FHgt.Top         := 50;
      lb_FHgt.Left        := 681;
      lb_Hgt.Top          := 51;
      lb_Hgt.Left         := 756;

      // 두위
      lb_FHsize.Top       := 32;
      lb_FHsize.Left      := 797;
      lb_Hsize.Top        := 32;
      lb_Hsize.Left       := 873;

      // 흉위
      lb_FCsize.Top       := 50;
      lb_FCsize.Left      := 797;
      lb_Csize.Top        := 50;
      lb_Csize.Left       := 873;

      // 복위
      lb_FBsize.Top       := 68;
      lb_FBsize.Left      := 797;
      lb_Bsize.Top        := 68;
      lb_Bsize.Left       := 873;


      // NICU 레이블 Setting
      lb_FDietName.Visible := False;
      lb_DietName.Visible  := False;
      lb_FDgpWks.Visible   := True;
      lb_DgpWks.Visible    := True;
      lb_NowWks.Visible    := True;
      lb_FWgt.Visible      := True;
      lb_Wgt.Visible       := True;
      lb_FHgt.Visible      := True;
      lb_Hgt.Visible       := True;
      lb_FHsize.Visible    := True;
      lb_Hsize.Visible     := True;
      lb_FCsize.Visible    := True;
      lb_Csize.Visible     := True;
      lb_FBsize.Visible    := True;
      lb_Bsize.Visible     := True;


      // 메인 flowsheet
      asg_IcuMon.FixedColor     := $00D58D53;
      Chr_Vs.Gradient.EndColor  := $00D58D53;


      // 병동별 환자 List
      pn_PatList.Color          := $00D58D53;
      ugd_PatList.Color         := $00D58D53;
      ugd_PatList.GridRowColor  := $00F1D9C5;
      apn_PatList.Caption.Color := $00D58D53;


      // 상태 bar
      pn_Loading.Color          := $00D58D53;
      ani_setuser.Color         := $00D58D53;
      lb_LoadingBar.Color       := $00D58D53;


      // 인터페이스 측정주기
      lb_MoniPrd.Color          := $00D58D53;


      // NICU 환자리스트, 2011.11.22 LSH
      apn_PatList.Top           := 85;
      apn_PatList.Left          := 962;


      // 화면제목
      Self.Caption              := '[MDN110FM] NICU 간호기록지' ;
   end
   else if (P_NicuFlag = 'S') then
   //---------------------------------------------------------------------------
   // Stroke Unit 간호기록지 Form Set @ 2012.04.21 LSH
   //---------------------------------------------------------------------------
   begin
      // 화면 U/I Color
      pn_Top.Color        := $0046C1E9; //$000EB7D7;
      cbx_Interface.Color := $0046C1E9; //$000EB7D7;
      cbx_Hemo.Color      := $0046C1E9; //$000EB7D7;
      cbx_Neuro.Color     := $0046C1E9; //$000EB7D7;
      cbx_Io.Color        := $0046C1E9; //$000EB7D7;

      // SU 헤드라인 B/G Color
      lb_FPatInfo.Color   := $0046C1E9;
      lb_PatInfo.Color    := $0046C1E9;
      lb_RgtDate.Color    := $0046C1E9;
      lb_FOpName.Color    := $0046C1E9;
      lb_OpName.Color     := $0046C1E9;
      lb_FDietName.Color  := $0046C1E9;
      lb_DietName.Color   := $0046C1E9;
      lb_ActTime.Color    := $0046C1E9;
      lb_FDgpWks.Color    := $0046C1E9;
      lb_DgpWks.Color     := $0046C1E9;
      lb_NowWks.Color     := $0046C1E9;
      lb_FWgt.Color       := $0046C1E9;
      lb_Wgt.Color        := $0046C1E9;
      lb_FHgt.Color       := $0046C1E9;
      lb_Hgt.Color        := $0046C1E9;
      lb_FHsize.Color     := $0046C1E9;
      lb_Hsize.Color      := $0046C1E9;
      lb_FCsize.Color     := $0046C1E9;
      lb_Csize.Color      := $0046C1E9;
      lb_FBsize.Color     := $0046C1E9;
      lb_Bsize.Color      := $0046C1E9;

      // SU 헤드라인 레이아웃
      bv_Interface.Top    := 8;
      bv_Interface.Left   := 3;
      bv_Interface.Width  := 69;
      cbx_Interface.Top   := 16;
      cbx_Interface.Left  := 9;

      // Hemo
      bv_Hemo.Top         := 8;
      bv_Hemo.Left        := 70;
      cbx_Hemo.Top        := 16;
      cbx_Hemo.Left       := 76;

      // 의식.신경계.호흡기
      bv_Neuro.Top        := 8;
      bv_Neuro.Left       := 188;
      cbx_Neuro.Top       := 16;
      cbx_Neuro.Left      := 192;

      // 섭취량, 배설량
      bv_Io.Top           := 8;
      bv_Io.Left          := 328;
      cbx_Io.Top          := 16;
      cbx_Io.Left         := 334;

      // Refresh
      sbt_Refresh.Top     := 44;
      sbt_Refresh.Left    := 328;

      // 환자정보
      lb_FPatInfo.Top     := 10;
      lb_FPatInfo.Left    := 444;
      lb_PatInfo.Top      := 11;
      lb_PatInfo.Left     := 520;

      // 기록일자
      lb_RgtDate.Top      := 30;
      lb_RgtDate.Left     := 444;
      dtp_RgtDate.Top     := 25;
      dtp_RgtDate.Left    := 542;

      // 전일조회
      sbt_PrevDate.Top    := 25;
      sbt_PrevDate.Left   := 518;

      // 익일조회
      sbt_NextDate.Top    := 25;
      sbt_NextDate.Left   := 652;

      // 진단명 (SU 기록지만 진료 Main의 주진단 가져옴)
      lb_FOpName.Top      := 50;
      lb_FOpName.Left     := 444;
      lb_FOpName.Caption  := '▣진 단 명:';
      lb_OpName.Top       := 50;
      lb_OpName.Left      := 520;

      // 식이
      lb_FDietName.Top    := 67;
      lb_FDietName.Left   := 444;
      lb_DietName.Top     := 67;
      lb_DietName.Left    := 520;

      // 체중 @ 2012.05.04 추가 (이형숙)
      lb_FWgt.Caption     := '▣체중(kg):';
      lb_FWgt.Top         := 30;
      lb_FWgt.Left        := 843;
      lb_Wgt.Top          := 31;
      lb_Wgt.Left         := 920;

      // 신장 @ 2012.05.04 추가 (이형숙)
      lb_FHgt.Top         := 48;
      lb_FHgt.Left        := 843;
      lb_Hgt.Top          := 49;
      lb_Hgt.Left         := 920;

      // 복위 @ 2012.05.04 추가 (이형숙)
      lb_FBsize.Top       := 66;
      lb_FBsize.Left      := 843;
      lb_Bsize.Top        := 67;
      lb_Bsize.Left       := 920;

      // 시간레이블
      lb_ActTime.Top      := 30;
      lb_ActTime.Left     := 682;
      med_ActTime.Top     := 25;
      med_ActTime.Left    := 730;

      // 시간추가
      sbt_AddTime.Top     := 26;
      sbt_AddTime.Left    := 778;

      // 시간삭제
      sbt_DelTime.Top     := 26;
      sbt_DelTime.Left    := 810;

      // SU 기록지 레이블 Setting
      lb_FDietName.Visible := True;
      lb_DietName.Visible  := True;
      lb_FDgpWks.Visible   := False;
      lb_DgpWks.Visible    := False;
      lb_NowWks.Visible    := False;
      lb_FWgt.Visible      := True;
      lb_Wgt.Visible       := True;
      lb_FHgt.Visible      := True;
      lb_Hgt.Visible       := True;
      lb_FHsize.Visible    := False;
      lb_Hsize.Visible     := False;
      lb_FCsize.Visible    := False;
      lb_Csize.Visible     := False;
      lb_FBsize.Visible    := True;
      lb_Bsize.Visible     := True;


      // 메인 Flowsheet
      asg_IcuMon.FixedColor        := $0046C1E9;
      Chr_Vs_Su.Gradient.EndColor  := $0046C1E9;


      // 병동 환자List
      pn_PatList.Color          := $000EB7D7;
      ugd_PatList.Color         := $000EB7D7;
      ugd_PatList.GridRowColor  := $000EB7D7;
      apn_PatList.Caption.Color := $000EB7D7;

      // 상태 bar
      pn_Loading.Color          := $000EB7D7;
      ani_setuser.Color         := $000EB7D7;
      lb_LoadingBar.Color       := $000EB7D7;

      // 인터페이스 측정주기
      lb_MoniPrd_Su.Color       := $000EB7D7;

      // SU 환자리스트
      apn_PatList.Top           := 5;
      apn_PatList.Left          := 1306;

      // 화면제목
      Self.Caption              := '[MDN110FM] Stroke Unit 간호기록지' ;
   end
   else
   //---------------------------------------------------------------------------
   // ICU 통합 간호기록지 Form Set
   //---------------------------------------------------------------------------
   begin
      // 화면 U/I Color
      pn_Top.Color        := $0085A564;
      cbx_Interface.Color := $0085A564;
      cbx_Hemo.Color      := $0085A564;
      cbx_Neuro.Color     := $0085A564;
      cbx_Io.Color        := $0085A564;

      // ICU 헤드라인 B/G Color
      lb_FPatInfo.Color   := $0085A564;
      lb_PatInfo.Color    := $0085A564;
      lb_RgtDate.Color    := $0085A564;
      lb_FOpName.Color    := $0085A564;
      lb_OpName.Color     := $0085A564;
      lb_FDietName.Color  := $0085A564;
      lb_DietName.Color   := $0085A564;
      lb_ActTime.Color    := $0085A564;
      lb_FDgpWks.Color    := $0085A564;
      lb_DgpWks.Color     := $0085A564;
      lb_NowWks.Color     := $0085A564;
      lb_FWgt.Color       := $0085A564;
      lb_Wgt.Color        := $0085A564;
      lb_FHgt.Color       := $0085A564;
      lb_Hgt.Color        := $0085A564;
      lb_FHsize.Color     := $0085A564;
      lb_Hsize.Color      := $0085A564;
      lb_FCsize.Color     := $0085A564;
      lb_Csize.Color      := $0085A564;
      lb_FBsize.Color     := $0085A564;
      lb_Bsize.Color      := $0085A564;

      // ICU 헤드라인 레이아웃
      bv_Interface.Top    := 8;
      bv_Interface.Left   := 3;
      bv_Interface.Width  := 69;
      cbx_Interface.Top   := 16;
      cbx_Interface.Left  := 9;

      // Hemo
      bv_Hemo.Top         := 8;
      bv_Hemo.Left        := 70;
      cbx_Hemo.Top        := 16;
      cbx_Hemo.Left       := 76;

      // 의식.신경계.호흡기
      bv_Neuro.Top        := 8;
      bv_Neuro.Left       := 188;
      cbx_Neuro.Top       := 16;
      cbx_Neuro.Left      := 192;

      // 섭취량, 배설량
      bv_Io.Top           := 8;
      bv_Io.Left          := 328;
      cbx_Io.Top          := 16;
      cbx_Io.Left         := 334;

      // Refresh
      sbt_Refresh.Top     := 44;
      sbt_Refresh.Left    := 328;

      // 환자정보
      lb_FPatInfo.Top     := 10;
      lb_FPatInfo.Left    := 444;
      lb_PatInfo.Top      := 11;
      lb_PatInfo.Left     := 520;

      // 기록일자
      lb_RgtDate.Top      := 30;
      lb_RgtDate.Left     := 444;
      dtp_RgtDate.Top     := 25;
      dtp_RgtDate.Left    := 542;

      // 전일조회
      sbt_PrevDate.Top    := 25;
      sbt_PrevDate.Left   := 518;

      // 익일조회
      sbt_NextDate.Top    := 25;
      sbt_NextDate.Left   := 652;

      // 수술명
      lb_FOpName.Top      := 50;
      lb_FOpName.Left     := 444;
      lb_OpName.Top       := 50;
      lb_OpName.Left      := 520;

      // 식이
      lb_FDietName.Top    := 67;
      lb_FDietName.Left   := 444;
      lb_DietName.Top     := 67;
      lb_DietName.Left    := 520;

      // 시간레이블
      lb_ActTime.Top      := 30;
      lb_ActTime.Left     := 682;
      med_ActTime.Top     := 25;
      med_ActTime.Left    := 730;

      // 시간추가
      sbt_AddTime.Top     := 26;
      sbt_AddTime.Left    := 778;

      // 시간삭제
      sbt_DelTime.Top     := 26;
      sbt_DelTime.Left    := 810;

      // ICU 기록지 레이블 Setting
      lb_FDietName.Visible := True;
      lb_DietName.Visible  := True;
      lb_FDgpWks.Visible   := False;
      lb_DgpWks.Visible    := False;
      lb_NowWks.Visible    := False;
      lb_FWgt.Visible      := False;
      lb_Wgt.Visible       := False;
      lb_FHgt.Visible      := False;
      lb_Hgt.Visible       := False;
      lb_FHsize.Visible    := False;
      lb_Hsize.Visible     := False;
      lb_FCsize.Visible    := False;
      lb_Csize.Visible     := False;
      lb_FBsize.Visible    := False;
      lb_Bsize.Visible     := False;


      // 메인 Flowsheet
      asg_IcuMon.FixedColor     := $0085A564;
      Chr_Vs.Gradient.EndColor  := $0085A564;

      // 병동 환자List
      pn_PatList.Color          := $0085A564;
      ugd_PatList.Color         := $0085A564;
      ugd_PatList.GridRowColor  := $00F1D9C5;//$00F4CD7B;
      apn_PatList.Caption.Color := $0085A564;

      // 상태 bar
      pn_Loading.Color          := $0085A564;
      ani_setuser.Color         := $0085A564;
      lb_LoadingBar.Color       := $0085A564;

      // 인터페이스 측정주기
      lb_MoniPrd.Color          := $00108362;

      // ICU 환자리스트, 2011.11.22 LSH
      apn_PatList.Top           := 5;
      apn_PatList.Left          := 1306;

      // 버튼 Set @ 2012.04.21 LSH


      // ----------------------------------------------------------------------
      // [구로] 61병동 준중환자실 추가 -2015.02.03 smpark
      // ----------------------------------------------------------------------
      // [구로] 62병동 81호실 Sub ICU 추가 -2015.02.11 smpark
      // ----------------------------------------------------------------------
      // [안암] 72병동 02호실 Sub ICU 추가 -2015.02.17 smmpark
      // ----------------------------------------------------------------------
      // [안암] 54병동 01호실 Sub ICU 추가 -2016.06.16 smmpark
      // ----------------------------------------------------------------------
      if ((G_Locate = 'GR') and
          (((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Text = '61W') or
           ((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Text = '62W'))) or
         ((G_Locate = 'AA') and
          ((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Text = '54W')) then
      begin
         // 화면제목
         Self.Caption := '[MDN110FM] Sub ICU 통합 간호기록지' ;
      end
      else
      begin
         // 화면제목
         Self.Caption := '[MDN110FM] ICU 통합 간호기록지' ;
      end;

   end;

end;



//------------------------------------------------------------------------------
// [ICU 환자목록 조회] Procedure
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.GetPatList(Sender: TObject);
var
   i, RowNo : Integer;
   strGubun, Type1, Type2, Type3 : String;
begin

   //-----------------------------------------------------------------
   // 1. Initiate
   //-----------------------------------------------------------------
   ugd_PatList.Clear;
   ugd_PatList.RowCount := 2;




   //-----------------------------------------------------------------
   // 2. 병동 환자 리스트 조회
   //-----------------------------------------------------------------
   Screen.Cursor := crHourglass;

   try
      // Create Object
      mdPatInf := HmdPatInf.Create;



      //----------------------------------------------------
      // 2.1. Set parameter value
      //----------------------------------------------------
      if cbx_NowPos.Checked then
      begin
         if cbx_Cancel.Checked then
            strGubun := '7'
         else
         begin
            // 진료과순 정렬
            if rbt_SortDept.Checked then
            begin
               if cbx_Dsch.Checked then
                  strGubun := 'A'   // 현위치별 조회
               else
                  strGubun := 'B';
            end
            else
            begin
               if cbx_Dsch.Checked then
                  strGubun := '1'   // 현위치별 조회
               else
                  strGubun := '2';
            end;
         end;
      end
      else
      begin
         if cbx_Cancel.Checked then
            strGubun := '8'
         else
         begin
            // 진료과순 정렬
            if rbt_SortDept.Checked then
            begin
               if cbx_Dsch.Checked then
                  strGubun := 'C'   // 병동별 조회
               else
                  strGubun := 'D';
            end
            else
            begin
               if cbx_Dsch.Checked then
                  strGubun := '3'   // 병동별 조회
               else
                  strGubun := '4';
            end;
         end;
      end;



      Type1 := strGubun;
      Type2 := combx_WardCd.Items[combx_WardNm.ItemIndex];


      // 신생아 욕창평가 추가에 따른, 구분 flag 세팅
      // NICU2 added -2012.02.29 smpark
      if (md_WardNo = 'NNR')  or
         (md_WardNo = 'NICU') or
         (md_WardNo = 'NICU2') then
         // 신생아는 fn_get_patclsscore에서 MDBDSPMT.TOTSCORE 가져옴.
         Type3 := 'B'
      else
         // 신생아가 아닌경우, fn_get_patclsscore에서 MDPTCLDT.STDPTS 가져옴.
         Type3 := '';



      //----------------------------------------------------
      // 2. Load Data
      //----------------------------------------------------
      RowNo := mdPatInf.UnionDschPatList(Type1, Type2, Type3, G_LOCATE);




      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatInf.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin

         P_PatNo       := '';
         P_AdmDate     := '';
         P_WardNo      := '';
         P_RoomNo      := '';


         mdPatInf.Free;

         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';

         Exit;
      end;


      ugd_PatList.Hint     := 'ⓑ : 욕창 위험 사정도 평가 대상 환자';
      ugd_PatList.ShowHint := True;
      ugd_PatList.Repaint;


      ugd_PatList.RowCount := RowNo + 1;


      for i := 0 to RowNo - 1 do
      begin
         if cbx_NowPos.Checked then                                                    // 현위치
            ugd_PatList.Cells[0,i+1]  := mdPatInf.sRoomNo1[i]
         else
            ugd_PatList.Cells[0,i+1]  := mdPatInf.sRoomNo[i];



         // 통원수술센터 원문자 당일입원,퇴원 ⓐⓓ경우에 이름이 가리는 문제 때문에 제외함
         if Combx_wardCd.text <> 'DSC' then
         begin
            // 금일 입원환자
            if (mdPatInf.sBckStat[i] = '1') then                                       // 간호확인.
               ugd_PatList.Cells[1, i+1] := 'ⓒ' + mdPatInf.sPatName[i]
            else if (mdPatInf.sBckStat[i] = '2') then                                  // 심사중
               ugd_PatList.Cells[1, i+1] := 'ⓘ' + mdPatInf.sPatName[i]
            else if (mdPatInf.sBckStat[i] = '3') or (mdPatInf.sBckStat[i] = '4') then  // 심사완료
               ugd_PatList.Cells[1, i+1] := 'ⓕ' + mdPatInf.sPatName[i]
            else if (mdPatInf.sTransDt[i] = FormatDateTime('yyyymmdd',Date)) then      // 금일 전실 환자
               ugd_PatList.Cells[1, i+1] := 'ⓣ' + mdPatInf.sPatName[i]
            else if (mdPatInf.sAdmDate[i] = FormatDateTime('yyyymmdd',Date)) then      // 금일 입원 환자
               ugd_PatList.Cells[1, i+1] := 'ⓐ' + mdPatInf.sPatName[i];


            // 욕창위험 사정도평가 대상환자 (신생아/성인 구분추가)
            if (Type3 = 'B') then
            begin
               if (mdPatInf.lScore[i] >= 13) then
                  // 신생아 욕창평가점수(MDBDSPMT.TOTSCORE) 13점 이상
                  ugd_PatList.Cells[1, i+1] := 'ⓑ' + mdPatInf.sPatName[i]
               else
                  ugd_PatList.Cells[1, i+1] := mdPatInf.sPatName[i];
            end
            else
            begin
               if (mdPatInf.lScore[i] >= 3) then
                  // 환자분류 [운동 및 활동] 영역 3점 이상
                  ugd_PatList.Cells[1, i+1] := 'ⓑ' + mdPatInf.sPatName[i]
               else
                  ugd_PatList.Cells[1, i+1] := mdPatInf.sPatName[i];
            end;


            // 금일 퇴원예정 환자
            if (mdPatInf.sBckStat[i]<>'1') and
               (mdPatInf.sBckStat[i]<>'2') and
               (mdPatInf.sBckStat[i]<>'3') and
               (mdPatInf.sBckStat[i]<>'4') then
            begin
               if (mdPatInf.sDschexdt[i] = FormatDateTime('yyyymmdd',Date)) or
                  (mdPatInf.sDschdate[i] = FormatDateTime('yyyymmdd',Date)) then
                  ugd_PatList.Cells[1,i+1] := 'ⓓ'+ ugd_PatList.Cells[1,i+1];
            end;

            // 낙상 고위험군 환자
            if (mdPatInf.sLastFallEsti[i] = 'High') or
               (mdPatInf.sLastFallEsti[i] = '고위험군(중환자실)') or
               (mdPatInf.sLastFallEsti[i] = '고위험군(24개월↓)') or
               (mdPatInf.sLastFallEsti[i] = '고위험군(회복실)')   then
            begin
               ugd_PatList.Cells[1, i+1] := 'ⓗ' + ugd_PatList.Cells[1, i+1];
            end;

         end
         else
         begin
            ugd_PatList.Cells[1, i+1] := mdPatInf.sPatName[i];
         end;

         // Hidden Information
         ugd_PatList.Cells[2 , i+1] := mdPatInf.sSex[i] + '/' + Trim(Calc_Age(now,mdPatInf.sBirtDate[i]));  // 성별/나이
         ugd_PatList.Cells[3 , i+1] := mdPatInf.sPatNo  [i];   // 환자번호
         ugd_PatList.Cells[4 , i+1] := mdPatInf.sAdmDate[i];   // 입원일자

         ugd_PatList.Cells[5 , i+1] := mdPatInf.sDeptNm [i];   // 진료과명
         ugd_PatList.Cells[6 , i+1] := mdPatInf.sChaDrNm[i];   // 담당의명
         ugd_PatList.Cells[7 , i+1] := mdPatInf.sGenDrNm[i];   // 주치의명
         ugd_PatList.Cells[8 , i+1] := mdPatInf.sMeddept[i];   // 진료과
         ugd_PatList.Cells[9 , i+1] := mdPatInf.sResNo1 [i];   // 주민번호1
         ugd_PatList.Cells[10, i+1] := mdPatInf.sResNo2 [i];   // 주민번호2
         ugd_PatList.Cells[11, i+1] := mdPatInf.sPatName[i];   // 환자명

         ugd_PatList.Cells[12, i+1] := mdPatInf.sBirtDate[i];  // 생년월일
         ugd_PatList.Cells[13, i+1] := mdPatInf.lScore   [i];  // 일반환자분류 '운동 및 활동' 영역 점수
         ugd_PatList.Cells[14, i+1] := mdPatInf.sChaDr   [i];  // 담당의
         ugd_PatList.Cells[15, i+1] := mdPatInf.sGenDr   [i];  // 주치의
         ugd_PatList.Cells[16, i+1] := mdPatInf.sWardNo  [i];  // 병동
         ugd_PatList.Cells[17, i+1] := mdPatInf.sRoomNo  [i];  // 병실
         ugd_PatList.Cells[18, i+1] := mdPatInf.sWardNo1 [i];  // 현위치 병동, 2011.08.30 LSH
         ugd_PatList.Cells[19, i+1] := mdPatInf.sRoomNo1 [i];  // 현위치 병실, 2011.08.30 LSH

      end;


      mdPatInf.Free;


   finally
      screen.Cursor  :=  crDefault;
   end;


   //-----------------------------------------------------------
   // 진단명 가져오기 @ 2012.04.23 LSH
   //-----------------------------------------------------------
   if (P_NicuFlag = 'S') then
   begin
      GetMainDiag(ugd_PatList.Cells[3, ugd_PatList.Row], // 환자번호
                  ugd_PatList.Cells[8, ugd_PatList.Row], // 진료과
                  ugd_PatList.Cells[4, ugd_PatList.Row], // 입원일자
                  G_Locate,                              // 현 위치
                  '1',                                   //
                  'A',                                   // 주진단 개편관련 Flag
                  ugd_PatList.Cells[14,ugd_PatList.Row], // 담당교수
                  'I'                                    // 환자위치(I = '입원')
                  );
   end;



end;




procedure TMDN110FM.ugd_PatListDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 9);
end;





//------------------------------------------------------------------------------
// [ICU환자 목록 Hint] Grid onClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.ugd_PatListMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ugd_PatList.Hint := '< 환자구분 >'                         + #13#10 + #13#10 +
                       'ⓐ : 금일 입원 환자'                  + #13#10 +
                       'ⓑ : 욕창 위험 사정도 평가 대상 환자' + #13#10 +
                       'ⓒ : 간호 확인 환자'                  + #13#10 +
                       'ⓓ : 금일 퇴원 예정 환자'             + #13#10 +
                       'ⓕ : 심사 완료 환자'                  + #13#10 +
                       'ⓗ : 낙상 고위험군 환자'              + #13#10 +
                       'ⓘ : 심사중인 환자'                   + #13#10 +
                       'ⓣ : 금일 전실 환자' ;


   ugd_PatList.ShowHint := True;

end;



//------------------------------------------------------------------------------
// [환자정보 조회] Grid onClick Event Handler
// - ICU 환자 정보가져오기
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.SelectPatInfo(in_Flag : String);
var
   i : Integer;
   in_Gubun : String;
begin
   //---------------------------------------------------------
   // 병동간호 Main에서 환자 선택
   //---------------------------------------------------------
   if (in_Flag = 'FORMSHOW') then
   begin

      ugd_PatList.Row := 1;

      for i := 1 to ugd_PatList.RowCount - 1 do
      begin
         if ugd_PatList.Cells[3,i] = md_PatNo then
         begin
            ugd_PatList.Row   := i;

            // 글로벌 변수 Setting
            P_PatNo   := ugd_PatList.Cells[3,  ugd_PatList.Row];
            P_AdmDate := ugd_PatList.Cells[4,  ugd_PatList.Row];
            P_WardNo  := ugd_PatList.Cells[18, ugd_PatList.Row];  // 현위치(WardNo1) 병동(※원무 T/R승인전 환자 현위치 변경이슈), 2011.08.30 LSH
            P_RoomNo  := ugd_PatList.Cells[19, ugd_PatList.Row];  // 현위치(RoomNo1) 병실(※원무 T/R승인전 환자 현위치 변경이슈), 2011.08.30 LSH
            P_PatName := ugd_PatList.Cells[11, ugd_PatList.Row];
            P_SexAge  := ugd_PatList.Cells[2,  ugd_PatList.Row];

            // NICU2 added -2012.02.29 smpark
            if (P_WardNo = 'MIC')  or
               (P_WardNo = 'CIC')  or //2019.09.04  CIC 추가  ^YongJunPark^
               (P_WardNo = 'SIC')  or
               (P_WardNo = 'CCU')  or
               (P_WardNo = 'NICU') or
               (P_WardNo = 'NICU2')or
               (P_WardNo = 'EICU') or  // [안암] 응급중환자실(EICU) 신설 -2016.05.26 smpark
               // [구로] 중환자실 1,2 오픈, 2012.02.22 LSH
               (P_WardNo = 'ICU1') or
               (P_WardNo = 'ICU2') then
               in_Gubun  := '1'     // ICU 재원정보 조회
            else
               in_Gubun  := '2';    // 병동 재원정보 조회

            Break;

         end;
      end;
   end
   //---------------------------------------------------------
   // ICU 기록지 화면 內에서 환자 선택
   //---------------------------------------------------------
   else if (in_Flag = 'REFRESH') then
   begin

      for i := 1 to ugd_PatList.RowCount - 1 do
      begin
         if ugd_PatList.Cells[3,i] = ugd_PatList.Cells[3,ugd_PatList.Row] then
         begin
            ugd_PatList.Row   := i;


            // 글로벌 변수 Setting
            P_PatNo   := ugd_PatList.Cells[3,  ugd_PatList.Row];
            P_AdmDate := ugd_PatList.Cells[4,  ugd_PatList.Row];
            P_WardNo  := ugd_PatList.Cells[18, ugd_PatList.Row];  // 현위치(WardNo1) 병동(※원무 T/R승인전 환자 현위치 변경이슈), 2011.08.30 LSH
            P_RoomNo  := ugd_PatList.Cells[19, ugd_PatList.Row];  // 현위치(RoomNo1) 병실(※원무 T/R승인전 환자 현위치 변경이슈), 2011.08.30 LSH
            P_PatName := ugd_PatList.Cells[11, ugd_PatList.Row];
            P_SexAge  := ugd_PatList.Cells[2,  ugd_PatList.Row];


            // NICU2 added -2012.02.29 smpark
            if (P_WardNo = 'MIC')  or
               (P_WardNo = 'CIC')  or  //2019.09.04  CIC 추가  ^YongJunPark^
               (P_WardNo = 'SIC')  or
               (P_WardNo = 'CCU')  or
               (P_WardNo = 'NICU') or
               (P_WardNo = 'NICU2') or
               (P_WardNo = 'EICU') or  // [안암] 응급중환자실(EICU) 신설 -2016.05.26 smpark
               // [구로] 중환자실 1,2 오픈, 2012.02.22 LSH
               (P_WardNo = 'ICU1') or
               (P_WardNo = 'ICU2') then
               in_Gubun  := '1'           // ICU 재원정보 조회
            else
               in_Gubun  := '2';          // 병동 재원정보 조회



            //------------------------------------------------------------------
            // 현위치(P_WardNo)가 원무병동정보와 불일치환자 재원정보 조회
            //  - 예) 수술중: WardNo = CCU | WardNo1 = OPR, 2011.12.26 LSH
            //------------------------------------------------------------------
            if (P_WardNo = 'OPR') then
            begin
               in_Gubun  := '3';          // (현위치 없는) ICU 재원정보 조회
               P_WardNo  := md_WardNo;    // 현위치 'OPR'대신 [원무승인 병동정보]를 넘겨줌.
                                          // [※ md_WardNo 사용하는 전제: 수술중인 ICU 재원환자에 대한 기록지 작성은, 해당 ICU 병동에서만 시행할 것이다]
            end;



            //------------------------------------------------------------------
            // 당일퇴원 포함 환자조회 check시, 2011.12.16 LSH
            //------------------------------------------------------------------
            if (cbx_Dsch.Checked) then
               in_Gubun  := '3';



            Break;
         end;
      end;
   end
   //---------------------------------------------------------
   // 기 선택된 환자정보가 있는 경우 (환자기록통합조회 / 자동서식스캔)
   //---------------------------------------------------------
   else if (in_Flag = 'SELECTED') then
   begin

      in_Gubun  := '3';


      //-------------------------------------------------------------
      // ICU 입실특수상황(주말입실 등) 원무전실승인 지연 예외처리
      //  - 2012.03.07 LSH
      //-------------------------------------------------------------
      if (asg_IcuMon.Tag = 0) and
         ((P_PatFlag = 'W')   or
          (P_PatFlag = 'D'))  then
      begin

         // 환자의 ICU 재원정보는 P_DschDate(재원중이면, '2999-12-31'로 Set)로 Search.
         // 환자의 퇴원일자가 주말(토/일)이면, [금요일] 재원정보를 뿌려줌.
         if GetDayofWeek(StrToDate(ConvertSDate(P_DschDate)), 'HS') = '토' then
         begin
            P_RgtDate := DateToStr(StrToDate(ConvertSDate(P_DschDate)) - 1)
         end
         else if GetDayofWeek(StrToDate(ConvertSDate(P_DschDate)), 'HS') = '일' then
         begin
            P_RgtDate := DateToStr(StrToDate(ConvertSDate(P_DschDate)) - 2)
         end
         else
            P_RgtDate := P_DschDate;


         // FlowSheet 화면 [최초]조회 완료되었음.
         asg_IcuMon.Tag := 1;


      end
      else
         P_RgtDate := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);



      // 해당 기록일자에 대한 환자정보조회.
      // 장기재원환자, 검색시작일자 종료일자 추가 -2015.05.27 smpark
      GetIcuInfo(in_Gubun,
                 P_WardNo,
                 P_PatNo,
                 DelChar(P_AdmDate,'-'),
                 DelChar(P_RgtDate,'-'),
                 '',
                 ''
                 );


      Exit;
   end;




   //---------------------------------------------------------------------------
   // 선택한 환자 ICU 정보 가져오기
   //---------------------------------------------------------------------------
   // 장기재원환자, 검색시작일자 종료일자 추가 -2015.05.27 smpark
   GetIcuInfo(in_Gubun,
              P_WardNo,
              P_PatNo,
              DelChar(P_AdmDate,'-'),
              FormatDateTime('yyyymmdd',dtp_RgtDate.Date),
              '',
              ''
              );




   //---------------------------------------------------------------------------
   // ICU 기록지 자동서식변환, 2011.09.09 LSH
   //  - AutoScan New-Version 시행하면서, 아래 주석처리. 2012.01.30 LSH
   //---------------------------------------------------------------------------
   //if (P_EMRPrintYn = 'Y') then
   //   Refresh_AutoScan;



end;





//------------------------------------------------------------------------------
// [환자 목록] Grid onClick Event Handler
// - 환자 선택
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.ugd_PatListClick(Sender: TObject);
var
   bPatSelOk : Boolean;
begin

   //----------------------------------------------
   // 환자 선택유무 check
   //----------------------------------------------
   if ugd_PatList.Cells[3,ugd_PatList.Row] = '' then
   begin
      MessageBox(Self.Handle,
                 '환자를 선택해 주십시오.',
                 '대상환자 조회',
                 MB_OK + MB_ICONINFORMATION);
      exit;
   end;


   //----------------------------------------------
   // SU 기록지 환자선택 제한
   //  - '뇌졸중집중치료실' 환자만 선택 가능
   //  - [안암] 76W-01, [구로] 73W-89
   //  - 2012.06.01 LSH
   //----------------------------------------------
   // [구로] 뇌졸중집중치료실(89 -> 90) 변경함 -2015.09.21 smpark
   if (P_NicuFlag = 'S') then
   begin
      with ugd_PatList do
      begin
         if ((G_Locate = 'AA') and (Cells[16,Row] = '76W') and (Cells[0 ,Row] = '01')) or
            ((G_Locate = 'GR') and (Cells[16,Row] = '73W') and (Cells[0 ,Row] = '90')) then
             bPatSelOk := True
          else
             bPatSelOk := False;
      end;
   end
   else
      bPatSelOk := True;



   if bPatSelOk then
   begin
      //----------------------------------------------
      // 메인폼 Data-Set 초기화
      //----------------------------------------------
      InitDataSet(cds_SaveItem);


      //----------------------------------------------
      // 선택환자 정보조회
      //----------------------------------------------
      SelectPatInfo('REFRESH');


      //----------------------------------------------
      // 화면 Refresh
      //----------------------------------------------
      Refresh;
      saveCheck := True;
   end
   else
   begin
      MessageBox(Self.Handle,
                 '해당 기록지의 조회 대상이 아닙니다.',
                 '기록지 조회 제한',
                 MB_OK + MB_ICONWARNING);

      Exit;

   end;

end;





//------------------------------------------------------------------------------
// [ICU 병동선택] Combobox onChange Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.combx_WardNmChange(Sender: TObject);
begin
   // 병실순 Sorting
   rbt_SortRoom.Checked := True;


   // 병동정보 Setting
   Combx_Wardcd.ItemIndex := Combx_Wardnm.ItemIndex;


   //--------------------------------------------------------
   // 환자 리스트 조회
   //--------------------------------------------------------
   GetPatList(Sender);


   //--------------------------------------------------------
   // 선택환자 정보조회
   //--------------------------------------------------------
   ugd_PatListClick(Sender);

end;





//------------------------------------------------------------------------------
// 당일 퇴원 포함조회 or 당일 입원취소 포함 조회
//------------------------------------------------------------------------------
procedure TMDN110FM.cbx_DschClick(Sender: TObject);
begin
   // 환자정보 조회
   SetPatInfo('REFRESH');

   // 화면 리셋
   Refresh;
end;





//------------------------------------------------------------------------------
// [ICU 환자 정렬] Combobox onChange Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.rbt_SortNameClick(Sender: TObject);
begin

   if rbt_SortName.Checked then
   // 성명순
   begin
      rbt_SortRoom.Font.Color := clNavy;
      rbt_SortName.Font.Color := clBlue;
      rbt_SortDept.Font.Color := clNavy;

      QuickSortGrid(ugd_PatList, 1, ugd_PatList.RowCount - 1, 11, False);
   end
   else if rbt_SortRoom.Checked then
   // 병실순
   begin
      rbt_SortRoom.Font.Color := clBlue;
      rbt_SortName.Font.Color := clNavy;
      rbt_SortDept.Font.Color := clNavy;

      QuickSortGrid(ugd_PatList,1,ugd_PatList.RowCount-1,0,False);
   end;


   // 선택환자 정보조회
   ugd_PatListClick(Sender);



end;


//------------------------------------------------------------------------------
// [NICU 상세정보] Searching Call Procedure
//  - 체중/신장/복위/흉위/두위/재태연령(교정연령)
//
// Author : Lee, Se-Ha
// Date   : 2011.12.05
//------------------------------------------------------------------------------
procedure TMDN110FM.SetNicuInfoAdded(in_PatNo, in_AdmDate : String);
var
   i, RowNo   : Integer;
   iWrkLst    : HmdWrkLst;
   sType1, sType2, sType3, sType4        : String;    // NICU 정보 조회위한 변수
   sFstWks, sFstDay, sBornDate, sRgtDate : String;    // 교정연령 계산위한 변수
begin

   // 초기화
   lb_Wgt.Caption      := '';
   lb_Hgt.Caption      := '';
   lb_BSize.Caption    := '';
   lb_CSize.Caption    := '';
   lb_HSize.Caption    := '';
   lb_DgpWks.Caption   := '';
   lb_DgpWks.Hint      := '';
   lb_NowWks.Caption   := '';




   Screen.Cursor   := crHourglass;


   try
      // create class
      iWrkLst := HmdWrkLst.Create;


      // Input Params Assign
      sType1 := '44';
      sType2 := in_PatNo;
      sType3 := in_AdmDate;
      sType4 := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);  // 기록일자별 최종 IO Check내역 가져오도록 수정 (AA_이진희 요청), 2012.03.29 LSH



      // Tmax Service Call
      RowNo := iWrkLst.CheckList5(sType1, sType2, sType3, sType4, '');



      // System Error
      if (RowNo = -1) then
      begin
         iWrkLst.Free;
         ShowMessage(GetTxMsg);
         Exit;
      end;



      if (RowNo = 0) then
      begin
         iWrkLst.Free;
         Exit;
      end;




      for i := 0 to RowNo - 1 do
      begin
         with iWrkLst do
         begin
            if sCode1[i] = '체중' then                            // 항목 명
            begin
               lb_Wgt.Caption      := sCode3[i];                  // 측정 값
               lb_Wgt.Hint         := '측정일시: ' + sCode2[i];   // 측정일시
            end
            else if sCode1[i] = '신장' then
            begin
               lb_Hgt.Caption      := sCode3[i];
               lb_Hgt.Hint         := '측정일시: ' + sCode2[i];
            end
            else if sCode1[i] = '복위' then
            begin
               lb_BSize.Caption    := sCode3[i];
               lb_BSize.Hint       := '측정일시: ' + sCode2[i];
            end
            else if sCode1[i] = '흉위' then
            begin
               lb_CSize.Caption    := sCode3[i];
               lb_CSize.Hint       := '측정일시: ' + sCode2[i];
            end
            else if sCode1[i] = '두위' then
            begin
               lb_HSize.Caption    := sCode3[i];
               lb_HSize.Hint       := '측정일시: ' + sCode2[i];
            end
            else if sCode1[i] = '재태연령' then
            begin
               lb_DgpWks.Caption   := sCode3[i];
               lb_DgpWks.Hint      := '출생일시: ' + sCode2[i];

               // 교정연령 계산위한 변수 assign
               sFstWks   := CopyByte(sCode3[i], 1, 2);
               sFstDay   := CopyByte(sCode3[i], 6, 1);
               sBornDate := CopyByte(DelChar(sCode2[i], '-'), 1, 8);
               sRgtDate  := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);
            end;
         end;
      end;


      //------------------------------------------------------------------------
      // 교정연령(wks) 계산위한 CalcNowDay 호출, 2011.12.06 LSH
      //------------------------------------------------------------------------
      if (sFstWks <> '')   and
         (sFstDay <> '')   and
         (sBornDate <> '') and
         (sRgtDate  <> '') then
      begin
         lb_NowWks.Caption := '[ ' + CalcNowDay(sFstWks,
                                                sFstDay,
                                                sBornDate,
                                                sRgtDate)
                                   + ' ]';
      end
      else
      begin
         // 가끔씩 NICU 간호사들이 30일이상 애기 재입원시 "소아"정보조사지를 작성한 case 있었음..
         // 상기 case도 원칙은 신생아 정보조사지로 작성하기로 안암_NICU 이진희 수샘과 합의함, 2011.12.06
         lb_NowWks.Caption  := '간호정보조사지(신생아) 정보없음';

         //2013.06.18 khs 간호정보조사지(신생아)에서 교정연령 계산이 불가한 경우
         //신생아대장에서 출생일자와 재태기간 구해서 교정연령 계산
         GetNbabyBorndate;
      end;


      iWrkLst.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;





//------------------------------------------------------------------------------
// [NICU 교정연령 계산] Calculating Function
//  - 재태연령, 출생일자, 현재 기록일자를 받아서 교정연령을 계산.
//
// Author : Lee, Se-Ha
// Date   : 2011.12.06
// Tuning : 2012.04.19 @ 윤년계산 및 교정연령 순일수 계산 부분 변경.
//------------------------------------------------------------------------------
function TMDN110FM.CalcNowDay(in_FstWks, in_FstDay, in_BornDate, in_RgtDate : String) : String;
var
   RtnValue, rBornDate  : String;
   TmpPeriod : Integer;
   tAddingWks, tAddingDay, tAddedWks, tAddedDay, NowWks, NowDay : Integer;
   diffYear, diffMon, diffDay1, diffDay2, tDiff : Integer;

   tBornDate,tRgtDate : TDateTime;
   diffDayFloat : Double;
   diffDayStr : String;
begin
   // 초기 Return Value Null 처리
   RtnValue   := '';


   // 출생일자 ~ 입원일자 순 경과일수 @ 2012.04.20 LSH
   diffDay1  := GetDiffDay(in_BornDate, DelChar(P_AdmDate,'-'));

   // 개정된 출생일자 (원 출생일자 + 입원기간까지 순 경과일수) @ 2012.04.20 LSH
   rBornDate := FormatDateTime('yyyymmdd', StrToDate(ConvertSDate(in_BornDate)) + diffDay1);

   // 개정된 출생일자 ~ (현) 기록일자 순 경과일수 @ 2012.04.20 LSH
   //diffDay2  := GetDiffDay(rBornDate, in_RgtDate);

   //2013.03.05 khs 시작 ----------------
   //경과일수 구하기 수정(2월이 지난 경우 일수가 +1로 구해지는 현상으로 수정)

   //2013.06.10 khs EncodeDate()함수의 매개변수를 in_BornDate에서 rBornDate로 수정하여
   //개정된 출생일자를 기준으로 구해지도록 함
   tBornDate  := EncodeDate(strToint(CopyByte(rBornDate,1,4)),
                           strToint(CopyByte(rBornDate,5,2)),
                           strToint(CopyByte(rBornDate,7,2)));

   tRgtDate  := EncodeDate(strToint(CopyByte(in_RgtDate,1,4)),
                           strToint(CopyByte(in_RgtDate,5,2)),
                           strToint(CopyByte(in_RgtDate,7,2)));

   diffDayFloat  := (tRgtDate - tBornDate);

   diffDay2 := StrToInt(FloatToStr(diffDayFloat));
   //2013.03.05 khs 종료 ----------------

   // 출생일부터 ~ 입원시점이 고려된 선택된 기록일 까지의 순 경과일수 @ 2012.04.20 LSH
   TmpPeriod  := diffDay1 + diffDay2;

   // 재태연령에 더해져야할 week 카운트
   tAddingWks    := TmpPeriod div 7;

   // 재태연령에 더해져야할 day 카운트
   tAddingDay    := TmpPeriod mod 7;


   // 재태연령 day와 추가될 day의 합이 7을 넘으면,
   // 재태연령 week 카운트에 해당 week 카운트를 더해준다.
   if (StrToInt(in_FstDay) + tAddingDay >= 7) then
   begin
      tAddedWks := tAddingWks + 1;

      try
         tAddedDay := (StrToInt(in_FstDay) + tAddingDay) mod 7;

      except
         on e : Exception do
         begin
            MessageBox(Self.Handle,
                       PChar('[Exception Msg] : ' + e.Message),
                       'NICU 교정연령 7일미만(추가) 계산 예외처리',
                       MB_OK + MB_ICONINFORMATION);
         end;
      end;
   end
   else
   begin
      tAddedWks  := tAddingWks;

      try
         tAddedDay := (StrToInt(in_FstDay) + tAddingDay) mod 7;

      except
         on e : Exception do
         begin
            MessageBox(Self.Handle,
                       PChar('[Exception Msg] : ' + e.Message),
                       'NICU 교정연령 7일이상(추가) 계산 예외처리',
                       MB_OK + MB_ICONINFORMATION);
         end;
      end;
   end;

   // 교정연령 (주)
   try
      NowWks := StrToInt(in_FstWks) + tAddedWks;

   except
      on e : Exception do
      begin
         MessageBox(Self.Handle,
                    PChar('[Exception Msg] : ' + e.Message),
                    'NICU 교정연령 주 계산 예외처리',
                    MB_OK + MB_ICONINFORMATION);
      end;
   end;

   // 교정연령 (일)
   NowDay := tAddedDay;


   // Return Value
   try
      RtnValue := IntToStr(NowWks) + ' + ' + IntToStr(NowDay);

   except
      on e : Exception do
      begin
         MessageBox(Self.Handle,
                    PChar('[Exception Msg] : ' + e.Message),
                    'NICU 교정연령 리턴시 예외처리',
                    MB_OK + MB_ICONINFORMATION);
      end;
   end;


   Result := RtnValue;


end;





//------------------------------------------------------------------------------
// [자동서식변환용] 화면 Refresh
//
// Author : Lee, Se-Ha
// Date   : 2012.01.20
//------------------------------------------------------------------------------
procedure TMDN110FM.Refresh_AutoScan;
begin

   //-------------------------------------------------------------
   // Data-Set 초기화 @ 2012.04.20 LSH
   //-------------------------------------------------------------
   InitDataSet(cds_SaveItem);

   //-------------------------------------------------------------
   // Code-Time 리스트 재구성 및 입력항목 속성값 가져오기
   //-------------------------------------------------------------
   CheckFormset;

   //-------------------------------------------------------------
   // 일자별 모니터링 상세내역(저장) 조회
   //-------------------------------------------------------------
   SelectMonItem(StrToDateTime(ugd_EmrList.Cells[2, ugd_EmrList.Row]));

   //-------------------------------------------------------------
   // Client Data Set 세팅
   //-------------------------------------------------------------
   SetSaveList('TOGRID');

   //-------------------------------------------------------------
   // Chart Clear
   //-------------------------------------------------------------
   InitChart;

   //-------------------------------------------------------------
   // 차트 생성
   //-------------------------------------------------------------
   DrawChart(Self);

end;






//------------------------------------------------------------------------------
// [자동서식변환용] EMR 대상환자 조회
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_SelectClick(Sender: TObject);
var
   sGubun, sWardNo, sPatNo, sAdmDate, sFromdate, sTodate, sSetType : string;
begin

   ugd_EmrList.Clear;
   ugd_EmrList.RowCount := 2;


   //-------------------------------------------------------------------
   // 변수 Assign
   //-------------------------------------------------------------------
   sGubun   := '4';
   sWardNo  := '';
   sPatNo   := P_PatNo;
   sAdmDate := DelChar(P_AdmDate,'-');

   // 2015.05.27 smpark
   sFromdate := DelChar(P_EMRFromDt,'-');
   sTodate   := DelChar(P_EMRToDt,'-');

   if (P_NicuFlag = 'Y') then
      sSetType := 'NIC'
   else if (P_NicuFlag = 'S') then
      sSetType := 'STR'
   else
      sSetType := 'MON';

   //-------------------------------------------------------------------
   // EMR 기록지별 대상 조회
   //-------------------------------------------------------------------
   // 장기재원환자, 검색시작일자 종료일자 추가 -2015.05.27 smpark
   GetIcuInfo(sGubun,
              sWardNo,
              sPatNo,
              sAdmDate,
              sSetType,
              sFromdate,
              sTodate);


end;



//------------------------------------------------------------------------------
// [자동서식변환용] EMR 대상환자 선택
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_OkClick(Sender: TObject);
var
   sGubun, sWardNo, sPatNo, sAdmDate, sRgtDate : String;
begin
   sGubun   := '3';
   sWardNo  := '';
   sPatNo   := ugd_EmrList.Cells[0, ugd_EmrList.Row];
   sAdmDate := DelChar(ugd_EmrList.Cells[1, ugd_EmrList.Row], '-');
   sRgtDate := DelChar(ugd_EmrList.Cells[2, ugd_EmrList.Row], '-');



   //----------------------------------------------------------------
   // 서식변환대상 해당 기록일자 당시 환자정보 조회
   //----------------------------------------------------------------
   // 장기재원환자, 검색시작일자 종료일자 추가 -2015.05.27 smpark
   GetIcuInfo(sGubun,
              sWardNo,
              sPatNo,
              sAdmDate,
              sRgtDate,
              '',
              '');



   //----------------------------------------------------------------
   // 화면 구성 및 chart 그리기
   //----------------------------------------------------------------
   Refresh_AutoScan;

end;




//------------------------------------------------------------------------------
// ICU 통합 간호기록지 자동스캔 서식출력 New-ver
// - 환자별 출력
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FM.AutoScanPrint_New;
begin
   //-------------------------------------------
   // EMR 서식변환 대상 조회
   //-------------------------------------------
   bbt_SelectClick(ugd_EmrList);

end;


//------------------------------------------------------------------------------
// 윤년 계산
// - NICU 교정연령 계산위한 윤년 여부(Y/N) 체크
//
// Author : Lee, Se-Ha
// Date   : 2012.04.18
//------------------------------------------------------------------------------
function TMDN110FM.isYunYear(in_Year : Integer) : Boolean;
begin

   // 초기값
   Result := False;

   // 4자리수 연도 입력받았으면, 윤년여부 Check
   if LengthByte(IntToStr(in_Year)) = 4 then
   begin

      if (in_Year mod 4 = 0) and (in_Year mod 100 <> 0) or
         (in_Year Mod 400 = 0) then
         Result := True
      else
         Result := False;
   end;

end;



//------------------------------------------------------------------------------
// [순 경과일수 계산] Calculating Function
//  - 2개의 일자(시작, 종료)를 입력받아, 순 경과일수를 계산 (윤년+달력계산)
//
// Author : Lee, Se-Ha
// Date   : 2012.04.20
//------------------------------------------------------------------------------
function TMDN110FM.GetDiffDay(in_BornDate, in_RgtDate : String) : Integer;
var
   iBornYear, iBornMon, iBornDay, iNowDay, iNowMon, iNowYear : Integer;
   iBornCnt , iNowCnt, diffDay : Integer;
   Month     : array[1..13] of Integer;
begin
   // 초기 Return Value Null 처리
   diffDay  := 0;
   Result   := diffDay;


   // 월별 누적일수
   Month[1]  := 0;
   Month[2]  := 31;
   Month[3]  := 59;
   Month[4]  := 90;
   Month[5]  := 120;
   Month[6]  := 151;
   Month[7]  := 181;
   Month[8]  := 212;
   Month[9]  := 243;
   Month[10] := 273;
   Month[11] := 304;
   Month[12] := 334;
   Month[13] := 365;


   // 시작일자, 종료일자 변수 assign
   iBornYear := StrToInt(CopyByte(in_BornDate, 1, 4));
   iBornMon  := StrToInt(CopyByte(in_BornDate, 5, 2));
   iBornDay  := StrToInt(CopyByte(in_BornDate, 7, 2));
   iNowYear  := StrToInt(CopyByte(in_RgtDate,  1, 4));
   iNowMon   := StrToInt(CopyByte(in_RgtDate,  5, 2));
   iNowDay   := StrToInt(CopyByte(in_RgtDate,  7, 2));


   //------------------------------------
   // 1. 출생년도 = 기록년도
   //------------------------------------
   if (iBornYear = iNowYear) then
   begin
      // 1-1. 출생월 = 기록월
      if (iBornMon = iNowMon) then
      begin
         iBornCnt := iBornDay;
         iNowCnt  := iNowDay;
      end
      // 1-2. 출생월 < 기록월
      else if (iBornMon < iNowMon) then
      begin
         iBornCnt := (Month[iBornMon]) + iBornDay;
         iNowCnt  := (Month[iNowMon])  + iNowDay;
      end
      else
      begin

         //----------------------------------------------------------------
         // 출생일시는 6/1일 새벽인데, 기록일자는 5/31인 case 발생
         //  - 그냥 '예외처리' 개념으로 로직 추가 @ 2012.06.01
         //----------------------------------------------------------------
         if (iNowMon = iBornMon - 1) and
            (iBornDay = 1) then
         begin
            // Return
            Result := 0;

            Exit;
         end
         else
         begin
            MessageBox(self.Handle,
                       '종료월(기록,입원)이 시작월(출생)보다 작습니다. 기록일자를 재 선택 바랍니다.',
                       '교정연령 계산 실패',
                       MB_OK + MB_ICONWARNING
                       );

            Exit;
         end;
      end;
   end
   //------------------------------------
   // 2. 출생년도 < 기록년도
   //------------------------------------
   else if (iBornYear < iNowYear) then
   begin
      // 2-1. 출생월 = 기록월
      if (iBornMon = iNowMon) then
      begin
         iBornCnt := iBornDay;
         iNowCnt  := (iNowYear - iBornYear) * 365 + iNowDay;
      end
      // 2-2. 출생월 > 기록월
      else if (iBornMon > iNowMon) then
      begin
         // 기록월이 2월이후
         if (iNowMon > 1) then
         begin
            iBornCnt := (Month[iBornMon]) + iBornDay;
            iNowCnt  := (iNowYear - iBornYear) * 365 + (Month[iNowMon])  + iNowDay;
         end
         // 기록월이 1월
         else if (iNowMon = 1) then
         begin
            iBornCnt := (Month[iBornMon])   + iBornDay;
            iNowCnt  := (Month[iNowMon+12]) + iNowDay;
         end;
      end
      // 2-3. 출생월 < 기록월
      else if (iBornMon < iNowMon) then
      begin
         iBornCnt := (Month[iBornMon]) + iBornDay;
         iNowCnt  := (iNowYear - iBornYear) * 365 + (Month[iNowMon])  + iNowDay;
      end;

   end
   //------------------------------------
   // 3. 출생년도 > 기록년도
   //------------------------------------
   else
   begin
      MessageBox(self.Handle,
                 '종료년도(기록,입원)가 종료년도(출생)보다 작습니다. 기록일자를 재 선택 바랍니다.',
                 '교정연령 계산 실패',
                 MB_OK + MB_ICONWARNING
                 );

      Exit;
   end;


   // 순 경과일수(차이)
   diffDay  := iNowCnt - iBornCnt;


   //-------------------------------------------------------
   // 윤년 계산 추가
   //   - NICU 재원일수가 4년이내라는 전제하...-_-;
   //-------------------------------------------------------
   if (isYunYear(iNowYear) or isYunYear(iBornYear)) and                       // 종료년도(기록,입원)) 또는 시작년도(출생)가 윤년이면서,
      (((iNowYear > iBornYear) and (iNowMon > 2)) or                          // 종료년도(기록,입원)가 시작년도(출생)보다 같거나 크고 종료월(기록,입원)이 2월이후 또는
       ((iNowYear = iBornYear) and (iNowMon > 2) and (iBornMon <= 2))) then   // 종료월(기록,입원)이 2월이후이고 시작월(출생)이 1~2월이면, ++

      diffDay := diffDay + 1;

   // Return
   Result := diffDay;

end;



//------------------------------------------------------------------------------
// [진단명 가져오기] Procedure Event Handler
//  - 병동간호(MDN110F1)에서 가져오는 로직과 동일함.
//  - SU 간호기록지에서 사용하기 위함.
//
// Author : Lee, Se-Ha
// Date   : 2012.04.23
//------------------------------------------------------------------------------
procedure TMDN110FM.GetMainDiag(in_PatNo, in_MedDept, in_AdmDate, in_Locate, in_Gubun, in_DiagType, in_ChaDr, in_PatCls : String);
var
   i, RowNo : Integer;
   diagt    : HmdPdiagt;
begin

   screen.Cursor := crHourGlass;

   try
      combx_DiagName.Clear;


      diagt := HmdPdiagt.Create;


      RowNo := diagt.ListPatDiag(in_PatNo, in_MedDept, in_AdmDate, G_LOCATE, in_Gubun, in_DiagType, in_ChaDr, in_PatCls);


      // Tmax Error Check
      if RowNo = -1 then
      begin
         diagt.Free;

         ShowErrMsg;

         Exit;
      end;

      // 유효한 진단내역 가져온 경우.
      if RowNo > 0 then
      begin
         for i := 0 to RowNo - 1 do
         begin
            combx_DiagName.Items.Add(diagt.sDiagName[i]);
         end;

         // 최종 주진단 내역 선택
         combx_DiagName.ItemIndex := 0;

         // 진단명 표기
         lb_OpName.Caption := Trim(Combx_DiagName.Text);
      end;

      diagt.Free;

   finally
      screen.Cursor := crDefault;
   end;


end;


//------------------------------------------------------
// Stroke Unit 장비 인터페이스 Chart 연동
//------------------------------------------------------
procedure TMDN110FM.chr_VS_SuAfterDraw(Sender: TObject);
Var
   YMinPosition, YMidPosition, YMaxPosition : Longint;
begin
   //---------------------------------------------------------------------------
   // 최초 저장유무 Check후, 기준선 Drawing.
   //---------------------------------------------------------------------------
   if CheckIcuFstSave(P_PatNo,
                      DelChar(P_AdmDate, '-'),
                      FormatDateTime('yyyymmdd',dtp_RgtDate.Date),
                      P_NicuFlag) then
   begin
      With Chr_Vs_Su, Canvas do
      Begin
          YMinPosition := LeftAxis.CalcYPosValue(C_MINLINE);
          YMidPosition := LeftAxis.CalcYPosValue(C_MIDLINE);
          YMaxPosition := LeftAxis.CalcYPosValue(C_MAXLINE);


          // change pen and draw the line
          // Min-Line
          Pen.Width := 2;
          Pen.Style := psSolid;
          Pen.Color := clBlack;
          MoveTo(ChartRect.Left,YMinPosition);
          LineTo(ChartRect.Right,YMinPosition);
          LineTo(ChartRect.Right+Width3D,YMinPosition-Height3D);


          // Mid-Line
          Pen.Width := 2;
          Pen.Style := psSolid;
          Pen.Color := clBlack;
          MoveTo(ChartRect.Left,YMidPosition);
          LineTo(ChartRect.Right,YMidPosition);
          LineTo(ChartRect.Right+Width3D,YMidPosition-Height3D);


          // Max-Line
          Pen.Width := 2;
          Pen.Style := psSolid;
          Pen.Color := clBlack;
          MoveTo(ChartRect.Left,YMaxPosition);
          LineTo(ChartRect.Right,YMaxPosition);
          LineTo(ChartRect.Right+Width3D,YMaxPosition-Height3D);

          Font.Name := 'Arial';

          Font.Height := -15;   // <-- express font size in "Height", NOT "Size" ※ Best Size = -24

          Font.Color  := $005C70D5;//clYellow;
          Font.Style  := [fsBold];

          Brush.Style := bsClear;

          // 모니터링 항목추가(편집) 위한 최초저장여부 Set, 2011.07.19 LSH
          asg_IcuMon.Tag := 1;
      end;
   end;
end;


//----------------------------------------------------------
// B/S 측정내역 Display @ 2012.05.14
//----------------------------------------------------------
procedure TMDN110FM.mi_InsBsDataClick(Sender: TObject);
var
   u_Rectangle : TRect;
begin
   // 좌표위치 얻기
   u_Rectangle  := asg_IcuMon.CellRect(gNowCol, gNowRow);


   // Panel 위치 세팅 및 visible @ 2012.05.14
   if (asg_IcuMon.Width - asg_IcuMon.CellRect(gNowCol, gNowRow).Left) > (apn_Bst.Width) then
   begin
      apn_Bst.Top  := u_Rectangle.Top + asg_IcuMon.RowHeights[gNowRow];
      apn_Bst.Left := asg_IcuMon.CellRect(gNowCol, gNowRow).Left;
   end
   else
   begin
      apn_Bst.Top  := u_Rectangle.Top + asg_IcuMon.RowHeights[gNowRow];
      apn_Bst.Left := asg_IcuMon.CellRect(gNowCol, gNowRow).Left - apn_Bst.Width;
   end;


   // Panel 보여주기
   apn_Bst.Visible := True;


   // B/S 측정내역 조회
   GetBsData;

end;



//------------------------------------------------------------------------------
// B/S 측정 내역 조회
//  - SU 간호기록지 연동 (GR_73W 이형숙요청)
//
// Author : Lee, Se-Ha
// Date   : 2012.05.14
//------------------------------------------------------------------------------
procedure TMDN110FM.GetBsData;
var
   i, j, RowNo, iCnt : Integer;
   sType1,sType2,sType3,sType4,sType5 : String;
begin

   //--------------------------------------------------------
   // 1. Initialization
   //--------------------------------------------------------
   ugd_BsData.Clear;
   ugd_BsData.RowCount := 2;

   iCnt := 0;



   //--------------------------------------------------------
   // 2. B/S 측정결과 조회
   //--------------------------------------------------------
   try
      Screen.Cursor := crHourGlass;

      mdIochkt := HmdIochkt.Create;


      //----------------------------------------------------
      // 2.1. Set Argument Value
      //----------------------------------------------------
      sType1 := '10';                                              // 조회구분 : 기간별 B/S 측정결과
      sType2 := P_PatNo;                                           // 환자번호
      sType3 := DelChar(P_AdmDate, '-');                           // 입원일자
      sType4 := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);      // 조회 시작일자
      sType5 := FormatDateTime('yyyymmdd', dtp_RgtDate.Date + 1);  // 조회 종료일자



      //----------------------------------------------------
      // 2.2. Load Data
      //----------------------------------------------------
      RowNo := mdIochkt.ListIOWeight(sType1, sType2, sType3, sType4, sType5);




      // system error message
      if RowNo = -1 then
      begin
         ShowMessage(GetTxMsg);
         Exit;
      end
      else if RowNo = 0 then
      begin
         lb_BsStatus.Caption := '해당일자의 B/S내역이 없습니다.';
         Exit;
      end;


      //----------------------------------------------------
      // 2.3. Display Data
      //----------------------------------------------------
      for i := 0 to RowNo - 1 do
      begin
         with ugd_BsData, mdiochkt do
         begin
            // 해당 기록일자에 유효한 B/S 측정치만 조회
            if (FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     = sExecDate[i]) and (DelChar(sExecTime[i],':') >= C_STARTTM) or
               (FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) = sExecDate[i]) and (DelChar(sExecTime[i],':') <= C_ENDTM)   then
            begin
               RowCount := RowCount + 1;

               Cells[0, iCnt+1] := ConvertSDate(sExecDate[i]) + ' ' + sExecTime[i];       // 측정일시(YYYY-MM-DD HH24:MI)
               Cells[1, iCnt+1] := iVolume1[i];                                           // 측정값
               Cells[2, iCnt+1] := RemoveLfCr(sInsuline[i]);                              // 인슐린

               // [Hidden]
               Cells[3, iCnt+1] := ConvertSDate(sExecDate[i]);
               Cells[4, iCnt+1] := sExecTime[i];

               Inc(iCnt);
            end;
         end;
      end;

      // 정렬
      QuickSortGrid(ugd_BsData, 1, ugd_BsData.RowCount, 0, True);

      ugd_BsData.SetColAlignment(0, taCenter      ); // 우측정렬
      ugd_BsData.SetColAlignment(1, taRightJustify); // 우측정렬
      ugd_BsData.Repaint;

      if (iCnt > 0) then
      begin
         // 조회상태 Display
         lb_BsStatus.Caption := IntToStr(iCnt) + '건이 조회되었습니다.';
         ugd_BsData.RowCount := ugd_BsData.RowCount - 1;
      end
      else
         lb_BsStatus.Caption := '기록지 시간범위내 B/S내역이 없습니다.';

   finally
      Screen.Cursor := crDefault;

      mdIochkt.Free;
   end;
end;


//------------------------------------------------
// BST 내역 Panel 닫기
//------------------------------------------------
procedure TMDN110FM.bbt_BstCloseClick(Sender: TObject);
begin
   apn_Bst.Visible := False;
end;


//------------------------------------------------
// B/S 측정내역 assign To Grid
//------------------------------------------------
procedure TMDN110FM.ugd_BsDataDblClick(Sender: TObject);
begin
   //
   if ugd_BsData.Cells[0, ugd_BsData.Row] <> '' then
   begin
      asg_IcuMon.Cells[gNowCol, gNowRow]   := ugd_BsData.Cells[1, ugd_BsData.Row];
      asg_IcuMon.Cells[gNowCol, gNowRow+1] := ugd_BsData.Cells[2, ugd_BsData.Row];

      // 입력된 B/S내역 [임시 Data Grid]에 저장.
      asg_IcuMonEditingDone(Sender);
   end;

   // Panel 닫기
   bbt_BstCloseClick(Sender);

end;

//------------------------------------------------
//
//------------------------------------------------
procedure TMDN110FM.ugd_BsDataDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 5);
end;



//------------------------------------------------------------------------------
// I/O 측정 내역 조회 Procedure Event Handler
//  - SU 간호기록지 연동 (GR_73W 이형숙요청)
//
// Author : Lee, Se-Ha
// Date   : 2012.05.14
//------------------------------------------------------------------------------
procedure TMDN110FM.GetIoCheck(in_Gubun : Integer);
var
   i, k, RowNo, iCnt : Integer;
   sType1, sType2, sType3, sType4, sType5, strChkGrp : String;
   GridFontColor :TColor;
begin

   //--------------------------------------------------------
   // 1. Initialization
   //--------------------------------------------------------
   ugd_IoData.Clear;
   ugd_IoData.RowCount := 2;


   iCnt := 0;


   if (in_Gubun <> 9) then
   //----------------------------------------------------
   // Intake(경구/비경구/혈액), Output(배뇨/배설 등)
   //----------------------------------------------------
   begin
      // Grid 항목명 변경
      //  - [배설]만 용량아닌, 횟수로 표기요청 (이형숙) @ 2012.06.01
      if (in_Gubun = 7) then
         ugd_IoData.Title := '측정일시|측정항목|횟수'
      else
         ugd_IoData.Title := '측정일시|측정항목|용량';

      try
         Screen.Cursor := crHourGlass;

         //----------------------------------------------------
         // 2.1. Set Argument Value
         //----------------------------------------------------
         sType1 := 'Z';
         sType2 := P_PatNo;
         sType3 := DelChar(P_AdmDate, '-');
         sType4 := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);
         sType5 := '';


         mdIochkt := HmdIochkt.Create;


         //----------------------------------------------------
         // 2.2. Load Data
         //----------------------------------------------------
         RowNo := mdIochkt.ListIOWeight(sType1,sType2,sType3,sType4,sType5);


         // system error message
         if RowNo = -1 then
         begin
            ShowMessage(GetTxMsg);

            mdIochkt.Free;

            Exit;
         end;


         if RowNo = 0 then
         begin
            lb_IoStatus.Caption := '해당일자의 I/O내역이 없습니다.';

            mdIochkt.Free;

            Exit;
         end;



         //----------------------------------------------------
         // 2.3. Display Data
         //----------------------------------------------------
         for i:= 0 to RowNo - 1 do
         begin
            // 요청한 I/O 항목 구분자(in_Gubun)만, 목록 List-Up
            if (in_Gubun = StrToInt(Trim(mdIochkt.sChkGrp[i]))) then
            begin
               with ugd_IoData, mdIochkt do
               begin
                  // 해당 기록일자에 유효한 I/O 측정치만 조회
                  if (FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     = CopyByte(sChkItem1[i],1,8)) and (DelChar(sExecTime[i],':') >= C_STARTTM) or
                     (FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) = CopyByte(sChkItem1[i],1,8)) and (DelChar(sExecTime[i],':') <= C_ENDTM) then
                  begin
                     RowCount := RowCount + 1;

                     Cells[0, iCnt+1] := ConvertSDate(CopyByte(sChkItem1[i],1,8)) + ' ' + sExecTime[i];      // 측정일시(YYYY-MM-DD HH24:MI)
                     Cells[1, iCnt+1] := sChkItem[i];                                                    // 측정항목

                     // [배설]만 횟수로 표기 @ 2012.06.01
                     if (in_Gubun = 7) then
                     begin
                        Cells[2, iCnt+1] := sCount[i];                                                    // 측정횟수

                        // [Hidden]
                        Cells[3, iCnt+1] := iVolume1[i];                                                  // 측정값
                        Cells[4, iCnt+1] := sExecTime[i];                                                 // 측정시각
                     end
                     else
                     begin
                        Cells[2, iCnt+1] := iVolume1[i];                                                  // 측정값

                        // [Hidden]
                        Cells[3, iCnt+1] := sCount[i];                                                    // 측정횟수
                        Cells[4, iCnt+1] := sExecTime[i];                                                 // 측정시각
                     end;

                     Inc(iCnt);
                  end;
               end;
            end;
         end;

         // 정렬
         QuickSortGrid(ugd_IoData, 2, ugd_IoData.RowCount, 0, True);


         ugd_IoData.SetColAlignment(0, taCenter     );
         ugd_IoData.SetColAlignment(1, taLeftJustify);
         ugd_IoData.SetColAlignment(2, taCenter     );

         ugd_IoData.Repaint;

         if (iCnt > 0) then
         begin
            // 조회상태 Display
            lb_IoStatus.Caption := IntToStr(iCnt) + '건이 조회되었습니다.';
            ugd_IoData.RowCount := ugd_IoData.RowCount - 1;
         end
         else
            lb_IoStatus.Caption := '기록지 시간범위내 I/O내역이 없습니다.';

         // Free
         mdIochkt.Free;

      finally
         Screen.Cursor := crDefault;
      end;
   end
   else if (in_Gubun = 9) then
   //----------------------------------------------------
   // Hourly Urine Output(HUO) 내역 가져오기
   //----------------------------------------------------
   begin
      // Grid 항목명 변경
      ugd_IoData.Title := '측정일시|특이사항|용량';


      try
         Screen.Cursor := crHourGlass;

         //----------------------------------------------------
         // 2.1. Set Argument Value
         //----------------------------------------------------
         sType1   := '1';
         sType2   := P_PatNo;
         sType3   := DelChar(P_AdmDate, '-');
         sType4   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     + C_STARTTM + '00';
         sType5   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) + C_ENDTM   + '00';


         mdHuockt := HmdHuockt.Create;


         //----------------------------------------------------
         // 2.2. Load Data
         //----------------------------------------------------
         RowNo := mdHuockt.getUrine(sType1, sType2, sType3, sType4, sType5);



         if RowNo = -1 then
         begin
            mdHuockt.Free;

            ShowMessage(GetTxMsg);

            Exit;
         end;


         if RowNo = 0  then
         begin
            mdHuockt.Free;

            lb_IoStatus.Caption := '해당일자의 HUO내역이 없습니다.';

            Exit;
         end;



         //----------------------------------------------------
         // 2.3. Display Data
         //----------------------------------------------------
         for i:= 0 to RowNo - 1 do
         begin

            // 요청한 HUO 항목 List-Up
            with ugd_IoData, mdHuockt do
            begin
               // 해당 기록일자에 유효한 HUO 측정치만 조회
               if (FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     = CopyByte(sChkTime[i],1,8)) and (CopyByte(sChkTime[i],9,4) >= C_STARTTM) or
                  (FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) = CopyByte(sChkTime[i],1,8)) and (CopyByte(sChkTime[i],9,4) <= C_ENDTM) then
               begin
                  RowCount := RowCount + 1;

                  Cells[0, iCnt+1] := ConvertSDate(CopyByte(sChkTime[i],1,8)) + ' ' + CopyByte(sChkTime[i],9,2) + ':' + CopyByte(sChkTime[i],11,2);
                                                                                                      // 측정일시 YYYY-MM-DD HH24:MI)
                  Cells[1, iCnt+1] := sRemark[i];                                                     // 특이사항
                  Cells[2, iCnt+1] := sUrineCC[i];                                                    // 측정값

                  // [Hidden]
                  Cells[3, iCnt+1] := sChkTime[i];                                                    // 측정일시 (YYYYMMDDHH24MI)
                  Cells[4, iCnt+1] := sUrineCC[i];                                                    // 측정값

                  Inc(iCnt);
               end;
            end;
         end;


         // 정렬
         QuickSortGrid(ugd_IoData, 2, ugd_IoData.RowCount, 0, True);

         ugd_IoData.SetColAlignment(0, taCenter     );
         ugd_IoData.SetColAlignment(1, taLeftJustify);
         ugd_IoData.SetColAlignment(2, taCenter     );

         ugd_IoData.Repaint;

         if (iCnt > 0) then
         begin
            // 조회상태 Display
            lb_IoStatus.Caption := IntToStr(iCnt) + '건이 조회되었습니다.';
            ugd_IoData.RowCount := ugd_IoData.RowCount - 1;
         end
         else
            lb_IoStatus.Caption := '기록지 시간범위내 HUO내역이 없습니다.';


         // Free
         mdHuockt.Free;


      finally
         Screen.Cursor := crDefault;
      end;


   end;

end;




//------------------------------------------------------------------------------
// [PopUp] I/O 측정항목별 내역 조회 Mouse Button Event Handler
//  - SU 간호기록지 연동 (GR_73W 이형숙요청)
//
// Author : Lee, Se-Ha
// Date   : 2012.05.14
//------------------------------------------------------------------------------
procedure TMDN110FM.mi_InsIoDataClick(Sender: TObject);
var
   u_Rectangle : TRect;
   in_IoFlag   : Integer;
begin
   //---------------------------------------------------
   // 좌표위치 얻기
   //---------------------------------------------------
   u_Rectangle  := asg_IcuMon.CellRect(gNowCol, gNowRow);


   //---------------------------------------------------
   // Panel 위치(Left) 세팅
   //---------------------------------------------------
   if (asg_IcuMon.Width - asg_IcuMon.CellRect(gNowCol, gNowRow).Left) > (apn_Bst.Width) then
   begin
      apn_IoChk.Left := u_Rectangle.Left;
   end
   else
   begin
      apn_IoChk.Left := u_Rectangle.Left - apn_IoChk.Width;
   end;


   //---------------------------------------------------
   // Panel 위치(Top) 세팅
   //---------------------------------------------------
   if (asg_IcuMon.Top - asg_IcuMon.CellRect(gNowCol, gNowRow).Top) > (apn_Bst.Height) then
   begin
      apn_IoChk.Top  := u_Rectangle.Top;
   end
   else
   begin
      apn_IoChk.Top := u_Rectangle.Top - apn_IoChk.Height;
   end;


   //---------------------------------------------------
   // [I/O 항목별] 구분자 및 항목명 Set
   //---------------------------------------------------
   if (sl_CodeList.Strings[gNowRow-1]    = 'SD02') or
       ((sl_CodeList.Strings[gNowRow-1] >= 'SD26') and
        (sl_CodeList.Strings[gNowRow-1] <= 'SD35')) then
   begin
      in_IoFlag := C_GYUNGGOO;
      apn_IoChk.Caption.Text := 'I/O 측정내역(경구) 조회';
   end
   else if (sl_CodeList.Strings[gNowRow-1]   = 'SD03') or
           (sl_CodeList.Strings[gNowRow-1]   = 'SD04') or
           ((sl_CodeList.Strings[gNowRow-1] >= 'SD06') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SD15')) then
   begin
      in_IoFlag := C_BIGYUNGGOO;
      apn_IoChk.Caption.Text := 'I/O 측정내역(비경구) 조회';
   end
   else if (sl_CodeList.Strings[gNowRow-1] >= 'SD16') and
           (sl_CodeList.Strings[gNowRow-1] <= 'SD20') then
   begin
      in_IoFlag := C_HYULEK;
      apn_IoChk.Caption.Text := 'I/O 측정내역(혈액) 조회';
   end
   else if ((sl_CodeList.Strings[gNowRow-1] >= 'SF02') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SF03')) or
           ((sl_CodeList.Strings[gNowRow-1] >= 'SF16') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SF18'))
            then
   begin
      in_IoFlag := C_BAENYO;
      apn_IoChk.Caption.Text := 'I/O 측정내역(배뇨) 조회';
   end
   else if (sl_CodeList.Strings[gNowRow-1]   = 'SF25') or
           ((sl_CodeList.Strings[gNowRow-1] >= 'SF19') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SF22'))then
   begin
      in_IoFlag := C_BAESUL;
      apn_IoChk.Caption.Text := 'I/O 측정내역(배설) 조회';
   end
   else if (sl_CodeList.Strings[gNowRow-1] = 'SF13') then
   begin
      in_IoFlag := C_HUO;
      apn_IoChk.Caption.Text := 'I/O 측정내역(HUO) 조회';
   end
   else if (sl_CodeList.Strings[gNowRow-1] = 'SF14') then
   begin
      in_IoFlag := C_BAENONG;
      apn_IoChk.Caption.Text := 'I/O 측정내역(배농/흡인) 조회';
   end
   else if (sl_CodeList.Strings[gNowRow-1] = 'SF15') then
   begin
      in_IoFlag := C_GOOTO;
      apn_IoChk.Caption.Text := 'I/O 측정내역(구토) 조회';
   end;



   //---------------------------------------------------
   // Panel 보여주기
   //---------------------------------------------------
   apn_IoChk.Visible := True;



   //---------------------------------------------------
   // I/O 구분별 측정내역 조회
   //---------------------------------------------------
   GetIoCheck(in_IoFlag);


end;


//------------------------------------------------
// I/O 측정내역 조회 Panel 닫기
//------------------------------------------------
procedure TMDN110FM.bbt_IoCloseClick(Sender: TObject);
begin
   apn_IoChk.Visible := False;
end;


//------------------------------------------------
// I/O 측정내역 선택한 Cell에 복사
//------------------------------------------------
procedure TMDN110FM.ugd_IoDataDblClick(Sender: TObject);
begin
   if ugd_IoData.Cells[0, ugd_IoData.Row] <> '' then
   begin
      // 측정량(cc) 복사
      asg_IcuMon.Cells[gNowCol, gNowRow]   := ugd_IoData.Cells[2, ugd_IoData.Row];

      // 입력된 I/O내역 [임시 Data Grid]에 저장.
      asg_IcuMonEditingDone(Sender);
   end;

   // Panel 닫기
   bbt_IoCloseClick(Sender);

end;



procedure TMDN110FM.ugd_IoDataDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 5);
end;

// ICU Note 기간별 조회 -2013.05.15 smpark
procedure TMDN110FM.bbt_NoteSearchClick(Sender: TObject);
var
   items2  : HmdIcutot;
   iRowCnt : Integer;    // the number of rows searched
   i       : Integer;    // Loop Index
   sPatNo, sAdmDate, sFromActDate, sToActDate, sSetType : String;
begin


   asd_NoteSearch.Clear;
   asd_NoteSearch.RowCount := 2;

   asd_NoteSearch.Cells[0,0] := '기록일자';
   asd_NoteSearch.Cells[1,0] := '총섭취량';
   asd_NoteSearch.Cells[2,0] := '총배설량';
   asd_NoteSearch.Cells[3,0] := '대변횟수';

   //------------------------------------------------
   // 1. 조회
   //------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      items2 := HmdIcutot.Create;

      //---------------------------------------------
      // 1-1. Set Parameter Value
      //---------------------------------------------
      sPatNo       := P_PatNo;
      sAdmDate     := DelChar(P_AdmDate,'-');
      sFromActDate := FormatDateTime('YYYYMMDD',dtp_Fromdate.Date);
      sToActDate   := FormatDateTime('YYYYMMDD',dtp_Todate.Date  );

      if (P_NicuFlag = 'Y') then
         sSetType := 'NIC'
      else if (P_NicuFlag = 'S') then
         sSetType := 'STR'
      else
         sSetType := 'MON';

      //---------------------------------------------
      // 1-2. Load Data from D/B
      //---------------------------------------------
      iRowCnt := items2.ICMON_L2(sPatNo, sAdmDate, sFromActDate, sToActDate, sSetType);

      // Show Error Message
      if iRowCnt < 0 then
      begin
         ShowErrMsg;
         Exit;
      end

      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         Exit;
      end;

      asd_NoteSearch.RowCount := iRowCnt+1;

      //----------------------------------------------------
      // 1-3. Display Data
      //----------------------------------------------------
      for i := 0 to iRowCnt - 1 do
      begin
         asd_NoteSearch.Cells[0, i+1] := ConvertSDate(items2.sActdate[i]);    // 기록일자
         asd_NoteSearch.Cells[1, i+1] := items2.sIntake[i];     // 총섭취량
         asd_NoteSearch.Cells[2, i+1] := items2.sOutput[i];     // 총배설량
         asd_NoteSearch.Cells[3, i+1] := items2.sOutputcnt[i];  // 대변횟수
      end;



   finally
      Screen.Cursor := crDefault;
      items2.Free;
   end;

end;

procedure TMDN110FM.asd_NoteSearchGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   if ACol = 0 then
      HAlign := taCenter
   else
      HAlign := taRightJustify;
end;

// 구로병원 ICU Note 기간별 조회 값 셋팅 -2013.05.16 smpark
procedure TMDN110FM.SetNoteSearch;
var
   systime : TDateTime;
begin
   //---------------------------------------------------------------
   // 1. 초기화
   //---------------------------------------------------------------
   GetSysDate(systime);


   //---------------------------------------------------------------
   // 1-1. 작성일자 초기화
   //---------------------------------------------------------------
   if  (
       (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
       (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
       ) then
   begin
      // ICU Note 기간별 조회 -2013.05.15 smpark
      dtp_Fromdate.Date := systime - 6;
      dtp_Todate.Date   := systime;

      // CRRT 간호기록 -2013.08.23 smpark
      dtb_Crrt.Date     := systime;
   end
   else if (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
           (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
   begin
      // ICU Note 기간별 조회 -2013.05.15 smpark
      dtp_Fromdate.Date := systime - 7;
      dtp_Todate.Date   := systime - 1;

      // CRRT 간호기록 -2013.08.23 smpark
      dtb_Crrt.Date     := systime - 1;
   end;

   bbt_ShowNoteClick(nil);

end;


procedure TMDN110FM.bbt_ShowNoteSearchClick(Sender: TObject);
begin
   // 구로병원 ICU Note 기간별 조회 -2013.05.15 smpark
   if G_Locate = 'GR' then
   begin
      apn_NoteSearch.Top  := 92;
      apn_NoteSearch.Left := 690;
      apn_NoteSearch.Visible := True;

      bbt_NoteSearchClick(sender);

   end;
end;

//2013.06.05 khs 구로만 간호기록 버튼 추가(구로 중환자실1 이신애 요청)
procedure TMDN110FM.bbt_NurseWriteClick(Sender: TObject);
var
   FForm : TForm;
begin
   // 간호기록 호출
   FForm := BplFormCreate('MDN420F1');

   SetBplStrProp('MDN420F1','propFromForm'   , 'MDN110FM');
   SetBplStrProp('MDN420F1','propFromWardno' , P_WardNo  );
   SetBplStrProp('MDN420F1','propFromPatno'  , P_PatNo   );

   FForm.ShowModal;
end;

//2013.06.18 khs 신생아대장에서 출생일자와 재태기간 구해서 교정연령 계산
//**********************************************************************************
//*****************************   교정연령 계산법   ********************************
//출생일자 : 2013-05-23
//현재일자 : 2013-06-14
//재태기간 : 38(주) + 2(일)
//지낸기간 = 현재일자 - 출생일자 : 3(주) + 1(1일) = 2013-06-14 - 2013-05-23 = [22일]
//교정연령 = 재태기간 + 지낸기간 : 41 + 3 = (38 + 2) + (3 + 1) [주와 일 합]
//**********************************************************************************
procedure TMDN110FM.GetNbabyBorndate();
var
   RowNo, i : Integer;
   sType1, sType2, sType3, sType4 : String;
   sFstWks, sFstDay, sBornDate, sRgtDate : String;
begin
   // 초기화
   lb_DgpWks.Caption   := '';
   lb_DgpWks.Hint      := '';

   sType1 := P_PatNo;
   sType2 := DelChar(P_AdmDate,'-'); // P_AdmDate; yyyy-mm-dd 데이터를 '-'제거함. -2014.11.06 smpark
   sType3 := P_WardNo;
   sType4 := 'C';

   Screen.Cursor := crHourGlass;
   try
      mdNbabyt := HmdNbabyt.Create;

      RowNo := mdNbabyt.MultiSelNbaby(sType1,sType2,sType3,sType4);

      // System Error
      if (RowNo = -1) then
      begin
         mdNbabyt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      if (RowNo = 0) then
      begin
         mdNbabyt.Free;
         Exit;
      end;

      lb_DgpWks.Caption   := mdNbabyt.sAge[0] + ' + ' + mdNbabyt.sAge2[0];
      lb_DgpWks.Hint      := '출생일시: ' + ConvertSDate(mdNbabyt.sBorndate[0]);

      // 교정연령 계산위한 변수 assign
      sFstWks   := mdNbabyt.sAge[0];
      sFstDay   := mdNbabyt.sAge2[0];
      sBornDate := mdNbabyt.sBorndate[0];
      sRgtDate  := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);

      //------------------------------------------------------------------------
      // 교정연령(wks) 계산위한 CalcNowDay 호출
      //------------------------------------------------------------------------
      if (sFstWks <> '')   and
         (sFstDay <> '')   and
         (sBornDate <> '') and
         (sRgtDate  <> '') then
      begin
         lb_NowWks.Caption := '[ ' + CalcNowDay(sFstWks,
                                                sFstDay,
                                                sBornDate,
                                                sRgtDate)
                                   + ' ]';
      end
      else
      begin
         lb_NowWks.Caption  := '신생아정보조사지, 신생아대장 정보없음';
      end;

      mdNbabyt.Free;
   finally
      Screen.Cursor := crDefault;
   end;

end;

procedure TMDN110FM.asg_IcuMonExit(Sender: TObject);
begin

   // -------------------------------------------------------------------------
   // [구로] SETCODE : MF24(대변(g)) 0또는 5이상만 입력될 수 있도록 함
   // 2013.08.05 smpark
   // -------------------------------------------------------------------------
   if (G_Locate = 'GR') and
      (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'MF24') and
      (asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row] <> '')  and
      (asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row] <> '0') and
      (StrToInt(asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row]) <  5) then
   begin

      showmessage('대변의 양(g) 입력시 0또는 5이상만 입력 가능합니다.');
      asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row] := '';

      // 최초 Data를 항목별로 Client Data-Set(cds_SaveItem)에 저장 (변경여부는 'N' : Black)
      GetSaveList(sl_CodeList.Strings[asg_IcuMon.Row-1],
                  asg_IcuMon.Cells[asg_IcuMon.col,0],
                  '',
                  '',
                  '');
      exit;
   end;

end;

procedure TMDN110FM.asg_IcuMonCellChanging(Sender: TObject; OldRow, OldCol,
  NewRow, NewCol: Integer; var Allow: Boolean);
begin

   // -------------------------------------------------------------------------
   // [구로] SETCODE : MF24(대변(g)) 0또는 5이상만 입력될 수 있도록 함
   // 2013.08.05 smpark
   // -------------------------------------------------------------------------
   if (G_Locate = 'GR') and
      (sl_CodeList.Strings[OldRow-1] = 'MF24') and
      (asg_IcuMon.Cells[OldCol,OldRow] <> '')  and
      (asg_IcuMon.Cells[OldCol,OldRow] <> '0') and
      (StrToInt(asg_IcuMon.Cells[OldCol,OldRow]) <  5) then
   begin

      showmessage('대변의 양(g) 입력시 0또는 5이상만 입력 가능합니다.');
      asg_IcuMon.Cells[OldCol,OldRow] := '';

      gMF24Row := OldRow;
      gMF24Col := OldCol;

      // 최초 Data를 항목별로 Client Data-Set(cds_SaveItem)에 저장 (변경여부는 'N' : Black)
      GetSaveList(sl_CodeList.Strings[OldRow-1],
                  asg_IcuMon.Cells[OldCol,0],
                  '',
                  '',
                  '');
   end;

end;

procedure TMDN110FM.asg_CrrtCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
   if (ARow > 0) and (aCol > 0) then
      CanEdit := True;
end;

procedure TMDN110FM.asg_CrrtKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = Char(VK_RETURN) then
   begin

   end;

   if (asg_Crrt.Row <> 3) and
      (asg_Crrt.Row <> 6) and
      (asg_Crrt.Row <> 8) and
      (asg_Crrt.Row <> 10) then
   begin
      if (Not (Key in ['0'..'9'
             ,Char(VK_LEFT),Char(VK_RIGHT)
             ,Char(VK_BACK),Char(VK_DELETE)
             ,Char(VK_RETURN)])) then
      begin
         Beep;
         Key := #0;
         exit;
      end;
   end;

   // Day, Evening, Night 구분
   if asg_Crrt.Col = 1 then
      lb_Crrt.Caption := 'Y'
   else
      lb_Crrt.Caption := 'N';

end;

procedure TMDN110FM.asg_CrrtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_RETURN  then
   begin
      if asg_Crrt.Row < asg_Crrt.RowCount-1 then
         asg_Crrt.Row := asg_Crrt.Row + 1;
   end;
end;

procedure TMDN110FM.bbt_CrrtSaveClick(Sender: TObject);
var
   i, iCnt : Integer;
   iCrrt : HmdIcutot;
   sType1, sPatno, sAdmdate, sActdate, sActtime, sBldflow, sReplacet,
   sReplamix, sDialysat, sPbp, sRemoval, sAntifutn, sFuthandw, sAntihepa,
   sHeparndw, sEditid, sEditip : String;
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   if (Trim(ed_CrrtHour.Text) = '') or (Trim(ed_CrrtMin.Text) = '') then
   begin
      showmessage('CRRT 간호기록 작성 시간을 입력하세요!');
      Exit;
   end;

   if LengthByte(Trim(ed_CrrtHour.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '작성시간은 두자리로 입력해 주십시오.',
                 'CRRT 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if LengthByte(Trim(ed_CrrtMin.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '작성분은 두자리로 입력해 주십시오.',
                 'CRRT 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if StrToint(ed_CrrtHour.Text) > 23 then
   begin
      MessageBox(Self.Handle,
                 '시간을 다시 입력하시기 바랍니다.',
                 'CRRT 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      ed_Hour.Text := '';
      Exit;
   end;

   if StrToint(ed_CrrtMin.Text) > 59 then
   begin
      MessageBox(Self.Handle,
                 '분을 다시 입력하시기 바랍니다.',
                 'CRRT 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      ed_Min.Text := '';
      Exit;
   end;


   // CRRT 처방 체크 -2013.09.02 smpark
   gCrrtDate := '';
   gCrrtDate := CrrtCheck(P_PatNo,FormatDateTime('yyyymmdd',dtb_Crrt.Date));

   if gCrrtDate = '' then
   begin
      MessageBox(Self.Handle,
                 'CRRT 처치코드 처방이 없는 환자입니다. 확인 바랍니다.',
                 'CRRT 저장전 확인',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 간호기록 연동
   me_CrrtNrrec.Text := '';




   if lb_Crrt.Caption = 'Y' then
   begin

      try
         Screen.Cursor := crHourGlass;

         iCrrt := HmdIcutot.Create;

         sType1    := 'I';
         sPatno    := P_PatNo;
         sAdmdate  := P_AdmDate;
         sActdate  := FormatDateTime('yyyymmdd', dtb_Crrt.Date);
         sActtime  := ed_CrrtHour.Text + ':' + ed_CrrtMin.Text;

         sBldflow  := asg_Crrt.Cells[1,1];
         sReplacet := asg_Crrt.Cells[1,2];
         sReplamix := asg_Crrt.Cells[1,3];
         sDialysat := asg_Crrt.Cells[1,4];
         sPbp      := asg_Crrt.Cells[1,5];
         sRemoval  := asg_Crrt.Cells[1,6];
         sAntifutn := asg_Crrt.Cells[1,7];
         sFuthandw := asg_Crrt.Cells[1,8];
         sAntihepa := asg_Crrt.Cells[1,9];
         sHeparndw := asg_Crrt.Cells[1,10];

         sEditid   := md_Userid;
         sEditip   := G_Userip;

         iCnt := iCrrt.CRRTN_I1(sType1, sPatno, sAdmdate, sActdate, sActtime, sBldflow, sReplacet,
                               sReplamix, sDialysat, sPbp, sRemoval, sAntifutn, sFuthandw, sAntihepa,
                               sHeparndw, sEditid, sEditip);
         if iCnt <> 1 then
         begin
            ShowErrMsg(stb_Message);
            iCrrt.Free;
            exit;
         end;

         stb_message.Panels[0].Text := '정상적으로 [저장]되었습니다.';

         // 간호기록
         me_CrrtNrrec.Text := '[CRRT 간호기록]' + #13#10 +
                              '(1) BLOOD FLOW(ML/MIN) : '+ sBldflow  + #13#10 +
                              '(2) REPLACEMENT(ML/HR) : '+ sReplacet + #13#10 +
                              '    REPLACEMENT MIX(meq/5L): '+ sReplamix + #13#10 +
                              '(3) DIALYSATE(ML/HR)   : '+ sDialysat + #13#10 +
                              '(4) PBP(ML/HR)         : '+ sPbp      + #13#10 +
                              '(5) REMOVAL(ML/HR)     : '+ sRemoval  + #13#10 +
                              '(6) ANTICOAGULANT:FUTHAN(ML/HR) : '+ sAntifutn + #13#10 +
                              '                  용량          : '+ sFuthandw + #13#10 +
                              '                  HEPARIN(ML/HR): '+ sAntihepa + #13#10 +
                              '                  용량          : '+ sHeparndw + #13#10;


         iCrrt.Free;

         // CRRT 간호기록 병동 간호기록 연동 -2013.08.27 smpark
         if Application.MessageBox(Pchar('다음 내용을 간호기록으로 저장 하시겠습니까?' + #13#10 + #13#10 +
                                         ' '),
                                   '병동간호기록 저장전 확인',MB_OKCANCEL) = IDOK then
         begin
            CrrtNrrecSave;
         end;

      finally
         Screen.Cursor := crDefault;
      end;

   end


end;

procedure TMDN110FM.bbt_CrrtBeforClick(Sender: TObject);
var
   RowNo : Integer;
   iCrrt : HmdIcutot;
   in_Gubun, in_Patno, in_Admdate, in_Actdate, in_Acttime,
   sBldflow, sReplacet, sReplamix, sDialysat, sPbp, sRemoval, sAntifutn,
   sFuthandw, sAntihepa, sHeparndw : String;
begin
   try

      iCrrt := HmdIcutot.Create;

      in_Gubun   := 'B';
      in_Patno   := P_PatNo;
      in_Admdate := P_AdmDate;
      in_Actdate := FormatDateTime('yyyymmdd', dtb_Crrt.Date);
      in_Acttime := lb_CrrtTime.Caption;

      RowNo := iCrrt.CRRTN_L1(in_Gubun, in_Patno, in_Admdate, in_Actdate, in_Acttime);

      if RowNo = -1 then
      begin
         ShowErrMsg(stb_Message);
         iCrrt.Free;
         exit;
      end;

      if RowNo = 0 then
      begin
         stb_message.Panels[0].Text := '저장 된 내용이 없습니다.';
         iCrrt.Free;

         // CRRT 간호기록 최종기록 조회
         CrrtnMaxData;

         exit;
      end;

      with asg_Crrt, iCrrt do
      begin
         lb_CrrtTime.Caption := sActtime[0];
         ed_CrrtHour.Text := CopyByte(sActtime[0],1,2);
         ed_CrrtMin.Text  := CopyByte(sActtime[0],4,2);

         Cells[1,1] := sBldflow[0];
         Cells[1,2] := sReplacet[0];
         Cells[1,3] := sReplamix[0];
         Cells[1,4] := sDialysat[0];
         Cells[1,5] := sPbp[0];
         Cells[1,6] := sRemoval[0];
         Cells[1,7] := sAntifutn[0];
         Cells[1,8] := sFuthandw[0];
         Cells[1,9] := sAntihepa[0];
         Cells[1,10] := sHeparndw[0];
      end;

      stb_message.Panels[0].Text := '정상적으로 [조회]되었습니다.';

      iCrrt.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDN110FM.bbt_CrrtCloseClick(Sender: TObject);
begin
   apn_Crrt.Visible := False;
end;

procedure TMDN110FM.bbt_CrrtClick(Sender: TObject);
begin
   lb_CrrtTime.Caption := '';
   ed_CrrtHour.Text := '';
   ed_CrrtMin.Text  := '';

   // CRRT 간호기록 최종기록 조회
   CrrtnMaxData;

   apn_Crrt.Left := 950;
   apn_Crrt.Top  := 90;
   apn_Crrt.Visible := True;
end;

procedure TMDN110FM.bbt_CrrtClearClick(Sender: TObject);
var
   systime : TDateTime;
   i : integer;
begin
   //---------------------------------------------------------------
   // 1. 초기화
   //---------------------------------------------------------------
   lb_CrrtTime.Caption := '';

   for i:=1 to asg_Crrt.RowCount -1 do
      asg_Crrt.Cells[1,i] := '';

   GetSysDate(systime);
   dtb_Crrt.Date := systime;
   ed_CrrtHour.Text := FormatDateTime('hh',systime);
   ed_CrrtMin.Text  := FormatDateTime('nn',systime);

end;

procedure TMDN110FM.bbt_CrrtAfterClick(Sender: TObject);
var
   RowNo : Integer;
   iCrrt : HmdIcutot;
   in_Gubun, in_Patno, in_Admdate, in_Actdate, in_Acttime,
   sBldflow, sReplacet, sReplamix, sDialysat, sPbp, sRemoval, sAntifutn,
   sFuthandw, sAntihepa, sHeparndw : String;
begin
   try
      iCrrt := HmdIcutot.Create;

      in_Gubun   := 'A';
      in_Patno   := P_PatNo;
      in_Admdate := P_AdmDate;
      in_Actdate := FormatDateTime('yyyymmdd', dtb_Crrt.Date);
      in_Acttime := lb_CrrtTime.Caption;;

      RowNo := iCrrt.CRRTN_L1(in_Gubun, in_Patno, in_Admdate, in_Actdate, in_Acttime);

      if RowNo = -1 then
      begin
         ShowErrMsg(stb_Message);
         iCrrt.Free;
         exit;
      end;

      if RowNo = 0 then
      begin
         stb_message.Panels[0].Text := '저장 된 내용이 없습니다.';
         iCrrt.Free;

         // CRRT 간호기록 최종기록 조회
         CrrtnMaxData;

         exit;
      end;

      with asg_Crrt, iCrrt do
      begin
         lb_CrrtTime.Caption := sActtime[0];
         ed_CrrtHour.Text := CopyByte(sActtime[0],1,2);
         ed_CrrtMin.Text  := CopyByte(sActtime[0],4,2);

         Cells[1,1] := sBldflow[0];
         Cells[1,2] := sReplacet[0];
         Cells[1,3] := sReplamix[0];
         Cells[1,4] := sDialysat[0];
         Cells[1,5] := sPbp[0];
         Cells[1,6] := sRemoval[0];
         Cells[1,7] := sAntifutn[0];
         Cells[1,8] := sFuthandw[0];
         Cells[1,9] := sAntihepa[0];
         Cells[1,10] := sHeparndw[0];
      end;

      stb_message.Panels[0].Text := '정상적으로 [조회]되었습니다.';

      iCrrt.Free;

   finally
      Screen.Cursor := crDefault;
   end;

end;

// CRRT 간호기록 최종기록 조회
procedure TMDN110FM.CrrtnMaxData;
var
   i, RowNo : Integer;
   iCrrt : HmdIcutot;
   in_Gubun, in_Patno, in_Admdate, in_Actdate, in_Acttime,
   sBldflow, sReplacet, sReplamix, sDialysat, sPbp, sRemoval, sAntifutn,
   sFuthandw, sAntihepa, sHeparndw : String;
begin

   for i := 1 to asg_Crrt.Rowcount -1 do
   begin
      asg_Crrt.cells[1,i] := '';
   end;


   try
      iCrrt := HmdIcutot.Create;

      in_Gubun   := '0';
      in_Patno   := P_PatNo;
      in_Admdate := P_AdmDate;
      in_Actdate := FormatDateTime('yyyymmdd', dtb_Crrt.Date);
      in_Acttime := '';

      RowNo := iCrrt.CRRTN_L1(in_Gubun, in_Patno, in_Admdate, in_Actdate, in_Acttime);

      if RowNo = -1 then
      begin
         ShowErrMsg(stb_Message);
         iCrrt.Free;
         exit;
      end;

      if RowNo = 0 then
      begin
         stb_message.Panels[0].Text := '저장 된 내용이 없습니다.';
         iCrrt.Free;
         exit;
      end;

      with asg_Crrt, iCrrt do
      begin
         lb_CrrtTime.Caption := sActtime[0];
         ed_CrrtHour.Text := CopyByte(sActtime[0],1,2);
         ed_CrrtMin.Text  := CopyByte(sActtime[0],4,2);

         Cells[1,1] := sBldflow[0];
         Cells[1,2] := sReplacet[0];
         Cells[1,3] := sReplamix[0];
         Cells[1,4] := sDialysat[0];
         Cells[1,5] := sPbp[0];
         Cells[1,6] := sRemoval[0];
         Cells[1,7] := sAntifutn[0];
         Cells[1,8] := sFuthandw[0];
         Cells[1,9] := sAntihepa[0];
         Cells[1,10] := sHeparndw[0];
      end;

      stb_message.Panels[0].Text := '정상적으로 [조회]되었습니다.';

      iCrrt.Free;

   finally
      Screen.Cursor := crDefault;
   end;


end;

// CRRT 간호기록 병동 간호기록 연동
procedure TMDN110FM.CrrtNrrecSave;
var
   RowNo, i, j  : Integer;
   iCrect       : HmdIcutot;
   sType1       : String;
   sIcuNoteCd   : String;   // NICU와 ICU 노트 항목Code 구분을 위한 flag, 2011.10.31 LSH
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;


   Screen.Cursor := crHourglass;

   try
      iCrect := HmdIcutot.Create;

      //---------------------------------------------------
      // Set Parameter Value : 병동간호기록 저장
      //---------------------------------------------------
      sType1 := '7';
      j      := 1;


      with iCrect do
      begin
         sPatno   := P_PatNo  ;
         sAdmDate := P_AdmDate;
         sSetType := '';
         sMoniPrd := '';
         sActDate := FormatDateTime('yyyymmdd', dtb_Crrt.Date);
         sActTime := ed_CrrtHour.Text + ':' + ed_CrrtMin.Text;
         sNoteTxt := Trim(me_CrrtNrrec.Lines.Text);
         sNoteId  := md_Userid;
         sEditId  := md_UserId;

         // [EMR연계] 간호기록 자동발생 적용(NEW EMR) -2016.07.18 smpark
         sEmrFlag := G_EMRFLAG;
      end;

      //-----------------------------------------------
      // Execute Transaction
      //-----------------------------------------------
      RowNo := iCrect.InsertDayMonitorList(sType1, j);



      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         iCrect.Free;
         exit;
      end;


      iCrect.Free;

      stb_Message.Panels[0].Text := '병동간호기록에 저장되었습니다.';


   finally
      screen.Cursor := crDefault;
   end;


end;


procedure TMDN110FM.dtb_CrrtChange(Sender: TObject);
begin
   lb_CrrtTime.Caption := '';
   ed_CrrtHour.Text := '';
   ed_CrrtMin.Text  := '';

   // CRRT 간호기록 최종기록 조회
   CrrtnMaxData;
end;

// CRRT 처방 체크 -2013.09.02 smpark
function TMDN110FM.CrrtCheck(in_Patno,in_Orddate:String) : String;
var
   RowNo, i : Integer;
   sType1, sType2, sType3, sType4, sType5, sType6 : String;
   mdWrkLst : HmdWrkLst;
begin

   Result := '';

   Screen.Cursor := crHourGlass;
   try
      //create class
      mdWrkLst := HmdWrkLst.Create;

      //Input Params Assign
      sType1 := 'X';
      sType2 := in_Patno;
      sType3 := in_Orddate;
      sType4 := '';
      sType5 := '';
      sType6 := '';

      //Tuxedo Service Call
      RowNo := mdWrkLst.CheckList7(sType1,sType2,sType3,sType4,sType5,sType6);

      //System Error
      if (RowNo = -1) then
      begin
         ShowErrMsg;
         Exit;
      end;

      //System Error
      if (RowNo = 0) then
      begin
         mdWrkLst.Free;
         Exit;
      end;

      Result := mdWrkLst.sCode1[0];

      mdWrkLst.Free;
   finally
      Screen.Cursor := crDefault;
   end;

end;
//신체억제대 기록지 입력화면 호출 2015.02.16 yoon
procedure TMDN110FM.sbt_PrinterClick(Sender: TObject);
var
   FForm : TForm;
begin

   //기록지 출력 -> 입력화면 호출로 변경 2015.02.16 yoon
   FForm := BplFormCreate('MDN154F1');
   SetBplStrProp(FForm,'prop_Patno'   , ugd_PatList.Cells[3,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_Admdate' , ugd_PatList.Cells[4,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_RoomNo'  , ugd_PatList.Cells[17,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_WardNo'  , combx_WardNm.Text);
   SetBplStrProp(FForm,'prop_PatName' , ugd_PatList.Cells[1,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_Meddept' , ugd_PatList.Cells[5,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_Resno1'  , ugd_PatList.Cells[9,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_Resno2'  , ugd_PatList.Cells[10,ugd_PatList.Row]);
   SetBplStrProp(FForm,'prop_SexAge'  , ugd_PatList.Cells[2,ugd_PatList.Row]);

   McomFormShow(FForm);

end;

// [EMR연계] 2016.04.12 홍창한 추가함(장은석).
procedure TMDN110FM.bt_printClick(Sender: TObject);
var
   rc         : Integer;
   wk_o_tpsvc : TTpSvc;
   sPageText  : String;
begin
   // [EMR연계] 2016-04-04 장은석 , 입원환자 기본정보 Load 추가
   if pv_Patsect = 'I' then
   begin
      wk_o_tpsvc := TTpSvc.Create;
      try
         wk_o_tpsvc.Init (   nil    );
         wk_o_tpsvc.MsgClearFlag     :=  False   ;
         wk_o_tpsvc.ShowMsgFlag      :=  False   ;
         wk_o_tpsvc.ShowCursorFlag   :=  False   ;
         wk_o_tpsvc.ShowErrMsgFlag   :=  False   ;
         wk_o_tpsvc.NoDataMsgType    :=  0       ;
         wk_o_tpsvc.CountField       :=  '';

         wk_o_tpsvc.GetSvc('SI_EMRPR_L2'
                        , [
                           'S_FLAG1'     , 'B'
                        ,  'S_STRING1'   , P_PatNo
                        ,  'S_STRING2'   , pv_Meddate
                          ]
                        , [
                           'S_STRING1'   , 'Patno'
                        ,  'S_STRING2'   , 'Patname'
                        ,  'S_STRING3'   , 'Sex'
                        ,  'S_STRING4'   , 'Age'
                        ,  'S_STRING5'   , 'Dschdate'
                        ,  'S_STRING6'   , 'Meddept'
                        ,  'S_STRING7'   , 'Meddeptnm'
                        ,  'S_STRING8'   , 'Ward'
                        ,  'S_STRING9'   , 'Chadrid'
                        ,  'S_STRING10'  , 'Chadrnm'
                        ,  'S_STRING11'  , 'Gendrnm'
                        ,  'S_STRING12'  , 'Resno'
                        ,  'S_STRING13'  , 'Diagname'
                        ,  'S_STRING14'  , 'Birthdate'
                        ,  'S_STRING15'  , 'Printdate'
                        ,  'S_STRING16'  , 'Chartstat'
                        ,  'S_NAME1'     , 'Hospaddr'
                        ,  'S_NAME2'     , 'Cpattest'
                          ]
                          );

         rc :=  wk_o_tpsvc.RowCount;

         if rc < 1 then begin
            Exit;
         end;

         P_Admdate    := pv_Meddate;
         P_PreviewYn  := 'N';
         P_EMRPrintYn := 'N';
         P_EMRTitle   := P_Patno                                        + '_' +
                         StringReplace(P_Admdate,'-','',[rfReplaceAll]) + '_' +
                         '000000'                                       + '_' +
                         '1'                                            + '_' +
                         wk_o_tpsvc.GetOutputDataS('Meddept   ', 0)     + '_' +
                         wk_o_tpsvc.GetOutputDataS('Chadrid   ', 0)     + '_' +
                         pv_Reptid                                      + '_' ;
      finally
         FreeAndNil(wk_o_tpsvc);
      end;
   end;

   AutoScanPrint_New;
end;

initialization
   RegisterClass(TMDN110FM);

finalization
   UnRegisterClass(TMDN110FM);


end.


