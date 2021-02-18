{===============================================================================
   Program ID    : MDN110UM
   Program Name  : ICU/NICU/SU ���� ��ȣ����� �ý���
   Program Desc. : ICU Patient Monitoring & OCS ��ȣ ����� ���� �ý���
                 : SU(Stroke Unit) ��ȣ����� �ý��� ����

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
  // [EMR����] 2016.04.12 ȫâ�� �߰���(������). SComReport ������ ���� �߰�
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
    sl_CodeList : TStringList;         // ����͸�Code ����Ʈ
    sl_TimeList : TStringList;         // ����͸��ð� ����Ʈ
    l_CodeItem  : TList;               // Set�ڵ庰 �Է°� �Ӽ�����Ʈ
    l_SaveItem  : TList;               // ����͸��׸� �Է°� �ӽ����帮��Ʈ

    gNowRow     : Integer;             // �� Cell ��ǥ (Y)
    gNowCol     : Integer;             // �� Cell ��ǥ (X)

    // [����] �뺯�� ��(g) ��ġ Ȯ�� -2013.08.06 smpark
    gMF24Row     : Integer;
    gMF24Col     : Integer;

    // [����] CRRT üũ ������ -2013.09.02 smpark
    gCrrtDate    : String;

    FsKoihaPrtyn : String;  // ������ ���� ��� ��� ���� -2014.12.10 smpark

    saveCheck : boolean;

    // [EMR����] 2016.04.12 ȫâ�� �߰���(������). EMR���� ���� ����
    pv_SComReport  : HSComReport;
    pv_Patsect     : String;
    pv_Meddate     : String;
    pv_Reptid      : String;

    // Chart �׸���, 2011.01.04 LSH
    Procedure Drawchart(Sender: TObject);

    // ��ȯ�� �⺻���� ���� ��ȸ, 2011.01.04 LSH
    // sType5, sType6 �߰� -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // ICU ȯ�ڸ�� ��ȸ, 2011.08.29 LSH
    procedure GetPatList(Sender : TObject);

    // ICU ȯ�� ������ ��ȸ, 2011.08.29 LSH
    procedure SelectPatInfo(in_Flag : String);

    // ȯ�ڱ⺻���� Setting, 2011.01.04 LSH
    procedure SetPatInfo(in_Flag : String);

    // ���� �� �⺻���� Setting, 2011.08.29 LSH
    procedure SetFormInfo;

    // SetCode �׸� ���� �� ������Ʈ, 2011.01.17 LSH
    procedure SetCodeList(sGubun : String);

    // Time �׸� ���� �� ������Ʈ, 2011.01.17 LSH
    procedure SetTimeList(sGubun : String);

    // ȯ�ں� ����͸�SET ���� üũ, 2011.01.05 LSH
    procedure CheckFormSet;

    // ��ü �Է��׸� �Է� �� ��� ��ȸ
    procedure GetAllItems;

    // ����͸� �׸� �Է°� �ӽ�����
    procedure GetSaveList(sSetCode, sActTime, sItemVal, sIntFlag, sAddInfo : String);

    // �ӽ������ Data-Set ȭ�鿡 Setting
    procedure SetSaveList(sGubun : String);

    // ���ں� ����͸� �󼼳��� ��ȸ (MDICMONT), 2011.01.20 LSH
    procedure SelectMonItem(dtp_ActDate : TDateTime);

    // Client DataSet �ʱ�ȭ (Close & Create)
    procedure InitDataSet(cds_Temp : TClientDataSet);

    // Chart �ʱ�ȭ
    procedure InitChart;

    // ��� Note ���� ��ȸ
    procedure CheckAllNote;

    // SetCode �׸� ��������, 2011.01.11 LSH
    function GetCodeList(sPatNo, sAdmDate : String) : Integer;

    // Time �׸� ��������, 2011.01.11 LSH
    function GetTimeList(sPatNo, sAdmDate : String) : Integer;

    // Data Loading Bar ���� ����
    procedure SetLoadingBar(AsStatus : String);

    // ICU ��Ʈ ������ȣ��� ��ȸ, 2011.08.03 LSH
    procedure SelNote(in_ActDate, in_ActTime : String);

    // NICU ȯ�� ü��-����-����-����-���� ��ȸ, 2011.12.05 LSH
    procedure SetNicuInfoAdded(in_PatNo, in_AdmDate : String);

    // NICU �������� ���, 2011.12.06 LSH
    function CalcNowDay(in_FstWks, in_FstDay, in_BornDate, in_RgtDate : String) : String;

    // ���� ��� �߰� @ 2012.04.19 LSH
    function isYunYear(in_Year : Integer) : Boolean;

    // �� ����ϼ� Calculating Function @ 2012.04.20 LSH
    function GetDiffDay(in_BornDate, in_RgtDate : String) : Integer;

    // ���ܸ�(������) �������� @ 2012.04.23 LSH
    procedure GetMainDiag(in_PatNo, in_MedDept, in_AdmDate, in_Locate, in_Gubun, in_DiagType, in_ChaDr, in_PatCls : String);

    // B/S ���� ���� ��ȸ - SU ��ȣ����� ���� (GR_73W ��������û) @ 2012.05.14
    procedure GetBsData;


    // I/O ���� ���� ��ȸ - SU ��ȣ����� ���� (GR_73W ��������û) @ 2012.05.15
    procedure GetIoCheck(in_Gubun : Integer);

    // ���κ��� ICU Note �Ⱓ�� ��ȸ �� ���� -2013.05.16 smpark
    procedure SetNoteSearch;

    //2013.06.18 khs �Ż��ƴ��忡�� ������ڿ� ���±Ⱓ ���ؼ� �������� ���
    procedure GetNbabyBorndate;

    // CRRT ��ȣ��� ������� ��ȸ
    procedure CrrtnMaxData;

    // CRRT ��ȣ��� ���� ��ȣ��� ����
    procedure CrrtNrrecSave;

    // CRRT ó�� üũ -2013.09.02 smpark
    function CrrtCheck(in_Patno,in_Orddate:String) : String;

  public
    { Public declarations }
    ActCont    : String;

    P_PatNo       : String;   // ������ȣ ȣ�� BPL ����, 2011.01.04 LSH
    P_PatName     : String;
    P_SexAge      : String;
    P_AdmDate     : String;
    P_WardNo      : String;
    P_RoomNo      : String;
    G_SetFlag     : String;   // ȯ�� ����͸� SET �������� (Y: ȯ�� ����͸� SET ���峻�� ��, N: ȯ�� ����͸�SET ���峻�� ��)
    P_RgtDate     : String;   // [��������� ���/ȯ�ڱ��������ȸ] ȣ��� �Ѱ��� �������, 2011.07.15 LSH
    P_PatFlag     : String;   // [��������� ���/ȯ�ڱ��������ȸ] ȣ��� �Ѱ��� ȯ����ġ, 2011.07.15 LSH
    P_DschDate    : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �������, 2011.08.11 LSH
    P_PreviewYn   : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �̸�����, 2011.08.11 LSH
    P_EMRPrintYn  : String;   // [�ǹ���� �ڵ����Ľ�ĵ] ��¿���, 2011.08.11 LSH
    P_EMRTitle    : String;   // [�ǹ���� �ڵ����Ľ�ĵ] Report Title, 2011.08.11 LSH
    P_NicuFlag    : String;   // NICU ��ȣ����� ȣ�⿩��(Y/N), 2011.10.10 LSH
    P_ChaDr       : String;   // [ȯ�ڱ�� ������ȸ] SU ��ȣ����� ���ܸ���ȸ ���� ��米�� @ 2012.05.08
    P_MedDept     : String;   // [ȯ�ڱ�� ������ȸ] SU ��ȣ����� ���ܸ���ȸ ���� ����� @ 2012.05.08

    G_EmrYn       : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �����ȿ�� ���� (Y/N), 2011.09.08 LSH
    G_EmrPrtIdx   : Integer;  // [�ǹ���� �ڵ����Ľ�ĵ] ���Index, 2011.09.15 LSH
    G_LastEmrDateYn : String; // [�ǹ���� �ڵ����Ľ�ĵ] ������ ������� @ 2012.10.31 LSH
    G_LastPageIdx   : Integer;// [�ǹ���� �ڵ����Ľ�ĵ] ������ Page �ε��� @ 2012.10.31 LSH

    P_EMRFromDt   : String;   // ������ȯ�� �˻� �������� -2015.05.27 smpark
    P_EMRToDt     : String;   // ������ȯ�� �˻� �������� -2015.05.27 smpark

  published
    property prop_PatNo      : String read P_PatNo      write P_PatNo;
    property prop_PatName    : String read P_PatName    write P_PatName;
    property prop_SexAge     : String read P_SexAge     write P_SexAge;
    property prop_AdmDate    : String read P_AdmDate    write P_AdmDate;
    property prop_WardNo     : String read P_WardNo     write P_WardNo;
    property prop_RoomNo     : String read P_RoomNo     write P_RoomNo;
    property prop_RgtDate    : String read P_RgtDate    write P_RgtDate;       // ���ȯ�� ���������/ȯ�ڱ��������ȸ ������� ����, 2011.07.15 LSH
    property prop_PatFlag    : String read P_PatFlag    write P_PatFlag;       // ȣ��ɼ� ('D': ��������� ���/ȯ�ڱ��������ȸ, 'MDP110F2': �ǻ���ȸ), 2011.07.15 LSH
    property prop_DschDate   : String read P_DschDate   write P_DschDate  ;    // �ǹ���� �ڵ����Ľ�ĵ ���� �������, 2011.08.11 LSH
    property prop_PreviewYn  : String read P_PreviewYn  write P_PreviewYn ;    // �ǹ���� �ڵ����Ľ�ĵ ���� �̸�����, 2011.08.11 LSH
    property prop_EMRPrintYn : String read P_EMRPrintYn write P_EMRPrintYn;    // �ǹ���� �ڵ����Ľ�ĵ ����,          2011.08.11 LSH
    property prop_EMRTitle   : String read P_EMRTitle   write P_EMRTitle  ;    // �ǹ���� �ڵ����Ľ�ĵ Report Title,  2011.08.11 LSH
    property prop_NicuFlag   : String read P_NicuFlag   write P_NicuFlag  ;    // SU/NICU ��ȣ����� ȣ�⿩��(Y : NICU, S : SU) @ 2011.10.10 LSH
    property prop_ChaDr      : String read P_ChaDr      write P_ChaDr     ;    // ���ȯ�� [���������/ȯ�ڱ��������ȸ] ��米�� @ 2012.05.08
    property prop_MedDept    : String read P_MedDept    write P_MedDept   ;    // ���ȯ�� [���������/ȯ�ڱ��������ȸ] ����� @ 2012.05.08

    property prop_EMRFromDt  : String read P_EMRFromDt  write P_EMRFromDt ;    // ������ȯ�� �˻� �������� -2015.05.27 smpark
    property prop_EMRToDt    : String read P_EMRToDt    write P_EMRToDt   ;    // ������ȯ�� �˻� �������� -2015.05.27 smpark


    // ������ ���� ��� ��� ���� -2014.12.10 smpark
    property prop_KoihaPrtyn : String read FsKoihaPrtyn write FsKoihaPrtyn;

    // [EMR����] 2016.04.12 ȫâ�� �߰���(������). EMR���� ���� ����
    property prop_SComReport  : HSComReport write pv_SComReport;
    property prop_Patsect     : String      write pv_Patsect   ;
    property prop_Meddate     : String      write pv_Meddate   ;
    property prop_Reptid      : String      write pv_Reptid    ;
    // 2016-06-03 ������ , �Կ������ Fromdate - Todate ���� �߰� START
    property prop_Fromdate    : String      write P_EMRFromDt  ;
    property prop_Todate      : String      write P_EMRToDt    ;
    // 2016-06-03 ������ , �Կ������ Fromdate - Todate ���� �߰� END

    // Refresh (������-> Code/Time/Data ���� -> Client DataSet ����-> ��Ʈ�׸���)
    // MDN110FP���� ȣ������ 'Published'���� ����.
    procedure Refresh;

    // ICU ���� ��ȣ����� �ǹ���� �ڵ����Ľ�ĵ, 2011.08.11 LSH
    //  --> CPU ������ ���� ��ƸԴ� ����� 2012.01.30 ���� �������.
    procedure AutoScanPrint;

    // [�ڵ����ĺ�ȯ��] ȭ�� Refresh, 2012.01.20 LSH
    procedure Refresh_AutoScan;

    // ICU ���� ��ȣ����� �ǹ���� �ڵ����Ľ�ĵ New Version, 2012.01.30 LSH
    //  --> CPU ������ ��뷮 1/3���� ����.
    procedure AutoScanPrint_New;



  end;


var
  MDN110FM: TMDN110FM;


implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom, MDCLASS1, MComFunc, HisUtil, MDN110UM_P01,
   MDN110UM_P02,
   // [EMR����] 2016.04.12 ȫâ�� �߰���(������). TpSvc �߰�
   TpSvc;

{$R *.DFM}

const
   CLR_INTERFACE_NRS = clRed;     // ��� Int'f Data ��ȣ�� ���� FontColor
   C_DUTYCLS_DAY     = '14:00';   // Duty�� Sum���� ���ؽð� (Day)
   C_DUTYCLS_EVNG    = '22:00';   // Duty�� Sum���� ���ؽð� (Evening)
   C_DUTYCLS_NIGT    = '06:00';   // Duty�� Sum���� ���ؽð� (Night)

   C_STARTTM    = '0601';         // ����ȭ�� Time List ���۽ð�
   C_ENDTM      = '0600';         // ����ȭ�� Time List ����ð�
   C_MONIPRD    = 12;             // ����͸� �Է��ֱ� ����
   C_CHARTCNT   = 8;              // ��Ʈ Series�׸� ��(���� �����׸� ����)
   C_MINLINE    = 50;             // ��Ʈ Minimal Line-Value
   C_MIDLINE    = 100;            // ��Ʈ Middle Line-Value
   C_MAXLINE    = 150;            // ��Ʈ Maximal Line-Value

   C_GYUNGGOO   = 1;              // [SU ��ȣ�����] �汸
   C_BIGYUNGGOO = 2;              // [SU ��ȣ�����] ��汸
   C_HYULEK     = 3;              // [SU ��ȣ�����] ����
   C_BAENYO     = 4;              // [SU ��ȣ�����] �财(����)
   C_BAENONG    = 5;              // [SU ��ȣ�����] ���/����(Suction)
   C_GOOTO      = 6;              // [SU ��ȣ�����] ����(Vomitus)
   C_BAESUL     = 7;              // [SU ��ȣ�����] �輳(Stool)
   C_HUO        = 9;              // [SU ��ȣ�����] HUO




//------------------------------------------------------------------------------
// [����] Button onClick Event Handler
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

   // 3. Code�� List
   l_CodeItem.Free;

   // 3. Grid List
   l_SaveItem.Free;

   // 4. ȭ��Data �ӽ� Data-Set
   cds_SaveItem.Close;

   // 5. ����͸� �Ӽ��� Data-Set
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
   // 1. �� �⺻����, 2011.08.29 LSH
   //---------------------------------------------------
   SetFormInfo;


   //---------------------------------------------------
   // 2. ȯ�ڱ⺻����, 2011.01.04 LSH
   //---------------------------------------------------
   SetPatInfo('FORMSHOW');



   //---------------------------------------------------
   // 3. ����/��ȸ���� setting, 2011.08.09 LSH
   //---------------------------------------------------
   if (P_PatFlag = 'MDP110F2') then
   // ȯ�ڻ����� (�ǻ�ȣ���)
   begin
      if (P_NicuFlag = 'Y') then
      // NICU ��ȣ�����
      begin
         bbt_MoniSave.Enabled := False;
         bbt_Monitor.Enabled  := False;
         bbt_Quality.Enabled  := True;    // NICU �ӻ�����ǥ ��ȸ
         bbt_Ass.Enabled      := True;    // NICU ��ȣ����   ��ȸ
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
      // Stroke Unit ��ȣ����� @ 2012.04.21 LSH
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
         apn_PatList.Visible  := True;    // 2012.06.01 ����ϱ�� ����(������)
      end
      else
      // ICU ���� ��ȣ�����
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
   // ��������� ���(���) or ȯ�ڱ�� ������ȸ(���ȯ��)
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

      // ���ձ�Ͽ��� ���ȯ�� ��ȣ��� �ǹǷ� ������ -2014.12.10 smpark
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
   // NICU ��ȣ�����
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
   // Stroke Unit ��ȣ����� @ 2012.04.21 LSH
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
   // ICU ���� ��ȣ�����
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
   // ���κ��� ICU Note �Ⱓ�� ��ȸ -2013.05.20 smpark
   // ---------------------------------------------------------------------
   if (md_Userid = '99995') or
      (G_Locate = 'GR') then
   begin
      bbt_ShowNoteSearch.Visible := True;
      //2013.06.05 khs ���θ� ��ȣ��� ��ư Ȱ��ȭ(���� ��ȯ�ڽ�1 �̽ž� ��û)
      bbt_NurseWrite.Visible     := True;

      // [����] CRRT ��ȣ��� -2013.08.26 smpark
      bbt_MoniSave.Height := 37;
      bbt_Crrt.Visible    := True;
      //��ü������ ��� ��ư �߰��� ���̰�  2014.10.27 Yoon
      sbt_Printer.Visible := True;
      sbt_Printer.Left    := 822;
   end
   else
   begin
      bbt_ShowNoteSearch.Visible := False;
      //2013.06.05 khs ���θ� ��ȣ��� ��ư Ȱ��ȭ(���� ��ȯ�ڽ�1 �̽ž� ��û)
      bbt_NurseWrite.Visible     := False;

      // [����] CRRT ��ȣ��� -2013.08.26 smpark
      bbt_MoniSave.Height := 74;
      bbt_Crrt.Visible    := False;
      //��ü������ ��� ��ư �Ⱥ��̰�  2014.10.27 Yoon
      sbt_Printer.Visible := False;
   end;


   // ----------------------------------------------------------------------
   // 2014�� ������ ���� ��� ��� ���� �� �߰�
   // 2014.12.10 smpark
   // ----------------------------------------------------------------------
   if FsKoihaPrtyn = 'Y' then
   begin
      bbt_Print.Visible := False;
   end;

   //---------------------------------------------------
   // 5. ȭ�� Setting Refresh
   //---------------------------------------------------
   Refresh;


end;




//------------------------------------------------------------------------------
// [��ȯ�� �⺻����] ��ȸ (�Կ�����/������/����/����/����/����) Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.03.03
//------------------------------------------------------------------------------
// sType5, sType6 �߰� -2015.05.27 smpark
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

      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := RowNo;     //�����, ����:����, 0:�Ǽ�����, ���: ����
         pv_SComReport.RsltMsg  := GetTxMsg;  //��� �޽���
      end;
      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iPats.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         iPats.Free;
         Exit;
      end;


      // ������ �˻� �̽ǽð��, Null �� ǥ�� @ 2012.04.23 LSH
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
            // ICU ������� ���,
            //------------------------------------------------------------------
            begin
               if (P_NicuFlag = 'Y') then
               begin
                  // NICU ȯ���Կ����� (ȯ�ڹ�ȣ/ȯ�ڸ�/��������/HD)
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       // NICU�� ICU ����ϼ� �ƴ�, H/D�� ����� �� by ������ @ 2012.04.13
                                       // �׷���, ���� Main�� H/D�� �ƴ϶�, [�ش� �������]�� ���������� H/D�� ǥ���û.
                                       + CopyByte(GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date{StrToDate(P_DschDate)}),
                                              1,
                                              PosByte('.', GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date))-1)
                                       + '��]';
               end
               else
               begin
                  // �Ϲ� ICU ȯ���Կ����� (ȯ�ڹ�ȣ/ȯ�ڸ�/��������/������/ICU����ϼ�)
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       + tmpBldType
                                       + sIcuDays[0]        + '��]';
               end;
            end
            else if (sFlag1 = '2') then
            //------------------------------------------------------------------
            // ICU ����ƴ� "�������" ���,
            //   - 2011.05.26 LSH
            //------------------------------------------------------------------
            begin
               // Stroke Unit ���, ����ϼ� ���� @ 2012.04.23 LSH
               if (P_NicuFlag = 'S') then
               begin
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       + tmpBldType
                                       + sIcuDays[0]        + '��]';
               end
               else
               begin
                  // ICU�����] -> ����ġ��Ƿ� ���� -2015.08.04 smpark
                  lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                       + sPatName[0]        + ' ['
                                       + Trim(sSexAge[0])   + ','
                                       + tmpBldType
                                       + '����ġ���]';
               end;
            end
            else if (sFlag1 = '3') then
            //------------------------------------------------------------------
            // ���ȯ�� ICU ������� �߰�, 2011.07.15 LSH
            // [ȯ�ڱ��������ȸ/�ڵ����Ľ�ĵ] �����б�, 2012.03.08 LSH
            //------------------------------------------------------------------
            begin

               if (P_PatFlag = 'W') or
                  (P_PatFlag = 'D') then
               begin
                  // ȯ�ڱ�� ������ȸ
                  if (P_NicuFlag = 'Y') then
                  begin
                     // NICU ȯ���Կ����� (ȯ�ڹ�ȣ/ȯ�ڸ�/����/HD)
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + CopyByte(Trim(sSexAge[0]), 1, 1) + ','
                                          // NICU�� ICU ����ϼ� �ƴ�, H/D�� ����� �� by ������ @ 2012.04.13
                                          // �׷��� ���� Main�� H/D�� �ƴ϶�, [�ش� �������]�� ���������� H/D�� ǥ���û.
                                          + CopyByte(GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date{StrToDate(P_DschDate)}),
                                                 1,
                                                 PosByte('.', GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date))-1)
                                          + '��]';
                  end
                  else
                  begin
                     // �Ϲ� ICU ȯ���Կ�����
                     // Stroke Unit ����(ȯ�ڹ�ȣ/ȯ�ڸ�/������/����) @ 2012.05.08
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + tmpBldType
                                          + CopyByte(Trim(sSexAge[0]), 1, 1) + ']';
                  end;
               end
               else
               begin
                  // �ڵ����Ľ�ĵ
                  if (P_NicuFlag = 'Y') then
                  begin
                     // NICU ȯ���Կ����� (ȯ�ڹ�ȣ/ȯ�ڸ�/��������/HD)
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + Trim(sSexAge[0])   + ','
                                          // NICU�� ICU ����ϼ� �ƴ�, H/D�� ����� �� by ������ @ 2012.04.13
                                          // �׷���, ���� Main�� H/D�� �ƴ϶�, [�ش� �������]�� ���������� H/D�� ǥ���û.
                                          + CopyByte(GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date{StrToDate(P_DschDate)}),
                                                 1,
                                                 PosByte('.', GetHdPodCnt('1', DelChar(P_AdmDate,'-'), dtp_RgtDate.Date))-1)
                                          + '��]';
                  end
                  else
                  begin
                     // �Ϲ� ICU ȯ���Կ����� (ȯ�ڹ�ȣ/ȯ�ڸ�/��������/������/����ϼ�)
                     lb_PatInfo.Caption  := sPatNo[0]          + '/'
                                          + sPatName[0]        + ' ['
                                          + Trim(sSexAge[0])   + ','
                                          + tmpBldType
                                          + sIcuDays[0]        + '��]';
                  end;
               end;
            end;


            // ���� ������(or ���ܸ� @ SU ��ȣ�����)
            lb_OpName.Caption   := sLstOprNm[0];

            // ���� ���̸�
            lb_DietName.Caption := sLstDietNm[0];

            // �������, �����, �������� �߰� -2015.08.03 smpark
            lb_Birtdate.Caption := ConvertSDate(sBirtdate[0]);
            lb_Meddept.Caption  := sDeptnm[0];
            lb_Wardno.Caption   := sWardno[0] +'-'+ sRoomno[0];

         end;
      end
      else
      //--------------------------------------------
      // [4] �ڵ����ĺ�ȯ(EMR) ���ȯ�� ��ȸ
      //   - 2012.01.26 LSH
      //--------------------------------------------
      begin

         ugd_EmrList.RowCount := RowNo + 1;


         with ugd_EmrList do
         begin

            for i := 0 to RowNo - 1 do
            begin
               Cells[0, i+1] := iPats.sPatNo[i];                  // ��ȯ��� ȯ�ڹ�ȣ
               Cells[1, i+1] := iPats.sAdmDate[i];                // �Կ�����
               Cells[2, i+1] := ConvertSDate(iPats.sActDate[i]);  // �������
               Cells[3, i+1] := iPats.sMoniPrd[i];                // SETTYPE (MON = ICU �����, NIC = NICU �����, STR = SU �����)
            end;


            // ��ȯ��� ȯ�� �� Row �� �����ϸ�, EMR ���.
            for i := 1 to RowCount - 1 do
            begin

               // ���ȯ�� ������ ������� ���� @ 2012.10.31 LSH
               if i = RowCount -1 then
               begin
                  G_LastEmrDateYn := 'Y';
               end
               else
               begin
                  G_LastEmrDateYn := 'N';
               end;

               Row := i;

               // ������� Set
               dtp_RgtDate.Date := StrToDateTime(Cells[2, i]);

               // ���õ� Row�� ������� ��ȸ
               bbt_OkClick(ugd_EmrList);

               // EMR ��� ����
               bbt_PrintClick(nil);

            end;
            // ��ȯ��� ȯ�� �� Row �� �����ϸ�, EMR ���. end

         end;
      end;



      iPats.Free;



      //------------------------------------------------------------------------
      // NICU ü��-����-����-����-����-���¿��� ��ȸ
      //  - 2011.12.05 LSH
      //------------------------------------------------------------------------
      if (P_NicuFlag = 'Y') then
         SetNicuInfoAdded(sType2, sType3)   // ȯ�ڹ�ȣ, �Կ�����
      else if (P_NicuFlag = 'S') then
      begin
         //-----------------------------------------------------------
         // SU ȯ�ڵ鵵 Ű, ������ �߰� @ 2012.05.04 (������)
         //-----------------------------------------------------------
         SetNicuInfoAdded(sType2, sType3);


         //-----------------------------------------------------------
         // Stroke Unit ���ܸ�(������) �������� @ 2012.04.23
         //-----------------------------------------------------------
         if (P_PatFlag = 'W') or
            (P_PatFlag = 'D') then
         begin
            // (ȯ�ڱ�� ������ȸ) SU ����� ��ȸ ��
            GetMainDiag(P_PatNo,                               // ȯ�ڹ�ȣ
                        P_MedDept,                             // �����
                        DelChar(P_AdmDate, '-'),               // �Կ�����
                        G_Locate,                              // �� ��ġ
                        '1',                                   //
                        'A',                                   // ������ ������� Flag
                        P_ChaDr,                               // ��米��
                        'I'                                    // ȯ����ġ(I = '�Կ�')
                        );
         end
         else
         begin
            // (�Ϲ�) SU ȯ�� ��ȸ ��
            GetMainDiag(ugd_PatList.Cells[3, ugd_PatList.Row], // ȯ�ڹ�ȣ
                        ugd_PatList.Cells[8, ugd_PatList.Row], // �����
                        ugd_PatList.Cells[4, ugd_PatList.Row], // �Կ�����
                        G_Locate,                              // �� ��ġ
                        '1',                                   //
                        'A',                                   // ������ ������� Flag
                        ugd_PatList.Cells[14,ugd_PatList.Row], // ��米��
                        'I'                                    // ȯ����ġ(I = '�Կ�')
                        );
         end;
      end;



   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// [��Ʈ] Graph Display Event Handler
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
   // [1] ��Ʈ Clear
   //  - ��񿬵��ϴ� Data�׸��� �� 11��������, Chart�� �ѷ��ִ� �׸��� 8��, 2011.02.28
   //  - ���� ����� 5��(C_CHARTCNT), 2011.07.23
   //  - NICU ��ȣ����� ���¿� ���� �б�, 2011.12.22
   //  - SU ��ȣ����� �б�(Chr_Vs_Su) @ 2012.04.21
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
      // Ȱ��¡�� (V/S) �ѷ��ֱ�����, StartRow ����
      //   - BST óġ�׸� 2011.08.25 �߰��� ���� �ϵ��ڵ�..
      //   - [����] ������� [SpO2 L] code ���۵��� �б� @ 2012.11.07 LSH
      //------------------------------------------------------------------------
      if ((i = 6) and (sl_CodeList.Strings[i] = 'MA08')) then        // 7��° SetCode�� 'BSTóġ' �׸��� ���((MA03 SpO2 ������� �ڵ� ���� ���)
      begin
         iStart := 9;
         Break;
      end
      else if ((i = 7) and (sl_CodeList.Strings[i] = 'MA08')) then   // 8��° SetCode�� 'BSTóġ' �׸��� ���(MA03 SpO2 ������� �ڵ� �߰��� ���) @ 2012.11.07 LSH
      begin
         iStart := 10;
         Break;
      end
      else if ((i = 1) and (sl_CodeList.Strings[i] = 'SA03')) then   // 2��° SetCode�� 'BSTóġ(Stroke Unit) �׸��̸�,
      begin
         iStart := 4;
         Break;
      end
      else
      begin
         iStart := 8;
      end;


      //------------------------------------------------------------------------
      // NICU ��ȣ����� Ȱ��¡��(V/S) StartRow ����
      //------------------------------------------------------------------------
      if (P_NicuFlag = 'Y') then
         iStart := 6;

   end;





   //---------------------------------------------------------------------------
   // [2] ��Ʈ Drawing
   //  - NICU ��ȣ����� �б�, 2011.12.22
   //  - NICU �ϻ��ֿ� 2��...���� �����ؼ�, DrawChart���� �ϵ��ڵ� �б�, 2011.12.27
   //---------------------------------------------------------------------------

   // Series Index��ŭ ���鼭, (j = 2�� fixedCol�� 2ĭ�̱� ����)
   for j := 2 to sl_TimeList.Count+1 do
   begin

      // �� chart�� ������ Ȱ��¡�� �׸����ŭ(C_CHARTCNT), loop count (��Ʈ���� ���ϴ� �׸� 3��(RR, CVP/CVP �Ŵ���)����)
      // for i := 8 to {6 + 3} 8 +  C_CHARTCNT - 1 do    // 8 : HR ���� index ~ 15�� (MB03 ~ MB17����), 2011.08.25 LSH
      // NICU �������̽� �������� iStart ����, 2011.12.22 LSH
      // SU   �������̽� �׸� �߰� @ 2012.04.23 LSH (�������̽� ������ �̿���)
      for i := iStart to {6 + 3} iStart +  C_CHARTCNT - 1 do
      begin

         // �����ð�(hh)
         hh := strtoint(CopyByte(asg_IcuMon.Cells[j,0],1,2));

         // �����ð�(mm)
         mm := strtoint(CopyByte(asg_IcuMon.Cells[j,0],4,2));


         if (asg_IcuMon.Cells[j,i] <> '') and ((CopyByte(sl_CodeList.Strings[i-1],1,2) = 'MB')  or    // ICU  ����͸� �׸�
                                               (CopyByte(sl_CodeList.Strings[i-1],1,2) = 'NB')  or    // NICU ����͸� �׸�
                                               (CopyByte(sl_CodeList.Strings[i-1],1,2) = 'SB')) then  // SU   ����͸� �׸�
         begin

            if (i >= iStart) then
            begin
               //---------------------------------------------------------------
               // 06�� ���� Data + 06:00 Data��  �ش����� + 1
               //---------------------------------------------------------------
               if (hh < 6) or ((hh = 6)  and
                               (mm = 0)) then
               begin
                  //------------------------------------------------------------
                  // BT ���� '.' ��(default)�� Drawing ����, 2011.08.24 LSH
                  //------------------------------------------------------------
                  if (Trim(asg_IcuMon.Cells[j,i]) = '.') then
                     Continue;


                  if (P_NicuFlag = 'Y') then
                  begin
                     //---------------------------------------------------------
                     // [NICU]  BT->HR->(RR skip)->NBP->SBP ������ Chart �׸���
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
                     // [ICU]  HR->BT->NBP->ABP ������ Chart �׸���
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
               // 06�� ���� Data �� �ش�����
               //---------------------------------------------------------------
               begin

                  // BT ���� '.' ���� Drawing ����, 2011.08.24 LSH
                  if (Trim(asg_IcuMon.Cells[j,i]) = '.') then
                     Continue;



                  if (P_NicuFlag = 'Y') then
                  begin
                     //---------------------------------------------------------
                     // [NICU]  BT->HR->(RR Skip)->NBP->SBP ������ Chart �׸���
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
                     // [ICU �����]  HR->BT->NBP->ABP ������ Chart �׸���
                     // [SU  �����]  SpO2->RR->HR->BT->NBP Charting
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
// [�׸���� ] �׸����(����͸� SET �߰�/����) ȭ�� ȣ��
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
   // ȯ�ں� ����͸� Set ���忩�ο� ����, �������忩�� Ȯ��
   //---------------------------------------------------------------------------
   sPatNo     := P_PatNo;
   sAdmDate   := P_AdmDate;
   sActDate   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);



   //---------------------------------------------------------------------------
   // ���� �������� Check
   //---------------------------------------------------------------------------
   if not CheckIcuFstSave(sPatNo, sAdmDate, sActDate, P_NicuFlag) then
   begin
      MessageBox(Self.Handle,
                 '����͸� �����ֱ⸦ ������, �ش������� [��������]�� ������ �ֽʽÿ�.',
                 '�ش����� ����͸� SET ������',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;



   //---------------------------------------------------------------------------
   // ���� �׸���� (ICUó��-SET Mapping����) ȭ�� ȣ��
   //---------------------------------------------------------------------------
   FForm := BplFormCreate('MDN110FP');

   SetBplStrProp('MDN110FP', 'prop_PatNo'   , P_PatNo);
   SetBplStrProp('MDN110FP', 'prop_PatName' , P_PatName);
   SetBplStrProp('MDN110FP', 'prop_AdmDate' , P_AdmDate);
   SetBplStrProp('MDN110FP', 'prop_SexAge'  , P_SexAge);


   //---------------------------------------------------------------------------
   // ICU - NICU ��ȣ����� ����͸� SET �б�, 2011.10.26 LSH
   // SU ��ȣ����� �б� @ 2012.04.21 LSH
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
// [�ۼ�����] DateTimePicker onChange Event handler
// - Refresh
//
// Author : Lee, Se-Ha
// Date   : 2011.02.22
//------------------------------------------------------------------------------
procedure TMDN110FM.dtp_RgtDateChange(Sender: TObject);
begin
   //-------------------------------------------------------------
   // 1. Data-Set �ʱ�ȭ
   //-------------------------------------------------------------
   InitDataSet(cds_SaveItem);



   //------------------------------------------------------------------
   // 2. [NICU ��ȣ�����] ȯ�ڻ����� Refresh, 2012.03.08 LSH
   //  - "�������" ����� ȯ�� ������(����/ü��/���¿��� ��) �ش糯¥ ������ �ٽ� fetch
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
   // 3. ȭ�� Refresh
   //---------------------------------------------------
   if (cbx_Hemo.Checked) then
      // ȭ�� Refresh
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
   // 1. Code ����Ʈ ��ü ����
   //----------------------------
   sl_CodeList := TStringList.Create;

   //----------------------------
   // 2. Time ����Ʈ ��ü ����
   //----------------------------
   sl_TimeList := TStringList.Create;


   //----------------------------
   // 3. �׸� Value ��ü ����
   //----------------------------
   l_SaveItem := TList.Create;


   //----------------------------
   // 4. �Է��׸� �Ӽ� ��ü ����
   //----------------------------
   l_CodeItem := TList.Create;


   //--------------------------------------------------------
   // 5. Form ������, ����͸��׸� �ӽ����� Data-Set �ʱ�ȭ
   //--------------------------------------------------------
   InitDataSet(cds_SaveItem);


   //--------------------------------------------------------
   // 6. ������(99995/08368 �̼���)��, Log Panel Visible
   //--------------------------------------------------------
   if (md_UserId = '99995') or (md_UserId = '08368') then
      Advpn_Log.Visible := True
   else
      Advpn_Log.Visible := False;


   //--------------------------------------------------------
   // 7. �ڵ����ĺ�ȯ EMR ��� Index �ʱ�ȭ
   //--------------------------------------------------------
   G_EmrPrtIdx := 0;
   G_LastEmrDateYn := 'N';


   //--------------------------------------------------------
   // 8. ���� Form Create ���� Check�ϴ� Tag��.
   //  - 2012.03.07 LSH
   //--------------------------------------------------------
   asg_IcuMon.Tag := 0;


   //--------------------------------------------------------
   // 9. 20��ġ Display ����ȭ ���߿� ���� �ϵ��ڵ�
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
   // NICU ��ȣ����� - �ʼ��׸��� Center Align
   if (P_NicuFlag = 'Y') then
   begin
      if (ARow >= 0) and (ARow <= 5) then
         HAlign := taCenter
      else
         HAlign := taLeftJustify;
   end
   else if (P_NicuFlag = 'S') then
   // SU ��ȣ����� @ 2012.04.21 LSH
   begin
      if (ARow >= 0) and (ARow <= 3) then
         HAlign := taCenter
      else
         HAlign := taLeftJustify;
   end
   else
   // ICU ���� ��ȣ�����
   begin
      if (ARow >= 0) and (ARow <= 8) then
         // [����] SpO2 ������� �ڵ��߰��� Row Index 7->8�� ���� @ 2012.11.05 LSH
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
   // �Է��׸� �Ӽ� Client Data Set �� �÷� ����
   //--------------------------------------------
   with cds_MonItem do
   begin
      // 1. �Է��׸� �ڵ忡 ���� �Է� �� ��� �˻�
      Filter := 'setcode = ''' + sl_CodeList.Strings[ARow-1] + ''' ';

      Filtered := True;


      // 2. ���� Ÿ��Ʋ - ��� (�Ѽ��뷮, �ѹ輳��)
      if (FindField('setcode').AsString = 'ME01') or
         (FindField('setcode').AsString = 'ME02') or
         (FindField('setcode').AsString = 'NE01') or  // NICU ��ȣ����� �׸�code �߰�, 2011.10.31 LSH
         (FindField('setcode').AsString = 'NE02')     // NICU ��ȣ����� �׸�code �߰�, 2011.10.31 LSH
         then
      begin
         ABrush.Color := $00E9CBEB;
         AFont.Style  := [fsBold];
      end
      else if (FindField('setcode').AsString = 'SE01') or  // SU   ��ȣ����� �׸�code �߰�, 2012.04.21 LSH
              (FindField('setcode').AsString = 'SE02')     // SU   ��ȣ����� �׸�code �߰�, 2012.04.21 LSH
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
// Grid CellŬ����, UnderLine(Blue) ����
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

   // ���� Cell ��ǥ ���� @ 2012.05.14
   gNowRow := ARow;
   gNowCol := ACol;
end;



//------------------------------------------------------------------------------
// �������̽� �׷��� Click Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2010.12.24
//------------------------------------------------------------------------------
procedure TMDN110FM.cbx_InterfaceClick(Sender: TObject);
begin
   //-------------------------
   // 1-1. �׷��� visible
   //-------------------------
   if cbx_Interface.Checked then
   begin
      if (P_NicuFlag = 'S') then
      // SU ��ȣ����� �б� @ 2012.04.21 LSH
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
   // 1-2. �׷��� invisible
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
   // 2. Code-Time ����Ʈ �籸�� �� �Է��׸� �Ӽ���ȸ
   //---------------------------------------------------
   CheckFormSet;


   //---------------------------------------------------
   // 3. Data Loading bar ���̱�
   //---------------------------------------------------
   SetLoadingBar('ON');


   //---------------------------------------------------
   // 3. Grid�� �Է°��� Client Data-Set�� assign
   //---------------------------------------------------
   SetSaveList('TOGRID');


   //---------------------------------------------------
   // 4. Data Loading bar �����
   //---------------------------------------------------
   SetLoadingBar('OFF');


end;




//------------------------------------------------------------------------------
// ����͸� �Է��ֱ� Handler
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
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //--------------------------------------
   // 1. �����ֱ� �Է�Ȯ��
   //--------------------------------------
   if ((P_NicuFlag  = 'S') and (combx_Moniprd_Su.Text = '')) or
      ((P_NicuFlag <> 'S') and (combx_Moniprd.Text    = '')) then
   begin
      MessageBox(Self.Handle, '�����ֱ⸦ �Է��ϼ���.', '��� �������̽� ���ӿ���', MB_OK + MB_ICONINFORMATION);
      exit;
   end;


   //--------------------------------------
   // 2. Ȯ�� �޼���
   //--------------------------------------
   ls_Msg := lb_PatName.Caption + 'ȯ���� Interface���� �ֱ⸦ ����ð����� '+ combx_Moniprd.Text + '�д����� ����Ͻðڽ��ϱ�?';



   //--------------------------------------
   // 3. �޼����ڽ� ó��
   //--------------------------------------
   if Application.MessageBox(Pchar(ls_Msg), '�����ֱ� ���',MB_OKCANCEL) = IDCANCEL then
      Exit;


   Screen.Cursor := crHourglass;


   //--------------------------------------
   // 4. ����͸� �ֱ� Transition Logic
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

         // SU ����� �б� @ 2012.04.21 LSH
         if (P_NicuFlag = 'S') then
            sMoniprd   := combx_Moniprd_Su.Text
         else
            sMoniprd   := combx_Moniprd.Text
      end;



      //---------------------------------------
      // 4-1. ��ȯ�ڸ�����(MDICUSET) ������Ʈ
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
         // 4-3. Return �޼��� ó��
         //----------------------------
         if (iPats.iRtnCd[0] = '0') then
            //---------------------------------
            // ���� ���峻�� �������
            //---------------------------------
            MessageBox(Self.Handle,
                       '�������� ������ �������� �ʽ��ϴ�.' + #13#10 + '[����]�� ��������, [�����ֱ�]�� �����Ͻ� �� �ֽ��ϴ�.',
                       '��� �������̽� ���ӿ���',
                       MB_OK + MB_ICONINFORMATION)

         else if (iPats.iRtnCd[0] = '1') then
            //---------------------------------
            // ���� ���峻�� �����
            //---------------------------------
            MessageBox(Self.Handle,
                       '����͸� �����ֱⰡ ����Ǿ����ϴ�.',
                       '��� �������̽� ���Ӿ˸�',
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
   // 1. EnterŰ �Է� ��, �Ʒ� row��
   //-----------------------------------
   if (Key = char(VK_RETURN)) then
   begin

      with cds_MonItem do
      begin
         // �Է��׸� �ڵ忡 ���� �Է� �� ��� �˻�
         Filter := 'setcode = ''' + sl_CodeList.Strings[asg_IcuMon.Row-1] + ''' ';

         Filtered := True;


         // ���� Ÿ��Ʋ - ��� (�Ѽ��뷮, �ѹ輳��) �Է�����
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

      // �ش�Cell ���� Hint�� �����ִ� ����.
      asg_IcuMonClickCell(Sender, asg_IcuMon.Row, asg_IcuMon.Col);

   end;


   //-----------------------------------
   // 2. �Ʒ�����Ű �Է� ��
   //-----------------------------------
   if (Key = char(VK_DOWN)) then
   begin
      Key := #0;
   end
   //-----------------------------------
   // 3. ������Ű �Է� ��
   //-----------------------------------
   else if (Key = Char(VK_UP)) then
   begin
      Key := #0;
   end
   else
   //-----------------------------------
   // 4. ��Ÿ Key�Է½�
   //-----------------------------------
   begin
      // �Է¼Ӽ� Client Data-Set�� �˻�.
      with cds_MonItem do
      begin

         // DataSet�߿���, SetCode�� 1Row�� �˻�.
         bExist := Locate('setcode', sl_CodeList.Strings[asg_IcuMon.Row-1], [loCaseInsensitive]);

         // �˻��� 1���� Row����
         if bExist then
         begin
            //------------------------------------------------------------------
            // �Է¼Ӽ�(InputType)�� 'ED'�̸�, '-', '.' , Numeric���� �Է°���.
            //   - '-' ������ȣ �߰�, 2011.08.18 LSH
            //   - Ȱ��¡��(*B**)�� �ƴѰ�� �������� �߰� @ 2012.05.18 LSH
            //------------------------------------------------------------------
            if (FindField('inputtyp').AsString = 'ED') and
               (CopyByte(FindField('setcode').AsString, 2, 1) <> 'B')  then
            begin
               //---------------------------------------------------------------
               // SU ����� [Ȱ��¡��] ������ ED �׸� Key(���ĺ�) �Է°���
               //  - 2012.06.01 (������ ��û)
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
                  // [I/O] �輳�� �����׸�(Residual, ��� ��) �Է½�, TEXT ����
                  //   - 2012.10.16 LSH (����� ��û)
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
            // Ȱ��¡��(*B**) + �Է¼Ӽ�(InputType)�� 'ED'�̸�, ������ Numeric.
            //   - 2012.05.18 LSH
            //------------------------------------------------------------------
            else if (FindField('inputtyp').AsString = 'ED') and
                    (CopyByte(FindField('setcode').AsString, 2, 1) = 'B')  then
            begin
               //---------------------------------------------------------------
               // NICU ����� [Ȱ��¡��] �� �������̽� �̿����׸��� Ư��key ����
               //  - 2012.06.04 (������ ��û)
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
                  // [Ȱ��¡��] CVP(cmH��O) �Է��ϴ� �κп� '����' �� '.' ����
                  //   - 2012.06.22 LSH (�̸��� ��û)
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

      // �ش�Cell ���� Hint�� �����ִ� ����.
      asg_IcuMonClickCell(Sender, asg_IcuMon.Row, asg_IcuMon.Col);

   end;

end;



//------------------------------------------------------------------------------
// ����͸� �󼼳��� ���� Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.05
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_MoniSaveClick(Sender: TObject);
begin
   ugd_PatList.Enabled := False;
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;


   //---------------------------------------------------------
   // 1. �����, Grid ��� �׸��� Open�Ǿ�� ��.
   //---------------------------------------------------------
   if not (cbx_Hemo.Checked) then
      cbx_Hemo.Checked := True;

   if not (cbx_Neuro.Checked) then
      cbx_Neuro.Checked := True;

   if not (cbx_Io.Checked) then
      cbx_Io.Checked := True;



   //---------------------------------------------------------
   // 2. ����͸� �Է��ֱ� ����Ȯ��
   //---------------------------------------------------------
   if ((P_NicuFlag = 'S')  and (combx_Moniprd_Su.Text = '')) or
      ((P_NicuFlag <> 'S') and (combx_Moniprd.Text    = '')) then
   begin
      MessageBox(Self.Handle,
                 '����͸� �����ֱ⸦ ������, [����]�� �����ּ���.',
                 '����͸� �����ֱ� Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      exit;
   end;



   //---------------------------------------------------------
   // 3. SetCode �׸��� MDICUSET ������ skip, ������ insert.
   //---------------------------------------------------------
   SetCodeList('REFRESH');



   //---------------------------------------------------------
   // 4. Time �׸� MDICUTMT ������ skip, ������ insert.
   //---------------------------------------------------------
   SetTimeList('REFRESH');



   //---------------------------------------------------------
   // 5. �ӽ� Data-Set Value�� D/B Table�� Insert.
   //---------------------------------------------------------
   SetSaveList('TOTABLE');



   //---------------------------------------------------------
   // 6. Refresh
   //---------------------------------------------------------
   Refresh;

   ugd_PatList.Enabled := True;

end;




//------------------------------------------------------------------------------
// [Form ������] ��ȯ�� �⺻���� Set Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.04
//------------------------------------------------------------------------------
procedure TMDN110FM.SetPatInfo(in_Flag : String);
begin
   //----------------------------------------------------
   // 1. �⺻���� ���� �ʱ�ȭ
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
   // 2. �������� �ʱ�ȭ
   //----------------------------------------------------
   combx_WardCd.Clear;
   combx_WardNm.ItemIndex := -1;


   //----------------------------------------------------
   // ICU ȯ����ȸ Positioning �б�
   //----------------------------------------------------
   if (P_NicuFlag <> 'N') then
   begin
      //-------------------------------------------------
      // SU ��ȣ����� �б� @ 2012.04.21 LSH
      //-------------------------------------------------
      if (P_NicuFlag = 'S') then
         apn_PatList.Caption.Text := 'SU ȯ����ȸ'
      else if (P_NicuFlag = 'Y') then
         apn_PatList.Caption.Text := 'NICU ȯ����ȸ'
      else
         apn_PatList.Caption.Text := 'ICU ȯ����ȸ';

      apn_PatList.Left      := 961;
      apn_PatList.Top       := 80;
      apn_PatList.Visible   := True;
   end
   else
   begin
      apn_PatList.Left      := 1306;

      // ������� ���̵��� ���� -2015.08.12 smpark
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
   // �ǻ� ȣ���
   //----------------------------------------------------
   if (P_PatFlag = 'MDP110F2') then
   begin
      // �ǻ�ȣ��ø�, [�������� ��������]�� Setting. (���������� �Ϸ�Ǿ��ٴ� ����)
      Combx_WardNm.ItemIndex := combx_WardCd.Items.IndexOf(md_WardNo);
      Combx_Wardcd.ItemIndex := Combx_Wardnm.ItemIndex;
   end
   //----------------------------------------------------
   // ��������� ���[MDN252F1] or �ڵ����Ľ�ĵ ȣ���
   //----------------------------------------------------
   else if (P_PatFlag = 'D') or
           (P_PatFlag = 'W') then
   begin
      // ȯ�ڱ�� ������ȸ �����ϸ�, �Ʒ� �ּ�ó��, 2012.03.07 LSH
      //P_PatFlag := '';   // �ʱ�ȭ


      // ���õ� ȯ������ ��ȸ
      SelectPatInfo('SELECTED');


      Exit;

   end
   {   AutoScan New-version ����ϸ鼭, �ּ�ó����. 2012.01.30 LSH
   // �ڵ����Ľ�ĵ ��
   else if (P_EMRPrintYn = 'Y') then
   begin
      // ���Ľ�ĵ ���ȯ�� ������ȸ
      SelectPatInfo(in_Flag);


      // �ڵ����Ľ�ĵ ���
      //bbt_PrintClick(Self);


      Exit;
   end
   }
   //----------------------------------------------------
   // ��Ÿ ȣ��� (������ȣ �� )
   //----------------------------------------------------
   else
   begin
      Combx_WardNm.ItemIndex := combx_WardCd.Items.IndexOf((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Items[(GetComp('MDN110F1', 'combx_WardNm') as TComboBox).ItemIndex]);
      Combx_Wardcd.ItemIndex := Combx_Wardnm.ItemIndex;
   end;



   //----------------------------------
   // 3. ICU ȯ�� ����Ʈ ��ȸ �� ����
   //----------------------------------
   GetPatList(Self);



   //-----------------------------------------------------------------------------------
   // 4. ������ȸ (ȯ�ڸ�/��������/��������/��������/����ϼ�/������)
   //   - ICU���� �Ϲ� �������� Transfer�� case�� ��ȸ���� (CCU �迬�ƿ�û), 2011.05.26
   //-----------------------------------------------------------------------------------
   SelectPatInfo(in_Flag)




end;




//------------------------------------------------------------------------------
// ����͸� ����ȭ�� Form Set Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2010.12.26
//------------------------------------------------------------------------------
procedure TMDN110FM.CheckFormSet;
begin
   //----------------------------------------------------
   // 1. ȭ�� Clear �� ���� �ʱ�ȭ
   //----------------------------------------------------
   asg_IcuMon.Clear;
   med_ActTime.Text := '';
   stb_Message.Panels[0].text := '';

   // B/S, I/O �������� ��ȸ Panel �ݱ� @ 2012.05.14
   bbt_BstClose.Click;
   bbt_IoClose.Click;



   //----------------------------------------------------
   // 2. ����͸� Set�ڵ� �׸�(Row-Title) �����ϱ�
   //----------------------------------------------------
   if GetCodeList(P_PatNo, DelChar(P_AdmDate,'-')) < 0 then
   begin
      MessageBox(Self.Handle,
                 '����͸� Code ������ �����Ͽ����ϴ�. ���� [T.920-6218]',
                 '����� ����͸� SetCode �浹 �˸�',
                 MB_OK + MB_ICONERROR);

      // ��������/�׸���� �� Refresh Disabled
      bbt_MoniSave.Enabled := False;
      bbt_Monitor.Enabled  := False;
      sbt_Refresh.Enabled  := False;

      Exit;
   end;

   //----------------------------------------------------
   // 3. ����͸� Time�ڵ� �׸�(Col-Title) �����ϱ�
   //----------------------------------------------------
   if GetTimeList(P_PatNo, DelChar(P_AdmDate,'-')) < 0 then
   begin
      MessageBox(Self.Handle,
                 '����͸� Time ������ �����Ͽ����ϴ�. ���� [T.920-6218]',
                 '����� ����͸� Time �浹 �˸�',
                 MB_OK + MB_ICONERROR);

      // ��������/�׸���� �� Refresh Disabled
      bbt_MoniSave.Enabled := False;
      bbt_Monitor.Enabled  := False;
      sbt_Refresh.Enabled  := False;

      Exit;
   end;



   //----------------------------------------------------
   // 4. Set�ڵ庰 �Է¼Ӽ���(InputTyp/Limit) ����
   //----------------------------------------------------
   if (P_EmrPrintYn <> 'Y') then
      GetAllItems;



   //----------------------------------------------------
   // 5. Fixed Title Column ���� (����͸��׸�)
   //----------------------------------------------------
   with asg_IcuMon do
   begin
      // ����͸� �׸�� ǥ��
      Cells[0,0]  := '����͸� �׸�';

      // ����͸� �׸�� Cell Merging
      MergeCells(0,0,2,1);

      // Stroke Unit ��ȣ����� �б� @ 2012.04.21 LSH
      if (P_NicuFlag = 'S') then
      begin
         // �����з� colwidth
         ColWidths[0] := 55;

         // �����з� colwidth
         ColWidths[1] := 85;
      end
      else
      // ICU - NICU ��ȣ�����
      begin
         // �����з� colwidth
         ColWidths[0] := 65;

         // �����з� colwidth
         ColWidths[1] := 75;
      end;
   end;


end;


//------------------------------------------------------------------------------
// ȯ�ں� ����͸� Code �׸� Set Event Handler
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
   // 1. ȯ�ڱ⺻���� �� ������� ��ȿ�� Check
   //-----------------------------------------------------------------
   if (Trim(lb_PatInfo.Caption) = '') then
   begin
      // [ȯ�ڱ�� ������ȸ] �Ǵ� [�ڵ����ĺ�ȯ] ����, 2011.09.07 LSH
      if (P_RgtDate <> '') then
      begin
         MessageBox(Self.Handle,
                    '��ȸ���ڿ� ���� ��ϳ����� �������� �ʽ��ϴ�.' + #13#10 +
                    '��ȸ���� Ȯ�ιٶ��ϴ�.',
                    'ȯ�ڱ��������ȸ ��� ����',
                    MB_OK + MB_ICONINFORMATION);

         Exit;
      end;


      MessageBox(Self.Handle,
                 pchar('�ش�ȯ���� �� ��ġ ������ ��Ȯ���� �ʽ��ϴ�.' + #13#10 + #13#10 +
                 '������ �������� [���οϷ�] ���� Ȯ�ιٶ��ϴ�.'),
                 'ȯ������ ��ȸ ���� �˸�',
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
   // ���� ����(00:00~06:59)�� �Կ��ϴ� case����,
   // �Կ�����-1 �ϱ��� ������� ��ȸ �����ϵ��� ���� ����, 2011.05.25 LSH
   //---------------------------------------------------------------------------
   if dtp_RgtDate.Date < StrToDate(ConvertSDate(DelChar(P_AdmDate,'-'))) - 1 then
   begin
      MessageBox(Self.Handle,
                 '������ڸ� Ȯ�����ֽʽÿ�.',
                 '����͸� SET ��������',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;



   //-----------------------------------------------------------------
   // 2-1. Monitoring �׸� ���� ����
   //-----------------------------------------------------------------
   if (sGubun = 'FORMSHOW') then
   begin
      //-----------------------------------------------------
      // ����͸� �⺻ ��ü�׸� (SetType = 'MON') ��������
      //-----------------------------------------------------
      sType1   := '6';


      // ICU - NICU ��ȣ����� ����͸� SET �б�, 2011.10.26 LSH
      // SU ��ȣ����� �б� @ 2012.04.21 LSH
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
         // ����͸� Default Set (��ü�׸�) ��������
         //-----------------------------------------------------
         RowNo := iCrect.GetMonitorDayList(sType1, sType2, sType3, sType4, sSetType);


         // SYSTEM ERROR
         if RowNo = -1 then
         begin
            iCrect.Free;
            ShowErrMsg(stb_Message);
            Exit;
         end;


         // ��ȸ�Ǽ� ����
         if RowNo = 0 then
         begin
            iCrect.Free;
            stb_Message.Panels[0].Text := 'D/B�� ����͸� �ڵ��׸��� �����ϴ�. ���� [T.920-6218]';
            Exit;
         end;


         // SetCode�� HmdIcutot��ü ���� List Clear
         l_CodeItem.Clear;


         // SetCode���� ������ List Clear
         sl_CodeList.Clear;


         // �Է³��� ������ ��µǵ��� �ڵ����� ����
         sl_CodeList.Sorted := False;



         //----------------------------------------------
         // SET �ڵ��׸� ��ġ, ����
         //----------------------------------------------
         with iCrect, asg_IcuMon do
         begin

            // Merge ����
            iBaseRow       := 0;
            iRowSpan       := 1;
            sPrevUptitle   := ''; // C_CODEVAL�� ġȯ����..


            for i := 0 to RowNo - 1 do
            begin
               // 2.3.2. restore classification code
               rowItem := HmdIcutot.Create;


               //-----------------------------------------
               // �ʼ� �����׸� (Default)
               //-----------------------------------------
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin

                  Cells[0, RowCount - 1] := sSettitle[i];    // �����з�
                  Cells[1, RowCount - 1] := '';              // �����з�

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               //------------------------------------
               // Hemodynamic
               //------------------------------------
               if (cbx_Hemo.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  continue;
               end
               //---------------------------------------------------------------
               // [����] ���� P/M RR(Respiration Rate) �ڵ� Hide @ 2012.10.15 LSH
               //   - ���� OCS ������ �ϰ�, ȭ�鿡�� RESP 1���� ǥ��
               //   - ������� Ps(ABPs),Pd(ABPd), Pm(ABPm) �߰� @ 2012.11.01 LSH
               //---------------------------------------------------------------
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') and
                       ((sItemCode[i] = 'RR') or
                        (sItemCode[i] = 'PS') or
                        (sItemCode[i] = 'PD') or
                        (sItemCode[i] = 'PM') or
                        // [����] 73W BMCentral �������̽� -2013.11.28 smpark
                        (sItemCode[i] = 'SPO2-%') or
                        (sItemCode[i] = 'NIBP-S') or
                        (sItemCode[i] = 'NIBP-D')) then
               begin
                  Continue;
               end
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // �����з�
                  Cells[1, RowCount - 1] := sSettitle[i];   // �����з�

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               //------------------------------------
               // �ǽ�-�Ű��, ȣ���
               //------------------------------------
               if (cbx_Neuro.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  continue;
               end
               else if (cbx_Neuro.Checked) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // �����з�
                  Cells[1, RowCount - 1] := sSettitle[i];   // �����з�

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               //----------------------------------------------
               // ���뷮(MD**), Total Sum(ME**), �輳��(MF**)
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

                  Cells[0, RowCount - 1] := sSettitle[i];    // �����з�
                  Cells[1, RowCount - 1] := '';              // �����з� (Duty�� Sum���� ����� �÷�)

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               // List�� �ν��Ͻ� �߰� (Pointer)
               l_CodeItem.Add(rowItem);


               //--------------------------------------------
               // Cell Merge and Rearranging
               //--------------------------------------------
               // [�ʼ��׸�]�� Row Cell-Merge ����.
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin

                  MergeCells(0, i+1, 2, 1);

                  // [����] ������� SpO2 �ڵ��߰� �׸� Cell Remove @ 2012.11.05 LSH
                  if (sItemCode[i] = 'SPO2 L') then
                  begin
                     RowHeights[i+1] := 0;
                  end;
               end
               else
               // [I/O�׸�]�� �� �׸� Row-Sum���� Cell-Merge ���� ����, 2011.02.16 LSH <AN ���������� ��û>
               if ((CopyByte(sSetCode[i],2,1) = 'D') or
                   (CopyByte(sSetCode[i],2,1) = 'E') or
                   (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin
                  MergeCells(0, iBaseRow, 1, 1);
               end
               else
               // �׿ܿ� [Hemodynamic], [�ǽĽŰ��,ȣ���]�� iBaseRow�� �������� Cell-Merge ����.
               begin
                  // �����з� �׸� MergeCell üũ
                  if sUptitle[i] <> sPrevUptitle then
                  begin

                     // ���� �з��� �ٸ� ���
                     if i > 0 then
                     begin
                        MergeCells(0, iBaseRow, 1, iRowSpan);
                        iRowSpan := 1;
                     end;

                     // �ڡڡڡڡ� Key Point
                     iBaseRow := RowCount - 1;

                  end
                  else
                  begin
                     // ���� �з��� ������ ���
                     Inc(iRowSpan);
                  end;
               end;


               // set previous value
               sPrevUptitle  := sUptitle[i];


               // RowCount �����ٷ� �ѱ�.
               RowCount := RowCount + 1;

            end;
         end;

         // �ڡڡ� ���� Code List-up��,
         asg_IcuMon.MergeCells(0, iBaseRow, 1, iRowSpan);


         asg_IcuMon.RowCount := asg_IcuMon.RowCount - 1;


         iCrect.Free;


         // ���� CodeList ������, ����͸� �Է��ֱ� �ʱ�ȭ, 2011.03.21
         // SU ��ȣ����� �б� @ 2012.04.21 LSH
         if (P_NicuFlag = 'S') then
            combx_Moniprd_Su.ItemIndex := -1
         else
            combx_Moniprd.ItemIndex    := -1


         finally
            Screen.Cursor := crDefault;
         end;


   end
   //-----------------------------------------------------------------
   // 2-2. Monitoring �׸� ����
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

            // ICU - NICU ��ȣ����� ����͸� SET �б�, 2011.10.26 LSH
            // SU ��ȣ����� �б� @ 2012.04.21 LSH
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
            // SetCode Looping���鼭 Code�� Variant �߰�
            //--------------------------------------------
            for i := 0 to sl_CodeList.Count do
            begin
                  if (i = sl_CodeList.Count) then
                     break
                  else
                     j := j + 1;

                  // StringList�� ����� SetCode���� Array�� �߰�
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

         stb_Message.Panels[0].Text := '����͸� SET�� ����Ǿ����ϴ�.';


         finally
            screen.Cursor := crDefault;
         end;
   end;

end;



//------------------------------------------------------------------------------
// ȯ�ں� ����͸� Code �׸� Get Event Handler
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
   // 2. ȭ�� Clear �� �ʱ�ȭ
   //---------------------------
   asg_IcuMon.Clear;
   asg_IcuMon.RowCount := 2;



   Screen.Cursor := crHourglass;



   //------------------------------------------------------
   // 3. ����͸� �׸� ���ں�/SET�� ȭ�� �����ϱ�
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

         // ICU - NICU ��ȣ����� ����͸� SET �б�, 2011.10.26 LSH
         // SU ��ȣ����� �б� @ 2012.04.21 LSH
         if (P_NicuFlag = 'Y') then
            sType5 := 'NIC'
         else if (P_NicuFlag = 'S') then
            sType5 := 'STR'
         else
            sType5 := 'MON';


         //----------------------------------------------------
         // �ֱ� ����� SetCode ���峻�� ��������
         //----------------------------------------------------
         RowNo := iCrect.GetMonitorDayList(sType1, sType2, sType3, sType4, sType5);



         // SYSTEM ERROR
         if RowNo = -1 then
         begin
            // �ڵ����ĺ�ȯ EMR Flag
            G_EmrYn := 'N';

            iCrect.Free;

            ShowErrMsg(stb_Message);

            Exit;
         end;


         //------------------------------------------------------
         // ���� �������(MDICUSET�� ����� SetCode ������ ����)
         //------------------------------------------------------
         if RowNo = 0 then
         begin
            // �ڵ����ĺ�ȯ EMR Flag
            G_EmrYn := 'N';

            // Class Buffer Free
            iCrect.Free;

            // ����͸� Code ���ʱ���
            SetCodeList('FORMSHOW');

            // ��ȯ�� Set������ ���� ������� ���� (Tag = 0)
            asg_IcuMon.Tag := 0;

            // Return Value is True
            GetCodeList   := 1;

            // Exit
            Exit;

         end;

         // �ڵ����ĺ�ȯ ������� flag
         G_EmrYn := 'Y';


         // SetCode�� HmdIcutot��ü ���� List Clear
         l_CodeItem.Clear;


         // Code�׸� List Clear
         sl_CodeList.Clear;


         // �Է³��� ������ ��µǵ��� �ڵ����� ����
         sl_CodeList.Sorted := False;


         //----------------------------------------------
         // SET �ڵ��׸� ��ġ, ����
         //----------------------------------------------
         with iCrect, asg_IcuMon do
         begin

            // Merge ����
            iBaseRow       := 0;
            iRowSpan       := 1;
            sPrevUptitle   := ''; // C_CODEVAL�� ġȯ����..


            for i := 0 to RowNo - 1 do
            begin
               // ��ü ����
               rowItem := HmdIcutot.Create;


               //-----------------------------------------
               // �ʼ������׸� (Default)
               //-----------------------------------------
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin

                  Cells[0, RowCount - 1] := sSettitle[i];    // �����з�
                  Cells[1, RowCount - 1] := '';              // �����з�

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);


                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               //----------------------------------------
               // Hemodynamic
               //----------------------------------------
               if (cbx_Hemo.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  continue;
               end
               //---------------------------------------------------------------
               // [����] ���� P/M RR(Respiration Rate) �ڵ� Hide @ 2012.10.15 LSH
               //   - ���� OCS ������ �ϰ�, ȭ�鿡�� RESP 1���� ǥ��
               //   - ������� Ps(ABPs),Pd(ABPd), Pm(ABPm) �߰� @ 2012.11.01 LSH
               //---------------------------------------------------------------
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') and
                       ((sItemCode[i] = 'RR') or
                        (sItemCode[i] = 'PS') or
                        (sItemCode[i] = 'PD') or
                        (sItemCode[i] = 'PM') or
                        // [����] 73W BMCentral �������̽� -2013.11.28 smpark
                        (sItemCode[i] = 'SPO2-%') or
                        (sItemCode[i] = 'NIBP-S') or
                        (sItemCode[i] = 'NIBP-D')) then
               begin
                  Continue;
               end
               else if (cbx_Hemo.Checked) and (CopyByte(sSetCode[i],2,1) = 'B') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // �����з�
                  Cells[1, RowCount - 1] := sSettitle[i];   // �����з�

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               //------------------------------------
               // �ǽ�-�Ű��, ȣ���
               //------------------------------------
               if (cbx_Neuro.Checked = False) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  continue;
               end
               else if (cbx_Neuro.Checked) and (CopyByte(sSetCode[i],2,1) = 'C') then
               begin
                  Cells[0, RowCount - 1] := sUptitle[i];    // �����з�
                  Cells[1, RowCount - 1] := sSettitle[i];   // �����з�

                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               //----------------------------------------------
               // ���뷮(MD**), Total Sum(ME**), �輳��(MF**)
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

                  Cells[0, RowCount - 1] := sSettitle[i];    // �����з�
                  Cells[1, RowCount - 1] := '';              // �����з� (Duty�� Sum���� ����� �÷�)


                  //  Insert SetCode to CodeList
                  sl_CodeList.add(sSetCode[i]);

                  rowItem.sSetCode  := sSetCode [i];  // Set �ڵ�
                  rowItem.sSetTitle := sSetTitle[i];  // Set ��
                  rowItem.sInputTyp := sInputTyp[i];  // �Է� ����
                  rowItem.sItemCode := sItemCode[i];  // �����ڵ�(��: ���interface �ڵ�, property �ڵ�..)
               end;


               // List�� �ν��Ͻ� �߰� (Pointer)
               l_CodeItem.Add(rowItem);


               //--------------------------------------------
               // Cell Merge & Rearranging
               //--------------------------------------------
               // [�ʼ��׸�]�� Row Cell-Merge ����.
               if (CopyByte(sSetCode[i],2,1) = 'A') then
               begin
                  MergeCells(0, i+1, 2, 1);

                  //------------------------------------------------------------
                  // [����] ������� SpO2 �ڵ��߰� �׸� Cell Remove @ 2012.11.05 LSH
                  //------------------------------------------------------------
                  if (sItemCode[i] = 'SPO2 L') then
                  begin
                     RowHeights[i+1] := 0;
                  end;
               end
               else
               // [I/O�׸�]�� �� �׸� Row-Sum���� Cell-Merge ���� ����, 2011.02.16 LSH <���������� ��û>
               if ((CopyByte(sSetCode[i],2,1) = 'D') or
                   (CopyByte(sSetCode[i],2,1) = 'E') or
                   (CopyByte(sSetCode[i],2,1) = 'F')) then
               begin
                  MergeCells(0, iBaseRow, 1, 1);
               end
               else
               // �׿ܿ� [Hemodynamic], [�ǽĽŰ��,ȣ���]�� iBaseRow�� �������� Cell-Merge ����.
               begin
                  // �����з� �׸� MergeCell üũ
                  if sUptitle[i] <> sPrevUptitle then
                  begin

                     // ���� �з��� �ٸ� ���
                     if i > 0 then
                     begin
                        MergeCells(0, iBaseRow, 1, iRowSpan);
                        iRowSpan := 1;
                     end;

                     // �ڡڡڡڡ� Key Point
                     iBaseRow := RowCount - 1;

                  end
                  else
                  begin
                     // ���� �з��� ������ ���
                     Inc(iRowSpan);
                  end;
               end;

               // set previous value
               sPrevUptitle  := sUptitle[i];

               // RowCount �����ٷ� �ѱ�.
               RowCount := RowCount + 1;

            end;

            //----------------------------------------------------------------
            // �ֱ� ���� Monitoring �Է��ֱ� �ӽú��� assign, 2011.03.17 LSH
            //----------------------------------------------------------------
            tmpMoniPrd := sLimit[0];

         end;


         // �ڡڡ� ���� Code List-up��,
         asg_IcuMon.MergeCells(0, iBaseRow, 1, iRowSpan);

         // ���� RowCount ����
         asg_IcuMon.RowCount := asg_IcuMon.RowCount - 1;


         // Return Value is True
         GetCodeList   := 1;


         iCrect.Free;


         //-----------------------------------------------------------------
         // �ֱ� ���� Monitoring �Է��ֱ� �޺��ڽ� assign, 2011.03.17 LSH
         //-----------------------------------------------------------------
         if (tmpMoniPrd = '') then
         begin
            // SU ��ȣ����� �б� @ 2012.04.21 LSH
            if (P_NicuFlag = 'S') then
               combx_Moniprd_Su.ItemIndex := -1
            else
               combx_Moniprd.ItemIndex    := -1;
         end
         else
         begin
            // SU ��ȣ����� �б� @ 2012.04.21 LSH
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
// ȯ�ں� ����͸� Time Set Event Handler
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
   // 2. Time �׸� ���� ����
   //-----------------------------------------------------------------
   if (sGubun = 'FORMSHOW') then
   begin

      // FixedCol (2) + 24hour (24) = 26��
      asg_IcuMon.ColCount := 26;

      //------------------------------------------------------------------------
      // �ʱ� �ð����� �ϵ��ڵ�.. ���� �� ���� ���̵�� ������, �ǰ��� ���ֽñ� !!
      //  - MDMCOMCT�� COMCD1 = 'ICU' �ϳ� �ְ�, Time �� �������°�?, 2011.12.22
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
         // Time ����Ʈ Clear
         sl_TimeList.Clear;

         // StringList Not Sorted
         sl_TimeList.Sorted := False;


         //------------------------------------
         // �ð��뺰 �������(Actdate) ����
         //------------------------------------
         with asg_IcuMon do
         begin
            // Formshow�� ColCount = 26�ε�, TimeList�� 24�ð� �̹Ƿ� '-2'
            for i := 0 to ColCount - 2 do
            begin
               // ���۽ð� ~ 23:59 �� ���Ϸ� ����.
               //  --> [����] ���۽ð� ~ 23:59���� ����, 2011.05.31 LSH
               if  (DelChar(Cells[i+2,0],':') >= C_STARTTM) and
                   (DelChar(Cells[i+2,0],':') <= '2359') then
               begin
                  sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date));
               end
               // 00:00 ~ ����ð� �� ����+1 �� ����.
               //  --> [����] 00:00 ~ ����ð����� ����, 2011.05.31 LSH
               //  -->        00:00 (23:01~24:00)��, ȭ�� ���÷��� ������ ���Ϸ� ����.
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
   // Time �׸� �߰� or ����͸� ��������
   //-----------------------------------------------------
   else if (sGubun = 'REFRESH') then
   begin

      Screen.Cursor := crHourglass;

      try
         iCrect := HmdIcutot.Create;


         //-----------------------------------------------
         // Set Parameter Value : Time �׸� ����
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
               // ���� ������ TimeList �ε�����,
               //-----------------------------------
               if (i = sl_TimeList.Count ) then
               begin

                  if (Trim(med_ActTime.Text) <> ':') then
                  begin
                     // �ð������� index �ϳ� �� �߰�.
                     j := j + 1;

                     //-----------------------------------------
                     // ������ �ð��뺰 �������(Actdate) ����
                     //-----------------------------------------
                     if  (DelChar(Trim(med_ActTime.Text),':') >= C_STARTTM) and
                         (DelChar(Trim(med_ActTime.Text),':') <= '2359') then
                     begin
                        // ���۽ð� ~ 00:00 �� ���Ϸ� ����.
                        //  --> [����] ���۽ð� ~ 23:59���� ����, 2011.05.31 LSH
                        t_addDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date);
                     end
                     else if (DelChar(Trim(med_ActTime.Text),':') >= '0000') and
                             (DelChar(Trim(med_ActTime.Text),':') <= C_ENDTM) then
                     begin
                        // 00:00 ~ ����ð� �� ����+1 �� ����.
                        //  --> [����] 00:00 ~ ����ð����� ����, 2011.05.31 LSH
                        //  -->        00:00 (23:01~24:00)��, ȭ�� ���÷��� ������ ���Ϸ� ����.
                        t_addDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1);
                     end;


                     //----------------------------------------
                     // ������� �� �����ð� Assign
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
               // ���� �ε����� Looping ���̸�,
               //-----------------------------------
               begin
                  //--------------------------------------------------------------------
                  // Time�׸� List�� �̻����� ��� (��񿬵� Data�� Time�߰��� ���)
                  //--------------------------------------------------------------------
                  if (sl_TimeList.Count = 0) then
                  begin
                     with asg_IcuMon do
                     begin
                        for k := 0 to ColCount - 2 do
                        begin
                           //----------------------------
                           // �ð��뺰 ������� ����
                           //----------------------------
                           if  (LengthByte(DelChar(Cells[k+2,0],':')) = 4)  and
                               (DelChar(Cells[k+2,0],':') >= C_STARTTM) and
                               (DelChar(Cells[k+2,0],':') <= '2359') then
                           begin
                              // ���۽ð� ~ 23:59 �� ���Ϸ� ����.
                              //  --> [����] ���۽ð� ~ 23:59���� ����, 2011.05.31 LSH
                              sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date));
                           end
                           else if (LengthByte(DelChar(Cells[k+2,0],':')) = 4) and
                                   (DelChar(Cells[k+2,0],':') >= '0000')   and
                                   (DelChar(Cells[k+2,0],':') <= C_ENDTM) then
                           begin
                              // 00:00 ~ ����ð� �� ����+1 �� ����.
                              //  --> [����] 00:00 ~ ����ð����� ����, 2011.05.31 LSH
                              //  -->        00:00 (23:01~24:00)��, ȭ�� ���÷��� ������ ���Ϸ� ����.
                              sl_TimeList.add(FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1));
                           end;
                        end;
                     end;
                  end;


                  // Time �׸���� Setting �Ǿ�����, ������ Assign @ 2012.05.07
                  if (sl_TimeList.Count > 0) then
                  begin
                     // �ð������� index �ϳ� �� �߰�.
                     j := j + 1;

                     //--------------------------------------
                     // �ű� �߰��� �������, �����ð�
                     //--------------------------------------
                     AppendVariant(sActDate , sl_TimeList.Strings[i]);  // ActDate
                     AppendVariant(sSetCode , asg_IcuMon.Cells[i+2,0]); // ActTime (FixedCol = 2�̹Ƿ� +2)
                  end
                  else
                  begin
                     // ��ȿ�� Time �׸񱸼��� �ȵǾ�����, �ʱ� Default Setting @ 2012.05.07
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

         stb_Message.Panels[0].Text := '����͸� Time�� ����Ǿ����ϴ�.';


         finally
            screen.Cursor := crDefault;
         end;
   end;
end;




//------------------------------------------------------------------------------
// ȯ�ں� ����͸� Time Get Event Handler
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
   // 2. ����͸��׸� ���ں�/SET�� ȭ�� �����ϱ�
   //-----------------------------------------------------------------
   Screen.Cursor   := crHourglass;



   try
      iCrect := HmdIcutot.Create;


      //------------------------------------------------
      // �ֱ� ���� Time�׸� ����Ʈ ��������
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

      // FixedCol (2��) + Start Col (1��)
      asg_IcuMon.ColCount := 3;


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         iCrect.Free;


         // Time �׸� ���� ����
         SetTimeList('FORMSHOW');

         // Return value is True
         GetTimeList := 1;


         Exit;
      end;


      // Time ����Ʈ Clear
      sl_TimeList.Clear;


      // Sorting ���� (�Է��� ������� ����)
      sl_TimeList.Sorted := False;


      //-----------------------------------------------
      // Time �׸� �� ������� �Ӽ� ����
      //-----------------------------------------------
      with iCrect, asg_IcuMon do
      begin
         for i := 0 to RowNo - 1 do
         begin
            // Column �׸� �����ð�(Acttime) setting
            Cells[ColCount-1, 0] := sActTime[i];

            // Time List�� ��������(Actdate) setting
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
// [��ȯ�ڽ� ���ձ����] - ��ȣ���� BPL ȣ��
//
// Author : Lee, Byoung-Sik
// Date   : 2011.01.11
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_AssClick(Sender: TObject);
var
   FForm : TForm;
begin
   //----------------------------------------------------------
   // NICU ��ȣ����� "��ȣ����" �߰�, 2011.12.07 LSH
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
   SetBplStrProp(FForm.Name, 'propPatFlag', P_PatFlag);     // NICU/ICU �ǻ���ȸ�� [��ȸ]���ɸ� Ȱ��ȭ, 2012.03.05 LSH

   MComFormShow(FForm);
end;


//------------------------------------------------------------------------------
// Set�ڵ� �׸� �Ӽ� Value Get Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.01.17
//------------------------------------------------------------------------------
procedure TMDN110FM.GetAllItems;
var
   items   : HmdIcutot; // �Է� �׸� �Է� �� ����
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
   // 2. ��ȸ
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


      // ICU - NICU ��ȣ����� ����͸� SET �б�, 2011.10.26 LSH
      // SU ��ȣ����� �б� @ 2012.04.21 LSH
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
            FindField('setcode').AsString  := items.sSetCode  [i];    // Set �ڵ�
            FindField('setname').AsString  := items.sSetTitle [i];    // Set �̸�
            FindField('inputtyp').AsString := items.sInputtyp [i];    // �Է�����
            FindField('limit').AsString    := items.slimit    [i];    // �Է�����
            FindField('upcode').AsString   := items.sUpcode   [i];    // �����ڵ�
            FindField('itemcode').AsString := items.sItemCode [i];    // Value �ڵ�
            FindField('itemname').AsString := items.sItemTitle[i];    // Value �̸�
            FindField('dispseq').AsString  := items.sDispSeq  [i];    // ��� ����
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

         // 1. �Է��׸� �ڵ忡 ���� �Է� �� ��� �˻�
         Filter := 'setcode = ''' + sSetCode + ''' ';

         Filtered := True;



         // 2. �Է� ���Ŀ� ���� Control ����
         with asg_IcuMon do
         begin
            //--------------------------------
            // Combo �ڽ� ����
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
            // Edit �ڽ� ����
            //--------------------------------
            else if sInputTyp = 'ED' then
            begin
               //AEditor := edRichEdit;
            end
            //--------------------------------
            // Date ����
            //--------------------------------
            else if sInputTyp = 'DT' then
            begin
               AEditor := edDateEdit;
            end
            //--------------------------------
            // Check �ڽ� ����
            //--------------------------------
            else if sInputTyp = 'CK' then
            begin
               //
            end
            else if sInputTyp = '' then
            //------------------------------------------------
            // �Է����°� ����ִ� ��� ( ��: ��з� �׸� ..)
            //------------------------------------------------
            begin
               // �Է¾ȵǵ��� �����ٷ� Line-Feed.
               asg_IcuMon.Row := asg_IcuMon.Row + 1;
            end;
         end;


         // Sorting ����
         Filtered := False;

      end;
    end;
end;




//------------------------------------------------------------------------------
// ����͸� �׸� �Է°� Get Event Handler
//     Grid Cell -> Client Data Set(cds_SaveItem)
// Author : Lee, Se-Ha
// Date   : 2011.01.11
//------------------------------------------------------------------------------
procedure TMDN110FM.GetSaveList(sSetCode, sActTime, sItemVal, sIntFlag, sAddInfo : String);
var
   bExist : Boolean;
begin


   //-------------------------------------------------------------------
   // 1. ��ȸ
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
                  // ���� ���� �����ϸ�, ������Ʈ
                  cds_SaveItem.Edit;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;     // Set �ڵ�
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;     // �����ð�
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;     // �Է°�
                  cds_SaveItem.FindField('modflag').AsString   := 'U';          // �����ͺ��� flag = 'U'
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;     // ��� Int'f Data �������� flag (Y: ����, N: ����)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;     // �� �߰�����(��: ���Int'f Data Fetch�ð� ��)
               end
               else
               begin
                  // �������� �������� ������, �߰�
                  cds_SaveItem.Append;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;    // Set �ڵ�
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;    // �����ð�
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;    // �Է°�
                  cds_SaveItem.FindField('modflag').AsString   := 'A';         // �ű��߰� flag
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;    // ��� Int'f Data �������� flag (Y: ����, N: ����)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;    // �� �߰�����(��: ���Int'f Data Fetch�ð� ��)
               end
            end
            //-----------------------------------------------------------------------------------
            // 1-3. ���� l_CodeItem�� setcode�� acttime �� filtering �ؼ�, �ش� record�� DeleteByte
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
                  // ���� ����, not null..
                  cds_SaveItem.Edit;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;    // Set �ڵ�
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;    // �����ð�
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;
                  cds_SaveItem.FindField('modflag').AsString   := 'D';         // ���� flag
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;    // ��� Int'f Data �������� flag (Y: ����, N: ����)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;    // �� �߰�����(��: ���Int'f Data Fetch�ð� ��)
               end
               else
               begin
                  // Adv-Grid�� Null�̰�, CDS�� ��Ī�Ǵ� ������ ���������, �������� �������� ������ �߰�
                  cds_SaveItem.Append;

                  cds_SaveItem.FindField('setcode').AsString   := sSetCode;    // Set �ڵ�
                  cds_SaveItem.FindField('acttime').AsString   := sActTime;    // �����ð�
                  cds_SaveItem.FindField('itemvalue').AsString := sItemVal;    // �Է°�
                  cds_SaveItem.FindField('modflag').AsString   := 'N';         // ������Ʈ(null To null) flag
                  cds_SaveItem.FindField('intflag').AsString   := sIntFlag;    // ��� Int'f Data �������� flag (Y: ����, N: ����)
                  cds_SaveItem.FindField('addinfo').AsString   := sAddInfo;    // �� �߰�����(��: ���Int'f Data Fetch�ð� ��)
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
// ����͸� �׸� �Է°� Set Event Handler
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
      asg_IcuMon.RowCount := sl_CodeList.Count + 1; // FixedRow = 1��
      asg_IcuMon.ColCount := sl_TimeList.Count + 2; // FixedCol = 2��


      // restore classification code
      items := HmdIcutot.Create;


      // ����͸� ���׸� ���� List Clear
      l_SaveItem.Clear;


      // assign�Ǵ� ���� �ʱ�ȭ
      idx_DutyDay  := 0;
      idx_DutyEvng := 0;
      idx_DutyNigt := 0;

      SumRow       := 0;
      iFromRow     := 0;
      iToRow       := 0;
      oFromRow     := 0;
      oToRow       := 0;
      tmpToRow     := 0;

      oToUrine     := 1;   // default Row�� ù��°��(Note) �����Է� �Ұ��׸� @ 2012.06.05

      idx_FromRow  := 0;
      idx_ToRow    := 0;

      // ��� �� Residual �׸� �ʱ�ȭ(�ʱⰪ 1�������� �Ʒ������� ��) @ 2012.10.17 LSH
      idx1_Residue := 1;
      idx2_Residue := 1;
      idx3_Residue := 1;
      idx4_Residue := 1;
      idx5_Residue := 1;


      for i := 0 to sl_CodeList.Count - 1 do
      begin
         //---------------------------------------------------------------------
         // Neonatal ICU ��ȣ����� I/O Sum ����, 2011.10.26 LSH
         //---------------------------------------------------------------------
         if (P_NicuFlag = 'Y') then
         begin
            //------------------------------------------
            // 1-1. ���뷮 Sum���� From �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'ND04') then    // [���뷮 - �汸(����)]�� StartRow --> L-tube(cc)�� StartRow ����, 2012.01.18 LSH
            begin
               iFromRow    := i+1;                       // ���뷮 ColSum ���� Index
               idx_FromRow := i+1;                       // RowSum ���� Index
            end;


            //------------------------------------------------------------------
            // 1-1.5.Feeding/Kg ����� ���� Bottle(cc)�� �ӽ� ToRow ���� assign
            //  - 2012.01.18 LSH
            //------------------------------------------------------------------
            if (sl_CodeList.Strings[i] = 'ND05') then
               tmpToRow := i+1;


            //------------------------------------------
            // 1-2. ���뷮 Sum���� To �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NE01') then    // [�Ѽ��뷮]�̸�, �ٷ� ���� ���뷮 �׸� index�� EndRow
            begin
               iToRow := i;                              // ���뷮 ColSum ���� Index
               SumRow := i+1;                            // ���� Total Sum�� ������, �Ѽ��뷮 �׸� Row-index
            end;

            //------------------------------------------
            // 1-3. �輳�� Sum���� From �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF02') then    // [�輳�� - �ڿ��财(cc)]�� StartRow
            begin
               oFromRow := i+1;                          // �輳�� ColSum ���� Index
            end;

            //------------------------------------------
            // 1-4. Urine Sum���� �ε��� Set �߰�
            //   - 2012.06.05 LSH (������ ��û..��..)
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF03') then    // [�輳�� - ��ġ�财(cc)]�� Urine-Sum EndRow
            begin
               oToUrine := i+1;                          // ��Ʈ��ȸ -> �輳�� Urine Sum ���� Index
            end;

            //-------------------------------------------------------
            // 1-5. �輳�� Sum Skip(�뺯Ƚ��) ���� �ε��� Set
            //   - �ʱ� �輳�� Col-Sum�� �ڿ��财+��ġ����������,
            //     �뺯Ƚ���� ������ ��� �׸� Sum���� �������.
            //   - 2012.05.29 LSH (NICU ������ ��û)
            //-------------------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF04') then    // [�輳�� - �뺯(ȸ)]�̸�,
            begin
               iSkipRow := i+1;                          // �輳�� Skip Index
            end;

            //------------------------------------------
            // 1-6. �輳�� Sum���� To �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'NF25') then    // [�輳�� - amount(Suction)] EndRow
            begin
               oToRow    := i+1;                         // �輳�� ColSum ���� Index
               idx_ToRow := i+1;                         // RowSum ���� Index
            end;

         end
         else if (P_NicuFlag = 'S') then
         //---------------------------------------------------------------------
         // Stroke Unit ��ȣ����� I/O Sum ���� @ 2012.04.21 LSH
         //---------------------------------------------------------------------
         begin
            //------------------------------------------
            // 1-1. ���뷮 Sum���� From �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SD02') then    // [���뷮 - �汸(cc)]�� StartRow
            begin
               iFromRow    := i+1;                       // ���뷮 ColSum ���� Index
               idx_FromRow := i+1;                       // RowSum ���� Index
            end;

            //------------------------------------------
            // 1-2. ���뷮 Sum���� To �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SE01') then    // [�Ѽ��뷮]�̸�, �ٷ� ���� ���뷮 �׸� index�� EndRow
            begin
               iToRow := i;                              // ���뷮 ColSum ���� Index
               SumRow := i+1;                            // ���� Total Sum�� ������, �Ѽ��뷮 �׸� Row-index
            end;

            //------------------------------------------
            // 1-3. �輳�� Sum���� From �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SF02') then    // [�輳�� - �ڿ��财(cc)]�� StartRow
            begin
               oFromRow := i+1;                          // �輳�� ColSum ���� Index
            end;

            //------------------------------------------
            // 1-4. �輳�� Sum���� To �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'SF25') then    // [�輳�� - �뺯(Ƚ��)] EndRow
            begin
               oToRow    := i+1;                         // �輳�� ColSum ���� Index
               idx_ToRow := i+1;                         // RowSum ���� Index
            end;
         end
         else
         //---------------------------------------------------------------------
         // �Ϲ� ICU ���� ��ȣ����� I/O Sum ����
         //---------------------------------------------------------------------
         begin
            //------------------------------------------
            // 1-1. ���뷮 Sum���� From �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'MD02') then    // [���뷮 - �汸(cc)]�� StartRow
            begin
               iFromRow    := i+1;                       // ���뷮 ColSum ���� Index
               idx_FromRow := i+1;                       // RowSum ���� Index
            end;

            //------------------------------------------
            // 1-2. ���뷮 Sum���� To �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'ME01') then    // [�Ѽ��뷮]�̸�, �ٷ� ���� ���뷮 �׸� index�� EndRow
            begin
               iToRow := i;                              // ���뷮 ColSum ���� Index
               SumRow := i+1;                            // ���� Total Sum�� ������, �Ѽ��뷮 �׸� Row-index
            end;

            //------------------------------------------
            // 1-3. �輳�� Sum���� From �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF02') then    // [�輳�� - �ڿ��财(cc)]�� StartRow
            begin
               oFromRow := i+1;                          // �輳�� ColSum ���� Index
            end;


            //------------------------------------------------
            // 1-4. �輳���߰�6(TEXT) Sum Skip���� �ε��� Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF18') then    // [�輳���߰�6(TEXT)]
            begin
               idx1_Residue := i+1;
            end;

            //------------------------------------------------
            // 1-5. �輳���߰�7(TEXT) Sum Skip���� �ε��� Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF19') then    // [�輳���߰�7(TEXT)]
            begin
               idx2_Residue := i+1;
            end;


            //------------------------------------------------
            // 1-6. �輳���߰�8(TEXT) Sum Skip���� �ε��� Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF20') then    // [�輳���߰�8(TEXT)]
            begin
               idx3_Residue := i+1;
            end;

            //------------------------------------------------
            // 1-7. �輳���߰�9(TEXT) Sum Skip���� �ε��� Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF21') then    // [�輳���߰�9(TEXT)]
            begin
               idx4_Residue := i+1;
            end;

            //------------------------------------------------
            // 1-8. �輳���߰�10(TEXT) Sum Skip���� �ε��� Set
            //------------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF22') then    // [�輳���߰�10(TEXT)]
            begin
               idx5_Residue := i+1;
            end;

            //------------------------------------------
            // 1-9. �輳�� Sum���� To �ε��� Set
            //------------------------------------------
            if (sl_CodeList.Strings[i] = 'MF25') then    // [�輳�� - �뺯(Ƚ��)] EndRow
            begin
               oToRow    := i+1;                         // �輳�� ColSum ���� Index
               idx_ToRow := i+1;                         // RowSum ���� Index
            end;


         end;




         for j := 0 to sl_TimeList.Count - 1 do
         begin
            //---------------------------------------------
            // 1-5. Data �˻�
            //
            //  - SetCode��, �����ð� ������ ���͸�
            //---------------------------------------------
            cds_SaveItem.Filter := 'setcode = ''' + sl_CodeList.Strings[i] + ''' '                // SetCode �׸�
                                 + ' and acttime = ''' + Trim(asg_IcuMon.Cells[j+2,0])  + ''' ';  // �����ð�


            cds_SaveItem.Filtered := True;





            with cds_SaveItem do
            begin
               //---------------------------------------------------------------
               // 1-6. I/O �׸� Duty�� Sum Time-Index ����
               //    - [60�� �ֱ�] �������̽� �����ƴ� ���,
               //      Duty ���ð�(14:00/22:00/06:00) �ȵ����� ������
               //      �� Duty�� Change�ð��� ������ �������� index�� ��� @ 2012.11.16
               //---------------------------------------------------------------
               if (asg_IcuMon.Cells[j+2,0] >  C_DUTYCLS_NIGT) and           // ���� 06:01 ~
                  (asg_IcuMon.Cells[j+2,0] <= C_DUTYCLS_DAY)  then          // ���� 14:00 ���� Day-Sum Range
                  idx_DutyDay  := j+2
               else if (asg_IcuMon.Cells[j+2,0] >  C_DUTYCLS_DAY) and       // ���� 14:01 ~
                       (asg_IcuMon.Cells[j+2,0] <= C_DUTYCLS_EVNG) then     // ���� 22:00 ���� Evening-Sum Range
                  idx_DutyEvng := j+2
               else if (asg_IcuMon.Cells[j+2,0] >  C_DUTYCLS_EVNG) or       // ���� 22:01 ~ �̰ų�,
                       (asg_IcuMon.Cells[j+2,0] <= C_DUTYCLS_NIGT) then     // ���� 06:00 ���� Night-Sum Range
                  idx_DutyNigt := j+2;


               //---------------------------------------------------------------
               // 1-7. Assign Cds.ItemValue to Cell-Grid
               //---------------------------------------------------------------
               asg_IcuMon.Cells[j+2, i+1] := FindField('itemvalue').AsString;


               //---------------------------------------------------------------------------------
               // 1-8. Cell-Value ���� (���� �������� �ʾƵ�.. Null�� �����ؼ� �����ϴ°�� ����)
               //---------------------------------------------------------------------------------
               if (FindField('modflag').AsString <> '') then
               begin
                  // TList�� ��ü �߰� (Pointer)
                  l_SaveItem.Add(HmdIcutot.Create);

                  with HmdIcutot(l_SaveItem.Last) do
                  begin
                     sPatno    := P_PatNo;                            // ȯ�ڹ�ȣ
                     sAdmDate  := DelChar(P_AdmDate,'-');             // �Կ�����
                     sActDate  := sl_TimeList.Strings[j];             // �������
                     sSetCode  := sl_CodeList.Strings[i];             // Set  �ڵ�
                     sActTime  := asg_IcuMon.Cells[j+2,0];            // Time �ڵ�
                     sItemVal  := FindField('itemvalue').AsString;    // �� Value
                     sEditId   := md_UserId;                          // �����ID
                  end;
               end;


               //-------------------------------------------------------------------------------------
               // 1-9. ��� Int'f �׸��� �����Ǹ�(����Data�� �����Data �� �ٸ���), FontColor = 'Red'
               //-------------------------------------------------------------------------------------
               if FindField('intflag').AsString = 'Y' then
               begin
                  asg_IcuMon.FontColors[j+2, i+1] := CLR_INTERFACE_NRS;
               end
               else if FindField('intflag').AsString = 'C' then
               begin
                  // ICU ���࿹�� ���, Ư���� action�� ���� by LSH
               end;

            end;

            // Release filter
            cds_SaveItem.Filtered := False;

         end;
      end;




      //----------------------------------------------
      // 2. Total Sum (Row/Column) ���, 2011.02.11
      //----------------------------------------------
      if (cbx_Io.Checked) then
      begin
         //-------------------------------------------------------------
         // NICU ��ȣ����� [�ѹ輳��]�� (�ڿ��财+��ġ����)�� SUM
         //  - NICU_�ϻ��� ��û, 2011.10.27 LSH
         //-------------------------------------------------------------
         if (P_NicuFlag = 'Y') then
         begin
            //------------------------------------------------------------------
            // 2-1-1. NICU �Ѽ��뷮, �ѹ輳�� Col-Sum ���
            //  - �뺯(ȸ) �׸������� ��� �輳�� Col-Sum ���� @ 2012.05.29 LSH
            //  - NICU ������ ��û
            //------------------------------------------------------------------
            for j := 0 to sl_TimeList.Count - 1 do
            begin
               with asg_IcuMon do
               begin
                  if (sl_CodeList.Strings[oFromRow + 1] = 'NF02') then                           // �輳�� ��, ��ġ���� �߰��Ǿ�����,
                  begin
                     Cells[j+2, SumRow+1] := FloatToStr(ColumnSum(j+2, oFromRow,   iSkipRow-1) +
                                                        ColumnSum(j+2, iSkipRow+1, oToRow));     // �ѹ輳�� Col-Sum(�ڿ��财~�뺯(ȸ) �� + �뺯(ȸ) ��~amount(Suction))
                  end
                  else
                  begin
                     Cells[j+2, SumRow+1] := FloatToStr(ColumnSum(j+2, oFromRow,   iSkipRow-1) +
                                                        ColumnSum(j+2, iSkipRow+1, oToRow));      // �ѹ輳�� Col-Sum(�ڿ��财~�뺯(ȸ) �� + �뺯(ȸ) ��~amount(Suction))
                  end;

                  // �Ѽ��뷮 Col-Sum
                  Cells[j+2, SumRow  ] := FloatToStr(ColumnSum(j+2, iFromRow, iToRow));

               end;
            end;
         end
         else
         begin
            //---------------------------------------------
            // 2-1-2. ICU �Ѽ��뷮, �ѹ輳�� Col-Sum ���
            //---------------------------------------------
            for j := 0 to sl_TimeList.Count - 1 do
            begin
               with asg_IcuMon do
               begin
                  Cells[j+2, SumRow  ] := FloatToStr(ColumnSum(j+2, iFromRow, iToRow));   // �Ѽ��뷮 Col-Sum
                  Cells[j+2, SumRow+1] := FloatToStr(ColumnSum(j+2, oFromRow, oToRow-1) - ColumnSum(j+2, idx1_Residue, idx1_Residue)   // Residue 1 Sum���� ���� @ 2012.10.17 LSH (����� ��û)
                                                                                        - ColumnSum(j+2, idx2_Residue, idx2_Residue)   // Residue 2 Sum���� ���� @ 2012.10.17 LSH (����� ��û)
                                                                                        - ColumnSum(j+2, idx3_Residue, idx3_Residue)   // Residue 3 Sum���� ���� @ 2012.10.17 LSH (����� ��û)
                                                                                        - ColumnSum(j+2, idx4_Residue, idx4_Residue)   // Residue 4 Sum���� ���� @ 2012.10.17 LSH (����� ��û)
                                                                                        - ColumnSum(j+2, idx5_Residue, idx5_Residue)   // Residue 5 Sum���� ���� @ 2012.10.17 LSH (����� ��û)
                                                      ); // �ѹ輳�� Col-Sum (-1 ���� :�� ������ �뺯-Ƚ���� ī��Ʈ ���� by MIC �̸���)
               end;
            end;
         end;



         //---------------------------------------------
         // 2-2. I/O �׸� 24-Hour Total Row-Sum ���
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
         // 2-3. I/O �׸� Duty�� Row-Sum ���                                        //
         //   - Sum ���� ���� �� Note�� I/O Grid�� ������Ʈ, 2011.05.31 LSH          //
         //                                                                          //
         //      |   07:00   |   08:00   |   09:00   | ..                            //
         // �ʱ� |07:00~07:59|08:00~08:59|09:00~09:59| ..                            //
         // ���� |06:01~07:00|07:01~08:00|08:01~09:00| ..                            //
         //                                                                          //
         // DaySum (06:01~14:00) / EveningSum (14:01~22:00) / NightSum (22:01~06:00) //
         //--------------------------------------------------------------------------//
         with asg_IcuMon do
         begin
            // Duty�� Row-Sum "Day"  - �����ڵ�..
            //Cells[idx_DutyDay,  1] := 'Day Sum[06:01~14:00]' + #13#10 +
            //                          'Intake: ' + FloatToStr({StrToFloat(Cells[ColCount-1, SumRow])   +} RowSum(SumRow,   2, idx_DutyDay)) + #13#10 +
            //                         'Outtake: '+ FloatToStr({StrToFloat(Cells[ColCount-1, SumRow+1]) +} RowSum(SumRow+1, 2, idx_DutyDay)) + #13#10;
            // Duty�� Row-Sum "Evening"
            //Cells[idx_DutyEvng, 1] := 'Evening Sum[14:01~22:00]' + #13#10 +
            //                          'Intake: ' + FloatToStr(RowSum(SumRow,   idx_DutyDay+1,  idx_DutyEvng)) + #13#10 +
            //                          'Outtake: '+ FloatToStr(RowSum(SumRow+1, idx_DutyDay+1,  idx_DutyEvng)) + #13#10;
            // Duty�� Row-Sum "Night"
            //Cells[idx_DutyNigt, 1] := 'Night Sum[22:01~06:00]' + #13#10 +
            //                          'Intake: ' + FloatToStr(RowSum(SumRow,   idx_DutyEvng+1, idx_DutyNigt)) + #13#10 +
            //                          'Outtake: '+ FloatToStr(RowSum(SumRow+1, idx_DutyEvng+1, idx_DutyNigt)) + #13#10;



            // [����] Duty�� Row-Sum "Day"
            asg_IoSum.Cells[1,1] := FloatToStr(RowSum(SumRow,   2, idx_DutyDay));
            asg_IoSum.Cells[1,2] := FloatToStr(RowSum(SumRow+1, 2, idx_DutyDay));
            asg_IoSum.Cells[1,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[1,1])-StrToFloat(asg_IoSum.Cells[1,2]));         // Day In-Out �߰�, 2011.08.18 LSH

            // NICU ��Ʈ��ȸ �߰��׸� "Day" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[1,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow, 2, idx_DutyDay) + RowSum(tmpToRow, 2, idx_DutyDay)) / StrToFloat(lb_Wgt.Caption) * 1000, 3));                      // Feeding/Kg ������� Day-Sum (L-Tube + Bottle), 2012.01.18 LSH


                  asg_IoSum.Cells[1,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, 2, idx_DutyDay) +   // �ڿ��财
                                                                 RowSum(oToUrine, 2, idx_DutyDay))    // ��ġ����
                                                     / StrToFloat(lb_Wgt.Caption) /8 * 1000, 3));     // NICU ��ȣ����� Duty�� Urine/kg/hour "Day" @ 2012.06.05 LSH
               except
                  on e : Exception do
                  begin
                     // ���ܹ߻���, Null �� ������Ʈ @ 2012.06.01
                     asg_IoSum.Cells[1,4] := '';
                     asg_IoSum.Cells[1,5] := '';
                  {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum ����ó��(Day) : ü������ ����',
                                MB_OK + MB_ICONINFORMATION);
                  }
                  end;
               end;
            end;


            // ���� ���� FontColor ����
            if (CopyByte(asg_IoSum.Cells[1,3],1,1) = '-') then
               asg_IoSum.FontColors[1,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[1,3],1,1) = '0') then
               asg_IoSum.FontColors[1,3] := clBlack
            else
               asg_IoSum.FontColors[1,3] := clBlue;



            // [����] Duty�� Row-Sum "Evening"
            asg_IoSum.Cells[2,1] := FloatToStr(RowSum(SumRow,   idx_DutyDay+1,  idx_DutyEvng));
            asg_IoSum.Cells[2,2] := FloatToStr(RowSum(SumRow+1, idx_DutyDay+1,  idx_DutyEvng));
            asg_IoSum.Cells[2,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[2,1])-StrToFloat(asg_IoSum.Cells[2,2]));                       // Evening In-Out �߰�, 2011.08.18 LSH

            // NICU ��Ʈ��ȸ �߰��׸� "Evn" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[2,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow, idx_DutyDay+1,  idx_DutyEvng) + RowSum(tmpToRow, idx_DutyDay+1,  idx_DutyEvng)) / StrToFloat(lb_Wgt.Caption) * 1000, 3));       // Feeding/Kg ������� Evn-Sum (L-Tube + Bottle), 2012.01.18 LSH


                  asg_IoSum.Cells[2,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, idx_DutyDay+1,  idx_DutyEvng) +   // �ڿ��财
                                                                 RowSum(oToUrine, idx_DutyDay+1,  idx_DutyEvng))    // ��ġ����
                                                     / StrToFloat(lb_Wgt.Caption) /8 * 1000, 3));                   // NICU ��ȣ����� Duty�� Urine/kg/hour "Evening" @ 2012.06.05 LSH
               except
                  on e : Exception do
                  begin
                     // ���ܹ߻���, Null �� ������Ʈ @ 2012.06.01
                     asg_IoSum.Cells[2,4] := '';
                     asg_IoSum.Cells[2,5] := '';
                    {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum ����ó��(Evn) : ü������ ����',
                                MB_OK + MB_ICONINFORMATION);
                    }
                  end;
               end;
            end;


            // ���� ���� FontColor ����
            if (CopyByte(asg_IoSum.Cells[2,3],1,1) = '-') then
               asg_IoSum.FontColors[2,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[2,3],1,1) = '0') then
               asg_IoSum.FontColors[2,3] := clBlack
            else
               asg_IoSum.FontColors[2,3] := clBlue;



            // [����] Duty�� Row-Sum "Night"
            asg_IoSum.Cells[3,1] := FloatToStr(RowSum(SumRow,   idx_DutyEvng+1, idx_DutyNigt));
            asg_IoSum.Cells[3,2] := FloatToStr(RowSum(SumRow+1, idx_DutyEvng+1, idx_DutyNigt));
            asg_IoSum.Cells[3,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[3,1])-StrToFloat(asg_IoSum.Cells[3,2]));      // Night In-Out �߰�, 2011.08.18 LSH

            // NICU ��Ʈ��ȸ �߰��׸� "Ngt" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[3,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow, idx_DutyEvng+1, idx_DutyNigt) + RowSum(tmpToRow, idx_DutyEvng+1, idx_DutyNigt)) / StrToFloat(lb_Wgt.Caption) * 1000, 3));      // Feeding/Kg ������� Ngt-Sum (L-Tube + Bottle), 2012.01.18 LSH


                  asg_IoSum.Cells[3,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, idx_DutyEvng+1, idx_DutyNigt) +   // �ڿ��财
                                                                 RowSum(oToUrine, idx_DutyEvng+1, idx_DutyNigt))    // ��ġ����
                                                     / StrToFloat(lb_Wgt.Caption) /8 * 1000, 3));                   // NICU ��ȣ����� Duty�� Urine/kg/hour "Night" @ 2012.06.05 LSH
               except
                  on e : Exception do
                  begin
                     // ���ܹ߻���, Null �� ������Ʈ @ 2012.06.01
                     asg_IoSum.Cells[3,4] := '';
                     asg_IoSum.Cells[3,5] := '';
                     {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum ����ó��(Ngt) : ü������ ����',
                                MB_OK + MB_ICONINFORMATION);
                      }
                  end;
               end;
            end;


            // ���� ���� FontColor ����
            if (CopyByte(asg_IoSum.Cells[3,3],1,1) = '-') then
               asg_IoSum.FontColors[3,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[3,3],1,1) = '0') then
               asg_IoSum.FontColors[3,3] := clBlack
            else
               asg_IoSum.FontColors[3,3] := clBlue;



            // [����] Total
            asg_IoSum.Cells[4,1] := FloatToStr(StrToFloat(asg_IoSum.Cells[1,1])+StrToFloat(asg_IoSum.Cells[2,1])+StrToFloat(asg_IoSum.Cells[3,1]));
            asg_IoSum.Cells[4,2] := FloatToStr(StrToFloat(asg_IoSum.Cells[1,2])+StrToFloat(asg_IoSum.Cells[2,2])+StrToFloat(asg_IoSum.Cells[3,2]));
            asg_IoSum.Cells[4,3] := FloatToStr(StrToFloat(asg_IoSum.Cells[4,1])-StrToFloat(asg_IoSum.Cells[4,2]));                                       // Total In-Out �߰�, 2011.08.18 LSH


            // NICU ��Ʈ��ȸ �߰��׸� "Total" (Feeding & Urine)
            if (P_NicuFlag = 'Y') then
            begin
               try
                  asg_IoSum.Cells[4,4] := FloatToStr(RTrunc_Pos((RowSum(iFromRow,   2, idx_DutyNigt) +
                                                                 RowSum(tmpToRow,   2, idx_DutyNigt))
                                                      / StrToFloat(lb_Wgt.Caption) * 1000, 3));        // Feeding/Kg ������� Tot-Sum (L-Tube + Bottle), 2012.01.18 LSH

                  asg_IoSum.Cells[4,5] := FloatToStr(RTrunc_Pos((RowSum(oFromRow, 2, idx_DutyNigt) +   // �ڿ��财
                                                                 RowSum(oToUrine, 2, idx_DutyNigt))    // ��ġ����
                                                      / StrToFloat(lb_Wgt.Caption) /24 * 1000, 3));    // NICU ��ȣ����� Duty�� Urine/kg/hour "Total" @ 2012.06.05 LSH


               except
                  on e : Exception do
                  begin
                     // ���ܹ߻���, Null �� ������Ʈ @ 2012.06.01
                     asg_IoSum.Cells[4,4] := '';
                     asg_IoSum.Cells[4,5] := '';
                    {
                     MessageBox(Self.Handle,
                                PChar('[Exception Msg] : ' + e.Message),
                                'NICU Feeding & Urine Sum ����ó��(Total) : ü������ ����',
                                MB_OK + MB_ICONINFORMATION);
                     }
                  end;
               end;
            end;


            // I/O Sum ���� ���� FontColor ����
            if (CopyByte(asg_IoSum.Cells[4,3],1,1) = '-') then
               asg_IoSum.FontColors[4,3] := clRed
            else if (CopyByte(asg_IoSum.Cells[4,3],1,1) = '0') then
               asg_IoSum.FontColors[4,3] := clBlack
            else
               asg_IoSum.FontColors[4,3] := clBlue;


         end;





         //-------------------------------------------------------------
         // 3. �׸����� �� ���μ��� (sGubun)
         //   - TOGRID : Client Data Set�� �� Cell �׸� Value�� ����
         //   - TOTABLE: CDS�� �ִ� �� Value���� D/B(MDICMONT)�� ����
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
            stb_message.Panels[0].Text := '���������� ����͸��׸��� [����]�Ǿ����ϴ�.';
         end;





         //---------------------------------------------------------------------
         // 4. [SU ��ȣ�����] V/S ���� �Է� @ 2012.05.18 LSH
         //  - ���� ICU/NICU ������� V/S�� ���ձ�����ȿ����� ���Ű�� ��.
         //  - Stroke Unit�� Ư��ġ���������, �����Ҽ��̱⿡ V/S ��������.
         //  - Refresh ���� V/S ����ȵǰ�, Table �������϶���, V/S ����.
         //---------------------------------------------------------------------
         if (P_NicuFlag = 'S') and
            (sGubun = 'TOTABLE') then
         begin
            for j := 0 to sl_TimeList.Count - 1 do
            begin
               with asg_IcuMon do
               begin
                  // V/S �׸���, 1������ �Էµ� ���� ������, ��������.
                  if (DelChar(Cells[j+2,5],'.') <> '') or                 // RR
                     (DelChar(Cells[j+2,6],'.') <> '') or                 // HR
                     (DelChar(Cells[j+2,7],'.') <> '') or                 // BT
                     (DelChar(Cells[j+2,8],'.') <> '') or                 // SBP
                     (DelChar(Cells[j+2,9],'.') <> '') then               // DBP
                  begin
                     // �� �ð��뺰 V/S �׸��� ���� V/S(MDVITALT)�� ���� �Է�.
                     if InsVitalRec('N',                                // SU ����� ���� flag
                                    P_PatNo,                            // ȯ�ڹ�ȣ
                                    DelChar(P_AdmDate,'-'),             // �Կ�����
                                    sl_TimeList.Strings[j],             // ��������(�������)
                                    sl_TimeList.Strings[j] + DelChar(Cells[j+2,0],':'),
                                                                        // �����Ͻ�
                                    Cells[j+2,7],                       // B.T
                                    DelChar(Cells[j+2,6],'.'),          // Heart Rate(Pulse)
                                    DelChar(Cells[j+2,5],'.'),          // Resp
                                    DelChar(Cells[j+2,8],'.'),          // SBP
                                    DelChar(Cells[j+2,9],'.')           // DBP
                                    ) then
                     begin
                        { // �Է¿Ϸ�� �޼��� ���� ����.
                        MessageBox(Self.Handle,
                                   '�� �ð��뺰 V/S(RR/HR/BT/SBP/DBP)�� ���� V/S�� ���� ����Ǿ����ϴ�.',
                                   'SU ����� V/S �����Է� ����',
                                   MB_OK + MB_ICONINFORMATION);
                        }
                     end
                     else
                     begin
                        // �Է½��д� �ش� �ð��� V/S ���� ���Է� �޼��� ���.
                        MessageBox(Self.Handle,
                                   PChar('���� V/S ���� ������ �����Ͽ����ϴ�.' + sl_TimeList.Strings[j] + ' ' + Cells[j+2,0] + ' V/S �Է°��� ��Ȯ����, �������ּ���.'),
                                   'SU ����� V/S �����Է� ����',
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
// ���ں� ����͸� �󼼳��� Select Event Handler
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
   // 1. ��ȸ
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
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';

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
            // ��� Int'f �����׸�(Ȱ��¡��) ���� üũ
            //------------------------------------------------------------------
            if (sOrgActTime[i] <> '') then
            begin

               //------------------------------------------------------------
               // ��� ����data ��, Raw-Data('OBX||~')�� �������� ���� ����
               //  - 2012.06.15
               //------------------------------------------------------------
               if PosByte('OBX', sItemVal[i]) > 0 then
               begin
                  tmpItemVal := CopyByte(sItemVal[i], 9, PosByte('^',sItemVal[i]) - 9);
               end
               else
                  tmpItemVal := sItemVal[i];


               // Int'f Data�� ������ ������ (��ȣ�� ��������) check
               if (Trim(sOrgActTime[i]) <> ':') and (sItemVal[i] = sOrgItemVal[i]) then
               begin
                  // ���� Data�� �׸񺰷� Client Data-Set(cds_SaveItem)�� ���� (���濩�δ� 'N' : Black)
                  GetSaveList(sSetCode[i],
                              sActTime[i],
                              tmpItemVal,
                              'N',
                              sOrgActTime[i]);
               end
               else if (Trim(sOrgActTime[i]) = ':') and (sItemVal[i] = sOrgItemVal[i]) then
               begin
                  // ���� Data�� �׸񺰷� Client Data-Set(cds_SaveItem)�� ���� (���濩�δ� 'N' : Black)
                  GetSaveList(sSetCode[i],
                              sActTime[i],
                              tmpItemVal,
                              'N',
                              '');
               end
               else
               begin
                  // ���� Data�� �׸񺰷� Client Data-Set(cds_SaveItem)�� ���� (���濩�δ� 'Y' : Red)
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
               // Sp02 �Ǵ� Ȱ��¡�� �׸� ��ȣ�� �����Է½� �������('Y': Red) ����, 2011.08.17 LSH
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
            // ���࿹�� �׸񿩺� üũ
            //------------------------------------------------------------------
            if (sItemVal[i] = 'BST') then
            // B/S ���࿹�� �� �÷��� �߰�, 2011.08.18 LSH
            begin
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           'C',
                           mi_InsBsAct.Caption);
            end
            else if (sItemVal[i] = 'CVP') then
            // CVP ���࿹�� �� �÷��� �߰�, 2011.08.24 LSH
            begin
               GetSaveList(sSetCode[i],
                           sActTime[i],
                           sItemVal[i],
                           'D',
                           mi_InsCvpAct.Caption);
            end
            else if (sItemVal[i] = 'VS') then
            // Ȱ��¡�� �����׸� ���࿹�� �� �÷��� �߰�, 2011.08.24 LSH
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
      // ���� assign
      in_SetCode := sl_CodeList.Strings[Row-1];
      in_ActTime := Cells[Col,0];

      // �ǽð� Cell ������ Client Data-Set�� ������Ʈ (�ӽ�����)
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

   // Fixed Row & Column �� No Action
   if (ARow = 0) or (ACol = 0) or (ACol = 1) or (cds_SaveItem.IsEmpty) then
   begin
      Exit;
   end;

   // -------------------------------------------------------------------------
   // [����] SETCODE : MF24(�뺯(g)) 0�Ǵ� 5�̻� �Էµ� �� �ֵ��� ��
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


   // NIHSS Total �� MRS Sum ���� ���� @ 2012.04.23 LSH
   NihSum  := 0;
   SumCnt  := 0;



   with asg_IcuMon do
   begin
      //------------------------------------------------------------------------
      // Ŭ���Ѽ��� SetCode�� 'Note'(MA02/NA02 @ NICU �����/SA02 @ SU �����)�̸�,
      // Note Panel Visible
      //------------------------------------------------------------------------
      if (sl_CodeList.Strings[ARow-1] = 'MA02') or
         (sl_CodeList.Strings[ARow-1] = 'NA02') or
         (sl_CodeList.Strings[ARow-1] = 'SA02') then
      begin
         // ��ǥ��ġ ��� @ 2012.05.14
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


         // �ش� ActTime�� Note ���� ��ȸ
         SelNote(sl_TimeList.Strings[ACol-2], asg_IcuMon.Cells[ACol, 0]);



         // Note �Է¸�� ('I' = ����) - ���� ���� �� ������� ��û ����� Ȯ�� Flag.. by LSH
         lb_InsUp.Caption     := 'I';


         //-------------------------------------------
         // ICU NOTE �Է¸�� Ȱ��ȭ
         //  - NICU�� �߰�, 2011.12.07
         //  - SU �� �߰�,  2012.04.23
         //-------------------------------------------
         if (P_NicuFlag = 'Y') then
         begin
            pn_SelNote.Left  := 0;
            pn_SelNote.Top   := 142;

            // �Էºκ� ������
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

            // �Էºκ� ������
            apn_Note.Height  := 392;

            apn_Note.Caption.Text      := 'Stroke Unit';
            apn_Note.Caption.Color     := $000EB7D7;
            apn_Note.Caption.ColorTo   := clOlive;
            lb_BgSelNote.Color         := $000EB7D7;
            lb_BgInsNote.Color         := $000EB7D7;
            lb_SelNote.Color           := $000EB7D7;
            lb_InsNote.Color           := $000EB7D7;

            // SU ������ [�ΰ�ȣ���] �̻�� @ 2012.04.23 LSH
            sbt_SelResp.Visible        := False;
            sbt_SelO2.Visible          := False;
            sbt_SelBst.Visible         := False;
            sbt_SelVs.Visible          := False;
         end
         else
         // ICU ���� ��ȣ����� Note ����
         begin
            pn_SelNote.Left  := 0;
            pn_SelNote.Top   := 100;

            // �Էºκ� ������
            apn_Note.Height  := 471;


            apn_Note.Caption.Text      := 'ICU Note';
            apn_Note.Caption.Color     := clPurple;
            apn_Note.Caption.ColorTo   := clFuchsia;
            lb_BgSelNote.Color         := clPurple;
            lb_BgInsNote.Color         := clPurple;
            lb_SelNote.Color           := clPurple;
            lb_InsNote.Color           := clPurple;
         end;

         // Panel ��ġ ���� �� visible @ 2012.05.14
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


         // Note â Display
         apn_Note.Visible := True;

         // ��Ʈ�Էºκ� Clear
         me_Content.Lines.Text := '';

         // Note �Է� focus
         me_Content.SetFocus;


      end
      //------------------------------------------------------------------------
      // SU ��ȣ����� NIHSS �� Total Point Sum @ 2012.04.23 LSH
      //------------------------------------------------------------------------
      else if (sl_CodeList.Strings[ARow-1] = 'SC17') then
      begin
         // NIH Stroke Scale ���׸��� 15��(Fix)�̹Ƿ�, 15�� Looping.
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


         // NIHSS Total ���� ǥ��
         if SumCnt > 0 then
            asg_IcuMon.Cells[ACol, ARow] := IntToStr(NihSum) + '��'
         else
            asg_IcuMon.Cells[ACol, ARow] := '';


         // �Էµ� Total ���� [�ӽ� Data Grid]�� ����.
         asg_IcuMonEditingDone(Sender);

      end
      //------------------------------------------------------------------------
      // SU ��ȣ����� MRS �� Total Point Sum @ 2012.04.23 LSH
      //------------------------------------------------------------------------
      else if (sl_CodeList.Strings[ARow-1] = 'SC19') then
      begin
         // MRS ���׸��� 1ȸ(Fix).
         if (CopyByte(asg_IcuMon.Cells[ACol, ARow-1], 1, 1) <> '') then
         begin
            NihSum := NihSum + StrToInt(CopyByte(asg_IcuMon.Cells[ACol, ARow-1], 1, 1));
            Inc(SumCnt);
         end;

         // MRS Total ���� ǥ��
         if SumCnt > 0 then
            asg_IcuMon.Cells[ACol, ARow] := IntToStr(NihSum) + '��'
         else
            asg_IcuMon.Cells[ACol, ARow] := '';


         // �Էµ� Total ���� [�ӽ� Data Grid]�� ����.
         asg_IcuMonEditingDone(Sender);
      end;

      // ComboBox ���ý� ù��° Row ���� �Ǵ� ���� �߰� -2016.01.22 smpark
      if (ComboBox.Text = '') and (ComboBox.Items.Count > 0) then
      begin
         ComboBox.ItemIndex := 0;
      end;

   end;
end;


//------------------------------------------------------------------------------
// ������� Jog Event Handler (PrevDate)
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
   // 3. NICU ��ȣ����� ���) ȯ�ڻ����� Refresh, 2011.12.06 LSH
   //  - "�������" ����� ȯ�� ������(����/ü��/���¿��� ��) �ش糯¥ ������ �ٽ� fetch
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
   // 4. [���������] ������ȸ ȯ�ڻ����� Refresh
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
      // ȭ�� Refresh
      Refresh
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;


   //------------------------------------------------------------------
   // 6. NICU ü��-����-����-����-����-���¿��� ��ȸ
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      SetNicuInfoAdded(P_PatNo, P_AdmDate);   // ȯ�ڹ�ȣ, �Կ�����
   end;



end;


//------------------------------------------------------------------------------
// ������� Jog Event Handler (NextDate)
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
   // 3. �ڵ����ĺ�ȯ�� ���, ������� + 1�� ������ȸ, 2011.09.09 LSH
   //------------------------------------------------------------------
   if (P_EMRPrintYn = 'Y') then
   begin
      SetPatInfo('SELECTED');
      Exit;
   end;


   //------------------------------------------------------------------
   // 4. [NICU ��ȣ�����] ȯ�ڻ����� Refresh, 2011.12.06 LSH
   //  - "�������" ����� ȯ�� ������(����/ü��/���¿��� ��) �ش糯¥ ������ �ٽ� fetch
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
   // 5. [���������] ������ȸ ȯ�ڻ����� Refresh
   //  - 2012.03.07 LSH
   //------------------------------------------------------------------
   {
   if (P_PatFlag = 'W') or
      (P_PatFlag = 'D') then
      SelectPatInfo('SELECTED');
   }




   //------------------------------------------------------------------
   // 6. ȭ�� Refresh
   //------------------------------------------------------------------
   if (cbx_Hemo.Checked) then
   begin
      // ȭ�� Refresh
      Refresh;
   end
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;



   //------------------------------------------------------------------
   // 7. NICU ü��-����-����-����-����-���¿��� ��ȸ
   //------------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      SetNicuInfoAdded(P_PatNo, P_AdmDate);   // ȯ�ڹ�ȣ, �Կ�����
   end;




end;


//------------------------------------------------------------------------------
// ������� Change Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FM.dtp_RgtDateCloseUp(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. ��ȸ
   //------------------------------------------------------------------
   InitDataSet(cds_SaveItem);


   //------------------------------------------------------------------
   // 2. NICU ��ȣ����� ���) ȯ�ڻ����� Refresh, 2011.12.06 LSH
   //  - "�������" ����� ȯ�� ������(����/ü��/���¿��� ��) �ش糯¥ ������ �ٽ� fetch
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
      // ȭ�� Refresh
      Refresh
   else
   begin
      cbx_Hemo.Checked := True;
      Refresh;
   end;
end;


//------------------------------------------------------------------------------
// Client Data Set �ʱ�ȭ (Close & Create)
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
// Chart �ʱ�ȭ
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
   // 1. SU ��ȣ����� Chart �б� @ 2012.04.21
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
   // 2. Chart �ø��� �׸� Clear
   //------------------------------------------
   for i := 0 to iChartCnt - 1do
   begin
      Now_ChartVs.SeriesList[i].Clear;
   end;


   //------------------------------------------
   // 3. Chart BottomAxis �ʱ�ȭ �� set
   //------------------------------------------
   Now_ChartVs.BottomAxis.Automatic       := False ;
   Now_ChartVs.BottomAxis.Maximum         := EncodeTime(23, 59, 59, 59) + EncodeTime(6, 1, 0, 0);    // [CCU �迬�ƿ�û] ���� 06:01 ~ ���� 06:00, 2011.08.16 LSH
   Now_ChartVs.BottomAxis.Minimum         := EncodeTime(0, 0, 0, 0)     + EncodeTime(6, 0, 0, 0);
   Now_ChartVs.BottomAxis.Increment       := DateTimeStep[dtOneHour];
   Now_ChartVs.BottomAxis.DateTimeFormat  := 'hh:nn';


   //------------------------------------------
   // 4. Repaint
   //------------------------------------------
   Now_ChartVs.Repaint;



end;


//------------------------------------------------------------------------------
// ȭ�� Refresh
//     (������-> Code/Time/Data ���� -> Client DataSet ����-> ��Ʈ�׸���)
// Author : Lee, Se-Ha
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FM.Refresh;
begin
   // Code-Time ����Ʈ �籸�� �� �Է��׸� �Ӽ��� ��������
   CheckFormset;


   // Data Loading bar ���̱�
   SetLoadingBar('ON');


   // ���ں� ����͸� �󼼳���(����) ��ȸ
   SelectMonItem(dtp_RgtDate.Date);


   // Client Data Set ����
   SetSaveList('TOGRID');


   // Data Loading bar �����
   SetLoadingBar('OFF');


   // Chart Clear
   InitChart;


   // ��Ʈ ����
   DrawChart(Self);


   // Note ���� ��ü��ȸ
   SelNote(FormatDateTime('yyyymmdd',dtp_RgtDate.Date), 'ALL');

   // ���κ��� ICU Note �Ⱓ�� ��ȸ ��� ���� -2013.05.16 smpark
   if (md_Userid = '99995') or
      (G_Locate = 'GR') then
   begin
      if (apn_NoteSearch.Visible = True) then
      begin
         bbt_NoteSearchClick(nil);
      end;

      // CRRT ó�� üũ -2013.09.02 smpark
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
// Note �Է� - ���
//-------------------------------
procedure TMDN110FM.bbt_CancelInputNoteClick(Sender: TObject);
begin
   // 1.1. Show Panel
   pn_Note.Visible := False;

   // 1.2. Clear Input Box
   me_Note.Clear;
end;



//-------------------------------
// Note �Է� - Ȯ��
//-------------------------------
procedure TMDN110FM.bbt_ConfirmInputNoteClick(Sender: TObject);
begin
   // assign
   asg_IcuMon.Cells[asg_IcuMon.Col,asg_IcuMon.Row] := me_Note.Text;

   // Panel ����
   bbt_CancelInputNoteClick(Sender);

   // ��ü Note ��ȸ���� Update
   CheckAllNote;

   // GetSaveList�� �ش� Cell���� assign
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
      // ���� Cell ��ǥ ��������
      MouseToCell(X, Y, NowCol, NowRow);


      if (NowCol >= 0) and
         (NowRow >= 1) then
         //(Cells[NowCol,NowRow] <> '') then
      begin

         Hint := '';

         // �Է¼Ӽ� Client Data-Set�߿���, SetCode�� 1Row�� �˻�.
         bExist := cds_SaveItem.Locate('setcode;acttime',
                                       VarArrayOf([sl_CodeList.Strings[NowRow-1], Cells[NowCol,0]]),
                                       [loCaseInsensitive]);


         // �˻��� 1���� Row����,
         if bExist then
         begin
            // �� �߰�����(addinfo)���� is Not Null�̸�, �ش� info�� Hint�� ������(��: ���Int'f Fetch�ð� ��)
            // ���࿹�����(Intflag = 'C') ��쵵, �߰����� Hint, 2011.08.17 LSH
            if (cds_SaveItem.FindField('addinfo').AsString <> '')  or
               ((cds_SaveItem.FindField('addinfo').AsString <> '')  and
                ((cds_SaveItem.FindField('intflag').AsString = 'C') or
                 (cds_SaveItem.FindField('intflag').AsString = 'D'))) then
            begin
               Hint := cds_SaveItem.FindField('addinfo').AsString;
            end
            // VS �����׸� ���࿹���� ���, ����͸� �׸�� Hint�� �ٿ��ֱ�, 2011.08.24 LSH
            else if (cds_SaveItem.FindField('addinfo').AsString <> '')  and
                    (cds_SaveItem.FindField('intflag').AsString = 'E') then
            begin
               Hint := asg_IcuMon.Cells[1, NowRow] + ' ' + cds_SaveItem.FindField('addinfo').AsString;
            end
            else
            // �� �߰������� ���°��, ���� Cell �Է°��� ������.
            begin
               Hint := cds_SaveItem.FindField('itemvalue').AsString;
            end;
         end
         else
         // �˻��� �׸��� ������(Cds_SaveItem�� ��ϵ��� ��������), ���� Cell ������ Hint�� �ѷ���.
         begin
            Hint := Trim(Cells[NowCol,NowRow]);
         end;

         // Hint Activation
         Application.ActivateHint(Mouse.CursorPos);

         // ��ȿ�� True
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
// [��ȯ�ڽ� ���ձ����] - ICU �ӻ�����ǥ BPL ȣ��
//
// Author : Lee, Byoung-Sik
// Date   : 2011.01.31
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_QualityClick(Sender: TObject);
var
   FForm : TForm;
begin

   //----------------------------------------------------------
   // NICU ��ȣ����� "�ӻ�����ǥ" �߰�, 2011.12.08 LSH
   //----------------------------------------------------------
   if (P_NicuFlag = 'Y') then
      FForm := BplFormCreate('MDN110FX')
   else
      FForm := BplFormCreate('MDN110FV');

   SetBplStrProp(FForm.Name, 'propPatNo'  , P_PatNo);
   SetBplStrProp(FForm.Name, 'propAdmDate', P_AdmDate);
   SetBplStrProp(FForm.Name, 'propPatFlag', P_PatFlag);     // NICU/ICU �ǻ���ȸ�� [��ȸ]���ɸ� Ȱ��ȭ, 2012.03.05 LSH

   MComFormShow(FForm);
end;


//------------------------------------------------------------------------------
// Note���� ��ü����
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_ShowNoteClick(Sender: TObject);
begin

   // �ش� ActTime�� Note ���� ��ȸ
   SelNote(FormatDateTime('yyyymmdd',dtp_RgtDate.Date), 'ALL');


   // NICU ��ȣ����� Note ��ɰ���, 2011.12.07 LSH
   if (P_NicuFlag = 'Y') then
   begin
      pn_SelNote.Left  := 0;
      pn_SelNote.Top   := 142;

      // �Էºκ� ������
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
   // SU ��ȣ����� Note @ 2012.04.23 LSH
   begin
      pn_SelNote.Left  := 0;
      pn_SelNote.Top   := 19;

      // �Էºκ� ������
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
   // ICU ���� ��ȣ����� Note ����
   begin
      pn_SelNote.Left  := 0;
      pn_SelNote.Top   := 100;

      // �Էºκ� ������
      apn_Note.Height  := 328;

      apn_Note.Caption.Text      := 'ICU Note';
      apn_Note.Caption.Color     := clPurple;
      apn_Note.Caption.ColorTo   := clFuchsia;
      lb_BgSelNote.Color         := clPurple;
      lb_BgInsNote.Color         := clPurple;
      lb_SelNote.Color           := clPurple;
      lb_InsNote.Color           := clPurple;
   end;

   // Note �����ֱ�
   apn_Note.Visible := True;


end;



//------------------------------------------------------------------------------
// Note ���� List-Up Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.03.07
//------------------------------------------------------------------------------
procedure TMDN110FM.CheckAllNote;
var
   j : integer;
begin

   //---------------------------------
   // 1. Grid �ʱ�ȭ
   //---------------------------------
   with asg_Note do
   begin
      // RowCount �ʱ�ȭ
      RowCount := 2;

      Cells[0,1] := '';
      Cells[1,1] := '';
   end;


   //---------------------------------
   // 2. Note ���� Assign To Grid
   //---------------------------------
   with asg_IcuMon do
   begin
      // Time �׸����ŭ Looping
      for j := 2 to sl_TimeList.Count+1 do
      begin


         // �ش� �ð��뿡 Note ����� ������, Adv-Grid�� �߰�
         if (Cells[j,1] <> '') then
         begin
            if (Cells[j,0] = '00:00') then
               // 00:00 �ΰ��, �ð����� ����Ǹ鼭 �����ڷ� ���������� ��,
               // ������ ���� Actdate�� ȭ�� display������ ���Ϸ� ����, 2011.05.31 LSH
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


            // NOTE����
            asg_Note.Cells[1, asg_Note.RowCount-1] := Trim(Cells[j,1]);


            // Row Size�� �Է��ϴ� Data�� �µ��� auto-Sizing
            asg_Note.AutoSizeRow(asg_Note.RowCount-1);


            // RowCount ����
            asg_Note.RowCount := asg_Note.RowCount + 1;


         end;
      end;
   end;


   // ������ index ������ ����
   if (asg_Note.RowCount = 2) then
      asg_Note.RowCount := asg_Note.RowCount
   else
      asg_Note.RowCount := asg_Note.RowCount - 1;


end;


//------------------------------------------------------------------------------
// �ð� ���� Event Handler
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
                 '�ð�(hh:mm)�� ��Ȯ�ϰ� �Է����ֽʽÿ�.',
                 '����͸� �ð� �߰�',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if LengthByte(CopyByte(Trim(med_ActTime.Text),1,2)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '�ۼ��ð��� ���ڸ��� �Է��� �ֽʽÿ�.',
                 '����͸� �ð� �߰�',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if LengthByte(CopyByte(Trim(med_ActTime.Text),4,2)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '�ۼ����� ���ڸ��� �Է��� �ֽʽÿ�.',
                 '����͸� �ð� �߰�',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if StrToint(CopyByte(Trim(med_ActTime.Text),1,2)) > 23 then
   begin
      MessageBox(Self.Handle,
                 '�ð��� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.',
                 '����͸� �ð� �߰�',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;

   if StrToint(CopyByte(Trim(med_ActTime.Text),4,2)) > 59 then
   begin
      MessageBox(Self.Handle,
                 '���� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.',
                 '����͸� �ð� �߰�',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;


   // ����͸� �ð� �߰�
   SetTimeList('REFRESH');


   // ȭ�� Refresh
   Refresh;


end;




//------------------------------------------------------------------------------
// ICU ���� ��ȣ����� �������
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
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('PRINT', '', '', '', self.Name) = False then Exit;


   //-------------------------------------------------------
   // 1. 24hour �ʰ� ����� ��·��� �߰�, 2011.07.15 LSH
   //-------------------------------------------------------
   iStartCol := 0;
   G_LastPageIdx := 0;


   //-------------------------------------------------------
   // 2. SU ��ȣ����� Source Chart �б� @ 2012.04.21
   //-------------------------------------------------------
   if (P_NicuFlag = 'S') then
      SrcChart := Chr_Vs_Su
   else
      SrcChart := Chr_Vs;



   with asg_IcuMon do
   begin
      if asg_IcuMon.RowCount = 0 then
         Close;

      // Row - Col ���� Assign
      iRowCnt := asg_IcuMon.RowCount;
      iColCnt := asg_IcuMon.ColCount;


      // ����Ʈ �׸��� Clear, 2011.09.09 LSH
      asg_Print.Clear;


      // 24hour �ʰ� ����� �������� Grid
      asg_Print.RowCount := iRowCnt;



      for i := 0 to iRowCnt do // - 1 do
      begin

         // 1-1. Mainform�� TimeList �� 24�ð��� �Ѵ°��, iStartCol Set
         if sl_TimeList.Count > 24 then
                iStartCol := 2;

         for j := 0 to iColCnt do
         begin
            // 1-2. ����͸� �׸� �÷� Set
            if (j <= 1) then
               asg_Print.Cells[j,i]   := Cells[j ,i]
            else if (j >= 26) then
            // 1-3. �ʰ� Time�к���, Target Grid�� �űԷ� �����̵�.
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
   srcPrt  := TMDN110FM_P01.Create(Application);   // A3 (�ڵ���ȯ����)
   srcPrt2 := TMDN110FM_P02.Create(Application);   // A4 (����Ʈ����)


   //----------------------------
   // 4. Set Property value
   //----------------------------
   with srcPrt do
   begin
      // 3-1. MainForm BPL ���� assign [A3 - �ڵ���ȯ����]
      propSourceChart := SrcChart;
      propCodeList    := sl_CodeList;
      propTimeList    := sl_TimeList;
      propPrintGrid   := asg_IcuMon;
      propPrtIdx      := '1';
      propNicuFlag    := P_NicuFlag;               // �Ż��� ��ȯ�ڽ� ȯ�ڿ���, 2011.11.01 LSH
      propIsLastPage  := G_LastPageIdx;            // EndMark ������� Page �ε��� @ 2012.10.31 LSH
      propLastDateYn  := G_LastEmrDateYn;          // EndMark ������� ������ ������� @ 2012.10.31 LSH

      // [A4 - ���] ��� assign
      srcPrt2.propSourceChart := SrcChart;
      srcPrt2.propCodeList    := sl_CodeList;
      srcPrt2.propTimeList    := sl_TimeList;
      srcPrt2.propPrintGrid   := asg_IcuMon;
      srcPrt2.propPrtIdx      := '1';
      srcPrt2.propNicuFlag    := P_NicuFlag;       // �Ż��� ��ȯ�ڽ� or Stroke Unit ȯ�ڿ���, 2011.11.01 LSH



      // EMR �̸����� ���
      if P_PreviewYn = 'Y' then
      begin

         // ��¿��� Global Var (������ ICU ����� ���峻�� �ִ°�� Y)
         if (G_EmrYn = 'Y') then
         begin
            FForm := BplFormCreate('PTP001F1');

            SetBplStrProp  ('PTP001F1','prop_Caption', srcPrt2.Caption);      // �̸����� Ÿ��Ʋ
            SetBplClassProp('PTP001F1','prop_Report' , srcPrt2.qr_Icu_A4);    // ��� ù�忡 �ø� ����Ʈ��
            SetBplStrProp  ('PTP001F1','prop_Zoom'   , 'Fit');                 // ��¹� ���� ����

            FForm.ShowModal;
         end;


         { AutoScan_New version �����ϸ鼭, �Ʒ� �ּ�ó��. 2012.01.30 LSH
         // ������� ������ ������� + 1�Ͼ� ��ȸ�ϸ� ���.
         if (DateToStr(dtp_RgtDate.Date) < P_DschDate) then
         begin
            // ������� + 1�� ��ȸ
            bbt_NextDateClick(Sender);
         end;
         }


         // �ڵ����� EMR ��¿��� �ȵǵ��� Exit
         Exit;


      end;


      //------------------------------------------------------------------------
      // 3-1. ICU ����� �ڵ����ĺ�ȯ [A3] , 2011.09.09 LSH
      //------------------------------------------------------------------------
      if P_EMRPrintYn = 'Y' then
      begin

         // 3-2. �ڵ����ĺ�ȯ ��¿��� Global Var
         if (G_EmrYn = 'Y') then
         begin

            // EMR Index ����
            Inc(G_EmrPrtIdx);


            // Print(EMR Image)
            iPrinterIndex := Printer.Printers.IndexOf('bitPrinter');
            // iPrinterIndex := Printer.Printers.IndexOf('Microsoft XPS Document Writer');


            // EMR ������ ����
            qr_Icu.PrinterSettings.PrinterIndex := iPrinterIndex;

            // EMR Report ���� ����
            qr_Icu.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);;

            // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
            // // Main Form Print
            // qr_Icu.Print;

            if pv_SComReport <> nil then
            begin
               pv_SComReport.AddReport(qr_Icu); // ������� Add
               pv_SComReport.PageTextList.Add('');             // ������������ ����. ����� ��� ����
            end
            else
            begin
               qr_Icu.Print;
            end;
            // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End

            // 3-3. [�ڵ���ȯ����] 24hour �ʰ� ����� ��±�� �߰�, 2011.07.15 LSH
            if (asg_Print.Cells[2,0] <> '') then
            begin
               // SubForm (24h �ʰ��� ����) BPL ���� assign
               propSourceChart := SrcChart;
               propCodeList    := sl_CodeList;
               propTimeList    := sl_TimeList;
               propPrintGrid   := asg_Print;
               propPrtIdx      := '2';
               propNicuFlag    := P_NicuFlag;       // �Ż��� ��ȯ�ڽ� or Stroke Unit ����, 2011.11.01 LSH

               // EMR Index ����
               Inc(G_EmrPrtIdx);

               // EMR ������ ����
               iPrinterIndex := Printer.Printers.IndexOf('bitPrinter');

               qr_Icu.PrinterSettings.PrinterIndex := iPrinterIndex;

               // EMR Report ���� ����
               qr_Icu.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);

               // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
               // // SubForm (24h �ʰ��� ����) Print
               // qr_Icu.Print;

               if pv_SComReport <> nil then
               begin
                  pv_SComReport.AddReport(qr_Icu); // ������� Add
                  pv_SComReport.PageTextList.Add('');             // ������������ ����. ����� ��� ����
               end
               else
               begin
                  qr_Icu.Print;
               end;
               // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End
            end;
         end;


         // 3-4. Close
         Close;


         { AutoScan New-Version �����ϸ鼭, �Ʒ� �ּ�ó��. 2012.01.30 LSH
         // ������� ������ ������� + 1�Ͼ� ��ȸ�ϸ� ���.
         if (DateToStr(dtp_RgtDate.Date) < P_DschDate) then
         begin
            // ������� + 1�� ��ȸ
            bbt_NextDateClick(Sender);
         end
         else
         begin
            Close;
         end;
         }


      end
      else
      // �Ϲ������� ��� [A4]���
      begin
         // Print(Local Printer)

         //-------------------------------------------------------
         // ����������ȣ ��¹�����, 2011.11.25 LSH
         //-------------------------------------------------------
         srcPrt2.qr_Icu_A4.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
         fn_SetReportID(srcPrt2.qr_Icu_A4);

         // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
         // srcPrt2.qr_Icu_A4.Print;

         if pv_SComReport <> nil then
         begin
            pv_SComReport.AddReport(srcPrt2.qr_Icu_A4); // ������� Add
            pv_SComReport.PageTextList.Add('');         // ������������ ����. ����� ��� ����
         end
         else
         begin
            srcPrt2.qr_Icu_A4.Print;
         end;
         // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End



         // 3-4. �Ϲ������� ��� [24hour �ʰ�] ����� �߰�, 2011.07.15 LSH
         if (asg_Print.Cells[2,0] <> '') then
         begin
            // SubForm (24h �ʰ��� ����) BPL ���� assign
            srcPrt2.propSourceChart := SrcChart;
            srcPrt2.propCodeList    := sl_CodeList;
            srcPrt2.propTimeList    := sl_TimeList;
            srcPrt2.propPrintGrid   := asg_Print;
            srcPrt2.propPrtIdx      := '2';
            srcPrt2.propNicuFlag    := P_NicuFlag;       // �Ż��� ��ȯ�ڽ� or Stroke Unit ����, 2011.11.01 LSH


            // SubForm (24h �ʰ��� ����) Print
            //-------------------------------------------------------
            // ����������ȣ ��¹�����, 2011.11.25 LSH
            //-------------------------------------------------------
            srcPrt2.qr_Icu_A4.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
            fn_SetReportID(srcPrt2.qr_Icu_A4);

            // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
            // srcPrt2.qr_Icu_A4.Print;

            if pv_SComReport <> nil then
            begin
               pv_SComReport.AddReport(srcPrt2.qr_Icu_A4); // ������� Add
               pv_SComReport.PageTextList.Add('');         // ������������ ����. ����� ��� ����
            end
            else
            begin
               srcPrt2.qr_Icu_A4.Print;
            end;
            // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End
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
      // ������ ǥ�� ���̱�
      pn_Loading.Left    := 656;
      pn_Loading.Top     := 392;
      pn_Loading.Visible := True;

      pn_Loading.Repaint;

      // ��ȸ�� �ٸ� �۾� Lock
      pn_Top.Enabled     := False;
      asg_IcuMon.Enabled := False;


   end
   else if AsStatus = 'OFF' then
   begin
      // ������ ǥ�� ����
      pb_DataLoading.Position := 0;
      pn_Loading.Visible      := False;

      // �ٸ� �۾� Lock release
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
   // ���� �������� Check��, ���ؼ� Drawing.
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
          Pen.Color := clBlack; //clRed; <- MIC/SIC/CCU �������� ��û, �������ٰ� ��.....;;
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

          Font.Height := -15;   // <-- express font size in "Height", NOT "Size" �� Best Size = -24

          Font.Color  := $005C70D5; //clYellow;
          Font.Style  := [fsBold];

          Brush.Style := bsClear;

          // ����͸� �׸��߰�(����) ���� �������忩�� Set, 2011.07.19 LSH
          asg_IcuMon.Tag := 1;

      end;
   end;
end;




//------------------------------------------------------------------------------
// ����͸� �󼼳��� Refresh Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.05.20
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_RefreshClick(Sender: TObject);
begin

   //---------------------------------------------------------
   // 1. �����, Grid ��� �׸��� Open�Ǿ�� ��.
   //---------------------------------------------------------
   if not (cbx_Hemo.Checked) then
      cbx_Hemo.Checked := True;

   if not (cbx_Neuro.Checked) then
      cbx_Neuro.Checked := True;

   if not (cbx_Io.Checked) then
      cbx_Io.Checked := True;



   //---------------------------------------------------------
   // 2. SetCode �׸��� MDICUSET ������ skip, ������ insert.
   //---------------------------------------------------------
   SetCodeList('REFRESH');

   //---------------------------------------------------------
   // 3. Time �׸� MDICUTMT ������ skip, ������ insert.
   //---------------------------------------------------------
   SetTimeList('REFRESH');

   //---------------------------------------------------------
   // 4. �ӽ� Data-Set Value�� D/B Table�� Insert.
   //---------------------------------------------------------
   SetSaveList('TOGRID');

   //---------------------------------------------------------
   // 5. Refresh
   //---------------------------------------------------------
   Refresh;



end;



//------------------------------------------------------------------------------
// [��Ʈ��ǥ����] On Mouse Move Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.06.03
//  - �̻�� ��...
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

         // ��ȿ�� True
         //Chr_Vs.ShowHint := True;

      end
      else
      begin
         Chr_Vs.Hint := '';

         // ��ȿ�� False
         //Chr_Vs.ShowHint := False;
      end;

   end;


end;




//------------------------------------------------------------------------------
// [Time �׸����] OnClick Event Handler
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
                 '�ð�(hh:mm)�� ��Ȯ�ϰ� �Է����ֽʽÿ�.',
                 '����͸� �ð� ����',
                 MB_OK + MB_ICONINFORMATION);

      med_ActTime.Text := '';

      Exit;
   end;


   Screen.Cursor := crHourglass;

   try
      iCrect := HmdIcutot.Create;

      //-----------------------------------------------
      // Set Parameter Value : Time �׸� ����
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
            // ������ �ð��뺰 �������(Actdate) ����
            //-----------------------------------------
            if  (DelChar(Trim(med_ActTime.Text),':') >= C_STARTTM) and
                (DelChar(Trim(med_ActTime.Text),':') <= '2359') then
            begin
               // ���۽ð� ~ 23:59���� ����, 2011.05.31 LSH
               t_DelDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date);
            end
            else if (DelChar(Trim(med_ActTime.Text),':') >= '0000') and
                    (DelChar(Trim(med_ActTime.Text),':') <= C_ENDTM) then
            begin
               //  00:00 ~ ����ð����� ����, 2011.05.31 LSH
               //  -->  00:00 (23:01~24:00)��, ȭ�� ���÷��� ������ ���Ϸ� ����.
               t_DelDate := FormatDateTime('YYYYMMDD',dtp_RgtDate.Date + 1);
            end;


            //----------------------------------------
            // ������� �� �����ð� Assign
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


      // ȭ�� Refresh
      Refresh;


      stb_Message.Panels[0].Text := '����͸� Time�� �����Ǿ����ϴ�.';



      finally
         screen.Cursor := crDefault;
      end;

end;


//------------------------------------------------------------------------------
// ICU Note �Է����
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_CancelClick(Sender: TObject);
begin
   // 1.1. Show Panel
   apn_Note.Visible := False;

   // 1.2. Clear Input Box
   me_Content.Clear;
end;


//------------------------------------------------------------------------------
// Test ����..(Visible = True�� ���� 24hour �ʰ� Data �Ѱ����� �κ� Ȯ�ΰ��� �� by LSH)
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_PrintDblClick(Sender: TObject);
begin
   asg_Print.Visible := False;
end;




//------------------------------------------------------------------------------
// [ICU ��Ʈ ������ȣ��� ����] Button OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.03
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_NrrecClick(Sender: TObject);
var
   RowNo, i, j  : Integer;
   iCrect       : HmdIcutot;
   sType1       : String;
   sIcuNoteCd   : String;   // NICU�� ICU ��Ʈ �׸�Code ������ ���� flag, 2011.10.31 LSH
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;


   //---------------------------------------------------
   // Check
   //---------------------------------------------------
   if (Trim(ed_RecName.Text) = '') or (Trim(ed_RecDept.Text) = '') or (Trim(ed_RecId.Text) = '') then
   begin
      MessageBox(Self.Handle,
                 '�ۼ��ڸ� �Է��� �ֽʽÿ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if (Trim(ed_Hour.Text) = '') or (Trim(ed_Min.Text) = '') then
   begin
      MessageBox(Self.Handle,
                 '�ۼ��ð��� �Է��� �ֽʽÿ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if LengthByte(Trim(ed_Hour.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '�ۼ��ð��� ���ڸ��� �Է��� �ֽʽÿ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if LengthByte(Trim(ed_Min.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '�ۼ����� ���ڸ��� �Է��� �ֽʽÿ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if (Trim(me_Content.Text) = '') then
   begin
      MessageBox(Self.Handle,
                 '������ �ۼ����ֽʽÿ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if StrToint(ed_Hour.Text) > 23 then
   begin
      MessageBox(Self.Handle,
                 '�ð��� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      ed_Hour.Text := '';
      Exit;
   end;

   if StrToint(ed_Min.Text) > 59 then
   begin
      MessageBox(Self.Handle,
                 '���� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.',
                 '��Ʈ ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      ed_Min.Text := '';
      Exit;
   end;

   // ������ ���� Confirm
   if Application.MessageBox('�ۼ��Ͻ� ��Ʈ�� �����Ͻðڽ��ϱ�?',
                             '������ȣ��� ������ Ȯ��',
                             MB_OKCANCEL)
                             <> IDOK then exit;


   Screen.Cursor := crHourglass;

   try
      iCrect := HmdIcutot.Create;

      //---------------------------------------------------
      // Set Parameter Value : ICU ��Ʈ ������ȣ��� ����
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

         // [EMR����] ��ȣ��� �ڵ��߻� ����(NEW EMR) -2016.07.18 smpark
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


      // ������, �ڵ� Clear �߰� @ 2012.06.08 LSH (������ ��û)
      me_Content.Clear;

      stb_Message.Panels[0].Text := '[��Ʈ]�� ������ȣ��Ͽ� ����Ǿ����ϴ�.';



      // NOTE �׸�Code �б�, 2011.10.31 LSH
      if (P_NicuFlag = 'Y') then
         sIcuNoteCd := 'NA02'
      else if (P_NicuFlag = 'S') then
      // SU ��ȣ����� �׸�Code �б� @ 2012.04.26 LSH
         sIcuNoteCd := 'SA02'
      else
         sIcuNoteCd := 'MA02';



      // ICU ��Ʈ �ۼ��׸� Display, 2011.08.03 LSH
      if (ed_Min.Text = '00') then
      begin
         // ��Ʈ����� ���� �Է��̸�, �ش� Time ����Ʈ�� ����.
         for i := 2 to asg_IcuMon.ColCount do
         begin
            if (CopyByte(asg_IcuMon.Cells[i, 0], 1, 2) = ed_Hour.Text) then
            begin
               asg_IcuMon.Cells[i,1] := '��';

               // Grid�� �ش� Cell���� �ӽ�����
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
         // ��Ʈ����� �����Է��� �ƴϸ�, �ش� Time ����Ʈ +1 �� ����.
         for i := 2 to asg_IcuMon.ColCount do
         begin
            if (Trim(ed_Hour.Text) <> '06') and (CopyByte(asg_IcuMon.Cells[i, 0], 1, 2) = ed_Hour.Text) then
            begin
               asg_IcuMon.Cells[i+1,1] := '��';

               // Grid�� �ش� Cell���� �ӽ�����
               GetSaveList(sIcuNoteCd,
                           asg_IcuMon.Cells[i+1,0],
                           asg_IcuMon.Cells[i+1,1],
                           '',
                           '');
            end
            // 06:01 ~ 06:59 �Է��� ���� 07:00 Time ����Ʈ�� ����, 2011.09.01 LSH
            else if (Trim(ed_Hour.Text) = '06') and (CopyByte(asg_IcuMon.Cells[i, 0], 1, 2) = '07') then
            begin
               asg_IcuMon.Cells[i, 1] := '��';

               // Grid�� �ش� Cell���� �ӽ�����
               GetSaveList(sIcuNoteCd,
                           asg_IcuMon.Cells[i,0],
                           asg_IcuMon.Cells[i,1],
                           '',
                           '');
            end;

         end;
      end;


      // �ڵ� ����
      bbt_MoniSaveClick(Sender);


      finally
         screen.Cursor := crDefault;
      end;

end;



//------------------------------------------------------------------------------
// [ICU ��Ʈ ������ȣ��� ��ȸ] Button OnClick Event Handler
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

   // ��ü ��Ʈ ����
   if (in_ActTime = 'ALL') then
   begin
      sType1       := '6';
      sActDate     := in_ActDate;
      sFromActTime := '06:01';
      sToActTime   := '06:00';
   end
   else
   // �ð��뺰 ��Ʈ ����
   begin
      // ���� 23:01 ~ ����(00:00)
      if (CopyByte(in_ActTime, 1, 2) = '00') then
      begin
         sType1       := '5';
         sActDate     := in_ActDate;
         sFromActTime := '23:01';
         sToActTime   := in_ActTime;
      end
      else if (CopyByte(in_ActTime, 1, 2) >= '11') and (CopyByte(in_ActTime, 1, 2) <= '23') then // ���ڸ��� �ð���
      begin
         sType1       := '4';
         sActDate     := in_ActDate;
         sFromActTime := IntToStr(StrToInt(CopyByte(in_ActTime, 1, 2)) - 1) + ':01';
         sToActTime   := in_ActTime;
      end
      else // ���ڸ��� �ð��� (�տ� 0�� �ٿ������)
      begin
         sType1       := '4';
         sActDate     := in_ActDate;
         sFromActTime := '0' + IntToStr(StrToInt(CopyByte(in_ActTime, 1, 2)) - 1) + ':01';
         sToActTime   := in_ActTime;
      end;
   end;


   // NOTE �׸�Code �б�, 2011.10.31 LSH
   // SU ��ȣ����� �б� @ 2012.04.21 LSH
   if (P_NicuFlag = 'Y') then
      sIcuNoteCd := 'NA02'
   else if (P_NicuFlag = 'S') then
      sIcuNoteCd := 'SA02'
   else
      sIcuNoteCd := 'MA02';


   //------------------------------------------------------------
   // 3. ICU ��Ʈ ������ȣ��� ��ȸ
   //------------------------------------------------------------
   Screen.Cursor := crHourglass;


   try
      iNrect := HmdNrrect.Create;


      //-------------------------------------------------
      // Set Parameter (�߰�)
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

         // �ۼ��� ICU ��Ʈ������ ��� �����Ǿ� ���°��, �ش� �ð��� NOTE �׸� Clear, 2011.08.10 LSH
         asg_IcuMon.Cells[asg_IcuMon.Col,1] := '';

         // Grid�� �ش� Cell �������� �ӽ�����
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
            Cells[0 , CurRow+1] := sActDate[i] + ' ' + sActTime[i];              // �Ͻ�
            Cells[1 , CurRow+1] := ReplaceStr((Trim(sActTxt[i])),'&','��');      // ��ȣ��� ����
            Cells[2 , CurRow+1] := Trim(sExecnm[i]);                             // ��� ��ȣ�� ��


            // Hidden Information
            Cells[3 , CurRow+1] := Trim(sActseqno[i]);   // ��� �Ϸù�ȣ
            Cells[4 , CurRow+1] := Trim(sActTxt  [i]);   // ��� ����
            Cells[5 , CurRow+1] := Trim(sExecid  [i]);   // ��� ��ȣ��ID
            Cells[6 , CurRow+1] := sActDate[i];          // �������
            Cells[7 , CurRow+1] := sActTime[i];          // ��Ͻð�
            Cells[8 , CurRow+1] := sActDate[i];          // �������
            Cells[9 , CurRow+1] := Trim(sDeptcd[i]);     // ����
            Cells[10, CurRow+1] := Trim(sExecnm[i]);     // ��� ��ȣ���
            Cells[11, CurRow+1] := sMedtime[i];          // �����Ͻ�(����ȯ��)


            AutoSizeRow(CurRow+1);


            // ������ ������� ���� �ȵǴ� ���� ����
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
// [ICU ��Ʈ �ۼ������� Ȯ��] Button OnClick Event Handler
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
                 '�ۼ��� �̸��� �Է��ϼ���.',
                 '�ۼ��� ���� Ȯ��',
                 MB_OK + MB_ICONINFORMATION);

      ed_RecName.SetFocus;

      Exit;
   end;

   if HLength(trim(ed_RecName.Text)) < 2 then
   begin
      MessageBox(Self.Handle,
                 '����ڸ��� 2�����̻� �Է��ϼ���.',
                 '�ۼ��� ���� Ȯ��',
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


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdInsamt.Free;

         ShowMessage('�ش� ����ڴ� �������� �ʽ��ϴ�. ����ڸ��� �ٽ� �Է��Ͻʽÿ�.');

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



// ICU ��Ʈ �ۼ��� ���� ����
procedure TMDN110FM.ugd_UserListDblClick(Sender: TObject);
begin
   ed_RecName.Text     := ugd_UserList.Cells[0,ugd_UserList.Row];
   ed_RecDept.Text     := ugd_UserList.Cells[3,ugd_UserList.Row];
   ed_RecId.Text       := ugd_UserList.Cells[4,ugd_UserList.Row];
   pn_UserList.Visible := False;
end;





//------------------------------------------------------------------------------
// ICU ���� ��ȣ����� �ڵ���ĵ �������
// - ȯ�ں� ���
//
// Author : Lee, Se-Ha
// Date   : 2011.09.09
//------------------------------------------------------------------------------
procedure TMDN110FM.AutoScanPrint;
begin
   //---------------------------------------------------
   // 1. �� �⺻����
   //---------------------------------------------------
   SetFormInfo;


   //---------------------------------------------------
   // 2. ȯ�ڱ⺻����
   //---------------------------------------------------
   SetPatInfo('SELECTED');

end;



//------------------------------------------------------------------------------
// ICU ��Ʈ - �ش� �ð��� V/S ��������
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelVsClick(Sender: TObject);
var
   sTempVs : String;
   i       : Integer;
begin
   // �ʱ�ȭ
   sTempVs := '';

   // NICU ��ȣ����� ���� �б�, 2011.10.27 LSH
   if (P_NicuFlag = 'Y') then
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do // C_Chart_Cnt�� ���� �ʰ�.. �׳� �ϵ��ڵ� by LSH -_-;
         begin
            if (Cells[Col,i-1] <> '') and
               (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'NB')  // Ȱ��¡�� ��� �׸�
               then
            begin
               sTempVs := sTempVs + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempVs := sTempVs + #13#10;
            end;
         end;
      end;
   end
   else
   // �Ϲ� ICU ���� �����
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do // C_Chart_Cnt�� ���� �ʰ�.. �׳� �ϵ��ڵ� by LSH -_-;
         begin
            if (Cells[Col,i-1] <> '') and
               ((sl_CodeList.Strings[i-2] = 'MA03') or      // SpO2
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'MB') // Ȱ��¡�� ������ ��� �׸�
                )  then
            begin
               sTempVs := sTempVs + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempVs := sTempVs + #13#10;
            end;
         end;
      end;
   end;


   // V/S ��ȿ�� üũ
   if (sTempVs = '') then
   begin
      MessageBox(Self.Handle,
                 '�ش� �ð��뿡 �Էµ� V/S�� �������� �ʽ��ϴ�.',
                 '��Ʈ V/S ��ȸ',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU ��Ʈ �޸�â�� V/S ����
      me_Content.Lines.Text := me_Content.Lines.Text + sTempVs;



end;



//------------------------------------------------------------------------------
// ICU ��Ʈ - ���� ���� ��ȸ
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_TemplSelClick(Sender: TObject);
var
   FForm : TForm;
begin
   FForm := BplFormCreate('MDB260F2');

   SetBplStrProp('MDB260F2'  , 'prop_SetItem','ICUNO'      ); // ICU ��Ʈ �����׸�
   SetBplClassProp('MDB260F2', 'prop_Form'   , Self        );
   SetBplClassProp('MDB260F2', 'prop_Control', me_Content  );
   SetBplClassProp('MDB260F2', 'prop_Item1'  , me_Content  );

   FForm.FormStyle := fsStayOnTop;

   McomFormShow(FForm);
end;



//------------------------------------------------------------------------------
// ICU ��Ʈ - ���� ���â ����
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
// ICU ��Ʈ - ���� ���
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_SetInsertClick(Sender: TObject);
var
   Cnt : LongInt;
   SetType, SetTitle, Contents, EditId, EditIp : String;
begin
   // ����������� �Է����� ���� ���, Exit
   if Trim(ed_SetTitle.Text) = '' then
   begin
       ShowMessage('���������� �Է��ϼ���.');
       ed_SetTitle.SetFocus;
       Exit;
   end;

   // ����� ������ �Է����� ���� ���, Exit
   if Trim(me_Content.Text) = '' then
   begin
       ShowMessage('����� ������ �Է��ϼ���.');
       Exit;
   end;


   // �������� Insert ó��
   Screen.Cursor := crHourGlass;

   try
      mdTemplt := HmdTemplt.Create;

      SetTitle := ed_SetTitle.Text;   // ��������

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

      EditIp    := G_USERIP;                    // ������IP

      with mdTemplt do
      begin
         AppendVariant(sFlag, 'I');
         AppendVariant(iSetseqno, '0');
         AppendVariant(sSetitem , 'ICUNO');     // ����/��������
         AppendVariant(sSettype , SetType);     // SET/��������
         AppendVariant(sTitle   , SetTitle);    // ����/������
         AppendVariant(sContents, Contents);    // ����
         AppendVariant(sContent2, '');          // ����2
         AppendVariant(sContent3, '');          // ����3
         AppendVariant(sContent4, '');          // ����4
         AppendVariant(sContent5, '');          // ����5
         AppendVariant(sContent6, '');          // ����6
         AppendVariant(sEditid  , EditId);      // ������ ID
         AppendVariant(sEditip  , EditIp);      // ������ IP
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


   // �������� Panel Invisible
   bbt_SetExitClick(Sender);

end;



//------------------------------------------------------------------------------
// ICU ��Ʈ - ���� ���â �ݱ�
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
// [�˾��޴� Ȱ��ȭ] Mouse Popup Menu Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FM.Popup_ActPopup(Sender: TObject);
begin
   //-------------------------------------------------------
   // NICU ��ȣ����� ���� �б�, 2011.10.27 LSH
   //-------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      if (asg_IcuMon.Col >= 2) and
         (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'NA07') then          // [BST �׸�] Row������ ���콺 �˾� Ȱ��ȭ
      begin
         // Grid�ȿ����� Ȱ��ȭ ����.
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
   // Stroke Unit ��ȣ����� @ 2012.04.24 LSH
   //-------------------------------------------------------
   begin
      if (asg_IcuMon.Col >= 2) and
         (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'SA03') then          // [BST �׸�] Row������ ���콺 �˾� Ȱ��ȭ
      begin
         // Grid�ȿ����� Ȱ��ȭ ����.
         mi_InsBsAct.Visible  := True;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := True;
         mi_InsIoData.Visible := False;
      end
      else if (asg_IcuMon.Col >= 2) and
              (sl_CodeList.Strings[asg_IcuMon.Row-1] <> 'SF24') and     // �뺯(g) �׸��� ��ȸ��� ���� @ 2012.06.01 (������)
              ((CopyByte(sl_CodeList.Strings[asg_IcuMon.Row-1], 1, 2) = 'SD')  or
               (CopyByte(sl_CodeList.Strings[asg_IcuMon.Row-1], 1, 2) = 'SF')
               ) then                                                   // [I/O �׸�] Row������ ���콺 �˾� Ȱ��ȭ
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
   // ICU ���� �����
   //-------------------------------------------------------
   begin
      if (asg_IcuMon.Col >= 2) and
         (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'MA07') then          // [BST �׸�] Row������ ���콺 �˾� Ȱ��ȭ
      begin
         // Grid�ȿ����� Ȱ��ȭ ����.
         mi_InsBsAct.Visible  := True;
         mi_InsCvpAct.Visible := False;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := True;
         mi_InsIoData.Visible := False;
      end
      else if (asg_IcuMon.Col >= 2) and
              (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'MB12') then     // [CVP(mmH2O) �׸�] Row������ ���콺 �˾� Ȱ��ȭ
      begin
         // Grid�ȿ����� Ȱ��ȭ ����.
         mi_InsBsAct.Visible  := False;
         mi_InsCvpAct.Visible := True;
         mi_InsVsAct.Visible  := False;
         mi_InsBsData.Visible := False;
         mi_InsIoData.Visible := False;
      end
      else if (asg_IcuMon.Col >= 2) and
              ((sl_CodeList.Strings[asg_IcuMon.Row-1] >= 'MB13')  and
               (sl_CodeList.Strings[asg_IcuMon.Row-1] <= 'MB17')) then   // [Ȱ��¡�� �����׸�] Row������ ���콺 �˾� Ȱ��ȭ
      begin
         // Grid�ȿ����� Ȱ��ȭ ����.
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
// [B/S ���࿹�� ���] Mouse Popup Menu Event Handler
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
      // ���� assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := 'BST';
      in_ActFlag   := 'C';
      in_ActRemark := mi_InsBsAct.Caption;


      // �ǽð� Cell ������ Client Data-Set�� ������Ʈ (�ӽ�����)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;

end;



//------------------------------------------------------------------------------
// [���࿹�� Cell ��������] Mouse Popup Menu Event Handler
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
      // �Է¼Ӽ� Client Data-Set�߿���, SetCode�� 1Row�� �˻�.
      bExist := cds_SaveItem.Locate('setcode;acttime',
                                    VarArrayOf([sl_CodeList.Strings[ARow-1], asg_IcuMon.Cells[ACol,0]]),
                                    [loCaseInsensitive]);


      // �˻��� 1���� Row����,
      if bExist then
      begin
         // �� Int'f ������ ���࿹�� ���('C')�̸�, Color ����.
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


         if cds_SaveItem.FindField('intflag').AsString = 'E' then  // VS �����׸�
         begin
             asg_IcuMon.Canvas.Brush.Color := $00364EE1;
             asg_IcuMon.Canvas.FillRect(Rect);
         end;
      end;
   end;



end;


//------------------------------------------------------------------------------
// [��뺸��] ���࿹�� ���â �ݱ�
//------------------------------------------------------------------------------
procedure TMDN110FM.bbt_ActExitClick(Sender: TObject);
begin
   apn_InsActing.Visible := False;

   ed_ActRemark.Clear;
   Combx_ActList.ItemIndex := -1;
end;


//------------------------------------------------------------------------------
// [��뺸��] Ư����� ���̳��� ���� ����.. LSH
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
      // ���� assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];

      if (Combx_ActList.ItemIndex = 1) then       // Ư����� �Է�
      begin
         in_ActTitle  := 'ACT';
         in_ActFlag   := 'C';
         in_ActRemark := Trim(ed_ActRemark.Text);
      end
      else if (Combx_ActList.ItemIndex = 2) then  // B/S ����
      begin
         in_ActTitle  := 'BST';
         in_ActFlag   := 'B';
         in_ActRemark := Combx_ActList.Items.Strings[Combx_ActList.ItemIndex];
      end;

      // �ǽð� Cell ������ Client Data-Set�� ������Ʈ (�ӽ�����)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;
end;



//------------------------------------------------------------------------------
// [���࿹�� ����] Mouse Popup Menu Event Handler
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
      // ���� assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := '';
      in_ActFlag   := '';
      in_ActRemark := '';


      // �ǽð� Cell ������ Client Data-Set�� ������Ʈ (�ӽ�����)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;

end;



//------------------------------------------------------------------------------
// ICU ��Ʈ - �ش� �ð��� �ΰ�ȣ��� ��������
//
// Author : Lee, Se-Ha
// Date   : 2011.08.24
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelRespClick(Sender: TObject);
var
   sTempResp : String;
   i       : Integer;
begin
   // �ʱ�ȭ
   sTempResp := '';


   // NICU ��ȣ����� ���� �б�, 2011.10.27 LSH
   if (P_NicuFlag = 'Y') then
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 11) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'NC')   // �ΰ�ȣ���(NICU) �����׸� ��� ����
                )  then
            begin
               sTempResp := sTempResp + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempResp := sTempResp + #13#10;
            end;
         end;
      end;
   end
   else
   // �Ϲ� ICU ���� �����
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 22) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'MC')   // �ΰ�ȣ��� �����׸� ��� ����
                )  then
            begin
               sTempResp := sTempResp + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempResp := sTempResp + #13#10;
            end;
         end;
      end;
   end;



   // V/S ��ȿ�� üũ
   if (sTempResp = '') then
   begin
      MessageBox(Self.Handle,
                 '�ش� �ð��뿡 �Էµ� �ΰ�ȣ������ �������� �ʽ��ϴ�.',
                 'ICU ��Ʈ �ΰ�ȣ��� ��ȸ',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU ��Ʈ �޸�â�� �ΰ�ȣ���� ����
      me_Content.Lines.Text := me_Content.Lines.Text + sTempResp;

end;


//------------------------------------------------------------------------------
// [CVP ���࿹�� ���] Mouse Popup Menu Event Handler
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
      // ���� assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := 'CVP';
      in_ActFlag   := 'D';
      in_ActRemark := mi_InsCvpAct.Caption;


      // �ǽð� Cell ������ Client Data-Set�� ������Ʈ (�ӽ�����)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);

   end;

end;


//------------------------------------------------------------------------------
// [Ȱ��¡�� �����׸� ���࿹�� ���] Mouse Popup Menu Event Handler
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
      // ���� assign
      in_SetCode   := sl_CodeList.Strings[Row-1];
      in_ActTime   := Cells[Col,0];
      in_ActTitle  := 'VS';
      in_ActFlag   := 'E';
      in_ActRemark := mi_InsVsAct.Caption;


      // �ǽð� Cell ������ Client Data-Set�� ������Ʈ (�ӽ�����)
      GetSaveList(in_SetCode,
                  in_ActTime,
                  in_ActTitle,
                  in_ActFlag,
                  in_ActRemark);
   end;

end;



//------------------------------------------------------------------------------
// BT �׸� �ڵ��Ҽ��� ���
//------------------------------------------------------------------------------
procedure TMDN110FM.asg_IcuMonGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin

   // NICU ��ȣ����� ���� �б�, 2011.10.27 LSH
   if (P_NicuFlag = 'Y') then
   begin
      // Ȱ��¡�� BT �׸� (NICU)
      if (sl_CodeList.Strings[ARow-1] = 'NB03') then
         Value := '##.#';
   end
   else if (P_NicuFlag = 'S') then
   // SU ��ȣ����� �б� @ 2012.04.24 LSH
   begin
      // Ȱ��¡�� BT �׸� (SU)
      if (sl_CodeList.Strings[ARow-1] = 'SB05') then
         Value := '##.#';
   end
   else
   begin
      // Ȱ��¡�� BT �׸� (ICU)
      if (sl_CodeList.Strings[ARow-1] = 'MB04') then
         Value := '##.#';
   end;


end;




//------------------------------------------------------------------------------
// ICU ��Ʈ - �ش� �ð��� BST/BST óġ ��������
//
// Author : Lee, Se-Ha
// Date   : 2011.08.26
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelBstClick(Sender: TObject);
var
   sTempBst : String;
   i : Integer;
begin
   // �ʱ�ȭ
   sTempBst := '';


   // NICU ��ȣ����� ����
   // ���� ICU ������� SETCODE ����, 2011.10.27 LSH
   with asg_IcuMon do
   begin
      for i := 2 to RowCount - 1 do
      begin
         if (Cells[Col,i-1] <> '') and
            (
             (sl_CodeList.Strings[i-2] = 'MA07') or
             (sl_CodeList.Strings[i-2] = 'MA08') or     // [ICU]  BST ~ BSTóġ ��� ����
             (sl_CodeList.Strings[i-2] = 'NA07') or
             (sl_CodeList.Strings[i-2] = 'NA08')        // [NICU] BST ~ BSTóġ ��� ����
             )  then
         begin
            sTempBst := sTempBst + Cells[1, i-1] + ': ' + Cells[Col, i-1];
            sTempBst := sTempBst + #13#10;
         end;
      end;
   end;




   // BST ��ȿ�� üũ
   if (sTempBst = '') then
   begin
      MessageBox(Self.Handle,
                 '�ش� �ð��뿡 �Էµ� BST/BSTóġ ������ �������� �ʽ��ϴ�.',
                 'ICU ��Ʈ BST ��ȸ',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU ��Ʈ �޸�â�� BST ����
      me_Content.Lines.Text := me_Content.Lines.Text + sTempBst;


end;



//------------------------------------------------------------------------------
// ICU ��Ʈ - �ش� �ð��� ��ҿ�� ��������
//
// Author : Lee, Se-Ha
// Date   : 2011.08.26
//------------------------------------------------------------------------------
procedure TMDN110FM.sbt_SelO2Click(Sender: TObject);
var
   sTempO2 : String;
   i : Integer;
begin
   // �ʱ�ȭ
   sTempO2 := '';

   //----------------------------------------------------
   // NICU ��ȣ����� ���� �б�, 2011.10.27 LSH
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
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'NC')                 // ��ҿ��(NICU) �����׸� ��� ����
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
   // ICU �����
   //----------------------------------------------------
   begin
      with asg_IcuMon do
      begin
         for i := 2 to RowCount - 1 do
         begin
            if (Cells[Col,i-1] <> '') and
               ((StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) >= 18) and
                (StrToInt(CopyByte(sl_CodeList.Strings[i-2],3,2)) <= 21) and
                (CopyByte(sl_CodeList.Strings[i-2],1,2) = 'MC')                 // ��ҿ�� �����׸� ��� ����
                )  then
            begin
               sTempO2 := sTempO2 + Cells[1, i-1] + ': ' + Cells[Col, i-1];
               sTempO2 := sTempO2 + #13#10;
            end;
         end;
      end;
   end;


   //----------------------------------------------------
   // ��ҿ�� ��ȿ�� üũ
   //----------------------------------------------------
   if (sTempO2 = '') then
   begin
      MessageBox(Self.Handle,
                 '�ش� �ð��뿡 �Էµ� ��ҿ�� ������ �������� �ʽ��ϴ�.',
                 'ICU ��Ʈ ��ҿ�� ��ȸ',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end
   else
      // ICU ��Ʈ �޸�â�� ��ҿ�� ����
      me_Content.Lines.Text := me_Content.Lines.Text + sTempO2;



end;




//------------------------------------------------------------------------------
// [ICU ����ȭ�� ��������]
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.SetFormInfo;
var
   systime : TDateTime;
begin
   //---------------------------------------------------------------
   // 1. �ʱ�ȭ
   //---------------------------------------------------------------
   GetSysDate(systime);



   //---------------------------------------------------------------
   // 1-1. �ۼ����� �ʱ�ȭ
   //---------------------------------------------------------------
   // [������������/�ǹ���� �ڵ����Ľ�ĵ] ȣ���, �Ѱ��� ������� Set, 2011.07.15 LSH
   if (P_RgtDate <> '') then
   begin
       dtp_RgtDate.Date := StrToDate(P_RgtDate);

       // ICU Note �Ⱓ�� ��ȸ -2014.12.22 smpark
       dtp_Fromdate.Date := systime - 6;
       dtp_Todate.Date   := systime;
   end
   else
   // �Ϲ� Formshow��, ���� �ð��� �������� ������� Set.
   begin
      if  (
          (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
          (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
          ) then
      begin
         dtp_RgtDate.Date := systime;

         // ICU Note �Ⱓ�� ��ȸ -2013.05.15 smpark
         dtp_Fromdate.Date := systime - 6;
         dtp_Todate.Date   := systime;

         // CRRT ��ȣ��� -2013.08.23 smpark
         dtb_Crrt.Date     := systime;
      end
      else if (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
              (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
      begin
         dtp_RgtDate.Date := systime - 1;

         // ICU Note �Ⱓ�� ��ȸ -2013.05.15 smpark
         dtp_Fromdate.Date := systime - 7;
         dtp_Todate.Date   := systime - 1;

         // CRRT ��ȣ��� -2013.08.23 smpark
         dtb_Crrt.Date     := systime - 1;
      end;
   end;



   //---------------------------------------------------------------
   // 1-2. ȭ�� �⺻ setting
   //---------------------------------------------------------------
   // SU(Stroke Unit) ��ȣ����� ���߿� ���� �б� @ 2012.04.21 LSH
   if (P_NicuFlag = 'S') then
   begin
      pn_If.Visible    := False;
      pn_If_Su.Visible := True;
      pn_If_Su.Parent  := pn_ICU;
      pn_If_Su.Align   := alTop;
      pn_List1.Align   := alClient;
   end
   else
   // ICU ���� ��ȣ����� (N) + NICU ��ȣ����� (Y) Set
   begin
      pn_If.Visible    := True;
      pn_If_Su.Visible := False;
      pn_If.Parent     := pn_ICU;
      pn_If.Align      := alTop;
      pn_List1.Align   := alClient;
   end;


   //---------------------------------------------------------------
   // 1-3. Form������, �׷��� + �׸���.
   //---------------------------------------------------------------
   asg_IcuMon.Height := 565;



   //---------------------------------------------------------------
   // NICU ��ȣ����� Form Set, 2011.10.10 LSH
   //---------------------------------------------------------------
   if (P_NicuFlag = 'Y') then
   begin
      // ȭ�� U/I Color
      pn_Top.Color        := $00D58D53;
      cbx_Interface.Color := $00D58D53;
      cbx_Hemo.Color      := $00D58D53;
      cbx_Neuro.Color     := $00D58D53;
      cbx_Io.Color        := $00D58D53;

      // NICU ������ B/G Color
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


      // NICU ������ Font Color
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


      // NICU ������ ���̾ƿ�
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

      // �ǽ�.�Ű��.ȣ���
      bv_Neuro.Top        := 8;
      bv_Neuro.Left       := 94;
      cbx_Neuro.Top       := 16;
      cbx_Neuro.Left      := 100;

      // ���뷮, �輳��
      bv_Io.Top           := 40;
      bv_Io.Left          := 121;
      cbx_Io.Top          := 47;
      cbx_Io.Left         := 127;

      // Refresh
      sbt_Refresh.Top     := 41;
      sbt_Refresh.Left    := 235;

      // ȯ������
      lb_FPatInfo.Top     := 10;
      lb_FPatInfo.Left    := 348;
      lb_PatInfo.Top      := 11;
      lb_PatInfo.Left     := 424;

      // �������
      lb_RgtDate.Top      := 30;
      lb_RgtDate.Left     := 348;
      dtp_RgtDate.Top     := 25;
      dtp_RgtDate.Left    := 446;

      // ������ȸ
      sbt_PrevDate.Top    := 25;
      sbt_PrevDate.Left   := 422;

      // ������ȸ
      sbt_NextDate.Top    := 25;
      sbt_NextDate.Left   := 556;

      // ������
      lb_FOpName.Top      := 49;
      lb_FOpName.Left     := 348;
      lb_OpName.Top       := 49;
      lb_OpName.Left      := 425;

      // ����
      lb_FDietName.Top    := 49;
      lb_FDietName.Left   := 1000;
      lb_DietName.Top     := 67;
      lb_DietName.Left    := 1000;

      // �ð����̺�
      lb_ActTime.Top      := 11;
      lb_ActTime.Left     := 681;
      med_ActTime.Top     := 6;
      med_ActTime.Left    := 730;

      // �ð��߰�
      sbt_AddTime.Top     := 7;
      sbt_AddTime.Left    := 777;

      // �ð�����
      sbt_DelTime.Top     := 7;
      sbt_DelTime.Left    := 809;

      // �����ַ�
      lb_FDgpWks.Top      := 68;
      lb_FDgpWks.Left     := 348;
      lb_DgpWks.Top       := 68;
      lb_DgpWks.Left      := 459;
      lb_NowWks.Top       := 68;
      lb_NowWks.Left      := 508;

      // ü��
      lb_FWgt.Caption     := '��ü��(g):';
      lb_FWgt.Top         := 32;
      lb_FWgt.Left        := 681;
      lb_Wgt.Top          := 33;
      lb_Wgt.Left         := 756;

      // ����
      lb_FHgt.Top         := 50;
      lb_FHgt.Left        := 681;
      lb_Hgt.Top          := 51;
      lb_Hgt.Left         := 756;

      // ����
      lb_FHsize.Top       := 32;
      lb_FHsize.Left      := 797;
      lb_Hsize.Top        := 32;
      lb_Hsize.Left       := 873;

      // ����
      lb_FCsize.Top       := 50;
      lb_FCsize.Left      := 797;
      lb_Csize.Top        := 50;
      lb_Csize.Left       := 873;

      // ����
      lb_FBsize.Top       := 68;
      lb_FBsize.Left      := 797;
      lb_Bsize.Top        := 68;
      lb_Bsize.Left       := 873;


      // NICU ���̺� Setting
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


      // ���� flowsheet
      asg_IcuMon.FixedColor     := $00D58D53;
      Chr_Vs.Gradient.EndColor  := $00D58D53;


      // ������ ȯ�� List
      pn_PatList.Color          := $00D58D53;
      ugd_PatList.Color         := $00D58D53;
      ugd_PatList.GridRowColor  := $00F1D9C5;
      apn_PatList.Caption.Color := $00D58D53;


      // ���� bar
      pn_Loading.Color          := $00D58D53;
      ani_setuser.Color         := $00D58D53;
      lb_LoadingBar.Color       := $00D58D53;


      // �������̽� �����ֱ�
      lb_MoniPrd.Color          := $00D58D53;


      // NICU ȯ�ڸ���Ʈ, 2011.11.22 LSH
      apn_PatList.Top           := 85;
      apn_PatList.Left          := 962;


      // ȭ������
      Self.Caption              := '[MDN110FM] NICU ��ȣ�����' ;
   end
   else if (P_NicuFlag = 'S') then
   //---------------------------------------------------------------------------
   // Stroke Unit ��ȣ����� Form Set @ 2012.04.21 LSH
   //---------------------------------------------------------------------------
   begin
      // ȭ�� U/I Color
      pn_Top.Color        := $0046C1E9; //$000EB7D7;
      cbx_Interface.Color := $0046C1E9; //$000EB7D7;
      cbx_Hemo.Color      := $0046C1E9; //$000EB7D7;
      cbx_Neuro.Color     := $0046C1E9; //$000EB7D7;
      cbx_Io.Color        := $0046C1E9; //$000EB7D7;

      // SU ������ B/G Color
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

      // SU ������ ���̾ƿ�
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

      // �ǽ�.�Ű��.ȣ���
      bv_Neuro.Top        := 8;
      bv_Neuro.Left       := 188;
      cbx_Neuro.Top       := 16;
      cbx_Neuro.Left      := 192;

      // ���뷮, �輳��
      bv_Io.Top           := 8;
      bv_Io.Left          := 328;
      cbx_Io.Top          := 16;
      cbx_Io.Left         := 334;

      // Refresh
      sbt_Refresh.Top     := 44;
      sbt_Refresh.Left    := 328;

      // ȯ������
      lb_FPatInfo.Top     := 10;
      lb_FPatInfo.Left    := 444;
      lb_PatInfo.Top      := 11;
      lb_PatInfo.Left     := 520;

      // �������
      lb_RgtDate.Top      := 30;
      lb_RgtDate.Left     := 444;
      dtp_RgtDate.Top     := 25;
      dtp_RgtDate.Left    := 542;

      // ������ȸ
      sbt_PrevDate.Top    := 25;
      sbt_PrevDate.Left   := 518;

      // ������ȸ
      sbt_NextDate.Top    := 25;
      sbt_NextDate.Left   := 652;

      // ���ܸ� (SU ������� ���� Main�� ������ ������)
      lb_FOpName.Top      := 50;
      lb_FOpName.Left     := 444;
      lb_FOpName.Caption  := '���� �� ��:';
      lb_OpName.Top       := 50;
      lb_OpName.Left      := 520;

      // ����
      lb_FDietName.Top    := 67;
      lb_FDietName.Left   := 444;
      lb_DietName.Top     := 67;
      lb_DietName.Left    := 520;

      // ü�� @ 2012.05.04 �߰� (������)
      lb_FWgt.Caption     := '��ü��(kg):';
      lb_FWgt.Top         := 30;
      lb_FWgt.Left        := 843;
      lb_Wgt.Top          := 31;
      lb_Wgt.Left         := 920;

      // ���� @ 2012.05.04 �߰� (������)
      lb_FHgt.Top         := 48;
      lb_FHgt.Left        := 843;
      lb_Hgt.Top          := 49;
      lb_Hgt.Left         := 920;

      // ���� @ 2012.05.04 �߰� (������)
      lb_FBsize.Top       := 66;
      lb_FBsize.Left      := 843;
      lb_Bsize.Top        := 67;
      lb_Bsize.Left       := 920;

      // �ð����̺�
      lb_ActTime.Top      := 30;
      lb_ActTime.Left     := 682;
      med_ActTime.Top     := 25;
      med_ActTime.Left    := 730;

      // �ð��߰�
      sbt_AddTime.Top     := 26;
      sbt_AddTime.Left    := 778;

      // �ð�����
      sbt_DelTime.Top     := 26;
      sbt_DelTime.Left    := 810;

      // SU ����� ���̺� Setting
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


      // ���� Flowsheet
      asg_IcuMon.FixedColor        := $0046C1E9;
      Chr_Vs_Su.Gradient.EndColor  := $0046C1E9;


      // ���� ȯ��List
      pn_PatList.Color          := $000EB7D7;
      ugd_PatList.Color         := $000EB7D7;
      ugd_PatList.GridRowColor  := $000EB7D7;
      apn_PatList.Caption.Color := $000EB7D7;

      // ���� bar
      pn_Loading.Color          := $000EB7D7;
      ani_setuser.Color         := $000EB7D7;
      lb_LoadingBar.Color       := $000EB7D7;

      // �������̽� �����ֱ�
      lb_MoniPrd_Su.Color       := $000EB7D7;

      // SU ȯ�ڸ���Ʈ
      apn_PatList.Top           := 5;
      apn_PatList.Left          := 1306;

      // ȭ������
      Self.Caption              := '[MDN110FM] Stroke Unit ��ȣ�����' ;
   end
   else
   //---------------------------------------------------------------------------
   // ICU ���� ��ȣ����� Form Set
   //---------------------------------------------------------------------------
   begin
      // ȭ�� U/I Color
      pn_Top.Color        := $0085A564;
      cbx_Interface.Color := $0085A564;
      cbx_Hemo.Color      := $0085A564;
      cbx_Neuro.Color     := $0085A564;
      cbx_Io.Color        := $0085A564;

      // ICU ������ B/G Color
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

      // ICU ������ ���̾ƿ�
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

      // �ǽ�.�Ű��.ȣ���
      bv_Neuro.Top        := 8;
      bv_Neuro.Left       := 188;
      cbx_Neuro.Top       := 16;
      cbx_Neuro.Left      := 192;

      // ���뷮, �輳��
      bv_Io.Top           := 8;
      bv_Io.Left          := 328;
      cbx_Io.Top          := 16;
      cbx_Io.Left         := 334;

      // Refresh
      sbt_Refresh.Top     := 44;
      sbt_Refresh.Left    := 328;

      // ȯ������
      lb_FPatInfo.Top     := 10;
      lb_FPatInfo.Left    := 444;
      lb_PatInfo.Top      := 11;
      lb_PatInfo.Left     := 520;

      // �������
      lb_RgtDate.Top      := 30;
      lb_RgtDate.Left     := 444;
      dtp_RgtDate.Top     := 25;
      dtp_RgtDate.Left    := 542;

      // ������ȸ
      sbt_PrevDate.Top    := 25;
      sbt_PrevDate.Left   := 518;

      // ������ȸ
      sbt_NextDate.Top    := 25;
      sbt_NextDate.Left   := 652;

      // ������
      lb_FOpName.Top      := 50;
      lb_FOpName.Left     := 444;
      lb_OpName.Top       := 50;
      lb_OpName.Left      := 520;

      // ����
      lb_FDietName.Top    := 67;
      lb_FDietName.Left   := 444;
      lb_DietName.Top     := 67;
      lb_DietName.Left    := 520;

      // �ð����̺�
      lb_ActTime.Top      := 30;
      lb_ActTime.Left     := 682;
      med_ActTime.Top     := 25;
      med_ActTime.Left    := 730;

      // �ð��߰�
      sbt_AddTime.Top     := 26;
      sbt_AddTime.Left    := 778;

      // �ð�����
      sbt_DelTime.Top     := 26;
      sbt_DelTime.Left    := 810;

      // ICU ����� ���̺� Setting
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


      // ���� Flowsheet
      asg_IcuMon.FixedColor     := $0085A564;
      Chr_Vs.Gradient.EndColor  := $0085A564;

      // ���� ȯ��List
      pn_PatList.Color          := $0085A564;
      ugd_PatList.Color         := $0085A564;
      ugd_PatList.GridRowColor  := $00F1D9C5;//$00F4CD7B;
      apn_PatList.Caption.Color := $0085A564;

      // ���� bar
      pn_Loading.Color          := $0085A564;
      ani_setuser.Color         := $0085A564;
      lb_LoadingBar.Color       := $0085A564;

      // �������̽� �����ֱ�
      lb_MoniPrd.Color          := $00108362;

      // ICU ȯ�ڸ���Ʈ, 2011.11.22 LSH
      apn_PatList.Top           := 5;
      apn_PatList.Left          := 1306;

      // ��ư Set @ 2012.04.21 LSH


      // ----------------------------------------------------------------------
      // [����] 61���� ����ȯ�ڽ� �߰� -2015.02.03 smpark
      // ----------------------------------------------------------------------
      // [����] 62���� 81ȣ�� Sub ICU �߰� -2015.02.11 smpark
      // ----------------------------------------------------------------------
      // [�Ⱦ�] 72���� 02ȣ�� Sub ICU �߰� -2015.02.17 smmpark
      // ----------------------------------------------------------------------
      // [�Ⱦ�] 54���� 01ȣ�� Sub ICU �߰� -2016.06.16 smmpark
      // ----------------------------------------------------------------------
      if ((G_Locate = 'GR') and
          (((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Text = '61W') or
           ((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Text = '62W'))) or
         ((G_Locate = 'AA') and
          ((GetComp('MDN110F1', 'combx_WardCd') as TComboBox).Text = '54W')) then
      begin
         // ȭ������
         Self.Caption := '[MDN110FM] Sub ICU ���� ��ȣ�����' ;
      end
      else
      begin
         // ȭ������
         Self.Caption := '[MDN110FM] ICU ���� ��ȣ�����' ;
      end;

   end;

end;



//------------------------------------------------------------------------------
// [ICU ȯ�ڸ�� ��ȸ] Procedure
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
   // 2. ���� ȯ�� ����Ʈ ��ȸ
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
            // ������� ����
            if rbt_SortDept.Checked then
            begin
               if cbx_Dsch.Checked then
                  strGubun := 'A'   // ����ġ�� ��ȸ
               else
                  strGubun := 'B';
            end
            else
            begin
               if cbx_Dsch.Checked then
                  strGubun := '1'   // ����ġ�� ��ȸ
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
            // ������� ����
            if rbt_SortDept.Checked then
            begin
               if cbx_Dsch.Checked then
                  strGubun := 'C'   // ������ ��ȸ
               else
                  strGubun := 'D';
            end
            else
            begin
               if cbx_Dsch.Checked then
                  strGubun := '3'   // ������ ��ȸ
               else
                  strGubun := '4';
            end;
         end;
      end;



      Type1 := strGubun;
      Type2 := combx_WardCd.Items[combx_WardNm.ItemIndex];


      // �Ż��� ��â�� �߰��� ����, ���� flag ����
      // NICU2 added -2012.02.29 smpark
      if (md_WardNo = 'NNR')  or
         (md_WardNo = 'NICU') or
         (md_WardNo = 'NICU2') then
         // �Ż��ƴ� fn_get_patclsscore���� MDBDSPMT.TOTSCORE ������.
         Type3 := 'B'
      else
         // �Ż��ư� �ƴѰ��, fn_get_patclsscore���� MDPTCLDT.STDPTS ������.
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin

         P_PatNo       := '';
         P_AdmDate     := '';
         P_WardNo      := '';
         P_RoomNo      := '';


         mdPatInf.Free;

         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';

         Exit;
      end;


      ugd_PatList.Hint     := '�� : ��â ���� ������ �� ��� ȯ��';
      ugd_PatList.ShowHint := True;
      ugd_PatList.Repaint;


      ugd_PatList.RowCount := RowNo + 1;


      for i := 0 to RowNo - 1 do
      begin
         if cbx_NowPos.Checked then                                                    // ����ġ
            ugd_PatList.Cells[0,i+1]  := mdPatInf.sRoomNo1[i]
         else
            ugd_PatList.Cells[0,i+1]  := mdPatInf.sRoomNo[i];



         // ����������� ������ �����Կ�,��� �ͨа�쿡 �̸��� ������ ���� ������ ������
         if Combx_wardCd.text <> 'DSC' then
         begin
            // ���� �Կ�ȯ��
            if (mdPatInf.sBckStat[i] = '1') then                                       // ��ȣȮ��.
               ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i]
            else if (mdPatInf.sBckStat[i] = '2') then                                  // �ɻ���
               ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i]
            else if (mdPatInf.sBckStat[i] = '3') or (mdPatInf.sBckStat[i] = '4') then  // �ɻ�Ϸ�
               ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i]
            else if (mdPatInf.sTransDt[i] = FormatDateTime('yyyymmdd',Date)) then      // ���� ���� ȯ��
               ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i]
            else if (mdPatInf.sAdmDate[i] = FormatDateTime('yyyymmdd',Date)) then      // ���� �Կ� ȯ��
               ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i];


            // ��â���� �������� ���ȯ�� (�Ż���/���� �����߰�)
            if (Type3 = 'B') then
            begin
               if (mdPatInf.lScore[i] >= 13) then
                  // �Ż��� ��â������(MDBDSPMT.TOTSCORE) 13�� �̻�
                  ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i]
               else
                  ugd_PatList.Cells[1, i+1] := mdPatInf.sPatName[i];
            end
            else
            begin
               if (mdPatInf.lScore[i] >= 3) then
                  // ȯ�ںз� [� �� Ȱ��] ���� 3�� �̻�
                  ugd_PatList.Cells[1, i+1] := '��' + mdPatInf.sPatName[i]
               else
                  ugd_PatList.Cells[1, i+1] := mdPatInf.sPatName[i];
            end;


            // ���� ������� ȯ��
            if (mdPatInf.sBckStat[i]<>'1') and
               (mdPatInf.sBckStat[i]<>'2') and
               (mdPatInf.sBckStat[i]<>'3') and
               (mdPatInf.sBckStat[i]<>'4') then
            begin
               if (mdPatInf.sDschexdt[i] = FormatDateTime('yyyymmdd',Date)) or
                  (mdPatInf.sDschdate[i] = FormatDateTime('yyyymmdd',Date)) then
                  ugd_PatList.Cells[1,i+1] := '��'+ ugd_PatList.Cells[1,i+1];
            end;

            // ���� �����豺 ȯ��
            if (mdPatInf.sLastFallEsti[i] = 'High') or
               (mdPatInf.sLastFallEsti[i] = '�����豺(��ȯ�ڽ�)') or
               (mdPatInf.sLastFallEsti[i] = '�����豺(24������)') or
               (mdPatInf.sLastFallEsti[i] = '�����豺(ȸ����)')   then
            begin
               ugd_PatList.Cells[1, i+1] := '��' + ugd_PatList.Cells[1, i+1];
            end;

         end
         else
         begin
            ugd_PatList.Cells[1, i+1] := mdPatInf.sPatName[i];
         end;

         // Hidden Information
         ugd_PatList.Cells[2 , i+1] := mdPatInf.sSex[i] + '/' + Trim(Calc_Age(now,mdPatInf.sBirtDate[i]));  // ����/����
         ugd_PatList.Cells[3 , i+1] := mdPatInf.sPatNo  [i];   // ȯ�ڹ�ȣ
         ugd_PatList.Cells[4 , i+1] := mdPatInf.sAdmDate[i];   // �Կ�����

         ugd_PatList.Cells[5 , i+1] := mdPatInf.sDeptNm [i];   // �������
         ugd_PatList.Cells[6 , i+1] := mdPatInf.sChaDrNm[i];   // ����Ǹ�
         ugd_PatList.Cells[7 , i+1] := mdPatInf.sGenDrNm[i];   // ��ġ�Ǹ�
         ugd_PatList.Cells[8 , i+1] := mdPatInf.sMeddept[i];   // �����
         ugd_PatList.Cells[9 , i+1] := mdPatInf.sResNo1 [i];   // �ֹι�ȣ1
         ugd_PatList.Cells[10, i+1] := mdPatInf.sResNo2 [i];   // �ֹι�ȣ2
         ugd_PatList.Cells[11, i+1] := mdPatInf.sPatName[i];   // ȯ�ڸ�

         ugd_PatList.Cells[12, i+1] := mdPatInf.sBirtDate[i];  // �������
         ugd_PatList.Cells[13, i+1] := mdPatInf.lScore   [i];  // �Ϲ�ȯ�ںз� '� �� Ȱ��' ���� ����
         ugd_PatList.Cells[14, i+1] := mdPatInf.sChaDr   [i];  // �����
         ugd_PatList.Cells[15, i+1] := mdPatInf.sGenDr   [i];  // ��ġ��
         ugd_PatList.Cells[16, i+1] := mdPatInf.sWardNo  [i];  // ����
         ugd_PatList.Cells[17, i+1] := mdPatInf.sRoomNo  [i];  // ����
         ugd_PatList.Cells[18, i+1] := mdPatInf.sWardNo1 [i];  // ����ġ ����, 2011.08.30 LSH
         ugd_PatList.Cells[19, i+1] := mdPatInf.sRoomNo1 [i];  // ����ġ ����, 2011.08.30 LSH

      end;


      mdPatInf.Free;


   finally
      screen.Cursor  :=  crDefault;
   end;


   //-----------------------------------------------------------
   // ���ܸ� �������� @ 2012.04.23 LSH
   //-----------------------------------------------------------
   if (P_NicuFlag = 'S') then
   begin
      GetMainDiag(ugd_PatList.Cells[3, ugd_PatList.Row], // ȯ�ڹ�ȣ
                  ugd_PatList.Cells[8, ugd_PatList.Row], // �����
                  ugd_PatList.Cells[4, ugd_PatList.Row], // �Կ�����
                  G_Locate,                              // �� ��ġ
                  '1',                                   //
                  'A',                                   // ������ ������� Flag
                  ugd_PatList.Cells[14,ugd_PatList.Row], // ��米��
                  'I'                                    // ȯ����ġ(I = '�Կ�')
                  );
   end;



end;




procedure TMDN110FM.ugd_PatListDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 9);
end;





//------------------------------------------------------------------------------
// [ICUȯ�� ��� Hint] Grid onClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.ugd_PatListMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   ugd_PatList.Hint := '< ȯ�ڱ��� >'                         + #13#10 + #13#10 +
                       '�� : ���� �Կ� ȯ��'                  + #13#10 +
                       '�� : ��â ���� ������ �� ��� ȯ��' + #13#10 +
                       '�� : ��ȣ Ȯ�� ȯ��'                  + #13#10 +
                       '�� : ���� ��� ���� ȯ��'             + #13#10 +
                       '�� : �ɻ� �Ϸ� ȯ��'                  + #13#10 +
                       '�� : ���� �����豺 ȯ��'              + #13#10 +
                       '�� : �ɻ����� ȯ��'                   + #13#10 +
                       '�� : ���� ���� ȯ��' ;


   ugd_PatList.ShowHint := True;

end;



//------------------------------------------------------------------------------
// [ȯ������ ��ȸ] Grid onClick Event Handler
// - ICU ȯ�� ������������
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
   // ������ȣ Main���� ȯ�� ����
   //---------------------------------------------------------
   if (in_Flag = 'FORMSHOW') then
   begin

      ugd_PatList.Row := 1;

      for i := 1 to ugd_PatList.RowCount - 1 do
      begin
         if ugd_PatList.Cells[3,i] = md_PatNo then
         begin
            ugd_PatList.Row   := i;

            // �۷ι� ���� Setting
            P_PatNo   := ugd_PatList.Cells[3,  ugd_PatList.Row];
            P_AdmDate := ugd_PatList.Cells[4,  ugd_PatList.Row];
            P_WardNo  := ugd_PatList.Cells[18, ugd_PatList.Row];  // ����ġ(WardNo1) ����(�ؿ��� T/R������ ȯ�� ����ġ �����̽�), 2011.08.30 LSH
            P_RoomNo  := ugd_PatList.Cells[19, ugd_PatList.Row];  // ����ġ(RoomNo1) ����(�ؿ��� T/R������ ȯ�� ����ġ �����̽�), 2011.08.30 LSH
            P_PatName := ugd_PatList.Cells[11, ugd_PatList.Row];
            P_SexAge  := ugd_PatList.Cells[2,  ugd_PatList.Row];

            // NICU2 added -2012.02.29 smpark
            if (P_WardNo = 'MIC')  or
               (P_WardNo = 'CIC')  or //2019.09.04  CIC �߰�  ^YongJunPark^
               (P_WardNo = 'SIC')  or
               (P_WardNo = 'CCU')  or
               (P_WardNo = 'NICU') or
               (P_WardNo = 'NICU2')or
               (P_WardNo = 'EICU') or  // [�Ⱦ�] ������ȯ�ڽ�(EICU) �ż� -2016.05.26 smpark
               // [����] ��ȯ�ڽ� 1,2 ����, 2012.02.22 LSH
               (P_WardNo = 'ICU1') or
               (P_WardNo = 'ICU2') then
               in_Gubun  := '1'     // ICU ������� ��ȸ
            else
               in_Gubun  := '2';    // ���� ������� ��ȸ

            Break;

         end;
      end;
   end
   //---------------------------------------------------------
   // ICU ����� ȭ�� Ү���� ȯ�� ����
   //---------------------------------------------------------
   else if (in_Flag = 'REFRESH') then
   begin

      for i := 1 to ugd_PatList.RowCount - 1 do
      begin
         if ugd_PatList.Cells[3,i] = ugd_PatList.Cells[3,ugd_PatList.Row] then
         begin
            ugd_PatList.Row   := i;


            // �۷ι� ���� Setting
            P_PatNo   := ugd_PatList.Cells[3,  ugd_PatList.Row];
            P_AdmDate := ugd_PatList.Cells[4,  ugd_PatList.Row];
            P_WardNo  := ugd_PatList.Cells[18, ugd_PatList.Row];  // ����ġ(WardNo1) ����(�ؿ��� T/R������ ȯ�� ����ġ �����̽�), 2011.08.30 LSH
            P_RoomNo  := ugd_PatList.Cells[19, ugd_PatList.Row];  // ����ġ(RoomNo1) ����(�ؿ��� T/R������ ȯ�� ����ġ �����̽�), 2011.08.30 LSH
            P_PatName := ugd_PatList.Cells[11, ugd_PatList.Row];
            P_SexAge  := ugd_PatList.Cells[2,  ugd_PatList.Row];


            // NICU2 added -2012.02.29 smpark
            if (P_WardNo = 'MIC')  or
               (P_WardNo = 'CIC')  or  //2019.09.04  CIC �߰�  ^YongJunPark^
               (P_WardNo = 'SIC')  or
               (P_WardNo = 'CCU')  or
               (P_WardNo = 'NICU') or
               (P_WardNo = 'NICU2') or
               (P_WardNo = 'EICU') or  // [�Ⱦ�] ������ȯ�ڽ�(EICU) �ż� -2016.05.26 smpark
               // [����] ��ȯ�ڽ� 1,2 ����, 2012.02.22 LSH
               (P_WardNo = 'ICU1') or
               (P_WardNo = 'ICU2') then
               in_Gubun  := '1'           // ICU ������� ��ȸ
            else
               in_Gubun  := '2';          // ���� ������� ��ȸ



            //------------------------------------------------------------------
            // ����ġ(P_WardNo)�� �������������� ����ġȯ�� ������� ��ȸ
            //  - ��) ������: WardNo = CCU | WardNo1 = OPR, 2011.12.26 LSH
            //------------------------------------------------------------------
            if (P_WardNo = 'OPR') then
            begin
               in_Gubun  := '3';          // (����ġ ����) ICU ������� ��ȸ
               P_WardNo  := md_WardNo;    // ����ġ 'OPR'��� [�������� ��������]�� �Ѱ���.
                                          // [�� md_WardNo ����ϴ� ����: �������� ICU ���ȯ�ڿ� ���� ����� �ۼ���, �ش� ICU ���������� ������ ���̴�]
            end;



            //------------------------------------------------------------------
            // ������� ���� ȯ����ȸ check��, 2011.12.16 LSH
            //------------------------------------------------------------------
            if (cbx_Dsch.Checked) then
               in_Gubun  := '3';



            Break;
         end;
      end;
   end
   //---------------------------------------------------------
   // �� ���õ� ȯ�������� �ִ� ��� (ȯ�ڱ��������ȸ / �ڵ����Ľ�ĵ)
   //---------------------------------------------------------
   else if (in_Flag = 'SELECTED') then
   begin

      in_Gubun  := '3';


      //-------------------------------------------------------------
      // ICU �Խ�Ư����Ȳ(�ָ��Խ� ��) �������ǽ��� ���� ����ó��
      //  - 2012.03.07 LSH
      //-------------------------------------------------------------
      if (asg_IcuMon.Tag = 0) and
         ((P_PatFlag = 'W')   or
          (P_PatFlag = 'D'))  then
      begin

         // ȯ���� ICU ��������� P_DschDate(������̸�, '2999-12-31'�� Set)�� Search.
         // ȯ���� ������ڰ� �ָ�(��/��)�̸�, [�ݿ���] ��������� �ѷ���.
         if GetDayofWeek(StrToDate(ConvertSDate(P_DschDate)), 'HS') = '��' then
         begin
            P_RgtDate := DateToStr(StrToDate(ConvertSDate(P_DschDate)) - 1)
         end
         else if GetDayofWeek(StrToDate(ConvertSDate(P_DschDate)), 'HS') = '��' then
         begin
            P_RgtDate := DateToStr(StrToDate(ConvertSDate(P_DschDate)) - 2)
         end
         else
            P_RgtDate := P_DschDate;


         // FlowSheet ȭ�� [����]��ȸ �Ϸ�Ǿ���.
         asg_IcuMon.Tag := 1;


      end
      else
         P_RgtDate := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);



      // �ش� ������ڿ� ���� ȯ��������ȸ.
      // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
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
   // ������ ȯ�� ICU ���� ��������
   //---------------------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(in_Gubun,
              P_WardNo,
              P_PatNo,
              DelChar(P_AdmDate,'-'),
              FormatDateTime('yyyymmdd',dtp_RgtDate.Date),
              '',
              ''
              );




   //---------------------------------------------------------------------------
   // ICU ����� �ڵ����ĺ�ȯ, 2011.09.09 LSH
   //  - AutoScan New-Version �����ϸ鼭, �Ʒ� �ּ�ó��. 2012.01.30 LSH
   //---------------------------------------------------------------------------
   //if (P_EMRPrintYn = 'Y') then
   //   Refresh_AutoScan;



end;





//------------------------------------------------------------------------------
// [ȯ�� ���] Grid onClick Event Handler
// - ȯ�� ����
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.ugd_PatListClick(Sender: TObject);
var
   bPatSelOk : Boolean;
begin

   //----------------------------------------------
   // ȯ�� �������� check
   //----------------------------------------------
   if ugd_PatList.Cells[3,ugd_PatList.Row] = '' then
   begin
      MessageBox(Self.Handle,
                 'ȯ�ڸ� ������ �ֽʽÿ�.',
                 '���ȯ�� ��ȸ',
                 MB_OK + MB_ICONINFORMATION);
      exit;
   end;


   //----------------------------------------------
   // SU ����� ȯ�ڼ��� ����
   //  - '����������ġ���' ȯ�ڸ� ���� ����
   //  - [�Ⱦ�] 76W-01, [����] 73W-89
   //  - 2012.06.01 LSH
   //----------------------------------------------
   // [����] ����������ġ���(89 -> 90) ������ -2015.09.21 smpark
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
      // ������ Data-Set �ʱ�ȭ
      //----------------------------------------------
      InitDataSet(cds_SaveItem);


      //----------------------------------------------
      // ����ȯ�� ������ȸ
      //----------------------------------------------
      SelectPatInfo('REFRESH');


      //----------------------------------------------
      // ȭ�� Refresh
      //----------------------------------------------
      Refresh;
      saveCheck := True;
   end
   else
   begin
      MessageBox(Self.Handle,
                 '�ش� ������� ��ȸ ����� �ƴմϴ�.',
                 '����� ��ȸ ����',
                 MB_OK + MB_ICONWARNING);

      Exit;

   end;

end;





//------------------------------------------------------------------------------
// [ICU ��������] Combobox onChange Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.combx_WardNmChange(Sender: TObject);
begin
   // ���Ǽ� Sorting
   rbt_SortRoom.Checked := True;


   // �������� Setting
   Combx_Wardcd.ItemIndex := Combx_Wardnm.ItemIndex;


   //--------------------------------------------------------
   // ȯ�� ����Ʈ ��ȸ
   //--------------------------------------------------------
   GetPatList(Sender);


   //--------------------------------------------------------
   // ����ȯ�� ������ȸ
   //--------------------------------------------------------
   ugd_PatListClick(Sender);

end;





//------------------------------------------------------------------------------
// ���� ��� ������ȸ or ���� �Կ���� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FM.cbx_DschClick(Sender: TObject);
begin
   // ȯ������ ��ȸ
   SetPatInfo('REFRESH');

   // ȭ�� ����
   Refresh;
end;





//------------------------------------------------------------------------------
// [ICU ȯ�� ����] Combobox onChange Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.29
//------------------------------------------------------------------------------
procedure TMDN110FM.rbt_SortNameClick(Sender: TObject);
begin

   if rbt_SortName.Checked then
   // �����
   begin
      rbt_SortRoom.Font.Color := clNavy;
      rbt_SortName.Font.Color := clBlue;
      rbt_SortDept.Font.Color := clNavy;

      QuickSortGrid(ugd_PatList, 1, ugd_PatList.RowCount - 1, 11, False);
   end
   else if rbt_SortRoom.Checked then
   // ���Ǽ�
   begin
      rbt_SortRoom.Font.Color := clBlue;
      rbt_SortName.Font.Color := clNavy;
      rbt_SortDept.Font.Color := clNavy;

      QuickSortGrid(ugd_PatList,1,ugd_PatList.RowCount-1,0,False);
   end;


   // ����ȯ�� ������ȸ
   ugd_PatListClick(Sender);



end;


//------------------------------------------------------------------------------
// [NICU ������] Searching Call Procedure
//  - ü��/����/����/����/����/���¿���(��������)
//
// Author : Lee, Se-Ha
// Date   : 2011.12.05
//------------------------------------------------------------------------------
procedure TMDN110FM.SetNicuInfoAdded(in_PatNo, in_AdmDate : String);
var
   i, RowNo   : Integer;
   iWrkLst    : HmdWrkLst;
   sType1, sType2, sType3, sType4        : String;    // NICU ���� ��ȸ���� ����
   sFstWks, sFstDay, sBornDate, sRgtDate : String;    // �������� ������� ����
begin

   // �ʱ�ȭ
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
      sType4 := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);  // ������ں� ���� IO Check���� ���������� ���� (AA_������ ��û), 2012.03.29 LSH



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
            if sCode1[i] = 'ü��' then                            // �׸� ��
            begin
               lb_Wgt.Caption      := sCode3[i];                  // ���� ��
               lb_Wgt.Hint         := '�����Ͻ�: ' + sCode2[i];   // �����Ͻ�
            end
            else if sCode1[i] = '����' then
            begin
               lb_Hgt.Caption      := sCode3[i];
               lb_Hgt.Hint         := '�����Ͻ�: ' + sCode2[i];
            end
            else if sCode1[i] = '����' then
            begin
               lb_BSize.Caption    := sCode3[i];
               lb_BSize.Hint       := '�����Ͻ�: ' + sCode2[i];
            end
            else if sCode1[i] = '����' then
            begin
               lb_CSize.Caption    := sCode3[i];
               lb_CSize.Hint       := '�����Ͻ�: ' + sCode2[i];
            end
            else if sCode1[i] = '����' then
            begin
               lb_HSize.Caption    := sCode3[i];
               lb_HSize.Hint       := '�����Ͻ�: ' + sCode2[i];
            end
            else if sCode1[i] = '���¿���' then
            begin
               lb_DgpWks.Caption   := sCode3[i];
               lb_DgpWks.Hint      := '����Ͻ�: ' + sCode2[i];

               // �������� ������� ���� assign
               sFstWks   := CopyByte(sCode3[i], 1, 2);
               sFstDay   := CopyByte(sCode3[i], 6, 1);
               sBornDate := CopyByte(DelChar(sCode2[i], '-'), 1, 8);
               sRgtDate  := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);
            end;
         end;
      end;


      //------------------------------------------------------------------------
      // ��������(wks) ������� CalcNowDay ȣ��, 2011.12.06 LSH
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
         // ������ NICU ��ȣ����� 30���̻� �ֱ� ���Կ��� "�Ҿ�"������������ �ۼ��� case �־���..
         // ��� case�� ��Ģ�� �Ż��� ������������ �ۼ��ϱ�� �Ⱦ�_NICU ������ ������ ������, 2011.12.06
         lb_NowWks.Caption  := '��ȣ����������(�Ż���) ��������';

         //2013.06.18 khs ��ȣ����������(�Ż���)���� �������� ����� �Ұ��� ���
         //�Ż��ƴ��忡�� ������ڿ� ���±Ⱓ ���ؼ� �������� ���
         GetNbabyBorndate;
      end;


      iWrkLst.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;





//------------------------------------------------------------------------------
// [NICU �������� ���] Calculating Function
//  - ���¿���, �������, ���� ������ڸ� �޾Ƽ� ���������� ���.
//
// Author : Lee, Se-Ha
// Date   : 2011.12.06
// Tuning : 2012.04.19 @ ������ �� �������� ���ϼ� ��� �κ� ����.
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
   // �ʱ� Return Value Null ó��
   RtnValue   := '';


   // ������� ~ �Կ����� �� ����ϼ� @ 2012.04.20 LSH
   diffDay1  := GetDiffDay(in_BornDate, DelChar(P_AdmDate,'-'));

   // ������ ������� (�� ������� + �Կ��Ⱓ���� �� ����ϼ�) @ 2012.04.20 LSH
   rBornDate := FormatDateTime('yyyymmdd', StrToDate(ConvertSDate(in_BornDate)) + diffDay1);

   // ������ ������� ~ (��) ������� �� ����ϼ� @ 2012.04.20 LSH
   //diffDay2  := GetDiffDay(rBornDate, in_RgtDate);

   //2013.03.05 khs ���� ----------------
   //����ϼ� ���ϱ� ����(2���� ���� ��� �ϼ��� +1�� �������� �������� ����)

   //2013.06.10 khs EncodeDate()�Լ��� �Ű������� in_BornDate���� rBornDate�� �����Ͽ�
   //������ ������ڸ� �������� ���������� ��
   tBornDate  := EncodeDate(strToint(CopyByte(rBornDate,1,4)),
                           strToint(CopyByte(rBornDate,5,2)),
                           strToint(CopyByte(rBornDate,7,2)));

   tRgtDate  := EncodeDate(strToint(CopyByte(in_RgtDate,1,4)),
                           strToint(CopyByte(in_RgtDate,5,2)),
                           strToint(CopyByte(in_RgtDate,7,2)));

   diffDayFloat  := (tRgtDate - tBornDate);

   diffDay2 := StrToInt(FloatToStr(diffDayFloat));
   //2013.03.05 khs ���� ----------------

   // ����Ϻ��� ~ �Կ������� ����� ���õ� ����� ������ �� ����ϼ� @ 2012.04.20 LSH
   TmpPeriod  := diffDay1 + diffDay2;

   // ���¿��ɿ� ���������� week ī��Ʈ
   tAddingWks    := TmpPeriod div 7;

   // ���¿��ɿ� ���������� day ī��Ʈ
   tAddingDay    := TmpPeriod mod 7;


   // ���¿��� day�� �߰��� day�� ���� 7�� ������,
   // ���¿��� week ī��Ʈ�� �ش� week ī��Ʈ�� �����ش�.
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
                       'NICU �������� 7�Ϲ̸�(�߰�) ��� ����ó��',
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
                       'NICU �������� 7���̻�(�߰�) ��� ����ó��',
                       MB_OK + MB_ICONINFORMATION);
         end;
      end;
   end;

   // �������� (��)
   try
      NowWks := StrToInt(in_FstWks) + tAddedWks;

   except
      on e : Exception do
      begin
         MessageBox(Self.Handle,
                    PChar('[Exception Msg] : ' + e.Message),
                    'NICU �������� �� ��� ����ó��',
                    MB_OK + MB_ICONINFORMATION);
      end;
   end;

   // �������� (��)
   NowDay := tAddedDay;


   // Return Value
   try
      RtnValue := IntToStr(NowWks) + ' + ' + IntToStr(NowDay);

   except
      on e : Exception do
      begin
         MessageBox(Self.Handle,
                    PChar('[Exception Msg] : ' + e.Message),
                    'NICU �������� ���Ͻ� ����ó��',
                    MB_OK + MB_ICONINFORMATION);
      end;
   end;


   Result := RtnValue;


end;





//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] ȭ�� Refresh
//
// Author : Lee, Se-Ha
// Date   : 2012.01.20
//------------------------------------------------------------------------------
procedure TMDN110FM.Refresh_AutoScan;
begin

   //-------------------------------------------------------------
   // Data-Set �ʱ�ȭ @ 2012.04.20 LSH
   //-------------------------------------------------------------
   InitDataSet(cds_SaveItem);

   //-------------------------------------------------------------
   // Code-Time ����Ʈ �籸�� �� �Է��׸� �Ӽ��� ��������
   //-------------------------------------------------------------
   CheckFormset;

   //-------------------------------------------------------------
   // ���ں� ����͸� �󼼳���(����) ��ȸ
   //-------------------------------------------------------------
   SelectMonItem(StrToDateTime(ugd_EmrList.Cells[2, ugd_EmrList.Row]));

   //-------------------------------------------------------------
   // Client Data Set ����
   //-------------------------------------------------------------
   SetSaveList('TOGRID');

   //-------------------------------------------------------------
   // Chart Clear
   //-------------------------------------------------------------
   InitChart;

   //-------------------------------------------------------------
   // ��Ʈ ����
   //-------------------------------------------------------------
   DrawChart(Self);

end;






//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ�� ��ȸ
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
   // ���� Assign
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
   // EMR ������� ��� ��ȸ
   //-------------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(sGubun,
              sWardNo,
              sPatNo,
              sAdmDate,
              sSetType,
              sFromdate,
              sTodate);


end;



//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ�� ����
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
   // ���ĺ�ȯ��� �ش� ������� ��� ȯ������ ��ȸ
   //----------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(sGubun,
              sWardNo,
              sPatNo,
              sAdmDate,
              sRgtDate,
              '',
              '');



   //----------------------------------------------------------------
   // ȭ�� ���� �� chart �׸���
   //----------------------------------------------------------------
   Refresh_AutoScan;

end;




//------------------------------------------------------------------------------
// ICU ���� ��ȣ����� �ڵ���ĵ ������� New-ver
// - ȯ�ں� ���
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FM.AutoScanPrint_New;
begin
   //-------------------------------------------
   // EMR ���ĺ�ȯ ��� ��ȸ
   //-------------------------------------------
   bbt_SelectClick(ugd_EmrList);

end;


//------------------------------------------------------------------------------
// ���� ���
// - NICU �������� ������� ���� ����(Y/N) üũ
//
// Author : Lee, Se-Ha
// Date   : 2012.04.18
//------------------------------------------------------------------------------
function TMDN110FM.isYunYear(in_Year : Integer) : Boolean;
begin

   // �ʱⰪ
   Result := False;

   // 4�ڸ��� ���� �Է¹޾�����, ���⿩�� Check
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
// [�� ����ϼ� ���] Calculating Function
//  - 2���� ����(����, ����)�� �Է¹޾�, �� ����ϼ��� ��� (����+�޷°��)
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
   // �ʱ� Return Value Null ó��
   diffDay  := 0;
   Result   := diffDay;


   // ���� �����ϼ�
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


   // ��������, �������� ���� assign
   iBornYear := StrToInt(CopyByte(in_BornDate, 1, 4));
   iBornMon  := StrToInt(CopyByte(in_BornDate, 5, 2));
   iBornDay  := StrToInt(CopyByte(in_BornDate, 7, 2));
   iNowYear  := StrToInt(CopyByte(in_RgtDate,  1, 4));
   iNowMon   := StrToInt(CopyByte(in_RgtDate,  5, 2));
   iNowDay   := StrToInt(CopyByte(in_RgtDate,  7, 2));


   //------------------------------------
   // 1. ����⵵ = ��ϳ⵵
   //------------------------------------
   if (iBornYear = iNowYear) then
   begin
      // 1-1. ����� = ��Ͽ�
      if (iBornMon = iNowMon) then
      begin
         iBornCnt := iBornDay;
         iNowCnt  := iNowDay;
      end
      // 1-2. ����� < ��Ͽ�
      else if (iBornMon < iNowMon) then
      begin
         iBornCnt := (Month[iBornMon]) + iBornDay;
         iNowCnt  := (Month[iNowMon])  + iNowDay;
      end
      else
      begin

         //----------------------------------------------------------------
         // ����Ͻô� 6/1�� �����ε�, ������ڴ� 5/31�� case �߻�
         //  - �׳� '����ó��' �������� ���� �߰� @ 2012.06.01
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
                       '�����(���,�Կ�)�� ���ۿ�(���)���� �۽��ϴ�. ������ڸ� �� ���� �ٶ��ϴ�.',
                       '�������� ��� ����',
                       MB_OK + MB_ICONWARNING
                       );

            Exit;
         end;
      end;
   end
   //------------------------------------
   // 2. ����⵵ < ��ϳ⵵
   //------------------------------------
   else if (iBornYear < iNowYear) then
   begin
      // 2-1. ����� = ��Ͽ�
      if (iBornMon = iNowMon) then
      begin
         iBornCnt := iBornDay;
         iNowCnt  := (iNowYear - iBornYear) * 365 + iNowDay;
      end
      // 2-2. ����� > ��Ͽ�
      else if (iBornMon > iNowMon) then
      begin
         // ��Ͽ��� 2������
         if (iNowMon > 1) then
         begin
            iBornCnt := (Month[iBornMon]) + iBornDay;
            iNowCnt  := (iNowYear - iBornYear) * 365 + (Month[iNowMon])  + iNowDay;
         end
         // ��Ͽ��� 1��
         else if (iNowMon = 1) then
         begin
            iBornCnt := (Month[iBornMon])   + iBornDay;
            iNowCnt  := (Month[iNowMon+12]) + iNowDay;
         end;
      end
      // 2-3. ����� < ��Ͽ�
      else if (iBornMon < iNowMon) then
      begin
         iBornCnt := (Month[iBornMon]) + iBornDay;
         iNowCnt  := (iNowYear - iBornYear) * 365 + (Month[iNowMon])  + iNowDay;
      end;

   end
   //------------------------------------
   // 3. ����⵵ > ��ϳ⵵
   //------------------------------------
   else
   begin
      MessageBox(self.Handle,
                 '����⵵(���,�Կ�)�� ����⵵(���)���� �۽��ϴ�. ������ڸ� �� ���� �ٶ��ϴ�.',
                 '�������� ��� ����',
                 MB_OK + MB_ICONWARNING
                 );

      Exit;
   end;


   // �� ����ϼ�(����)
   diffDay  := iNowCnt - iBornCnt;


   //-------------------------------------------------------
   // ���� ��� �߰�
   //   - NICU ����ϼ��� 4���̳���� ������...-_-;
   //-------------------------------------------------------
   if (isYunYear(iNowYear) or isYunYear(iBornYear)) and                       // ����⵵(���,�Կ�)) �Ǵ� ���۳⵵(���)�� �����̸鼭,
      (((iNowYear > iBornYear) and (iNowMon > 2)) or                          // ����⵵(���,�Կ�)�� ���۳⵵(���)���� ���ų� ũ�� �����(���,�Կ�)�� 2������ �Ǵ�
       ((iNowYear = iBornYear) and (iNowMon > 2) and (iBornMon <= 2))) then   // �����(���,�Կ�)�� 2�������̰� ���ۿ�(���)�� 1~2���̸�, ++

      diffDay := diffDay + 1;

   // Return
   Result := diffDay;

end;



//------------------------------------------------------------------------------
// [���ܸ� ��������] Procedure Event Handler
//  - ������ȣ(MDN110F1)���� �������� ������ ������.
//  - SU ��ȣ��������� ����ϱ� ����.
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

      // ��ȿ�� ���ܳ��� ������ ���.
      if RowNo > 0 then
      begin
         for i := 0 to RowNo - 1 do
         begin
            combx_DiagName.Items.Add(diagt.sDiagName[i]);
         end;

         // ���� ������ ���� ����
         combx_DiagName.ItemIndex := 0;

         // ���ܸ� ǥ��
         lb_OpName.Caption := Trim(Combx_DiagName.Text);
      end;

      diagt.Free;

   finally
      screen.Cursor := crDefault;
   end;


end;


//------------------------------------------------------
// Stroke Unit ��� �������̽� Chart ����
//------------------------------------------------------
procedure TMDN110FM.chr_VS_SuAfterDraw(Sender: TObject);
Var
   YMinPosition, YMidPosition, YMaxPosition : Longint;
begin
   //---------------------------------------------------------------------------
   // ���� �������� Check��, ���ؼ� Drawing.
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

          Font.Height := -15;   // <-- express font size in "Height", NOT "Size" �� Best Size = -24

          Font.Color  := $005C70D5;//clYellow;
          Font.Style  := [fsBold];

          Brush.Style := bsClear;

          // ����͸� �׸��߰�(����) ���� �������忩�� Set, 2011.07.19 LSH
          asg_IcuMon.Tag := 1;
      end;
   end;
end;


//----------------------------------------------------------
// B/S �������� Display @ 2012.05.14
//----------------------------------------------------------
procedure TMDN110FM.mi_InsBsDataClick(Sender: TObject);
var
   u_Rectangle : TRect;
begin
   // ��ǥ��ġ ���
   u_Rectangle  := asg_IcuMon.CellRect(gNowCol, gNowRow);


   // Panel ��ġ ���� �� visible @ 2012.05.14
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


   // Panel �����ֱ�
   apn_Bst.Visible := True;


   // B/S �������� ��ȸ
   GetBsData;

end;



//------------------------------------------------------------------------------
// B/S ���� ���� ��ȸ
//  - SU ��ȣ����� ���� (GR_73W ��������û)
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
   // 2. B/S ������� ��ȸ
   //--------------------------------------------------------
   try
      Screen.Cursor := crHourGlass;

      mdIochkt := HmdIochkt.Create;


      //----------------------------------------------------
      // 2.1. Set Argument Value
      //----------------------------------------------------
      sType1 := '10';                                              // ��ȸ���� : �Ⱓ�� B/S �������
      sType2 := P_PatNo;                                           // ȯ�ڹ�ȣ
      sType3 := DelChar(P_AdmDate, '-');                           // �Կ�����
      sType4 := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);      // ��ȸ ��������
      sType5 := FormatDateTime('yyyymmdd', dtp_RgtDate.Date + 1);  // ��ȸ ��������



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
         lb_BsStatus.Caption := '�ش������� B/S������ �����ϴ�.';
         Exit;
      end;


      //----------------------------------------------------
      // 2.3. Display Data
      //----------------------------------------------------
      for i := 0 to RowNo - 1 do
      begin
         with ugd_BsData, mdiochkt do
         begin
            // �ش� ������ڿ� ��ȿ�� B/S ����ġ�� ��ȸ
            if (FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     = sExecDate[i]) and (DelChar(sExecTime[i],':') >= C_STARTTM) or
               (FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) = sExecDate[i]) and (DelChar(sExecTime[i],':') <= C_ENDTM)   then
            begin
               RowCount := RowCount + 1;

               Cells[0, iCnt+1] := ConvertSDate(sExecDate[i]) + ' ' + sExecTime[i];       // �����Ͻ�(YYYY-MM-DD HH24:MI)
               Cells[1, iCnt+1] := iVolume1[i];                                           // ������
               Cells[2, iCnt+1] := RemoveLfCr(sInsuline[i]);                              // �ν���

               // [Hidden]
               Cells[3, iCnt+1] := ConvertSDate(sExecDate[i]);
               Cells[4, iCnt+1] := sExecTime[i];

               Inc(iCnt);
            end;
         end;
      end;

      // ����
      QuickSortGrid(ugd_BsData, 1, ugd_BsData.RowCount, 0, True);

      ugd_BsData.SetColAlignment(0, taCenter      ); // ��������
      ugd_BsData.SetColAlignment(1, taRightJustify); // ��������
      ugd_BsData.Repaint;

      if (iCnt > 0) then
      begin
         // ��ȸ���� Display
         lb_BsStatus.Caption := IntToStr(iCnt) + '���� ��ȸ�Ǿ����ϴ�.';
         ugd_BsData.RowCount := ugd_BsData.RowCount - 1;
      end
      else
         lb_BsStatus.Caption := '����� �ð������� B/S������ �����ϴ�.';

   finally
      Screen.Cursor := crDefault;

      mdIochkt.Free;
   end;
end;


//------------------------------------------------
// BST ���� Panel �ݱ�
//------------------------------------------------
procedure TMDN110FM.bbt_BstCloseClick(Sender: TObject);
begin
   apn_Bst.Visible := False;
end;


//------------------------------------------------
// B/S �������� assign To Grid
//------------------------------------------------
procedure TMDN110FM.ugd_BsDataDblClick(Sender: TObject);
begin
   //
   if ugd_BsData.Cells[0, ugd_BsData.Row] <> '' then
   begin
      asg_IcuMon.Cells[gNowCol, gNowRow]   := ugd_BsData.Cells[1, ugd_BsData.Row];
      asg_IcuMon.Cells[gNowCol, gNowRow+1] := ugd_BsData.Cells[2, ugd_BsData.Row];

      // �Էµ� B/S���� [�ӽ� Data Grid]�� ����.
      asg_IcuMonEditingDone(Sender);
   end;

   // Panel �ݱ�
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
// I/O ���� ���� ��ȸ Procedure Event Handler
//  - SU ��ȣ����� ���� (GR_73W ��������û)
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
   // Intake(�汸/��汸/����), Output(�财/�輳 ��)
   //----------------------------------------------------
   begin
      // Grid �׸�� ����
      //  - [�輳]�� �뷮�ƴ�, Ƚ���� ǥ���û (������) @ 2012.06.01
      if (in_Gubun = 7) then
         ugd_IoData.Title := '�����Ͻ�|�����׸�|Ƚ��'
      else
         ugd_IoData.Title := '�����Ͻ�|�����׸�|�뷮';

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
            lb_IoStatus.Caption := '�ش������� I/O������ �����ϴ�.';

            mdIochkt.Free;

            Exit;
         end;



         //----------------------------------------------------
         // 2.3. Display Data
         //----------------------------------------------------
         for i:= 0 to RowNo - 1 do
         begin
            // ��û�� I/O �׸� ������(in_Gubun)��, ��� List-Up
            if (in_Gubun = StrToInt(Trim(mdIochkt.sChkGrp[i]))) then
            begin
               with ugd_IoData, mdIochkt do
               begin
                  // �ش� ������ڿ� ��ȿ�� I/O ����ġ�� ��ȸ
                  if (FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     = CopyByte(sChkItem1[i],1,8)) and (DelChar(sExecTime[i],':') >= C_STARTTM) or
                     (FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) = CopyByte(sChkItem1[i],1,8)) and (DelChar(sExecTime[i],':') <= C_ENDTM) then
                  begin
                     RowCount := RowCount + 1;

                     Cells[0, iCnt+1] := ConvertSDate(CopyByte(sChkItem1[i],1,8)) + ' ' + sExecTime[i];      // �����Ͻ�(YYYY-MM-DD HH24:MI)
                     Cells[1, iCnt+1] := sChkItem[i];                                                    // �����׸�

                     // [�輳]�� Ƚ���� ǥ�� @ 2012.06.01
                     if (in_Gubun = 7) then
                     begin
                        Cells[2, iCnt+1] := sCount[i];                                                    // ����Ƚ��

                        // [Hidden]
                        Cells[3, iCnt+1] := iVolume1[i];                                                  // ������
                        Cells[4, iCnt+1] := sExecTime[i];                                                 // �����ð�
                     end
                     else
                     begin
                        Cells[2, iCnt+1] := iVolume1[i];                                                  // ������

                        // [Hidden]
                        Cells[3, iCnt+1] := sCount[i];                                                    // ����Ƚ��
                        Cells[4, iCnt+1] := sExecTime[i];                                                 // �����ð�
                     end;

                     Inc(iCnt);
                  end;
               end;
            end;
         end;

         // ����
         QuickSortGrid(ugd_IoData, 2, ugd_IoData.RowCount, 0, True);


         ugd_IoData.SetColAlignment(0, taCenter     );
         ugd_IoData.SetColAlignment(1, taLeftJustify);
         ugd_IoData.SetColAlignment(2, taCenter     );

         ugd_IoData.Repaint;

         if (iCnt > 0) then
         begin
            // ��ȸ���� Display
            lb_IoStatus.Caption := IntToStr(iCnt) + '���� ��ȸ�Ǿ����ϴ�.';
            ugd_IoData.RowCount := ugd_IoData.RowCount - 1;
         end
         else
            lb_IoStatus.Caption := '����� �ð������� I/O������ �����ϴ�.';

         // Free
         mdIochkt.Free;

      finally
         Screen.Cursor := crDefault;
      end;
   end
   else if (in_Gubun = 9) then
   //----------------------------------------------------
   // Hourly Urine Output(HUO) ���� ��������
   //----------------------------------------------------
   begin
      // Grid �׸�� ����
      ugd_IoData.Title := '�����Ͻ�|Ư�̻���|�뷮';


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

            lb_IoStatus.Caption := '�ش������� HUO������ �����ϴ�.';

            Exit;
         end;



         //----------------------------------------------------
         // 2.3. Display Data
         //----------------------------------------------------
         for i:= 0 to RowNo - 1 do
         begin

            // ��û�� HUO �׸� List-Up
            with ugd_IoData, mdHuockt do
            begin
               // �ش� ������ڿ� ��ȿ�� HUO ����ġ�� ��ȸ
               if (FormatDateTime('yyyymmdd',dtp_RgtDate.Date)     = CopyByte(sChkTime[i],1,8)) and (CopyByte(sChkTime[i],9,4) >= C_STARTTM) or
                  (FormatDateTime('yyyymmdd',dtp_RgtDate.Date + 1) = CopyByte(sChkTime[i],1,8)) and (CopyByte(sChkTime[i],9,4) <= C_ENDTM) then
               begin
                  RowCount := RowCount + 1;

                  Cells[0, iCnt+1] := ConvertSDate(CopyByte(sChkTime[i],1,8)) + ' ' + CopyByte(sChkTime[i],9,2) + ':' + CopyByte(sChkTime[i],11,2);
                                                                                                      // �����Ͻ� YYYY-MM-DD HH24:MI)
                  Cells[1, iCnt+1] := sRemark[i];                                                     // Ư�̻���
                  Cells[2, iCnt+1] := sUrineCC[i];                                                    // ������

                  // [Hidden]
                  Cells[3, iCnt+1] := sChkTime[i];                                                    // �����Ͻ� (YYYYMMDDHH24MI)
                  Cells[4, iCnt+1] := sUrineCC[i];                                                    // ������

                  Inc(iCnt);
               end;
            end;
         end;


         // ����
         QuickSortGrid(ugd_IoData, 2, ugd_IoData.RowCount, 0, True);

         ugd_IoData.SetColAlignment(0, taCenter     );
         ugd_IoData.SetColAlignment(1, taLeftJustify);
         ugd_IoData.SetColAlignment(2, taCenter     );

         ugd_IoData.Repaint;

         if (iCnt > 0) then
         begin
            // ��ȸ���� Display
            lb_IoStatus.Caption := IntToStr(iCnt) + '���� ��ȸ�Ǿ����ϴ�.';
            ugd_IoData.RowCount := ugd_IoData.RowCount - 1;
         end
         else
            lb_IoStatus.Caption := '����� �ð������� HUO������ �����ϴ�.';


         // Free
         mdHuockt.Free;


      finally
         Screen.Cursor := crDefault;
      end;


   end;

end;




//------------------------------------------------------------------------------
// [PopUp] I/O �����׸� ���� ��ȸ Mouse Button Event Handler
//  - SU ��ȣ����� ���� (GR_73W ��������û)
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
   // ��ǥ��ġ ���
   //---------------------------------------------------
   u_Rectangle  := asg_IcuMon.CellRect(gNowCol, gNowRow);


   //---------------------------------------------------
   // Panel ��ġ(Left) ����
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
   // Panel ��ġ(Top) ����
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
   // [I/O �׸�] ������ �� �׸�� Set
   //---------------------------------------------------
   if (sl_CodeList.Strings[gNowRow-1]    = 'SD02') or
       ((sl_CodeList.Strings[gNowRow-1] >= 'SD26') and
        (sl_CodeList.Strings[gNowRow-1] <= 'SD35')) then
   begin
      in_IoFlag := C_GYUNGGOO;
      apn_IoChk.Caption.Text := 'I/O ��������(�汸) ��ȸ';
   end
   else if (sl_CodeList.Strings[gNowRow-1]   = 'SD03') or
           (sl_CodeList.Strings[gNowRow-1]   = 'SD04') or
           ((sl_CodeList.Strings[gNowRow-1] >= 'SD06') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SD15')) then
   begin
      in_IoFlag := C_BIGYUNGGOO;
      apn_IoChk.Caption.Text := 'I/O ��������(��汸) ��ȸ';
   end
   else if (sl_CodeList.Strings[gNowRow-1] >= 'SD16') and
           (sl_CodeList.Strings[gNowRow-1] <= 'SD20') then
   begin
      in_IoFlag := C_HYULEK;
      apn_IoChk.Caption.Text := 'I/O ��������(����) ��ȸ';
   end
   else if ((sl_CodeList.Strings[gNowRow-1] >= 'SF02') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SF03')) or
           ((sl_CodeList.Strings[gNowRow-1] >= 'SF16') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SF18'))
            then
   begin
      in_IoFlag := C_BAENYO;
      apn_IoChk.Caption.Text := 'I/O ��������(�财) ��ȸ';
   end
   else if (sl_CodeList.Strings[gNowRow-1]   = 'SF25') or
           ((sl_CodeList.Strings[gNowRow-1] >= 'SF19') and
            (sl_CodeList.Strings[gNowRow-1] <= 'SF22'))then
   begin
      in_IoFlag := C_BAESUL;
      apn_IoChk.Caption.Text := 'I/O ��������(�輳) ��ȸ';
   end
   else if (sl_CodeList.Strings[gNowRow-1] = 'SF13') then
   begin
      in_IoFlag := C_HUO;
      apn_IoChk.Caption.Text := 'I/O ��������(HUO) ��ȸ';
   end
   else if (sl_CodeList.Strings[gNowRow-1] = 'SF14') then
   begin
      in_IoFlag := C_BAENONG;
      apn_IoChk.Caption.Text := 'I/O ��������(���/����) ��ȸ';
   end
   else if (sl_CodeList.Strings[gNowRow-1] = 'SF15') then
   begin
      in_IoFlag := C_GOOTO;
      apn_IoChk.Caption.Text := 'I/O ��������(����) ��ȸ';
   end;



   //---------------------------------------------------
   // Panel �����ֱ�
   //---------------------------------------------------
   apn_IoChk.Visible := True;



   //---------------------------------------------------
   // I/O ���к� �������� ��ȸ
   //---------------------------------------------------
   GetIoCheck(in_IoFlag);


end;


//------------------------------------------------
// I/O �������� ��ȸ Panel �ݱ�
//------------------------------------------------
procedure TMDN110FM.bbt_IoCloseClick(Sender: TObject);
begin
   apn_IoChk.Visible := False;
end;


//------------------------------------------------
// I/O �������� ������ Cell�� ����
//------------------------------------------------
procedure TMDN110FM.ugd_IoDataDblClick(Sender: TObject);
begin
   if ugd_IoData.Cells[0, ugd_IoData.Row] <> '' then
   begin
      // ������(cc) ����
      asg_IcuMon.Cells[gNowCol, gNowRow]   := ugd_IoData.Cells[2, ugd_IoData.Row];

      // �Էµ� I/O���� [�ӽ� Data Grid]�� ����.
      asg_IcuMonEditingDone(Sender);
   end;

   // Panel �ݱ�
   bbt_IoCloseClick(Sender);

end;



procedure TMDN110FM.ugd_IoDataDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 5);
end;

// ICU Note �Ⱓ�� ��ȸ -2013.05.15 smpark
procedure TMDN110FM.bbt_NoteSearchClick(Sender: TObject);
var
   items2  : HmdIcutot;
   iRowCnt : Integer;    // the number of rows searched
   i       : Integer;    // Loop Index
   sPatNo, sAdmDate, sFromActDate, sToActDate, sSetType : String;
begin


   asd_NoteSearch.Clear;
   asd_NoteSearch.RowCount := 2;

   asd_NoteSearch.Cells[0,0] := '�������';
   asd_NoteSearch.Cells[1,0] := '�Ѽ��뷮';
   asd_NoteSearch.Cells[2,0] := '�ѹ輳��';
   asd_NoteSearch.Cells[3,0] := '�뺯Ƚ��';

   //------------------------------------------------
   // 1. ��ȸ
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
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         Exit;
      end;

      asd_NoteSearch.RowCount := iRowCnt+1;

      //----------------------------------------------------
      // 1-3. Display Data
      //----------------------------------------------------
      for i := 0 to iRowCnt - 1 do
      begin
         asd_NoteSearch.Cells[0, i+1] := ConvertSDate(items2.sActdate[i]);    // �������
         asd_NoteSearch.Cells[1, i+1] := items2.sIntake[i];     // �Ѽ��뷮
         asd_NoteSearch.Cells[2, i+1] := items2.sOutput[i];     // �ѹ輳��
         asd_NoteSearch.Cells[3, i+1] := items2.sOutputcnt[i];  // �뺯Ƚ��
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

// ���κ��� ICU Note �Ⱓ�� ��ȸ �� ���� -2013.05.16 smpark
procedure TMDN110FM.SetNoteSearch;
var
   systime : TDateTime;
begin
   //---------------------------------------------------------------
   // 1. �ʱ�ȭ
   //---------------------------------------------------------------
   GetSysDate(systime);


   //---------------------------------------------------------------
   // 1-1. �ۼ����� �ʱ�ȭ
   //---------------------------------------------------------------
   if  (
       (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
       (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
       ) then
   begin
      // ICU Note �Ⱓ�� ��ȸ -2013.05.15 smpark
      dtp_Fromdate.Date := systime - 6;
      dtp_Todate.Date   := systime;

      // CRRT ��ȣ��� -2013.08.23 smpark
      dtb_Crrt.Date     := systime;
   end
   else if (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
           (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
   begin
      // ICU Note �Ⱓ�� ��ȸ -2013.05.15 smpark
      dtp_Fromdate.Date := systime - 7;
      dtp_Todate.Date   := systime - 1;

      // CRRT ��ȣ��� -2013.08.23 smpark
      dtb_Crrt.Date     := systime - 1;
   end;

   bbt_ShowNoteClick(nil);

end;


procedure TMDN110FM.bbt_ShowNoteSearchClick(Sender: TObject);
begin
   // ���κ��� ICU Note �Ⱓ�� ��ȸ -2013.05.15 smpark
   if G_Locate = 'GR' then
   begin
      apn_NoteSearch.Top  := 92;
      apn_NoteSearch.Left := 690;
      apn_NoteSearch.Visible := True;

      bbt_NoteSearchClick(sender);

   end;
end;

//2013.06.05 khs ���θ� ��ȣ��� ��ư �߰�(���� ��ȯ�ڽ�1 �̽ž� ��û)
procedure TMDN110FM.bbt_NurseWriteClick(Sender: TObject);
var
   FForm : TForm;
begin
   // ��ȣ��� ȣ��
   FForm := BplFormCreate('MDN420F1');

   SetBplStrProp('MDN420F1','propFromForm'   , 'MDN110FM');
   SetBplStrProp('MDN420F1','propFromWardno' , P_WardNo  );
   SetBplStrProp('MDN420F1','propFromPatno'  , P_PatNo   );

   FForm.ShowModal;
end;

//2013.06.18 khs �Ż��ƴ��忡�� ������ڿ� ���±Ⱓ ���ؼ� �������� ���
//**********************************************************************************
//*****************************   �������� ����   ********************************
//������� : 2013-05-23
//�������� : 2013-06-14
//���±Ⱓ : 38(��) + 2(��)
//�����Ⱓ = �������� - ������� : 3(��) + 1(1��) = 2013-06-14 - 2013-05-23 = [22��]
//�������� = ���±Ⱓ + �����Ⱓ : 41 + 3 = (38 + 2) + (3 + 1) [�ֿ� �� ��]
//**********************************************************************************
procedure TMDN110FM.GetNbabyBorndate();
var
   RowNo, i : Integer;
   sType1, sType2, sType3, sType4 : String;
   sFstWks, sFstDay, sBornDate, sRgtDate : String;
begin
   // �ʱ�ȭ
   lb_DgpWks.Caption   := '';
   lb_DgpWks.Hint      := '';

   sType1 := P_PatNo;
   sType2 := DelChar(P_AdmDate,'-'); // P_AdmDate; yyyy-mm-dd �����͸� '-'������. -2014.11.06 smpark
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
      lb_DgpWks.Hint      := '����Ͻ�: ' + ConvertSDate(mdNbabyt.sBorndate[0]);

      // �������� ������� ���� assign
      sFstWks   := mdNbabyt.sAge[0];
      sFstDay   := mdNbabyt.sAge2[0];
      sBornDate := mdNbabyt.sBorndate[0];
      sRgtDate  := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);

      //------------------------------------------------------------------------
      // ��������(wks) ������� CalcNowDay ȣ��
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
         lb_NowWks.Caption  := '�Ż�������������, �Ż��ƴ��� ��������';
      end;

      mdNbabyt.Free;
   finally
      Screen.Cursor := crDefault;
   end;

end;

procedure TMDN110FM.asg_IcuMonExit(Sender: TObject);
begin

   // -------------------------------------------------------------------------
   // [����] SETCODE : MF24(�뺯(g)) 0�Ǵ� 5�̻� �Էµ� �� �ֵ��� ��
   // 2013.08.05 smpark
   // -------------------------------------------------------------------------
   if (G_Locate = 'GR') and
      (sl_CodeList.Strings[asg_IcuMon.Row-1] = 'MF24') and
      (asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row] <> '')  and
      (asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row] <> '0') and
      (StrToInt(asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row]) <  5) then
   begin

      showmessage('�뺯�� ��(g) �Է½� 0�Ǵ� 5�̻� �Է� �����մϴ�.');
      asg_IcuMon.Cells[asg_IcuMon.col,asg_IcuMon.Row] := '';

      // ���� Data�� �׸񺰷� Client Data-Set(cds_SaveItem)�� ���� (���濩�δ� 'N' : Black)
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
   // [����] SETCODE : MF24(�뺯(g)) 0�Ǵ� 5�̻� �Էµ� �� �ֵ��� ��
   // 2013.08.05 smpark
   // -------------------------------------------------------------------------
   if (G_Locate = 'GR') and
      (sl_CodeList.Strings[OldRow-1] = 'MF24') and
      (asg_IcuMon.Cells[OldCol,OldRow] <> '')  and
      (asg_IcuMon.Cells[OldCol,OldRow] <> '0') and
      (StrToInt(asg_IcuMon.Cells[OldCol,OldRow]) <  5) then
   begin

      showmessage('�뺯�� ��(g) �Է½� 0�Ǵ� 5�̻� �Է� �����մϴ�.');
      asg_IcuMon.Cells[OldCol,OldRow] := '';

      gMF24Row := OldRow;
      gMF24Col := OldCol;

      // ���� Data�� �׸񺰷� Client Data-Set(cds_SaveItem)�� ���� (���濩�δ� 'N' : Black)
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

   // Day, Evening, Night ����
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
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   if (Trim(ed_CrrtHour.Text) = '') or (Trim(ed_CrrtMin.Text) = '') then
   begin
      showmessage('CRRT ��ȣ��� �ۼ� �ð��� �Է��ϼ���!');
      Exit;
   end;

   if LengthByte(Trim(ed_CrrtHour.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '�ۼ��ð��� ���ڸ��� �Է��� �ֽʽÿ�.',
                 'CRRT ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if LengthByte(Trim(ed_CrrtMin.Text)) <> 2 then
   begin
      MessageBox(Self.Handle,
                 '�ۼ����� ���ڸ��� �Է��� �ֽʽÿ�.',
                 'CRRT ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   if StrToint(ed_CrrtHour.Text) > 23 then
   begin
      MessageBox(Self.Handle,
                 '�ð��� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.',
                 'CRRT ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      ed_Hour.Text := '';
      Exit;
   end;

   if StrToint(ed_CrrtMin.Text) > 59 then
   begin
      MessageBox(Self.Handle,
                 '���� �ٽ� �Է��Ͻñ� �ٶ��ϴ�.',
                 'CRRT ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      ed_Min.Text := '';
      Exit;
   end;


   // CRRT ó�� üũ -2013.09.02 smpark
   gCrrtDate := '';
   gCrrtDate := CrrtCheck(P_PatNo,FormatDateTime('yyyymmdd',dtb_Crrt.Date));

   if gCrrtDate = '' then
   begin
      MessageBox(Self.Handle,
                 'CRRT óġ�ڵ� ó���� ���� ȯ���Դϴ�. Ȯ�� �ٶ��ϴ�.',
                 'CRRT ������ Ȯ��',
                 MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // ��ȣ��� ����
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

         stb_message.Panels[0].Text := '���������� [����]�Ǿ����ϴ�.';

         // ��ȣ���
         me_CrrtNrrec.Text := '[CRRT ��ȣ���]' + #13#10 +
                              '(1) BLOOD FLOW(ML/MIN) : '+ sBldflow  + #13#10 +
                              '(2) REPLACEMENT(ML/HR) : '+ sReplacet + #13#10 +
                              '    REPLACEMENT MIX(meq/5L): '+ sReplamix + #13#10 +
                              '(3) DIALYSATE(ML/HR)   : '+ sDialysat + #13#10 +
                              '(4) PBP(ML/HR)         : '+ sPbp      + #13#10 +
                              '(5) REMOVAL(ML/HR)     : '+ sRemoval  + #13#10 +
                              '(6) ANTICOAGULANT:FUTHAN(ML/HR) : '+ sAntifutn + #13#10 +
                              '                  �뷮          : '+ sFuthandw + #13#10 +
                              '                  HEPARIN(ML/HR): '+ sAntihepa + #13#10 +
                              '                  �뷮          : '+ sHeparndw + #13#10;


         iCrrt.Free;

         // CRRT ��ȣ��� ���� ��ȣ��� ���� -2013.08.27 smpark
         if Application.MessageBox(Pchar('���� ������ ��ȣ������� ���� �Ͻðڽ��ϱ�?' + #13#10 + #13#10 +
                                         ' '),
                                   '������ȣ��� ������ Ȯ��',MB_OKCANCEL) = IDOK then
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
         stb_message.Panels[0].Text := '���� �� ������ �����ϴ�.';
         iCrrt.Free;

         // CRRT ��ȣ��� ������� ��ȸ
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

      stb_message.Panels[0].Text := '���������� [��ȸ]�Ǿ����ϴ�.';

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

   // CRRT ��ȣ��� ������� ��ȸ
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
   // 1. �ʱ�ȭ
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
         stb_message.Panels[0].Text := '���� �� ������ �����ϴ�.';
         iCrrt.Free;

         // CRRT ��ȣ��� ������� ��ȸ
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

      stb_message.Panels[0].Text := '���������� [��ȸ]�Ǿ����ϴ�.';

      iCrrt.Free;

   finally
      Screen.Cursor := crDefault;
   end;

end;

// CRRT ��ȣ��� ������� ��ȸ
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
         stb_message.Panels[0].Text := '���� �� ������ �����ϴ�.';
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

      stb_message.Panels[0].Text := '���������� [��ȸ]�Ǿ����ϴ�.';

      iCrrt.Free;

   finally
      Screen.Cursor := crDefault;
   end;


end;

// CRRT ��ȣ��� ���� ��ȣ��� ����
procedure TMDN110FM.CrrtNrrecSave;
var
   RowNo, i, j  : Integer;
   iCrect       : HmdIcutot;
   sType1       : String;
   sIcuNoteCd   : String;   // NICU�� ICU ��Ʈ �׸�Code ������ ���� flag, 2011.10.31 LSH
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;


   Screen.Cursor := crHourglass;

   try
      iCrect := HmdIcutot.Create;

      //---------------------------------------------------
      // Set Parameter Value : ������ȣ��� ����
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

         // [EMR����] ��ȣ��� �ڵ��߻� ����(NEW EMR) -2016.07.18 smpark
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

      stb_Message.Panels[0].Text := '������ȣ��Ͽ� ����Ǿ����ϴ�.';


   finally
      screen.Cursor := crDefault;
   end;


end;


procedure TMDN110FM.dtb_CrrtChange(Sender: TObject);
begin
   lb_CrrtTime.Caption := '';
   ed_CrrtHour.Text := '';
   ed_CrrtMin.Text  := '';

   // CRRT ��ȣ��� ������� ��ȸ
   CrrtnMaxData;
end;

// CRRT ó�� üũ -2013.09.02 smpark
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
//��ü������ ����� �Է�ȭ�� ȣ�� 2015.02.16 yoon
procedure TMDN110FM.sbt_PrinterClick(Sender: TObject);
var
   FForm : TForm;
begin

   //����� ��� -> �Է�ȭ�� ȣ��� ���� 2015.02.16 yoon
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

// [EMR����] 2016.04.12 ȫâ�� �߰���(������).
procedure TMDN110FM.bt_printClick(Sender: TObject);
var
   rc         : Integer;
   wk_o_tpsvc : TTpSvc;
   sPageText  : String;
begin
   // [EMR����] 2016-04-04 ������ , �Կ�ȯ�� �⺻���� Load �߰�
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


