{===============================================================================
   Program ID    : MDN110UP
   Program Name  : ICU ó��-Monitoring �׸� Mapping ����
   Program Desc. :

   Author : Lee, Se-Ha
   Date   : 2011.04.21
===============================================================================}
unit MDN110UP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  StdCtrls, ExtCtrls, Buttons, ComCtrls, Grids, UltraGrid, Variants;

type
  TMDN110FP = class(TForm)
    stb_Message: TStatusBar;
    pn_Monitor: TPanel;
    pc_Monitor: TPageControl;
    TabSheet1: TTabSheet;
    Bevel2: TBevel;
    TabSheet2: TTabSheet;
    Bevel3: TBevel;
    Panel2: TPanel;
    rbt_Moni: TRadioButton;
    ugd_Monitoring: TUltraGrid;
    Panel1: TPanel;
    bbt_Add: TBitBtn;
    bbt_Close: TBitBtn;
    ugd_Monitor: TUltraGrid;
    Panel3: TPanel;
    cbx_All: TCheckBox;
    sbt_MonitorCopyAll: TSpeedButton;
    sbt_MonitorCopy: TSpeedButton;
    bbt_FirstDate: TBitBtn;
    bbt_PrevDate: TBitBtn;
    ed_PreOrdDate: TEdit;
    bbt_NextDate: TBitBtn;
    bbt_LastDate: TBitBtn;
    ugd_DayList: TUltraGrid;
    Panel5: TPanel;
    dtp_RgtDate: TDateTimePicker;
    Panel31: TPanel;
    pn_PatNo: TPanel;
    pn_SexAge: TPanel;
    pn_PatName: TPanel;
    Bevel4: TBevel;
    bbt_Delete: TBitBtn;
    Bevel1: TBevel;
    lb_SetTypeName: TLabel;
    rbt_Intake: TRadioButton;
    dtp_OrdDate: TDateTimePicker;
    sbt_PrevDate: TSpeedButton;
    sbt_NextDate: TSpeedButton;
    ed_Input: TEdit;
    rbt_Output: TRadioButton;
    rbt_Hemo: TRadioButton;
    TabSheet3: TTabSheet;
    sbt_PrevDate2: TSpeedButton;
    dtp_AppDate: TDateTimePicker;
    sbt_NextDate2: TSpeedButton;
    rbt_O2: TRadioButton;
    rbt_Resp: TRadioButton;

    // Event Handler -----------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt_CloseClick(Sender: TObject);
    procedure ugd_MonitorDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure pc_MonitorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbt_MoniClick(Sender: TObject);
    procedure ugd_MonitorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cbx_AllClick(Sender: TObject);
    procedure ugd_MonitorMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure rbt_MedClick(Sender: TObject);
    procedure rbt_IntakeClick(Sender: TObject);
    procedure sbt_MonitorCopyClick(Sender: TObject);
    procedure sbt_MonitorCopyAllClick(Sender: TObject);
    procedure ugd_MonitoringDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure ed_InputEnter(Sender: TObject);
    procedure ed_InputExit(Sender: TObject);
    procedure ed_InputKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_InputKeyPress(Sender: TObject; var Key: Char);
    procedure ugd_MonitorDblClick(Sender: TObject);
    procedure bbt_AddClick(Sender: TObject);
    procedure bbt_FirstDateClick(Sender: TObject);
    procedure bbt_DeleteClick(Sender: TObject);
    procedure dtp_RgtDateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbt_PrevDateClick(Sender: TObject);
    procedure bbt_NextDateClick(Sender: TObject);
    procedure dtp_OrdDateCloseUp(Sender: TObject);
    procedure dtp_OrdDateChange(Sender: TObject);
    procedure ugd_MonitoringDblClick(Sender: TObject);
    procedure ugd_MonitoringKeyPress(Sender: TObject; var Key: Char);
    procedure dtp_AppDateChange(Sender: TObject);
    procedure dtp_AppDateCloseUp(Sender: TObject);
    procedure sbt_PrevDate2Click(Sender: TObject);
    procedure sbt_NextDate2Click(Sender: TObject);
    procedure ugd_MonitoringMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ugd_MonitorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    //--------------------------------------------------------------------------

  private
    { Private declarations }
    g_PrevPageIdx : String;   // Grid �ʱ�ȭ �������� ���� Page �ε���, 2011.08.04 LSH
    P_PatNo, P_PatName, P_AdmDate, P_SexAge, P_Settype : String;


    procedure SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);

    function GetFindProgress(sType1:String; inum : Integer):Boolean;

    // �ۼ��� ���ϳ��� ��ȸ
    procedure GetDayList;

    // Ư������ Interface ���� ���� ��ȸ
    Procedure GetMonitorDayInfo(sTemp:String);

    // ���ں� ó�泻�� ��ȸ (����/����)
    procedure GetMonitorDayList;

    // ���ں� ���볻�� ��ȸ, 2011.08.04 LSH
    procedure GetMappingDayList;

    // Grid �ʱ�ȭ (Title Row ����)
    procedure GridClear(in_Grid : TUltraGrid);


  public
    { Public declarations }
    dtp_FromDate : TDateTimePicker;

  published
    { Public declarations }
    property prop_PatNo    : String write P_PatNo;
    property prop_PatName  : String write P_PatName;
    property prop_AdmDate  : String write P_AdmDate;
    property prop_SexAge   : String write P_SexAge;
    property prop_Settype  : String write P_SetType;

  end;





var
  MDN110FP: TMDN110FP;



implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom, MDCLASS1, MComFunc, HisUtil;


{$R *.DFM}


//------------------------------------------------------------------------------
// Form onClose Event Handler
//
// Author :
// Date   :
//------------------------------------------------------------------------------
procedure TMDN110FP.FormClose(Sender: TObject; var Action: TCloseAction);
type
   TProcedureType = Procedure of Object;
var
   Procedure1  : TProcedureType;
   PProcedure1 : PMethod;
begin

   PProcedure1 := @TMethod(Procedure1);

   // Form �����, Mainȭ�� Refresh ����.
   if FindFormMethod('MDN110FM', 'Refresh', PProcedure1) = True then
      Procedure1;


   Action := Cafree;
end;



procedure TMDN110FP.FormDestroy(Sender: TObject);
begin
   MDN110FP := Nil;
end;

procedure TMDN110FP.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;


procedure TMDN110FP.ugd_MonitorDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 1);
   ReSizeGridRow(Sender as TUltraGrid,1,ARow);
end;


procedure TMDN110FP.pc_MonitorChange(Sender: TObject);
var
   i : Integer;
begin

   // ���� ����..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  //����ǥ�ü���
   end;


   // Grid �ʱ�ȭ
   if (pc_Monitor.ActivePageIndex = 0) or (pc_Monitor.ActivePageIndex = 1) then
   begin
      // ���� Tab�� [���ں� SET����Ϸ�]�϶���, ��� Grid Clear
      if g_PrevPageIdx = '2' then
      begin
         GridClear(ugd_Monitor);
         GridClear(ugd_Monitoring);
      end;

      // ������ Tab-Index�� Ȯ��.
      g_PrevPageIdx := IntToStr(pc_Monitor.ActivePageIndex);

   end
   else
   begin
      GridClear(ugd_Monitor);
      GridClear(ugd_Monitoring);

      // ������ Tab-Index�� Ȯ��.
      g_PrevPageIdx := IntToStr(pc_Monitor.ActivePageIndex);
   end;


   // ��ü���� check-box �ʱ�ȭ
   cbx_All.Checked := False;

   // ���� Message-Bar �ʱ�ȭ
   stb_Message.Panels[0].Text := '';


   //-------------------------------------------------
   // [����͸� Mapping Set�׸�] Tab ���ý�,
   //-------------------------------------------------
   if pc_Monitor.ActivePageIndex = 1 then
   begin
      bbt_Add.Enabled    := True;
      bbt_Add.Caption    := '�׸�����';
      pn_Monitor.Enabled := True;

      // ������ ���к� [����͸� Mapping Set �׸�] ��ȸ
      rbt_IntakeClick(Sender);

   end
   else if pc_Monitor.ActivePageIndex = 0 then
   //-------------------------------------------------
   // [���ں� ó�泻��] Tab ���ý�,
   //-------------------------------------------------
   begin
      bbt_Add.Enabled    := True;
      bbt_Add.Caption    := '�׸�����';
      pn_Monitor.Enabled := True;

      dtp_OrdDate.Date   := Date;

      // ���ں� ó����ȸ (����/������)
      GetMonitorDayList;
   end
   else if pc_Monitor.ActivePageIndex = 2 then
   //-------------------------------------------------
   // [���ں� SET����Ϸ�] Tab ���ý�,
   //-------------------------------------------------
   begin
      bbt_Add.Enabled    := True;
      bbt_Add.Caption    := 'SET����';
      pn_Monitor.Enabled := False;

      dtp_AppDate.Date   := dtp_RgtDate.Date;

      // [���ں� SET����Ϸ�] ó�泻�� ��ȸ
      GetMappingDayList;
   end;
