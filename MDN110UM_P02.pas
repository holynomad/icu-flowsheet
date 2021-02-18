{===============================================================================
   Program ID    : MDN110UM_P02
   Program Name  : ICU ���� ��ȣ����� ��¾��(A4)
   Program Desc. : �纻�߱� �� �Ϲ������� ��¿�

   Author : Lee, Se-Ha
   Date   : 2011.09.16
===============================================================================}
unit MDN110UM_P02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  Qrctrls, QuickRpt, ExtCtrls, QrTee, ComCtrls, StdCtrls, Grids, BaseGrid, 
  AdvGrid, Variants, VclTee.TeEngine, VclTee.Series, VclTee.TeeProcs, 
  VclTee.Chart, VclTee.DBChart, VclTee.TeeGDIPlus;

type
  TMDN110FM_P02 = class(TForm)
    qr_Icu_A4: TQuickRep;
    QRBand2: TQRBand;
    qrlb_Val0: TQRLabel;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    qrlb_Val2: TQRLabel;
    qrlb_Val3: TQRLabel;
    qrlb_Val4: TQRLabel;
    qrlb_Val5: TQRLabel;
    qrlb_Val6: TQRLabel;
    qrlb_Val7: TQRLabel;
    qrlb_Val8: TQRLabel;
    qrlb_Val9: TQRLabel;
    qrlb_Val10: TQRLabel;
    qrlb_Val11: TQRLabel;
    qrlb_Val12: TQRLabel;
    qrlb_Val13: TQRLabel;
    qrlb_Val14: TQRLabel;
    qrlb_Val15: TQRLabel;
    qrlb_Val16: TQRLabel;
    qrlb_Val17: TQRLabel;
    qrlb_Val18: TQRLabel;
    qrlb_Val19: TQRLabel;
    qrlb_Val20: TQRLabel;
    qrlb_Val21: TQRLabel;
    qrlb_Val22: TQRLabel;
    QRShape1: TQRShape;
    QRSysData22: TQRSysData;
    TitleBand1: TQRBand;
    qchart_Icu: TQRChart;
    QRDBChart1: TQRDBChart;
    Series3: TPointSeries;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Series7: TPointSeries;
    Series6: TPointSeries;
    Series8: TPointSeries;
    qrlb_ReportName: TQRLabel;
    qrlb_Title4: TQRLabel;
    qrlb_Title1: TQRLabel;
    qrlb_Title3: TQRLabel;
    qrlb_PatInfo: TQRLabel;
    qrlb_ActDate: TQRLabel;
    qrlb_PatName: TQRLabel;
    qrlb_Title5: TQRLabel;
    qrlb_SexAge: TQRLabel;
    QRLabel28: TQRLabel;
    qrlb_Resno: TQRLabel;
    qrlb_LocateNm: TQRLabel;
    qrlb_Val1: TQRLabel;
    QRShape6: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    qrlb_Val23: TQRLabel;
    qrlb_Val24: TQRLabel;
    QRShape30: TQRShape;
    ColumnHeaderBand1: TQRBand;
    qrlb_Head0: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    qrlb_Head2: TQRLabel;
    qrlb_Head3: TQRLabel;
    qrlb_Head4: TQRLabel;
    qrlb_Head5: TQRLabel;
    qrlb_Head6: TQRLabel;
    qrlb_Head7: TQRLabel;
    qrlb_Head8: TQRLabel;
    qrlb_Head9: TQRLabel;
    qrlb_Head10: TQRLabel;
    qrlb_Head11: TQRLabel;
    qrlb_Head12: TQRLabel;
    qrlb_Head13: TQRLabel;
    qrlb_Head14: TQRLabel;
    qrlb_Head15: TQRLabel;
    qrlb_Head16: TQRLabel;
    qrlb_Head17: TQRLabel;
    qrlb_Head18: TQRLabel;
    qrlb_Head19: TQRLabel;
    qrlb_Head20: TQRLabel;
    qrlb_Head21: TQRLabel;
    qrlb_Head22: TQRLabel;
    qrlb_Head1: TQRLabel;
    QRShape26: TQRShape;
    qrlb_Head23: TQRLabel;
    qrlb_Head24: TQRLabel;
    QRShape33: TQRShape;
    QRShape32: TQRShape;
    QRSysData7: TQRSysData;
    QRLabel145: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    Series2: TLineSeries;
    Series1: TLineSeries;
    qrlb_PrtIdx: TQRLabel;
    qrlb_PatInfo2: TQRLabel;
    qrlb_ActDate2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    qrlb_InDay: TQRLabel;
    qrlb_InEvn: TQRLabel;
    qrlb_InNgt: TQRLabel;
    qrlb_InTot: TQRLabel;
    qrlb_OutDay: TQRLabel;
    qrlb_OutEvn: TQRLabel;
    qrlb_OutNgt: TQRLabel;
    qrlb_OutTot: TQRLabel;
    qrlb_SumDay: TQRLabel;
    qrlb_SumEvn: TQRLabel;
    qrlb_SumNgt: TQRLabel;
    qrlb_SumTot: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape25: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRShape27: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    qrlb_NicuTitle_Wgt: TQRLabel;
    qrlb_NicuWgt: TQRLabel;
    qrlb_NicuTitle_HSize: TQRLabel;
    qrlb_NicuHSize: TQRLabel;
    qrlb_NicuTitle_BSize: TQRLabel;
    qrlb_NicuBSize: TQRLabel;
    qrlb_ReportNo: TQRLabel;
    qchart_Su: TQRChart;
    QRDBChart2: TQRDBChart;
    PointSeries4: TPointSeries;
    PointSeries6: TPointSeries;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    PointSeries1: TPointSeries;
    PointSeries2: TPointSeries;
    qrlb_Title6: TQRLabel;
    qrlb_Birtdate: TQRLabel;
    qrlb_Wardno: TQRLabel;
    qrlb_Meddept: TQRLabel;

    procedure qr_Icu_A4BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure qr_Icu_A4NeedData(Sender: TObject; var MoreData: Boolean);

  private
    va_TimeHeader : array[0..24]   of Variant;  // Page Header Variables
    va_Val        : array[0..5000] of Variant;  // Page Value  Variables (R:58 by C:25)


    { Private declarations }
    srcChart     : TChart;          // ����� Chart Reference
    srcCodeList  : TStringList;     // ��½� ������ ����͸� �׸� Reference
    srcTimeList  : TStringList;     // ��½� ������ �����ð� �׸� Reference
    srcPrintGrid : TAdvStringGrid;  // ��´�� Grid  (Mainform�� asg_IcuMon, Subform�� asg_Print), 2011.07.15 LSH
    srcPrtIdx    : String;          // ��¾�� Index (Mainform�� 1, Subform�� 2, 3..)            , 2011.07.15 LSH
    srcNicuFlag  : String;          // ��¾�� ����  (NICU�� ����), 2011.11.01 LSH


    iCurRowCnt, iCurColCnt, iTotRowCnt, iTotColCnt, iTotCnt  : Longint;

  public
    { Public declarations }

  published
    property propSourceChart : TChart         write srcChart;
    property propCodeList    : TStringList    write srcCodeList;
    property propTimeList    : TStringList    write srcTimeList;
    property propPrintGrid   : TAdvStringGrid write srcPrintGrid;                      // 2011.07.15 LSH
    property propPrtIdx      : String         read  srcPrtIdx  write srcPrtIdx;        // 2011.07.15 LSH
    property propNicuFlag    : String         write srcNicuFlag;                       // 2011.11.01 LSH

  end;