end;




//------------------------------------------------------------------------------
// Form onShow Event Handler
//
// Author :
// Date   :
//------------------------------------------------------------------------------
procedure TMDN110FP.FormShow(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. �ʱ�ȭ
   //------------------------------------------------------------------

   // Grid �ʱ�ȭ
   GridClear(ugd_Monitor);
   GridClear(ugd_Monitoring);


   pn_PatNo.Caption   := P_PatNo;
   pn_PatName.Caption := P_PatName;
   pn_SexAge.Caption  := P_SexAge;



   // �������� �������� (from MDN110FM�� �������)
   dtp_FromDate := (GetComp('MDN110FM', 'dtp_RgtDate') as TDateTimePicker);


   // ��������
   dtp_RgtDate.Date := dtp_FromDate.Date;


   // ó������
   dtp_OrdDate.Date := Date;


   // ����Ϸ� ����
   dtp_AppDate.Date := dtp_RgtDate.Date;


   // TabSheet �ʱ�ȭ
   pc_Monitor.ActivePageIndex := 0;


   // ����͸� SET �׸� ����(ICU / NICU)
   if (P_SetType = 'MON') or
      (P_SetType = 'STR') then
   begin
      rbt_O2.Visible    := False;
      rbt_Resp.Visible  := False;
   end
   else if (P_SetType = 'NIC') then
   begin
      rbt_O2.Visible    := True;
      rbt_Resp.Visible  := True;
   end;


   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   GetMonitorDayList;


end;




// ������ by LSH
procedure TMDN110FP.GetDayList;
var
   i, RowNo : Integer;
   iMons    : HmdIcutot;
begin

   Clear_Grid(ugd_DayList, ugd_DayList.ColCount);
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);



   //----------------------------------------------------------------
   // ȯ�ں� �������� ����Ʈ ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      iMons := HmdIcutot.Create;


      RowNo := iMons.GetMonitorDayList('1', P_PatNo, P_AdmDate, '', P_Settype);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iMons.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         iMons.Free;
         ed_PreOrdDate.Text := '';
         Exit;
      end;


      ugd_DayList.RowCount := RowNo;


      for i := 0 to RowNo - 1 do
      begin
         with iMons, ugd_DayList do
         begin
            Cells[0, i] := sActdate[i];
         end;
      end;


      iMons.Free;


      {
      if     g_Mode = 'I' then
      begin
         ed_PreOrdDate.Text := CopyByte(ugd_DayList.Cells[0,0],1,4)+'-' +
                               CopyByte(ugd_DayList.Cells[0,0],5,2)+'-' +
                               CopyByte(ugd_DayList.Cells[0,0],7,2);
      end
      else if g_Mode = 'U' then
      begin
         ed_PreOrdDate.Text := FormatDateTime('yyyy-mm-dd', dtp_FromDate.date);
      end;
      }


      // Ư������ Interface ���� ���� ��ȸ
      GetMonitorDayInfo(ed_PreOrdDate.Text);

   finally
      Screen.Cursor := crDefault;
   end;

end;





// ������
procedure TMDN110FP.rbt_MoniClick(Sender: TObject);
var
   sType1, sType2, sType3, sType4 : String;
   i, RowNo : Integer;
   iMons    : HmdIcutot;
begin


   // Grid �ʱ�ȭ
   GridClear(ugd_Monitor);


   sType1 := '3';
   sType2 := '';
   sType3 := '';
   sType4 := '';


   Screen.Cursor   := crHourglass;

   try
      iMons := HmdIcutot.Create;

      RowNo := iMons.GetMonitorDayList(sType1, sType2, sType3, sType4, P_Settype);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin

         iMons.Free;

         ShowErrMsg(stb_Message);
         Exit;
      end;


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin

         iMons.Free;

         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         Exit;
      end;



      ugd_Monitor.RowCount := 1;


      with iMons, ugd_Monitor do
      begin
         for i := 0 to RowNo - 1 do
         begin
            if sUpCode[i] = '' then
            begin
               Cells[0, RowCount-1] := sSetTitle[i];
               Cells[1, RowCount-1] := sSetCode[i];
               Cells[2, RowCount-1] := sUpCode[i];
            end
            else
            begin
               if CopyByte(sUpCode[i],2,2) = '00' then
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];

               Cells[1, RowCount-1] := sSetCode[i];
               Cells[2, RowCount-1] := sUpCode[i];
            end;

            RowCount := RowCount + 1;

         end;
      end;

      ugd_Monitor.RowCount := ugd_Monitor.RowCount - 1;

      iMons.Free;

   finally
      Screen.Cursor := crDefault;
   end;

end;





procedure TMDN110FP.ugd_MonitorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   iCnt, i, SelCol, SelRow, BeginRow, EndRow: Integer;

begin


   if ((ssShift in Shift) and (ssDouble in Shift)) or
      ((ssCtrl  in Shift) and (ssDouble in Shift)) or
      (ugd_Monitor.Cells[0,0] = '') then Exit;


   with ugd_Monitor do
   begin
      //Mouse��ġ
      ugd_Monitor.MouseToCell(X, Y, SelCol, SelRow);

      //(1) [Shift]+Click : ���ù����� ���� ����ǥ�� ����/����
      if (ssShift in Shift) and (Button = mbLeft) then
      begin
         //���ù��� Position ����
         BeginRow := 0;

         for i := 0 to RowCount - 1 do
         begin
            if Cells[30,i] = 'Y' then
            begin
               BeginRow := i;
               Break;
            end;
         end;

         if SelRow < 0 then
         begin
            EndRow := Rowcount - 1;
         end
         else
         begin
            if SelRow > BeginRow then
            begin
               EndRow := SelRow;
            end
            else
            begin
               EndRow   := BeginRow;
               BeginRow := SelRow;
            end;
         end;
         //�ش���� ����ǥ�ü���
         for i := 0 to Rowcount - 1 do
         begin
            if (BeginRow <= i) and (i <= EndRow) then
               SelectCell(ugd_Monitor,25,i,True )  //����ǥ�ü���
            else
               SelectCell(ugd_Monitor,25,i,False); //����ǥ������
         end;
      end

      //(2) [Ctrl]+Click : Click�� Row ����ǥ�� Toggle
      else if (ssCtrl in Shift) and (Button = mbLeft) then
      begin
         //����ǥ�� ����/���� Toggle
         if (Cells[25,SelRow] = '') then
            SelectCell(ugd_Monitor,25,SelRow,True )  //����ǥ��
         else
            SelectCell(ugd_Monitor,25,SelRow,False); //����ǥ������
      end

      //(3) Mouse [Left] Button Click : Click�� Row�� ����ǥ��
      else if (Button = mbLeft) then
      begin
         //Click�� Row�� ����ǥ��, ������ ����Row�� ����
         cbx_All.Checked := False;

         for i := 0 to RowCount - 1 do
         begin
            SelectCell(ugd_Monitor,25,i,False);

            Cells[30,i] := '';
         end;

         SelectCell(ugd_Monitor,25,SelRow,True);

         Cells[30,SelRow] := 'Y';    //���ý���Row ǥ��

         ugd_Monitor.Tag  := SelRow; //���ý���Row����(Mouse Drag�� �������ϱ� ����)
      end

      //(4) Mouse [Right] Button Click - //Click�� ��ġ�� Position�̵��� Popup Menu View
      else if (Button = mbRight) then
      begin
         //����Row�� �������� ���, Exit
         iCnt := 0;

         for i := 0 to RowCount - 1 do
         begin
            if (Cells[25,i] = 'Y') then Inc(iCnt);
            if (iCnt > 1) then Exit;
         end;

         //����Row 1���� ���, Click ��ġ�� Position �̵�
         for i := 0 to RowCount - 1 do
         begin
            SelectCell(ugd_Monitor,25,i,False);
            Cells[30,i] := '';
         end;

         SelectCell(ugd_Monitor,25,SelRow,True);
         Cells[30,SelRow] := 'Y';
         Row := SelRow;
      end;

      ugd_Monitor.Repaint;

   end;

end;



// Grid ����ǥ�� ����,����
procedure TMDN110FP.SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);
var
   i : Integer;
   clGridColor,clGridFontColor : TColor;
begin

   with (Sender as TUltraGrid) do
   begin
      // ����ǥ��,����
      if (IsSelect) then
      begin
         Cells[iCol,iRow] := 'Y';                  // ����ǥ�ü���
         clGridColor      := $00C7D5FF;            // Selected Row Color ����

         clGridFontColor  := SelectedRowFontColor; // Selected Row Font Color ����
      end
      else
      begin
         Cells[iCol,iRow] := '';                   // ����ǥ������

         if (iRow mod 2) = 0 then                  // Grid Base Color ����
              clGridColor := Color
         else clGridColor := GridRowColor;

         clGridFontColor  := Font.Color;           // Grid Base Font Color ����
      end;

      // Row Color ĥ�ϱ�
      for i := 0 to 15 do
          SetColor(i,iRow,clGridColor);
   end;
end;





procedure TMDN110FP.cbx_AllClick(Sender: TObject);
var
   iRow : integer;
begin

   // ��üRow ���� ǥ��
   if (cbx_All.Checked) then
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, True );     // Row ����ǥ��
         ugd_Monitor.Cells[30,iRow] := '';
      end;
   end
   // ��üRow ���� ����
   else
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, False);    // Row ����ǥ������
         ugd_Monitor.Cells[30,iRow] := '';
      end;
   end;

   ugd_Monitor.Repaint;

end;





procedure TMDN110FP.ugd_MonitorMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   SelCol,SelRow : Integer;
begin

   if Button <> mbLeft then Exit;

   // <���������> Cell ���ý� ==> ó������ȸ/ó����೻�� Form Call
   ugd_Monitor.MouseToCell(X,Y,SelCol,SelRow);

   // ���ù����� ���� ����ǥ�� ���� : <MouseDown�� Row> ���� <����Row> ����
   if (Not ((ssShift in Shift) or (ssCtrl in Shift) or (ssDouble in Shift))) and
      (ugd_Monitor.Tag <> SelRow) then
       ugd_MonitorMouseDown(Sender, Button, [ssShift], X, Y);
end;




procedure TMDN110FP.rbt_MedClick(Sender: TObject);
begin
   // Grid �ʱ�ȭ
   GridClear(ugd_Monitor);

end;


//-------------------------------------------
// Mapping Set�׸� ���ý�,
//-------------------------------------------
procedure TMDN110FP.rbt_IntakeClick(Sender: TObject);
var
   sType1, sType2, sType3, sType4, sType5 : String;
   i, RowNo, nRow           : Integer;
   iMons                    : HmdIcutot;
   sCodeName, sCodeVal      : String;
begin

   // Grid �ʱ�ȭ
   GridClear(ugd_Monitor);



   // ��ȸ���� Flag ����
   if (rbt_Intake.Checked) then
   begin
      sType1    := '1';                    // ���뷮 �����׸���ȸ
      sCodeName := rbt_Intake.Caption;
      sCodeVal  := rbt_Intake.Name;
   end
   else if (rbt_Output.Checked) then
   begin
      sType1    := '2';                    // �輳�� �����׸���ȸ
      sCodeName := rbt_Output.Caption;
      sCodeVal  := rbt_Output.Name;
   end
   else if (rbt_Hemo.Checked) then
   begin
      sType1    := '3';                    // Ȱ��¡�� �����׸���ȸ, 2011.08.04 LSH
      sCodeName := rbt_Hemo.Caption;
      sCodeVal  := rbt_Hemo.Name;
   end
   else if (rbt_O2.Checked) then
   begin
      sType1    := '4';                    // [NICU] ��ҿ�� �����׸���ȸ,    2011.10.27 LSH
      sCodeName := rbt_O2.Caption;
      sCodeVal  := rbt_O2.Name;
   end
   else if (rbt_Resp.Checked) then
   begin
      sType1    := '5';                   // [NICU] �ΰ�ȣ��� �����׸���ȸ, 2011.10.27 LSH
      sCodeName := rbt_Resp.Caption;
      sCodeVal  := rbt_Resp.Name;
   end;


   {
   else if (rbt_Resp2.Checked) then
      sType1 := '6'                    // [NICU] �ΰ�ȣ���2 �����׸���ȸ, 2011.10.27 LSH
   else if (rbt_Resp3.Checked) then
      sType1 := '7';                   // [NICU] �ΰ�ȣ���3 �����׸���ȸ, 2011.10.27 LSH
   }


   sType2 := P_PatNo;
   sType3 := P_AdmDate;
   sType4 := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);
   sType5 := P_Settype;



   Screen.Cursor   := crHourglass;

   try
      iMons := HmdIcutot.Create;


      RowNo := iMons.GetMonitorDayList(sType1, sType2, sType3, sType4, sType5);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iMons.Free;

         ShowErrMsg(stb_Message);
         Exit;
      end;


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         iMons.Free;

         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         Exit;
      end;



      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitor.RowCount := 1;


      //Select�� Data�� Grid�� Display
      nRow := 0;


      for i := 0 to RowNo-1 do
      begin
         ugd_Monitor.Cells[0,nRow] := iMons.sSetTitle[i];
         ugd_Monitor.Cells[1,nRow] := iMons.sSetCode[i];
         ugd_Monitor.Cells[2,nRow] := iMons.sLeafYn[i];
         ugd_Monitor.Cells[3,nRow] := iMons.sInputTyp[i];
         ugd_Monitor.Cells[4,nRow] := iMons.sItemCode[i];
         ugd_Monitor.Cells[5,nRow] := sCodeName;                     // Set-Group �� �߰�, 2011.10.27 LSH
         ugd_Monitor.Cells[6,nRow] := DeleteStr(sCodeVal, 'rbt_');   // Set-Group �� �߰�, 2011.10.27 LSH

         Inc(nRow);
      end;


      if nRow < 1 then
         ugd_Monitor.RowCount := 1
      else
         ugd_Monitor.RowCount := nRow;



      iMons.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;



//------------------------------------------------------------------------------
// [�׸� Mapping] OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.02
//------------------------------------------------------------------------------
procedure TMDN110FP.sbt_MonitorCopyClick(Sender: TObject);
var
   i, MCnt : Integer;