var
  MDN110FM_P02: TMDN110FM_P02;


implementation

{$R *.DFM}
uses
   VarCom, HisUtil, CComFunc, MComFunc;



procedure TMDN110FM_P02.qr_Icu_A4BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
   iRowCnt, iColCnt,  i, j : integer;
   ActDate    : TDateTimePicker;  // ��ȸ��������
   PrintGrid  : TAdvStringGrid;   // ����� Main Form Grid
   IoSumGrid  : TAdvStringGrid;   // ����� I/O Sum Grid
   PrintName  : String;
   Now_qchart : TQRChart;
begin

   // ��°��� ���� Row/Col ���� �ʱ�ȭ
   iCurRowCnt := 0;
   iCurColCnt := 0;


   //---------------------------------------------------------
   // 1-1. Set Header Information "Patient"
   //---------------------------------------------------------
   qrlb_LocateNm.Caption := LocateTitle(G_LOCATE);   // ������



   // ������� ��������
   ActDate := (GetComp('MDN110FM', 'dtp_RgtDate') as TDateTimePicker);


   // ������� �� ȯ������ Set
   qrlb_ActDate.Caption   := FormatDateTime('YYYY-MM-DD', ActDate.Date) + ' 06:01 ~ ' + FormatDateTime('YYYY-MM-DD', ActDate.Date + 1) + ' 06:00'; // ������� (���)
   qrlb_ActDate2.Caption  := FormatDateTime('YYYY-MM-DD', ActDate.Date) + ' 06:01 ~ ' + FormatDateTime('YYYY-MM-DD', ActDate.Date + 1) + ' 06:00'; // ������� (�ϴ�)

   qrlb_PatInfo.Caption   := (GetComp('MDN110FM', 'lb_PatInfo'  ) as TLabel).Caption;  // ȯ������ (���)
   qrlb_PatInfo2.Caption  := (GetComp('MDN110FM', 'lb_PatInfo'  ) as TLabel).Caption;  // ȯ������ (�ϴ�)


   // Set User Information
   //qrlb_UserInfo.Caption := md_UserNm + '(' + md_UserId + ')'; // + G_USERIP + ']';


   // Set Print Index, 2011.07.15 LSH
   qrlb_PrtIdx.Caption   := srcPrtIdx;


   // ------------------------------------------------------------------------
   // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark
   // 2015�� 8�� 11�� open
   // ------------------------------------------------------------------------
   if FormatDateTime('YYYYMMDD', ActDate.Date) >= '20150811' then
   begin
      qrlb_Title6.Enabled   := True;
      qrlb_Birtdate.Enabled := True;
      qrlb_Meddept.Enabled  := True;
      qrlb_Wardno.Enabled   := True;


      // �������, �����, �������� �߰� -2015.08.03 smpark
      qrlb_Birtdate.Caption := (GetComp('MDN110FM', 'lb_Birtdate') as TLabel).Caption;
      qrlb_Meddept.Caption  := (GetComp('MDN110FM', 'lb_Meddept' ) as TLabel).Caption;
      qrlb_Wardno.Caption   := (GetComp('MDN110FM', 'lb_Wardno'  ) as TLabel).Caption;

   end
   else
   begin
      qrlb_Title3.Top  := 10;
      qrlb_PatInfo.Top := 10;
      qrlb_Title1.Top  := 23;
      qrlb_ActDate.Top := 23;

      qrlb_Birtdate.Caption := '';
      qrlb_Meddept.Caption  := '';
      qrlb_Wardno.Caption   := '';

      qrlb_Title6.Enabled   := False;
      qrlb_Birtdate.Enabled := False;
      qrlb_Meddept.Enabled  := False;
      qrlb_Wardno.Enabled   := False;
   end;



   //-------------------------------------------------------------------
   // ������� ����׸� �б�
   //  - NICU : ü��/����/���� �׸��߰�, 2012.01.30 LSH
   //  - SU   : I/O Sum ����, SU�� ��Ʈ�߰� @ 2012.04.24 LSH
   //-------------------------------------------------------------------
   if (srcNicuFlag = 'Y') then
   begin
      qrlb_ReportName.Caption    := '�Ż�����ȯ�ڽ� �����';
      qrlb_ReportName.Font.Size  := 14;

      qrlb_NicuTitle_Wgt.Left    := 233;
      qrlb_NicuTitle_HSize.Left  := 319;
      qrlb_NicuTitle_BSize.Left  := 406;

      qrlb_NicuWgt.Left          := 270;
      qrlb_NicuHSize.Left        := 358;
      qrlb_NicuBSize.Left        := 445;

      qrlb_NicuWgt.Caption       := (GetComp('MDN110FM', 'lb_Wgt'  ) as TLabel).Caption;  // NICU ü��
      qrlb_NicuHSize.Caption     := (GetComp('MDN110FM', 'lb_HSize') as TLabel).Caption;  // NICU ����
      qrlb_NicuBSize.Caption     := (GetComp('MDN110FM', 'lb_BSize') as TLabel).Caption;  // NICU ����

      qchart_Icu.Top             := 48;
      qchart_Icu.Left            := 0;
      qchart_Su.Top              := -2000;
      qchart_Su.Left             := -2000;

      // QRChart ����
      Now_qchart := qchart_Icu;

   end
   else if (srcNicuFlag = 'S') then
   begin
      qrlb_ReportName.Caption := '����������ġ��� ��ȣ�����';
      qrlb_ReportName.Font.Size  := 12;

      {
      qrlb_NicuTitle_Wgt.Left    := 3999;
      qrlb_NicuTitle_HSize.Left  := 3999;
      qrlb_NicuTitle_BSize.Left  := 3999;

      qrlb_NicuWgt.Left          := 3999;
      qrlb_NicuHSize.Left        := 3999;
      qrlb_NicuBSize.Left        := 3999;

      qrlb_NicuWgt.Caption       := '';
      qrlb_NicuHSize.Caption     := '';
      qrlb_NicuBSize.Caption     := '';
      }

      // SU ����� ü��-����-���� �߰�
      qrlb_NicuTitle_Wgt.Left    := 233;
      qrlb_NicuTitle_HSize.Left  := 319;
      qrlb_NicuTitle_BSize.Left  := 406;

      qrlb_NicuWgt.Left          := 270;
      qrlb_NicuHSize.Left        := 358;
      qrlb_NicuBSize.Left        := 445;

      qrlb_NicuTitle_Wgt.Caption   := '��ü�ߡ�    kg';
      qrlb_NicuTitle_HSize.Caption := '�����塽    cm';

      qrlb_NicuWgt.Caption       := (GetComp('MDN110FM', 'lb_Wgt'  ) as TLabel).Caption;  // SU ü��
      qrlb_NicuHSize.Caption     := (GetComp('MDN110FM', 'lb_Hgt'  ) as TLabel).Caption;  // SU ����
      qrlb_NicuBSize.Caption     := (GetComp('MDN110FM', 'lb_BSize') as TLabel).Caption;  // SU ����

      qchart_Icu.Top             := -2000;
      qchart_Icu.Left            := -2000;
      qchart_Su.Top              := 48;
      qchart_Su.Left             := 0;

      // QRChart ����
      Now_qchart := qchart_Su;

      // I/O Sum �׸� ����
      QRShape20.Top  := -2000;
      QRShape21.Top  := -2000;
      QRShape22.Top  := -2000;
      QRShape24.Top  := -2000;
      QRShape25.Top  := -2000;
      QRShape27.Top  := -2000;
      QRShape39.Top  := -2000;
      QRShape40.Top  := -2000;

      QRLabel1.Top   := -2000;
      QRLabel2.Top   := -2000;
      QRLabel3.Top   := -2000;
      QRLabel4.Top   := -2000;
      QRLabel5.Top   := -2000;
      QRLabel6.Top   := -2000;
      QRLabel7.Top   := -2000;
      QRLabel8.Top   := -2000;

      qrlb_InDay.Top := -2000;
      qrlb_InEvn.Top := -2000;
      qrlb_InNgt.Top := -2000;
      qrlb_InTot.Top := -2000;

      qrlb_OutDay.Top := -2000;
      qrlb_OutEvn.Top := -2000;
      qrlb_OutNgt.Top := -2000;
      qrlb_OutTot.Top := -2000;

      qrlb_SumDay.Top := -2000;
      qrlb_SumEvn.Top := -2000;
      qrlb_SumNgt.Top := -2000;
      qrlb_SumTot.Top := -2000;
   end
   else
   begin
      qrlb_ReportName.Caption    := '��ȯ�ڽ� ��ȣ�����';
      qrlb_ReportName.Font.Size  := 14;

      qrlb_NicuTitle_Wgt.Left    := 3999;
      qrlb_NicuTitle_HSize.Left  := 3999;
      qrlb_NicuTitle_BSize.Left  := 3999;

      qrlb_NicuWgt.Left          := 3999;
      qrlb_NicuHSize.Left        := 3999;
      qrlb_NicuBSize.Left        := 3999;

      qrlb_NicuWgt.Caption       := '';
      qrlb_NicuHSize.Caption     := '';
      qrlb_NicuBSize.Caption     := '';

      qchart_Icu.Top             := 48;
      qchart_Icu.Left            := 0;
      qchart_Su.Top              := -2000;
      qchart_Su.Left             := -2000;

      // QRChart ����
      Now_qchart := qchart_Icu;
   end;




   //---------------------------------------------------------
   // 1-2. Set Header Information "I/O Sum", 2011.08.22 LSH
   //---------------------------------------------------------
   IoSumGrid := (GetComp('MDN110FM', 'asg_IoSum') as TAdvStringGrid);

   qrlb_InDay.Caption  := IoSumGrid.Cells[1,1];
   qrlb_InEvn.Caption  := IoSumGrid.Cells[2,1];
   qrlb_InNgt.Caption  := IoSumGrid.Cells[3,1];
   qrlb_InTot.Caption  := IoSumGrid.Cells[4,1];

   qrlb_OutDay.Caption := IoSumGrid.Cells[1,2];
   qrlb_OutEvn.Caption := IoSumGrid.Cells[2,2];
   qrlb_OutNgt.Caption := IoSumGrid.Cells[3,2];
   qrlb_OutTot.Caption := IoSumGrid.Cells[4,2];

   qrlb_SumDay.Caption := IoSumGrid.Cells[1,3];
   qrlb_SumEvn.Caption := IoSumGrid.Cells[2,3];
   qrlb_SumNgt.Caption := IoSumGrid.Cells[3,3];
   qrlb_SumTot.Caption := IoSumGrid.Cells[4,3];


   //---------------------------------------------------------------------------
   // [NICU FlowSheet] �Ƿ������� ���Ĺ�ȣ �߰�, 2012.03.02 LSH
   //   - [����] SU ��ȣ����� ���Ĺ�ȣ �߰� (����_���ݿ�) @ 2012.05.24 LSH
   //   - [����] ICU ���� ��ȣ����� ���Ĺ�ȣ �߰� (11/1����) @ 2012.10.30 LSH
   //---------------------------------------------------------------------------
   // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark
   // 2015�� 8�� 11�� open
   // ------------------------------------------------------------------------
   if FormatDateTime('YYYYMMDD', ActDate.Date) >= '20150811' then
   begin
      if (srcNicuFlag = 'Y') then
         qrlb_ReportNo.Caption := GetReportNo('555','008','031')
      else if (srcNicuFlag = 'S') then
         qrlb_ReportNo.Caption := GetReportNo('555','008','037')
      else
      begin
         //--------------------------------------------------------------------
         // [ICU ���� ��ȣ�����] ���� �Ƿ������� ���Ĺ�ȣ �߰�, 2012.10.30 LSH
         // [�Ⱦ�] ���Ĺ�ȣ �߰� -2015.08.10 smpark
         //--------------------------------------------------------------------
         if (G_Locate = 'AA') or (G_Locate = 'GR') then
            qrlb_ReportNo.Caption := GetReportNo('555','008','032')
         else
            qrlb_ReportNo.Caption := '';
      end;
   end
   else
   begin
      if (srcNicuFlag = 'Y') then
         qrlb_ReportNo.Caption := GetReportNo('555','008','010')
      else if (srcNicuFlag = 'S') then
         qrlb_ReportNo.Caption := GetReportNo('555','008','013')
      else
      begin
         //--------------------------------------------------------------------
         // [ICU ���� ��ȣ�����] ���� �Ƿ������� ���Ĺ�ȣ �߰�, 2012.10.30 LSH
         //--------------------------------------------------------------------
         if (G_Locate = 'GR') then
            qrlb_ReportNo.Caption := GetReportNo('555','008','016')
         else
            qrlb_ReportNo.Caption := '';
      end;
   end;



   // qrlb_PatNo.Caption   := (GetComp('MDN110FM', 'pn_PatNo'  ) as TPanel).Caption;  // ȯ�ڹ�ȣ
   // qrlb_PatName.Caption := (GetComp('MDN110FM', 'lb_PatName') as TLabel ).Caption   ;  // ȯ�ڸ�
   // qrlb_SexAge.Caption  := (GetComp('MDN110FM', 'lb_SexAge' ) as TLabel).Caption;  // ����/����



   //---------------------------------------------------------
   // 2. Set Chart Data
   //   - Form�� Chart �����͸� Report�� Chart �����ͷ� ����
   //---------------------------------------------------------
   Now_qchart.Chart.BottomAxis.Automatic       := False ;
   Now_qchart.Chart.BottomAxis.Maximum         := EncodeTime(23, 59, 59, 59) + EncodeTime(6, 1, 0, 0);
   Now_qchart.Chart.BottomAxis.Minimum         := EncodeTime(0, 0, 0, 0)     + EncodeTime(6, 0, 0, 0);
   Now_qchart.Chart.BottomAxis.Increment       := DateTimeStep[dtOneHour];
   Now_qchart.Chart.BottomAxis.DateTimeFormat  := 'hh:nn';


   for i := 0 to srcChart.SeriesList.Count - 1 do
   begin