begin


   MCnt := 1;

   //------------------------------------------------
   // ���ں� ó�泻�� Tab
   //------------------------------------------------
   if (pc_Monitor.ActivePageIndex = 0) then
   begin

      if (ugd_Monitoring.Cells[6,1] = 'A') and
         (trim(ugd_Monitoring.Cells[0,1]) <> '') then
      begin
         stb_Message.Panels[0].Text := '[�����׸�]�� ó�泻���� �����Ͻ� �� �����ϴ�.';
         MCnt := 1;

         Exit;
      end
      else
      begin
         stb_Message.Panels[0].Text := '[���ں� ó�泻��]�� ����Ǿ����ϴ�.';
         MCnt := 1
      end;
   end
   //------------------------------------------------
   // ����͸� SET Tab
   //------------------------------------------------
   else if (pc_Monitor.ActivePageIndex = 1) then
   begin
      if ((ugd_Monitor.Cells[2, ugd_Monitor.Row] <> 'A') and
          (ugd_Monitor.Cells[2, ugd_Monitor.Row] <> 'B') and
          (ugd_Monitor.Cells[2, ugd_Monitor.Row] <> 'Y')) and  // [����] V/S �������̽� ���� �����׸� ���� (LEAFYN = Y/VARYN = Y) @ 2012.10.15 LSH
         (trim(ugd_Monitoring.Cells[1,1]) = '') then
      begin
         stb_Message.Panels[0].Text := '���� �Ǵ� ���� �׸��� [���ں� ó�泻��]�� ���� �������ֽñ� �ٶ��ϴ�.';
         MCnt := 1;

         Exit;
      end
      else if (ugd_Monitor.Cells[2, ugd_Monitor.Row] = 'A') and
              (trim(ugd_Monitoring.Cells[1,1]) <> '') then
      begin
         stb_Message.Panels[0].Text := '[�����׸�]�� ó�泻���� �����Ͻ� �� �����ϴ�.';
         MCnt := 1;

         Exit;
      end
      else
      begin
         stb_Message.Panels[0].Text := '[����͸� SET�׸�]�� ����Ǿ����ϴ�.';
         MCnt := 1;
      end;

   end;



   for i := 0 to ugd_Monitor.RowCount-1 do
   begin
      // ������ Row ��, Mapping  Grid�� �ѱ��.
      if (ugd_Monitor.Cells[25,i] = 'Y') then
      begin


         if (pc_Monitor.ActivePageIndex = 0) then
         //----------------------------------------------
         // ���ں� ó�泻�� Tab ���ý�,
         //----------------------------------------------
         begin
            if GetFindProgress(ugd_Monitor.Cells[1,i], ugd_Monitoring.RowCount-1) then
            // �̹� Mapping�� ó�泻���� Filtering
            begin
               ugd_Monitoring.Cells[1, MCnt] := ugd_Monitor.Cells[0, i];   // ó�� Desc
               ugd_Monitoring.Cells[2, MCnt] := ugd_Monitor.Cells[1, i];   // ó���ڵ�
               ugd_Monitoring.Cells[3, MCnt] := ugd_Monitor.Cells[2, i];   // ó������
               ugd_Monitoring.Cells[4, MCnt] := ugd_Monitor.Cells[3, i];   // ó��Seqno

               MCnt := Mcnt + 1;

            end;
         end
         else if (pc_Monitor.ActivePageIndex = 1) then
         //----------------------------------------------
         // Mapping Set�׸� Tab ���ý�,
         //----------------------------------------------
         begin
            if GetFindProgress(ugd_Monitor.Cells[1,i], ugd_Monitoring.RowCount-1) then
            // �̹� Mapping�� Set�ڵ�� Filtering
            begin
               ugd_Monitoring.Cells[0, MCnt] := ugd_Monitor.Cells[0, i];      // Set�׸� Title


               // NICU ��ҿ��/�ΰ�ȣ��� �����׸��� ���, "�׸� desc"�� ���� ����, 2011.10.27 LSH
               // [����] ICU V/S �������̽� ���� �����׸� ���� (LEAFYN = Y/VARYN = Y) @ 2012.10.15 LSH
               if (ugd_Monitor.Cells[2, ugd_Monitor.Row] = 'B') or
                  (ugd_Monitor.Cells[2, ugd_Monitor.Row] = 'Y') then
               begin
                  ugd_Monitoring.Cells[0, MCnt] := ugd_Monitor.Cells[5, i];   //
                  ugd_Monitoring.Cells[1, MCnt] := ugd_Monitor.Cells[0, i];   // Set �׸� Desc
                  ugd_Monitoring.Cells[2, MCnt] := ugd_Monitor.Cells[5, i];   // Set �׷��
                  ugd_Monitoring.Cells[3, MCnt] := '';                        // ó������
                  ugd_Monitoring.Cells[4, MCnt] := '';                        // ó��Seqno
               end;


               ugd_Monitoring.Cells[5, MCnt] := ugd_Monitor.Cells[1, i];      // Set�ڵ�
               ugd_Monitoring.Cells[6, MCnt] := ugd_Monitor.Cells[2, i];      // sLeafyn
               ugd_Monitoring.Cells[7, MCnt] := ugd_Monitor.Cells[3, i];      // �Է�����(�Ӽ�)
               ugd_Monitoring.Cells[8, MCnt] := ugd_Monitor.Cells[4, i];      // sItemcode (�����׸��ڵ�)

               MCnt := Mcnt + 1;

            end;

         end;

      end
      else
         continue;


   end;


   // RowCount ����
   if (ugd_Monitoring.Cells[0,1] = '') and
      (ugd_Monitoring.Cells[1,1] = '') then
   begin
      ugd_Monitoring.RowCount := MCnt + 1
   end
   else
   begin
      ugd_Monitoring.RowCount := MCnt;
   end;




   // SetCode ������ Sorting..
   // QuickSortGrid (���Grid,����Row,����Row,����Col,Ascendig/Decending)
   QuickSortGrid(ugd_Monitoring,0,ugd_Monitoring.RowCount-1,5,False);


   ugd_Monitoring.Repaint;

end;


// ó��- SET 1:1 ���� �Լ�
function TMDN110FP.GetFindProgress(sType1 : String; iNum : Integer) : Boolean;
var
   i : Integer;
begin


   GetFindProgress := False;


   for i := 0 to iNum do
   begin

      if (pc_Monitor.ActivePageIndex = 0) then
      // ���ں� ó�泻�� Tab ���ý�,
      begin
         // �̹� ���õ� ó���ڵ����� üũ
         if sType1 = ugd_Monitoring.Cells[1, i+1] then
         begin
            GetFindProgress := False;
            Break;
         end
         else
         begin
            GetFindProgress := True;
         end;
      end
      else if (pc_Monitor.ActivePageIndex = 1) then
      // Mapping Set�׸� Tab ���ý�,
      begin
         // �̹� ���õ� Set�׸����� üũ
         if sType1 = ugd_Monitoring.Cells[5, i+1] then
         begin
            GetFindProgress := False;
            Break;
         end
         else
         begin
            GetFindProgress := True;
         end;
      end;
   end;

end;

procedure TMDN110FP.sbt_MonitorCopyAllClick(Sender: TObject);
begin
   cbx_All.Checked := True;

   cbx_AllClick(Nil);

   sbt_MonitorCopyClick(Sender);
end;



procedure TMDN110FP.ugd_MonitoringDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 2);
   ReSizeGridRow(Sender as TUltraGrid,2,ARow);
end;


procedure TMDN110FP.ed_InputEnter(Sender: TObject);
begin
   // Tag �ʱ�ȭ
   ed_Input.Tag := 0;

   //if (ugd_Monitoring.Cells[0,ugd_Monitoring.Row] <> '') then
   //    ed_InputExit(Nil);
end;


procedure TMDN110FP.ed_InputExit(Sender: TObject);
begin

   if ed_Input.Tag = 0 then
   begin
      ed_Input.Tag := 1;
      ed_Input.Visible := False;


      if (ugd_Monitoring.RowCount > 1 ) and
         (ugd_Monitoring.Cells[0,ugd_Monitoring.Row] = '') then
      begin
         ugd_Monitoring.DeleteRow(ugd_Monitoring.Row);
      end;


      ugd_Monitoring.SetFocus;


   end;

end;


procedure TMDN110FP.ed_InputKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      ed_InputExit(Nil);

end;


procedure TMDN110FP.ed_InputKeyPress(Sender: TObject; var Key: Char);
var
   sTempCode : String;