//      qchart_Icu.Chart.LeftAxis.Automatic := True;           <-- MIC �̸��� ��û���� ������ (0 ~ 250) Set, 2011.07.19 LSH
      Now_qchart.Chart.Series[i].Clear;
      Now_qchart.Chart.Series[i].AssignValues(srcChart.Series[i]);
   end;



   // ����� Target Grid ����, 2011.07.15 LSH
   PrintGrid := srcPrintGrid;



   //---------------------------------------------------------------------------
   // 3. Set Grid Data
   //   - Form�� AdvStringGrid �����͸� Report �����ͷ� ����
   //---------------------------------------------------------------------------
   with PrintGrid do
   begin

      if srcCodeList.Count = 0 then
         Close;



      // Row - Col ���� Assign <- asg_Mon ��½� ����
      {
      iRowCnt := srcCodeList.Count;
      iColCnt := srcTimeList.Count;
      }


      // ����� Target Grid�� Row / Col ���� ����.
      iRowCnt := RowCount-1;
      iColCnt := ColCount;



      // ����� Time-Column Count�� ������ 24���� ����.(format ����)
      if (iColCnt > 24) then
         iColCnt := 24
      else
         iColCnt := iColCnt;


      for i := 0 to iRowCnt do // - 1 do
      begin
         //---------------------------------------------------------------------
         // 2-1. ����͸� �׸� �� �ð� Row-Header
         //---------------------------------------------------------------------
         if (i = 0) then
         begin
            for j := 0 to iColCnt do
            begin
               va_TimeHeader[(iColCnt*i) + (i+j)] := VarArrayCreate([i, (iColCnt)], varVariant);
               va_TimeHeader[(iColCnt*i) + (i+j)] := Cells[j+1 ,i];
               //showmessage('Cells[' + inttostr(j+1) + ',' + inttostr(i) + '] ==> ' + va_Val[(iColCnt*i) + (i+j)]);
            end;
         end
         //---------------------------------------------------------------------
         // 2-2. ����͸� �󼼳��� Row-Detail (i = 1�϶�, NOTE������ ����)
         //---------------------------------------------------------------------
         else if (i > 1) then
         begin
            //------------------------------------------------------------------
            // 2-2-1. I/O �׸� ����
            //------------------------------------------------------------------
            if (i <= iRowCnt) and
            ((CopyByte(srcCodeList.Strings[i-1],2,1) = 'D') or    // ���뷮
             (CopyByte(srcCodeList.Strings[i-1],2,1) = 'E') or    // Total I/O
             (CopyByte(srcCodeList.Strings[i-1],2,1) = 'F')) then // �輳��
            begin
               for j := 0 to iColCnt + 1 do
               begin
                  //------------------------------------------------------------
                  // 2-2-1-1. Set �ڵ� �׸�� ����
                  //------------------------------------------------------------
                  if (j = 0) then
                  begin
                     va_Val[(iColCnt*(i-2)) + (i+j)-2] := VarArrayCreate([0, (iColCnt + 1)], varVariant);
                     va_Val[(iColCnt*(i-2)) + (i+j)-2] := Cells[j ,i];
                  end
                  //------------------------------------------------------------
                  // 2-2-1-2. �ð��뺰 Sum�׸� ����
                  //------------------------------------------------------------
                  else if (j > 1) then
                  begin
                     va_Val[(iColCnt*(i-2)) + (i+j-3)] := VarArrayCreate([0, (iColCnt + 1)], varVariant);
                     va_Val[(iColCnt*(i-2)) + (i+j-3)] := Cells[j ,i];
                  end;
               end;
            end
            else if (CopyByte(srcCodeList.Strings[i-1],2,1) = 'C') then
            //------------------------------------------------------------------
            // 2-2-2. �ǽ�-�Ű��,ȣ��� �׸�, 2011.08.22 LSH (�迬�� ��û)
            //------------------------------------------------------------------
            begin
               for j := 0 to iColCnt + 1 do
               begin
                  //------------------------------------------------------------
                  // 2-2-2-1. Set �ڵ� �׸�� ���� (��з��׸� ǥ��ǵ��� ����)
                  //------------------------------------------------------------
                  if (j = 0) then
                  begin
                     va_Val[(iColCnt*(i-2)) + (i+j)-2] := VarArrayCreate([0, (iColCnt + 1)], varVariant);
                     va_Val[(iColCnt*(i-2)) + (i+j)-2] := Cells[j, i] + '|' + Cells[j+1 ,i];
                  end
                  //------------------------------------------------------------
                  // 2-2-2-2. �ð��뺰
                  //------------------------------------------------------------
                  else if (j > 1) then
                  begin
                     va_Val[(iColCnt*(i-2)) + (i+j)-3] := VarArrayCreate([0, (iColCnt + 1)], varVariant);
                     va_Val[(iColCnt*(i-2)) + (i+j)-3] := Cells[j ,i];
                  end;
               end;
            end
            else
            //------------------------------------------------------------------
            // 2-2-3. HemoDynamic
            //------------------------------------------------------------------
            begin
               for j := 0 to iColCnt do
               begin
                  va_Val[(iColCnt*(i-2)) + (i+j)-2] := VarArrayCreate([0, (iColCnt)], varVariant);
                  va_Val[(iColCnt*(i-2)) + (i+j)-2] := Cells[j+1 ,i];
               end;
            end;
         end;
      end;
   end;




   //------------------------------------
   // 4. ��½� �����  Global ���� Set
   //------------------------------------
   iTotColCnt := iColCnt;   // Fixed Col 1�� ����(����͸� �׸��÷�)
   iTotRowCnt := iRowCnt-2; // Fixed Row 1�� ����(�ð��׸�)
   iTotCnt    := iRowCnt * iColCnt;



end;


procedure TMDN110FM_P02.qr_Icu_A4NeedData(Sender: TObject;
  var MoreData: Boolean);
var
   i, j : integer;
begin
   //--------------------------
   // 1. ���� �ʱ�ȭ
   //--------------------------
   for i := 0 to iTotColCnt do
   begin
     //(GetComp(Self, 'qrlb_Head' + inttostr(i)) as TQRLabel).Caption := '';  <-- �ּ�ó���ؾ�, ����Page Row-Header ����.
     (GetComp(Self, 'qrlb_Val'  + inttostr(i)) as TQRLabel).Caption := '';
   end;



   //--------------------------
   // 2. ��� ��ȿ�� check
   //--------------------------
   if (iCurRowCnt > iTotRowCnt) then
   begin
      MoreData := False;
      Exit;
   end;


   //--------------------------
   // 3. ���
   //--------------------------
   if (iCurRowCnt <= iTotRowCnt) then
   begin

      for j := 0 to iTotColCnt do
      begin
         //-------------------------------------------
         // 3-1. Header ������ ù��° Row-Value ���
         //-------------------------------------------
         if (iCurRowCnt = 0) then
         begin
            (GetComp(Self, 'qrlb_Head' + inttostr(j)) as TQRLabel).Caption := va_TimeHeader[(iTotColCnt * iCurRowCnt) + (iCurRowCnt+j)];
            (GetComp(Self, 'qrlb_Val'  + inttostr(j)) as TQRLabel).Caption := va_Val[(iTotColCnt * iCurRowCnt)  + (iCurRowCnt+j)];

            //(GetComp(Self, 'qrlb_HeaderNo') as TQRLabel).Caption := IntToStr(iCurRowCnt);

         end
         //-------------------------------------------
         // 3-2. �ι�° Row ~ ������ Row-Value ���
         //-------------------------------------------
         else if (iCurRowCnt > 0) then
         begin
            (GetComp(Self, 'qrlb_Val'  + inttostr(j)) as TQRLabel).Caption := va_Val[(iTotColCnt * (iCurRowCnt)) + (iCurRowCnt+j)];

            //(GetComp(Self, 'qrlb_DetailNo') as TQRLabel).Caption := IntToStr(iCurRowCnt);
         end;

         // ���� ��� Col-Count ����
         Inc(iCurColCnt);


         //-----------------------------------------------------------
         // 3-3. �÷� Index�� Total Col-Count�� �Ǹ�, Index���� Reset
         //-----------------------------------------------------------
         if (j > 0) and ((j mod iTotColCnt) = 0 ) then
         begin
            Inc(iCurRowCnt);
            iCurColCnt := 0;
         end;
      end;
   end;



   // �����ȿ��
   MoreData := True;



end;



procedure TMDN110FM_P02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDN110FM_P02.FormDestroy(Sender: TObject);
begin
   MDN110FM_P02 := Nil;
end;


initialization
   RegisterClass(TMDN110FM_P02);

finalization
   UnRegisterClass(TMDN110FM_P02);

end.