begin
   // [Enter] Key �ƴѰ��, Exit
   if Key <> #13 then Exit;


   // Enter �Է½�
   if key = #13 then
   begin

      if ed_Input.Text = '' then
         ed_InputExit(Nil);


      // �ű��׸� ó���ڵ� Set
      if rbt_Intake.Checked then
         sTempCode := 'INTAKE'
      else if rbt_Output.Checked then
         sTempCode := 'OUTPUT'
      else if rbt_Hemo.Checked then
         sTempCode := 'HEMO'
      else if rbt_O2.Checked then
         sTempCode := 'O2'
      else if rbt_Resp.Checked then
         sTempCode := 'RESP';


      // �ű��Է� �ڵ�� �� �ڵ尪 Assign
      ugd_Monitoring.Cells[1, ugd_Monitoring.Row] := ed_Input.Text;
      ugd_Monitoring.Cells[2, ugd_Monitoring.Row] := sTempCode;        // �ű��߰� SET �׸� ó���ڵ�


      ed_InputExit(Nil);
   end;
end;


procedure TMDN110FP.ugd_MonitorDblClick(Sender: TObject);
begin
   sbt_MonitorCopyClick(Nil);
end;


procedure TMDN110FP.bbt_FirstDateClick(Sender: TObject);
var
   i : integer;
begin

   // ���� ����..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  // ����ǥ�� ��������
   end;


   if ugd_DayList.Cells[0,0] <> '' then
   begin
      //[Previous] Button Click��
      if (Sender = bbt_PrevDate) and (ugd_DayList.Row < ugd_DayList.RowCount-1) then
          ugd_DayList.Row := ugd_DayList.Row + 1
      //[Next] Button Click��
      else if (Sender = bbt_NextDate) and
              (ugd_DayList.Row > 0) then
          ugd_DayList.Row := ugd_DayList.Row - 1
      //[First] Button Click��
      else if (Sender = bbt_FirstDate) and
              (ugd_DayList.Row <> ugd_DayList.RowCount-1) then
          ugd_DayList.Row := ugd_DayList.RowCount-1
      //[Last] Button Click��
      else if (Sender = bbt_LastDate) and
              (ugd_DayList.Row <> 0) then
          ugd_DayList.Row := 0
      else
         Exit;


      //�ش� ó���Ͽ� ���� ó��� List ��ȸ
      ed_PreOrdDate.Text := CopyByte(ugd_DayList.Cells[0,ugd_DayList.Row],1,4)+'-' +
                            CopyByte(ugd_DayList.Cells[0,ugd_DayList.Row],5,2)+'-' +
                            CopyByte(ugd_DayList.Cells[0,ugd_DayList.Row],7,2);


      GetMonitorDayInfo(ed_PreOrdDate.Text);


      ugd_Monitor.SetFocus;

   end;
end;




//------------------------------------------------------------------------------
// Ư������ Interface ���� ���� ��ȸ
//
// Author :
// Date   :
//------------------------------------------------------------------------------
procedure TMDN110FP.GetMonitorDayInfo(sTemp:String);
var
   sType1, sType2, sType3, sType4 : String;
   i, RowNo  : Integer;
   tmp_Title : String;
   iMons     : HmdIcutot;
begin

   // Grid �ʱ�ȭ
   GridClear(ugd_Monitor);




   //----------------------------------------------------------------
   // Interface ���� ���� ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      iMons := HmdIcutot.Create;


      //------------------------------------------------
      // 1. Set Parameter Value
      //------------------------------------------------
      sType1 := '2';                               // ��ȸ����('2')
      sType2 := P_Patno;                           // ȯ�ڹ�ȣ
      sType3 := P_AdmDate;                         // �Կ�����(YYYYMMDD)
      sType4 := DelChar(ed_PreOrdDate.text,'-');   // ��������


      //------------------------------------------------
      // 2. Load Data
      //------------------------------------------------
      RowNo := iMons.GetMonitorDayList(sType1, sType2, sType3, sType4, P_Settype);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iMons.Free;

         ShowErrMsg(stb_Message);
         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         iMons.Free;

         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         Exit;
      end;




      ugd_Monitor.RowCount := 1;




      tmp_Title := '';


      for i := 0 to RowNo - 1 do
      begin
         with iMons, ugd_Monitor do
         begin
            if tmp_Title = sUpTitle[i] then
            begin
               // Interface �׸��
               if CopyByte(sUpCode[i],2,2) = '00' then
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // �׸� �ڵ�
               Cells[2, RowCount-1] := sUpCode [i];   // �����׸� �ڵ�
            end
            else
            begin
               if CopyByte(sUpCode[i],2,2) = '00' then
               begin
                  Cells[0, RowCount-1] := sUpTitle[i];   // �׸��


                  // Hidden Information
                  Cells[1, RowCount-1] := sUpCode[i];    // �����׸� �ڵ�
                  Cells[2, RowCount-1] := '';

                  tmp_Title := sUpTitle[i];

                  RowCount  := RowCount + 1;

                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               end
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // �׸� �ڵ�
               Cells[2, RowCount-1] := sUpCode [i];   // �����׸� �ڵ�
            end;

            RowCount := RowCount + 1;

         end;
      end;

      ugd_Monitor.RowCount := ugd_Monitor.RowCount - 1;

      iMons.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;





//------------------------------------------------------------------------------
// [���ں� ó�泻�� ��ȸ] Button OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.04
//------------------------------------------------------------------------------
procedure TMDN110FP.GetMonitorDayList;
var
   sGubun, sPatNo, sOrdDate, sLocate : String;
   i, nRow, RowNo : Integer;
   iOrders   : HmdOrderv;
begin


   // �׸� Grid �ʱ�ȭ
   GridClear(ugd_Monitor);



   //----------------------------------------------------------------
   // ���ں� ���볻�� ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      // Create Class
      iOrders := HmdOrderv.Create;

      // Assign Input Parameter(s)
      sGubun   := '3';                                               // ��ȸ���� ('3' = Ư��ó���� ó�泻��)
      sPatNo   := P_PatNo;                                           // ȯ�ڹ�ȣ
      sOrdDate := FormatDateTime('yyyymmdd',dtp_OrdDate.Date);       // ó����
      sLocate  := G_LOCATE;                                          // �����


      // ó�泻�� List
      RowNo := iOrders.PreOrderSelect(sGubun, sPatNo, sOrdDate, sLocate);



      //������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         iOrders.Free;
         ShowErrMsg;
         Exit;
      end;


      //�ڷ�Ǽ�=0�ΰ��, Exit
      if (RowNo = 0) then
      begin
         iOrders.Free;
         Exit;
      end;


      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitor.RowCount := 1;


      //Select�� Data�� Grid�� Display
      nRow := 0;


      for i := 0 to RowNo-1 do
      begin

         if (iOrders.sDiscYn[i] = '') and                       // ��� �Ǵ� D/C ���� Skip
            (
             (iOrders.sSlipCd[i] = 'D22') or                    // ����(Fluid) ��ȸ
             (CopyByte(iOrders.sOrdGrp[i],1,2) = 'B2') or           // �ֻ�� �߰�, 2011.08.18 LSH (CCU �迬��)
             (CopyByte(iOrders.sOrdGrp[i],1,1) = 'E')  or           // ���� ��ȸ
             ((P_SetType = 'STR') and
              (iOrders.sOrdGrp[i] = 'C1') and
              (CopyByte(iOrders.sSlipCd[i],1,1) = 'L') and
              (iOrders.sOrdCd[i] = 'BE1530')                    // [SU �����] �������� �˻�(Slip = L%)�� 'aPTT �˻�' ���� @ 2012.06.18 LSH (������ ��û)
              )
             ) then
         begin
            ugd_Monitor.Cells[0,nRow] := iOrders.sOrdName[i];
            ugd_Monitor.Cells[1,nRow] := iOrders.sOrdCd[i];
            ugd_Monitor.Cells[2,nRow] := iOrders.sOrdDate[i];
            ugd_Monitor.Cells[3,nRow] := iOrders.iOrdSeqno[i];
            ugd_Monitor.Cells[4,nRow] := iOrders.sOrdDesc2[i];  // ó��� (ó�淮/���..) �߰�, 2011.08.18 LSH

            Inc(nRow);
         end;
      end;



      if nRow < 1 then
         ugd_Monitor.RowCount := 1
      else
         ugd_Monitor.RowCount := nRow;



      iOrders.Free;

      // �׸���� Enabled
      bbt_Delete.Enabled := True;


   finally
      Screen.Cursor := crDefault;
   end;

end;





//------------------------------------------------------------------------------
// [�׸�����] Button onClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.04
//------------------------------------------------------------------------------
procedure TMDN110FP.bbt_AddClick(Sender: TObject);
var
   i, j, Rowno: Integer;
   sType : String;
   iMons : HmdIcutot;
   sPatNo, sAdmDate, sActDate, sSetType, tSetType : String;
   systime : TDateTime;
begin
   //---------------------------------------------------------------------------
   // �������� ����͸� Set ���忩�� Ȯ��, 2011.10.04 LSH
   //  - ICU ������� Ư¡�� �ϳ���, �ش� ACTDATE�� ����
   //    MDICUSET (����͸� �׸�) + MDICUTMT (Ÿ�� �׸�)�� �����Ǿ� �־��
   //    �ű� �׸�����/������ ������.
   //---------------------------------------------------------------------------
   sPatNo     := P_PatNo;
   sAdmDate   := P_AdmDate;
   sActDate   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);

   //------------------------------------------------------------------------
   // ������� ���� 1ȸ ���峻�� ��ȸ �б� @ 2012.12.24 LSH
   //    - [����] SU --> ICU�� ���� ���ǵǾ�, �׸���� - ó���߰� case �߰�
   //------------------------------------------------------------------------
   if (P_SetType = 'STR') then
      sSetType := 'S'
   else if (P_SetType = 'NIC') then
      sSetType := 'Y'
   else
      sSetType := '';


   if not CheckIcuFstSave(sPatNo, sAdmDate, sActDate, sSetType) then
   begin
      MessageBox(Self.Handle
               , PChar('[' + DateToStr(dtp_RgtDate.Date) + '] Flowsheet ���峻���� �����ϴ�.' + #13#10 + #13#10 + '����ȭ������ ���ư��ż� ����͸� �����ֱ⸦ ���� ��[' + DateToStr(dtp_RgtDate.Date) + '] ���� �������� �� �׸���� ����ٶ��ϴ�.')
               , '�������� FlowSheet ������'
               , MB_OK + MB_ICONINFORMATION);
      Exit;
   end;


   j := 0;


   // ���� Message-Bar �ʱ�ȭ
   stb_Message.Panels[0].Text := '';


   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   if (Trim(P_Patno)= '') then
   begin
      showmessage('�ۼ��� ȯ�ڰ� ���õ��� �ʾҽ��ϴ�.');
      Exit;
   end;



   // ���� �Կ����� ���� �������ڸ� ������ ���.
   if dtp_RgtDate.Date < StrToDate(ConvertSDate(P_AdmDate)) then
   begin

      // ���� �ð� ��������
      GetSysDate(systime);

      // ������ ���� ������ pass, 2011.10.26 LSH
      if (md_UserId <> '99995') then
      begin
         // �������ڰ� �Կ����� - 1�� ���
         // ��¥ �񱳴� �׻� "String"���� �� �� �ֵ��� �ϱ����� DateToStr �߰�, 2011.12.22 LSH
         if DateToStr(dtp_RgtDate.Date)  = DateToStr(StrToDate(ConvertSDate(P_AdmDate)) - 1) then
         begin

            // ������ڰ� [�Կ�����-1 : ��: 12/22 03�� ȯ�� �Կ����, ���(����)���ڴ� ���� 12/21] �� ���,
            // �Կ����� 00 ~ 06�ÿ��� �߰� �����ϵ��� �����ߴµ�, Day Duty�� �߰��ؾߵǴ� ��찡 ���� ���ܼ�
            // �Ʒ� �ð��� ���з��� �ּ�ó����, 2011.12.22 LSH (�迬�� �������԰� ��ȭ��)
            {
            if  (
                (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
                (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
                ) then
            begin
               MessageBox(Self.Handle,
                          '�����Ͻ� �������ڰ� �Կ����ں��� �۽��ϴ�' + #13#10 + '�������ڸ� �ٽ� Ȯ���� �ֽʽÿ�.',
                          '�׸� ������ �������� Ȯ��',
                          MB_OK + MB_ICONWARNING);
               Exit;
            end
            else if  (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
                     (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
            begin
               // 00:00~ 06:00 �ð��뿡�� ������ �׸��߰� �� ��������
            end;
            }

         end
         else
         begin
            MessageBox(Self.Handle,
                       '�����Ͻ� �������ڰ� �Կ����ں��� �۽��ϴ�' + #13#10 + '�������ڸ� �ٽ� Ȯ���� �ֽʽÿ�.',
                       '�׸� ������ �������� Ȯ��',
                       MB_OK + MB_ICONWARNING);
            Exit;
         end;

      end;

   end;



   //-----------------------------------------------------------------
   // 2. Monitoring �׸� ����
   //-----------------------------------------------------------------
   Screen.Cursor := crHourglass;

   try
      iMons := HmdIcutot.Create;


      //-----------------------------------------------
      // 2.1. Set Parameter Value
      //-----------------------------------------------
      sType := '3';


      with iMons, ugd_Monitoring do
      begin

         sPatno   := P_PatNo  ;
         sAdmDate := P_AdmDate;
         sSetType := P_Settype;
         sEditId  := md_UserId;

         //---------------------------------------------------------------------
         // ������� ���� 1ȸ ���峻�� ��ȸ �б� @ 2012.12.24 LSH
         //    - [����] SU --> ICU�� ���� ���ǵǾ�, �׸���� - ó���߰� case �߰�
         //---------------------------------------------------------------------
         if (P_SetType = 'STR') then
            tSetType := 'S'
         else if (P_SetType = 'NIC') then
            tSetType := 'Y'
         else
            tSetType := '';


         //-----------------------------------------------------
         // �� SET �����׸� [����] �б� @ 2012.04.25 LSH
         //-----------------------------------------------------
         if (pc_Monitor.ActivePageIndex = 0) or
            (pc_Monitor.ActivePageIndex = 1) then
         // [���ں� ó�泻��] or [����͸� SET�׸�] Tab
         begin
            sActDate := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);
         end
         else if (pc_Monitor.ActivePageIndex = 2) then
         // [���ں� SET ���볻��] Tab
         begin
            // SET �����Ϸ��� �������ڰ� "����"�̸�, Exit.
            if DateToStr(dtp_AppDate.Date) >= FormatDateTime('yyyy-mm-dd', Date) then
            begin
               MessageBox(Self.Handle,
                          '������(�Ǵ� ��������) SET�����׸��� �����Ͻ� �� �����ϴ�.',
                          '������ SET�׸� ����Ұ�',
                          MB_OK + MB_ICONWARNING);
               Exit;
            end;

            // ������ Main FlowSheet �������, Exit.
            if not CheckIcuFstSave(sPatNo,
                                   sAdmDate,
                                   FormatDateTime('yyyymmdd', Date),
                                   tSetType) then
            begin
               MessageBox(Self.Handle
                        , PChar('�������� Flowsheet ���峻���� �����ϴ�.' + #13#10 + #13#10 + '����ȭ������ ���ư��ż� ����͸� �����ֱ⸦ ���� ��[' + FormatDateTime('yyyy-mm-dd', Date) + '] ���� �������� �� �׸���� ����ٶ��ϴ�.')
                        , '�������� FlowSheet ������'
                        , MB_OK + MB_ICONINFORMATION);
               Exit;
            end;

            // �����Ϸ��� SET �������� Ȯ�� Message.
            if Application.MessageBox(PChar('�����Ͻ� [' + FormatDateTime('yyyy-mm-dd', dtp_AppDate.Date) + ']���� SET�׸���' + #13#10 +
                                      '"��������" SET �׸����� �����Ͻðڽ��ϱ�?'),
                                      'ó��-SET�׸� ������ Ȯ��',
                                      MB_OKCANCEL) <> IDOK then
            begin
               stb_Message.Panels[0].Text := '����͸� ó��-SET�׸� ���簡 [���]�Ǿ����ϴ�.';
               Exit;
            end;

            // ������ SET����� �����ڷθ� ����.
            sActDate := FormatDateTime('yyyymmdd', Date);

         end;



         for i := 0 to RowCount - 1 do
         begin
            // Set�׸�� ó��󼼳����� Mapping�� Row�� Insert
            if (Cells[0, i+1] <> '') and (Cells[1, i+1] <> '') then
            begin

               AppendVariant(sOrdDesc , Cells[1, i+1]);  // ó���
               AppendVariant(sOrdCd   , Cells[2, i+1]);  // ó���ڵ�
               AppendVariant(sOrdDate , Cells[3, i+1]);  // ó������
               AppendVariant(sOrdSeqNo, Cells[4, i+1]);  // ó��Seqno
               AppendVariant(sSetCode , Cells[5, i+1]);  // ����͸� SetCode

               j := j + 1;
            end;
         end;
      end;



      //-----------------------------------------------
      // 2.2. Execute Transaction
      //-----------------------------------------------
      RowNo := iMons.InsertDayMonitorList(sType, j);



      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         iMons.Free;
         exit;
      end;


      iMons.Free;


      stb_Message.Panels[0].Text := '����͸� ó��-SET�׸��� [����]�Ǿ����ϴ�.';


   finally
      // Page Reset
      if (pc_Monitor.ActivePageIndex = 0) or
         (pc_Monitor.ActivePageIndex = 1) then
      begin
         pc_Monitor.ActivePageIndex := 0;

         // �׸���� Enabled
         bbt_Delete.Enabled := True;

         // Mapping Grid Clear
         GridClear(ugd_Monitoring);

         // ���ں� ó�泻�� ��ȸ
         GetMonitorDayList;
      end
      else
      begin
         pc_Monitor.ActivePageIndex := 2;
      end;

      screen.Cursor := crDefault;

   end;

end;





//------------------------------------------------------------------------------
// [�׸� ����] Button onClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.05
//------------------------------------------------------------------------------
procedure TMDN110FP.bbt_DeleteClick(Sender: TObject);
var
   i, j, RowNo : integer;
   sType   : String;
   iMons   : HmdIcutot;
   systime : TDateTime;
begin

   // ���� Message-Bar �ʱ�ȭ
   stb_Message.Panels[0].Text := '';



   //------------------------------------------------------------------
   // 1. Check
   //------------------------------------------------------------------
   if (Trim(P_Patno)= '') then
   begin
      MessageBox(Self.Handle,'�ۼ��� ȯ�ڰ� ���õ��� �ʾҽ��ϴ�.','�׸� ������ Ȯ��',MB_OK + MB_ICONWARNING);
      Exit;
   end;



   if dtp_RgtDate.Date < StrToDate(ConvertSDate(P_AdmDate)) then
   begin


      GetSysDate(systime);


      // ������ ���� ������ pass, 2011.10.26 LSH
      if (md_UserId <> '99995') then
      begin

         // ��¥ �񱳴� �׻� "String"���� �� �� �ֵ��� �ϱ����� DateToStr �߰�, 2011.12.22 LSH
         if DateToStr(dtp_RgtDate.Date)  = DateToStr(StrToDate(ConvertSDate(P_AdmDate)) - 1) then
         begin

            // ������ڰ� [�Կ�����-1 : ��: 12/22 03�� ȯ�� �Կ����, ���(����)���ڴ� ���� 12/21] �� ���,
            // �Կ����� 00 ~ 06�ÿ��� �߰� �����ϵ��� �����ߴµ�, Day Duty�� �߰��ؾߵǴ� ��찡 ���� ���ܼ�
            // �Ʒ� �ð��� ���з��� �ּ�ó����, 2011.12.22 LSH (�迬�� �������԰� ��ȭ��)
            {
            if  (
                (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
                (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
                ) then
            begin
               MessageBox(Self.Handle,
                          '�����Ͻ� �������ڰ� �Կ����ں��� �۽��ϴ�' + #13#10 + '�������ڸ� �ٽ� Ȯ���� �ֽʽÿ�.',
                          '�׸� ������ �������� Ȯ��',
                          MB_OK + MB_ICONWARNING);
               Exit;
            end
            else if  (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
                     (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
            begin
               // 00:00~ 06:00 �ð��뿡�� ������ �׸��߰� �� ��������
            end;
            }

         end
         else
         begin
            MessageBox(Self.Handle,
                       '�����Ͻ� �������ڰ� �Կ����ں��� �۽��ϴ�' + #13#10 + '�������ڸ� �ٽ� Ȯ���� �ֽʽÿ�.',
                       '�׸� ������ �������� Ȯ��',
                       MB_OK + MB_ICONWARNING);
            Exit;
         end;

      end;

   end;



   // ������ Row Check
   if (pc_Monitor.ActivePageIndex = 0) or
      (pc_Monitor.ActivePageIndex = 1) then     // [���ں� ó�泻��] �Ǵ� [����͸� SET �׸�]�� ���, Clear
   begin
      for i := 0 to ugd_Monitoring.ColCount -1 do
         ugd_Monitoring.Cells[i, ugd_Monitoring.Row] := '';

      Exit;
   end;


   with ugd_Monitoring do
   begin
      if (Cells[0, Row] = '') and
         (Cells[1, Row] = '') then
      begin
         MessageBox(Self.Handle,'�����Ͻ� �׸��� �����ϴ�.','�׸� ������ Ȯ��',MB_OK + MB_ICONWARNING);
         Exit;
      end
      else if (Cells[0, Row] = 'SET�׸�') then
      begin
         MessageBox(Self.Handle,'Ÿ��Ʋ �׸��� ������ �� �����ϴ�.','�׸� ������ Ȯ��',MB_OK + MB_ICONWARNING);
         Exit;
      end;



      if Application.MessageBox(PChar('�����Ͻ� [' + Cells[0, Row] + ' : ' + Cells[1, Row] + '] �׸��� �����Ͻðڽ��ϱ�?'),'ó��-SET�׸� ������ Ȯ��', MB_OKCANCEL) <> IDOK then
         exit;



      //------------------------------------------------------------------
      // 2. ó��-SET �׸� ����
      //------------------------------------------------------------------
      Screen.Cursor  :=  crHourglass;

      try
         j := 0;

         //---------------------------------------------
         // 2.1. Set Parameter Value
         //---------------------------------------------
         sType := '6';

         iMons := HmdIcutot.Create;

         iMons.sPatno   := P_PatNo  ;
         iMons.sAdmDate := P_AdmDate;
         iMons.sActDate := FormatDateTime('yyyymmdd', dtp_AppDate.Date);
         iMons.sSetCode := Cells[5, Row];
         iMons.sSetType := P_SetType;


         j := j + 1;



         //---------------------------------------------
         // 2.2. Execute Transaction
         //---------------------------------------------
         RowNo := iMons.InsertDayMonitorList(sType, j);



         if Rowno <> 1 then
         begin
            ShowErrMsg(stb_Message);
            iMons.Free;
            exit;
         end;


         iMons.Free;


         stb_Message.Panels[0].Text := '�ش� ó��-SET�׸��� �����Ǿ����ϴ�.';


         // ���ں� ���볻�� Refresh
         GetMappingDayList;



      finally
         screen.Cursor  :=  crDefault;
      end;

   end;


   //------------------------------------------------------------------
   // 3. Refresh ���ں� ���� ����
   //------------------------------------------------------------------
   GetDayList;

end;




procedure TMDN110FP.dtp_RgtDateChange(Sender: TObject);
begin
   // Tabsheet �ʱ�ȭ
   pc_Monitor.ActivePageIndex := 0;

   // Grid �ʱ�ȭ
   GridClear(ugd_Monitor);
   GridClear(ugd_Monitoring);

   // ���ں� ó�泻�� ��ȸ
   GetMonitorDayList;
end;

procedure TMDN110FP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;


procedure TMDN110FP.bbt_PrevDateClick(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_OrdDate.Date := dtp_OrdDate.Date - 1;


   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   GetMonitorDayList;

end;


procedure TMDN110FP.bbt_NextDateClick(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_OrdDate.Date := dtp_OrdDate.Date + 1;


   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   GetMonitorDayList;

end;


procedure TMDN110FP.dtp_OrdDateCloseUp(Sender: TObject);
begin
   // ���ں� ó�泻�� ��ȸ
   GetMonitorDayList
end;

procedure TMDN110FP.dtp_OrdDateChange(Sender: TObject);
begin
   // ���ں� ó�泻�� ��ȸ
   GetMonitorDayList
end;


//------------------------------------------------------------------------------
// [�߰��׸� �Է�] UltraGrid onDblClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.07.21
//------------------------------------------------------------------------------
procedure TMDN110FP.ugd_MonitoringDblClick(Sender: TObject);
var
   u_Rect : TRect;
begin

   // ����͸� �ű��߰� �����׸񿩺� (sLeafYn = 'A')
   if (ugd_Monitoring.Cells[6, ugd_Monitoring.Row] <> 'A') then
   begin
      //MessageBox(Self.Handle, '[����]������ SET�׸��� �ƴմϴ�.', '����͸� SET �����Ұ�', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;


   // Editâ ��ġ ����.
   u_Rect         := ugd_Monitoring.CellRect(1, ugd_Monitoring.Row);
   ed_Input.Top   := u_Rect.Top + 65;
   ed_Input.Left  := u_Rect.Left;

   ed_Input.Visible := True;

   ed_Input.SetFocus;

end;


procedure TMDN110FP.ugd_MonitoringKeyPress(Sender: TObject; var Key: Char);
var
   u_Rect : TRect;
begin

   // ����͸� �ű��߰� �����׸񿩺� (sLeafYn = 'A')
   if (ugd_Monitoring.Cells[6, ugd_Monitoring.Row] <> 'A') then
   begin
      //MessageBox(Self.Handle, '[����]������ SET�׸��� �ƴմϴ�.', '����͸� SET �����Ұ�', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;


   // [Enter] Key �Է½�, �Է¸�� ����
   if (Key = #13) then
   begin
      with ugd_Monitoring do
      begin

         // �Է�Edit Visible
         u_Rect           := ugd_Monitoring.CellRect(1, ugd_Monitoring.Row);
         ed_Input.Top     := u_Rect.Top + 67;
         ed_Input.Left    := u_Rect.Left;
         ed_Input.Visible := True;
      end;

      ed_Input.SetFocus;

   end;

end;



//------------------------------------------------------------------------------
// [���ں� ���볻�� ��ȸ] Button OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.04
//------------------------------------------------------------------------------
procedure TMDN110FP.GetMappingDayList;
var
   sGubun, sPatNo, sAdmDate, sActDate, sSetType : String;
   i, nRow, RowNo : Integer;
   iCutot   : HmdIcutot;
begin

   // Clear
   GridClear(ugd_Monitoring);


   //----------------------------------------------------------------
   // ���ں� ���볻�� ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      // Create Class
      iCutot := HmdIcutot.Create;

      // Assign Input Parameter(s)..
      sGubun   := '11';
      sPatNo   := P_PatNo;                                           // ȯ�ڹ�ȣ
      sAdmDate := P_AdmDate;                                         // �Կ�����
      sActDate := FormatDateTime('yyyymmdd',dtp_AppDate.Date);       // ��������
      sSetType := '';



      // ����Class Function Call
      RowNo := iCutot.GetMonitorDayList(sGubun, sPatNo, sAdmDate, sActDate, sSetType);



      // ������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         iCutot.Free;
         ShowErrMsg;
         Exit;
      end;


      // �ڷ�Ǽ� = 0�ΰ��, Exit
      if (RowNo = 0) then
      begin
         iCutot.Free;
         Exit;
      end;


      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitoring.RowCount := 2;



      // Select�� Data�� Grid�� Display
      nRow := 1;


      for i := 0 to RowNo - 1 do
      begin
         ugd_Monitoring.Cells[0, nRow] := iCutot.sItemTitle[i];    // SET �׸��
         ugd_Monitoring.Cells[1, nRow] := iCutot.sSetTitle[i];     // ó��� (Orddesc)
         ugd_Monitoring.Cells[2, nRow] := iCutot.sItemCode[i];     // ó���ڵ� (Ordcd)
         ugd_Monitoring.Cells[3, nRow] := iCutot.sActDate[i];      // ó������ (Orddate)
         ugd_Monitoring.Cells[4, nRow] := iCutot.sInputTyp[i];     // ó�� Seqno (Ordseqno)
         ugd_Monitoring.Cells[5, nRow] := iCutot.sSetCode[i];      // SET �ڵ�

         Inc(nRow);
      end;


      if nRow < 3 then
         ugd_Monitoring.RowCount := 2
      else
         ugd_Monitoring.RowCount := nRow;


      iCutot.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;


procedure TMDN110FP.dtp_AppDateChange(Sender: TObject);
begin
   GetMappingDayList;
end;


procedure TMDN110FP.dtp_AppDateCloseUp(Sender: TObject);
begin
   GetMappingDayList;
end;


procedure TMDN110FP.sbt_PrevDate2Click(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_AppDate.Date := dtp_AppDate.Date - 1;

   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   GetMappingDayList;
end;


procedure TMDN110FP.sbt_NextDate2Click(Sender: TObject);
begin
   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_AppDate.Date := dtp_AppDate.Date + 1;

   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   GetMappingDayList;
end;


// Grid �ʱ�ȭ
procedure TMDN110FP.GridClear(in_Grid : TUltraGrid);
var
   i, j : Integer;
begin

   if (in_Grid.Name = 'ugd_Monitor') then
   begin
      // �׸� Grid �ʱ�ȭ (Title����)
      for i := 0 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';

   end
   else if (in_Grid.Name = 'ugd_Monitoring') then
   begin
      // �׸� Grid �ʱ�ȭ (Title ����)
      for i := 1 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';
   end;
end;


// �����׸� Hint ǥ��
procedure TMDN110FP.ugd_MonitoringMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   NowCol, NowRow : Integer;
begin

   with ugd_Monitoring do
   begin
      // ���� Cell ��ǥ ��������
      MouseToCell(X, Y, NowCol, NowRow);


      if (NowRow >= 1) and
         (Cells[6, NowRow] = 'A') then    // �����׸� �ڵ� ����
      begin

         Hint := '�����׸� ������, [Enter]Ű�� �����ų� ����Ŭ���Ͽ� �׸���� �Է����ּ���.';


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



// ó��󼼳��� Hint ǥ��
procedure TMDN110FP.ugd_MonitorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   NowCol, NowRow : Integer;
begin

   // ���ں� ó�泻�� ��ȸ��, ó��� Hint ǥ��
   if (pc_Monitor.ActivePageIndex = 0) then
   begin
      with ugd_Monitor do
      begin
         // ���� Cell ��ǥ ��������
         MouseToCell(X, Y, NowCol, NowRow);


         // ó��� ����������, Hint�� �����ֱ�
         if (NowRow >= 0) and (Cells[4, NowRow] <> '') then
         begin
            Hint := Trim(Cells[4, NowRow]);

            // Hint Activation
            Application.ActivateHint(Mouse.CursorPos);

            ShowHint := True;
         end
         else
         begin
            Hint     := '';

            // Hint Activation
            Application.ActivateHint(Mouse.CursorPos);

            ShowHint := True;
         end;
      end;
   end;

end;




initialization
    RegisterClass(TMDN110FP);

finalization
    UnRegisterClass(TMDN110FP);

end.

