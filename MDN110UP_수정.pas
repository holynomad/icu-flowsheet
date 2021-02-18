{===============================================================================
   Program ID    : MDN110UP
   Program Name  : ��ȯ�ڽ� Monitoring�׸� ó�� Mapping ����
   Program Desc. :

   Author :  Lee, Se-Ha
   Date   :  2011. 02. 23
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
    ed_Input: TEdit;
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
    Label1: TLabel;
    Bevel5: TBevel;
    Label2: TLabel;
    lb_SetTypeName: TLabel;
    rbt_Hemo: TRadioButton;
    rbt_Set2: TRadioButton;
    rbt_Set3: TRadioButton;

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
    procedure rbt_IOClick(Sender: TObject);
    procedure sbt_MonitorCopyClick(Sender: TObject);
    procedure sbt_MonitorCopyAllClick(Sender: TObject);
    procedure ugd_MonitoringKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure FormCreate(Sender: TObject);
    //--------------------------------------------------------------------------

  private
    { Private declarations }
    procedure SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);

    function GetFindProgress(sType1:String; inum : Integer):Boolean;

    // �ۼ��� ���ϳ��� ��ȸ
    procedure GetDayList;

    // Ư������ Interface ���� ���� ��ȸ
    Procedure GetMonitorDayInfo(sTemp:String);

    // �ۼ� ���� ��ȸ...
    procedure GetMonitorDayList;


  public
    { Public declarations }
    dtp_RgtDate_Date : TDateTimePicker;
    g_Mode    : String;
    X_PatNo, X_PatName, X_AdmDate, X_SexAge, X_Settype : String;

  published
    { Public declarations }
    property prop_Mode     : String write g_Mode;     // �Է¸��
    property prop_PatNo    : String write X_PatNo;
    property prop_PatName  : String write X_PatName;
    property prop_AdmDate  : String write X_AdmDate;
    property prop_SexAge   : String write X_SexAge;
    property prop_Settype  : String write X_Settype;

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
// OK
   PProcedure1 := @TMethod(Procedure1);
   if FindFormMethod('MDN110FM', 'GetMonitorDayInfo', PProcedure1) = True then Procedure1;

   PProcedure1 := @TMethod(Procedure1);
   if FindFormMethod('MDN110FM', 'GetMonitoring', PProcedure1) = True then Procedure1;

   Action := Cafree;
end;



procedure TMDN110FP.FormDestroy(Sender: TObject);
begin
// OK
   MDN110FP := Nil;
end;

procedure TMDN110FP.bbt_CloseClick(Sender: TObject);
begin
// OK
   Close;
end;

procedure TMDN110FP.ugd_MonitorDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
// OK

   ReSizeGridCol((Sender as TUltragrid), 1);
   ReSizeGridRow(Sender as TUltraGrid,1,ARow);
end;





procedure TMDN110FP.pc_MonitorChange(Sender: TObject);
var
   i : Integer;
begin
// OK
   // ���� ����..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  //����ǥ�ü���
   end;

   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);


   if pc_Monitor.ActivePageIndex = 1 then
   begin
      rbt_Moni.Checked := True;

      rbt_MoniClick(Nil);
   end
   else
   begin
      if ed_PreOrdDate.Text <> '' then
      begin
         GetMonitorDayInfo(ed_PreOrdDate.Text);
      end;
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
// OK
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);
   Clear_Grid(ugd_Monitoring, ugd_Monitoring.ColCount);


   //

    showmessage(X_PatNo + ' ' + X_PatName + ' ' + X_SexAge);

   pc_Monitor.ActivePageIndex := 0;

   dtp_RgtDate_Date := (GetComp('MDN110FM', 'dtp_RgtDate') as TDateTimePicker);
   dtp_RgtDate.Date := dtp_RgtDate_Date.Date;

   //showmessage('1');

   // Set ����
   if X_SetType = 'ICUIF' then
      lb_SetTypeName.Caption := 'Interface'
   else if X_SetType = 'MON' then
      lb_SetTypeName.Caption := '����͸�';


       // showmessage('2');

   if      g_Mode = 'I' then
   begin
      bbt_Delete.Enabled := False;
      showmessage('I');
   end
   else if g_Mode = 'U' then
   begin
      bbt_Delete.Enabled := True;

      showmessage('U');

      GetMonitorDayList;
   end;

     // showmessage('3');

   // ���� ���� ��ȸ
   //GetDayList;

end;






procedure TMDN110FP.GetDayList;
var
   i, RowNo : Integer;

begin
// OK
   Clear_Grid(ugd_DayList, ugd_DayList.ColCount);
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);



   //----------------------------------------------------------------
   // ȯ�ں� �������� ����Ʈ ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      mdIcrect := HmdIcrect.Create;


//      RowNo := mdIcrect.GetMonitorDayList('1', P_PatNo, P_AdmDate, '', P_Settype);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcrect.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         ed_PreOrdDate.Text := '';
         Exit;
      end;

      ugd_DayList.RowCount := RowNo;

      for i := 0 to RowNo - 1 do
      begin
         with mdIcrect, ugd_DayList do
         begin
            Cells[0, i] := sActdate[i];
         end;
      end;

      mdIcrect.Free;

      if     g_Mode = 'I' then
      begin
         ed_PreOrdDate.Text := CopyByte(ugd_DayList.Cells[0,0],1,4)+'-' +
                               CopyByte(ugd_DayList.Cells[0,0],5,2)+'-' +
                               CopyByte(ugd_DayList.Cells[0,0],7,2);
      end
      else if g_Mode = 'U' then
      begin
         ed_PreOrdDate.Text := FormatDateTime('yyyy-mm-dd', dtp_RgtDate_Date.date);
      end;


      // Ư������ Interface ���� ���� ��ȸ
      GetMonitorDayInfo(ed_PreOrdDate.Text);

   finally
      Screen.Cursor := crDefault;
   end;

end;






procedure TMDN110FP.rbt_MoniClick(Sender: TObject);
var
   sType1, sType2, sType3, sType4, sType5 : String;
   i, RowNo : Integer;
begin
// OK
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);



   sType1 := '3';
   sType2 := '';
   sType3 := '';
   sType4 := '';



   Screen.Cursor   := crHourglass;

   try
      mdIcrect := HmdIcrect.Create;



      RowNo := mdIcrect.GetMonitorDayList(sType1, sType2, sType3, sType4, X_Settype);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcrect.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         //MakeMsg(CF_D420, NF010, NF020, StatusBar1);
         Exit;
      end;




      ugd_Monitor.RowCount := 1;

      with mdIcrect, ugd_Monitor do
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

      mdIcrect.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;





procedure TMDN110FP.ugd_MonitorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   iCnt, i, j, SelCol, SelRow, BeginRow, EndRow: Integer;

begin

// OK
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





//Grid ����ǥ�� ����/����
procedure TMDN110FP.SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);
var
   i : Integer;
   clGridColor,clGridFontColor : TColor;
begin
// OK
   with (Sender as TUltraGrid) do
   begin
      //����ǥ��,����
      if (IsSelect) then
      begin
         Cells[iCol,iRow] := 'Y';                 //����ǥ�ü���
         clGridColor      := $00FEE7CF;          //Selected Row Color ����
         clGridFontColor  := SelectedRowFontColor;//Selected Row Font Color ����
      end
      else
      begin
         Cells[iCol,iRow] := '';                  //����ǥ������
         if (iRow mod 2) = 0 then                 //Grid Base Color ����
              clGridColor := Color
         else clGridColor := GridRowColor;
         clGridFontColor  := Font.Color;          //Grid Base Font Color ����
      end;

      //Row Color ĥ�ϱ�
      for i := 0 to 15 do
          SetColor(i,iRow,clGridColor);
   end;
end;





procedure TMDN110FP.cbx_AllClick(Sender: TObject);
var
   iRow : integer;
begin
// OK

   //��üRow ���� ǥ��
   if (cbx_All.Checked) then
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, True );     //Row ����ǥ��
         ugd_Monitor.Cells[30,iRow] := '';
      end;
   end
   //��üRow ���� ����
   else
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, False); //Row ����ǥ������
         ugd_Monitor.Cells[30,iRow] := '';
      end;
   end;
   ugd_Monitor.Repaint;
end;





procedure TMDN110FP.ugd_MonitorMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
   SelCol,SelRow : Integer;
   i, iCnt : Integer;
   FForm : TForm;

begin
// OK
   if Button <> mbLeft then Exit;

   //<���������> Cell ���ý� ==> ó������ȸ/ó����೻�� Form Call
   ugd_Monitor.MouseToCell(X,Y,SelCol,SelRow);

   //���ù����� ���� ����ǥ�� ���� : <MouseDown�� Row> ���� <����Row> ����
   if (Not ((ssShift in Shift) or (ssCtrl in Shift) or (ssDouble in Shift))) and
      (ugd_Monitor.Tag <> SelRow) then
       ugd_MonitorMouseDown(Sender, Button, [ssShift], X, Y);
end;




procedure TMDN110FP.rbt_MedClick(Sender: TObject);
begin
// OK
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);
end;

procedure TMDN110FP.rbt_IOClick(Sender: TObject);
begin
// OK
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);
end;






procedure TMDN110FP.sbt_MonitorCopyClick(Sender: TObject);
var
   i, j, k, iCnt, MCnt : Integer;
begin
// OK
   // ugd_Monitor.Col  0: Title, 1: SetCode, 2: UpCode, 25: ���ÿ���

   // ���� �ڵ� ���� ���� ��� ����Ÿ ó�� �ϱ�
   for i := 0 to ugd_Monitor.RowCount-1 do
   begin

      if (ugd_Monitor.Cells[25,i] = 'Y') and (ugd_Monitor.Cells[2, i] <> '') then
      begin
         for j := 0 to ugd_Monitor.RowCount-1 do
         begin
            if ugd_Monitor.Cells[2,i] = ugd_Monitor.Cells[1,j] then
               SelectCell(ugd_Monitor,25,j,True );  //����ǥ�ü���
            if (ugd_Monitor.Cells[25,j] = 'Y') and (ugd_Monitor.Cells[2, j] <> '') then
            begin
               for k := 0 to ugd_Monitor.RowCount-1 do
               begin
                  if ugd_Monitor.Cells[2,j] = ugd_Monitor.Cells[1,k] then
                  SelectCell(ugd_Monitor,25,k,True );  //����ǥ�ü���
               end;
            end;
         end;
      end;
   end;

   ugd_Monitor.Repaint;

   if   trim(ugd_Monitoring.Cells[0,0]) = '' then MCnt := 0
   else                                           MCnt := ugd_Monitoring.RowCount;

   // �ߺ� ����Ÿ ���� ����Ÿ �ѷ��ֱ�..
   for i := 0 to ugd_Monitor.RowCount-1 do
   begin
      if (ugd_Monitor.Cells[25,i] = 'Y') then
      begin
         //if GetFindProgress(ugd_Monitor.Cells[1,i], MCnt) then
         if GetFindProgress(ugd_Monitor.Cells[1,i], ugd_Monitoring.RowCount-1) then
         begin
            ugd_Monitoring.Cells[0, MCnt] := ugd_Monitor.Cells[0, i];
            ugd_Monitoring.Cells[1, MCnt] := ugd_Monitor.Cells[1, i];
            ugd_Monitoring.Cells[2, MCnt] := ugd_Monitor.Cells[2, i];
            ugd_Monitoring.Cells[3, MCnt] := 'N';  //New Insert ���

            MCnt := Mcnt + 1;
         end;
      end;
   end;

   ugd_Monitoring.RowCount := MCnt;

   // �׸� ���� ���� ���� ���� ��� ���� ���ϰ�..
   bbt_Delete.Enabled := False;

   //Dispseq ������ Sorting..
   //QuickSortGrid(���Grid,����Row,����Row,����Col,Ascendig/Decending);
   QuickSortGrid(ugd_Monitoring,0,ugd_Monitoring.RowCount-1,4,False);

   ugd_Monitoring.Repaint;

end;





function TMDN110FP.GetFindProgress(sType1:String; iNum :integer):Boolean;
var
   i : integer;
begin
// OK
   GetFindProgress := False;

   for i := 0 to iNum do
   begin
      if sType1 = ugd_Monitoring.Cells[1, i] then
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

procedure TMDN110FP.sbt_MonitorCopyAllClick(Sender: TObject);
begin
// OK
   cbx_All.Checked := True;
   cbx_AllClick(Nil);
   sbt_MonitorCopyClick(Sender);
end;

procedure TMDN110FP.ugd_MonitoringKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// OK

{ // �ϴ� �ӽ÷� �߰��ϴ� �׸��� ����. 2006.11.10 ��뼭��...
   if key = VK_RETURN then
   begin
      with ugd_Monitoring do
      begin
         if Cells[0,0] <> '' then InsertRow(RowCount);

         ed_Input.Top   := Top + CellRect(0,RowCount).Top - DefaultRowHeight;
         ed_Input.Left  := CellRect(0,RowCount).Left + 1;

         ed_Input.Clear;
         ed_Input.Visible := True;
         ed_Input.SetFocus;
      end;
   end;
}
end;

procedure TMDN110FP.ugd_MonitoringDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
// OK
   ReSizeGridCol((Sender as TUltragrid), 1);
   ReSizeGridRow(Sender as TUltraGrid,1,ARow);
end;

procedure TMDN110FP.ed_InputEnter(Sender: TObject);
begin
// OK
   ed_Input.Tag := 0;  //Tag �ʱ�ȭ
   if (ugd_Monitoring.Cells[0,ugd_Monitoring.Row] <> '') then
       ed_InputExit(Nil);
end;

procedure TMDN110FP.ed_InputExit(Sender: TObject);
begin
// OK
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
// OK
   if Key = VK_ESCAPE then ed_InputExit(Nil);
end;

procedure TMDN110FP.ed_InputKeyPress(Sender: TObject; var Key: Char);
var
   i, iCnt : integer;
   ValCheck : Boolean;
   sTemp    : String;
begin
// OK
   //[Enter] Key �ƴѰ��, Exit
   if Key <> #13 then Exit;

   if key = #13 then
   begin
      ValCheck := False;

      if ed_Input.Text = '' then ed_InputExit(Nil);

      iCnt := 0;
      for i := 0 to ugd_Monitoring.RowCount - 1 do
      begin
         // ��Ÿ �׸� Ÿ��Ʋ ó�� ����
         if ugd_Monitoring.Cells[1, i] = 'T9999' then ValCheck := True;
         // upcode�� ��Ÿ �׸��� ���� ��� �ƽ������� ó��
         if ugd_Monitoring.Cells[3, i] = 'T9999' then
         begin
            sTemp := ugd_Monitoring.Cells[0, i];
         end;
      end;

      if ValCheck = False then
      begin
         ugd_Monitoring.Cells[0, ugd_Monitoring.Row] := '�� Ÿ';  // Title
         ugd_Monitoring.Cells[1, ugd_Monitoring.Row] := 'T9999';  // sProgcd
         ugd_Monitoring.Cells[2, ugd_Monitoring.Row] := '';       // sUpcode

         ugd_Monitoring.RowCount := ugd_Monitoring.RowCount + 1;

         ugd_Monitoring.Cells[0, ugd_Monitoring.Row+1] := ' ' + ed_Input.Text;  // Title
         ugd_Monitoring.Cells[1, ugd_Monitoring.Row+1] := 'PT101';              // sProgcd
         ugd_Monitoring.Cells[2, ugd_Monitoring.Row+1] := 'T9999';        // sUpcode
      end
      else
      begin
         // temp �ؿ� �߰�
         ugd_Monitoring.Cells[0, ugd_Monitoring.Row] := ' ' + ed_Input.Text;                                               // Title
         ugd_Monitoring.Cells[1, ugd_Monitoring.Row] := 'PT' + Inttostr(Strtoint(CopyByte(ugd_Monitoring.Cells[1, ugd_Monitoring.Row-1],3,3)) + 1);              // sProgcd
         ugd_Monitoring.Cells[2, ugd_Monitoring.Row] := 'T9999';                                                           // sUpcode
      end;
      ed_InputExit(Nil);
   end;
end;

procedure TMDN110FP.ugd_MonitorDblClick(Sender: TObject);
begin
// OK
   sbt_MonitorCopyClick(Nil);
end;

procedure TMDN110FP.bbt_FirstDateClick(Sender: TObject);
var
   i : integer;
begin
//OK
   // ���� ����..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  //����ǥ�ü���
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
      else Exit;

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
   i, RowNo, k : Integer;
   tmp_Title : String;

begin
// OK
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);



   //----------------------------------------------------------------
   // Interface ���� ���� ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      mdIcrect := HmdIcrect.Create;


      //------------------------------------------------
      // 1. Set Parameter Value
      //------------------------------------------------
      sType1 := '2';                               // ��ȸ����('2')
//      sType2 := P_Patno;                           // ȯ�ڹ�ȣ
//      sType3 := P_AdmDate;                         // �Կ�����(YYYYMMDD)
      sType4 := DelChar(ed_PreOrdDate.text,'-');   // ��������


      //------------------------------------------------
      // 2. Load Data
      //------------------------------------------------
//      RowNo := mdIcrect.GetMonitorDayList(sType1, sType2, sType3, sType4, P_Settype);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcrect.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         Exit;
      end;




      ugd_Monitor.RowCount := 1;

      k:=0;
      tmp_Title := '';

      for i := 0 to RowNo - 1 do
      begin
         with mdIcrect, ugd_Monitor do
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

      mdIcrect.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;





//------------------------------------------------------------------------------
// ���ں� ���� ���� ��ȸ...
//
// Author :
// Date   :
//------------------------------------------------------------------------------
procedure TMDN110FP.GetMonitorDayList;
var
   sGubun, sPatNo, sOrdDate, sLocate : String;
   nRow, i, RowNo, k : Integer;
   tmp_Title : String;



begin

// OK

   Clear_Grid(ugd_Monitoring, ugd_Monitoring.ColCount);


   showmessage('GetMonitorDayList ' );

   //----------------------------------------------------------------
   // ���ں� ó�泻�� ��ȸ
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try

   {
      mdIcrect := HmdIcrect.Create;


      //-----------------------------------------------
      // 1. Set Parameter Value
      //-----------------------------------------------
      sType1 := '2';                                           // ��ȸ����
      sType2 := P_Patno;                                       // ȯ�ڹ�ȣ
      sType3 := P_AdmDate;                                     // �Կ�����(YYYYMMDD)
      sType4 := FormatDateTime('YYYYMMDD', dtp_RgtDate.Date);  // ��ȸ����(YYYYMMDD)



      //-----------------------------------------------
      // 2. Load Data
      //-----------------------------------------------
      RowNo := mdIcrect.GetMonitorDayList(sType1, sType2, sType3, sType4, P_Settype);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcrect.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         bbt_Delete.Enabled := False;
         g_Mode := 'I';
         Exit;
      end;

      }


      // Create Class
      mdOrderv := HmdOrderv.Create;

      // Assign Input Parameter(s)..
      sGubun   := '3';                                               //��ȸ����('3'=Ư��ó���Ͽ� ���� ó�泻��)
      sPatNo   := X_PatNo; //pn_PatNo.Caption;                                          //ȯ�ڹ�ȣ
      sOrdDate := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);                   //ó����
      sLocate  := G_LOCATE;                                          //�����


      // ����Class Function Call (Ư��ó���Ͽ� ���� ó�泻��List SELECT)
      RowNo := mdOrderv.PreOrderSelect(sGubun,sPatNo,sOrdDate,sLocate);


      //������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg;
         Exit;
      end;


      //�ڷ�Ǽ�=0�ΰ��, Exit
      if (RowNo = 0) then
      begin
         mdOrderv.Free;
         Exit;
      end;


      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitoring.RowCount := 1;

      k:=0;
      tmp_Title := '';


      //Select�� Data�� Grid�� Display
      nRow := 1;


      for i := 0 to RowNo-1 do
      begin
         if (mdOrderv.sSlipCd[i] = 'D22') then       // ����(Fluid) ��ȸ
         begin
            ugd_Monitoring.Cells[0,nRow] := mdOrderv.sOrdDesc[i];
            ugd_Monitoring.Cells[1,nRow] := mdOrderv.sOrdName[i];
            ugd_Monitoring.Cells[2,nRow] := mdOrderv.sOrdCd[i];
            ugd_Monitoring.Cells[3,nRow] := mdOrderv.sOrdDate[i];
            ugd_Monitoring.Cells[4,nRow] := mdOrderv.sOrdSeqno[i];
            Inc(nRow);
         end;
      end;


      if nRow < 2 then
         ugd_Monitoring.RowCount := 2
      else
         ugd_Monitoring.RowCount := nRow;


      mdOrderv.Free;


      {
      for i := 0 to RowNo - 1 do
      begin
         with mdIcrect, ugd_Monitoring do
         begin
            if tmp_Title = sUpTitle[i] then
            begin
               // Interface �׸��
               if CopyByte(sUpCode[i],2,2) = '00' then
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // �׸��ڵ�
               Cells[2, RowCount-1] := sUpCode [i];   // �����׸� �ڵ�
            end
            else
            begin
               // Interface �׸��
               if CopyByte(sUpCode[i],2,2) = '00' then
               begin
                  Cells[0, RowCount-1] := sUpTitle[i];
                  tmp_Title := sUpTitle[i];
                  RowCount := RowCount + 1;
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               end
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // �׸��ڵ�
               Cells[2, RowCount-1] := sUpCode [i];   // �����׸� �ڵ�
            end;

            RowCount := RowCount + 1;

         end;
      end;



      ugd_Monitoring.RowCount := ugd_Monitoring.RowCount - 1;

      mdIcrect.Free;

      }

      bbt_Delete.Enabled := True;

      g_Mode := 'U';

   finally
      Screen.Cursor := crDefault;
   end;
end;





//------------------------------------------------------------------------------
// [����] Button onClick Event Handler
//
// Author :
// Date   :
//------------------------------------------------------------------------------
procedure TMDN110FP.bbt_AddClick(Sender: TObject);
var
   i, j, Rowno: Integer;
   sType : String;

begin

// OK
   j := 0;


   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   if (Trim(X_Patno)= '') then
   begin
      showmessage('�ۼ��� ȯ�ڰ� ���õ��� �ʾҽ��ϴ�.');
      Exit;
   end;

   if dtp_RgtDate.Date < StrToDate(ConvertSDate(X_AdmDate)) then
   begin
      showmessage('�����Ͻ� �ۼ����ڰ� �Կ����ں��� �۽��ϴ�' + #13#10 +
                  '�ۼ����ڸ� ������ �ֽʽÿ�!!');
      Exit;
   end;



   //-----------------------------------------------------------------
   // 2. Monitoring �׸� ����
   //-----------------------------------------------------------------
   Screen.Cursor := crHourglass;

   try
      mdIcrect := HmdIcrect.Create;


      //-----------------------------------------------
      // 2.1. Set Parameter Value
      //-----------------------------------------------
      sType := '1';

      with mdIcrect do
      begin
         sPatno   := X_PatNo  ;
         sAdmDate := X_AdmDate;
         sActDate := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);
         sSetType := X_Settype;
         sEditId  := md_UserId;

         for i:=0 to ugd_Monitoring.RowCount-1 do
         begin
            if (X_Settype = 'ICUIF') or ((ugd_Monitoring.Cells[3, i] = 'N') and (ugd_Monitoring.Cells[2, i] <> '')) then
            begin

//               AppendVariant(sPatno   , P_PatNo  );
//               AppendVariant(sAdmDate , P_AdmDate);
//               AppendVariant(sActDate , FormatDateTime('yyyymmdd', dtp_RgtDate.Date));
//               AppendVariant(sSetType , P_Settype);
               AppendVariant(sSetCode , ugd_Monitoring.Cells[1, i]);
//               AppendVariant(sEditId  , md_UserId);

               j := j + 1;
            end;
         end;
      end;


      //-----------------------------------------------
      // 2.2. Execute Transaction
      //-----------------------------------------------
      RowNo := mdIcrect.InsertDayMonitorList(sType, j);



      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         mdIcrect.Free;
         exit;
      end;


      mdIcrect.Free;

      stb_Message.Panels[0].Text := '����Ǿ����ϴ�.';

      g_Mode := 'U';

      bbt_Delete.Enabled := True;

   finally
      GetMonitorDayList;

      screen.Cursor := crDefault;
   end;

end;






//------------------------------------------------------------------------------
// [�׸� ����] Button onClick Event Handler
//
// Author :
// Date   :
//------------------------------------------------------------------------------
procedure TMDN110FP.bbt_DeleteClick(Sender: TObject);
var
   i, j, RowNo : integer;
   sType  : String;

begin

   //------------------------------------------------------------------
   // 1. Check
   //------------------------------------------------------------------
   // ���� �� Row ó��..
   with ugd_Monitoring do
   begin
      if Cells[ 0, Row] = '' then
      begin
         Showmessage('���� �Ͻ� �׸��� �����ϴ�.');
         Exit;
      end;

      // Ÿ��Ʋ �׸��� ��� ���� �Ұ� ó��
      if Cells[ 2, Row] = '' then   // UpCode = '' �� Title
      begin
         Showmessage('���� �Ͻ� �׸��� Ÿ��Ʋ �׸��Դϴ�.' + #13#10 + #13#10 +
                     '���� �׸��� �����ϸ� �ڵ� �����˴ϴ�.');
         Exit;
      end;

      // ���� �ڵ带 ������ ���� ��� ���� �� �ϰ�
      for i := 0 to RowCount - 1 do
      begin
         if Cells[1,Row] = Cells[2, i] then
         begin
            Showmessage('���� �Ͻ� �׸��� ���� �׸��� �����ϰ� �ֽ��ϴ�.' +#13#13+
                        '���� ���� �׸��� ���� �ϼž� �մϴ�.');
            Exit;
         end;
      end;

      if Application.MessageBox('����͸� �׸� �� �Էµ� ��� ������ ���� �մϴ�. �����Ͻðڽ��ϱ�?','Ȯ��', MB_OKCANCEL) <> IDOK then
         exit;




      //------------------------------------------------------------------
      // 2. �׸� ����
      //------------------------------------------------------------------
      Screen.Cursor  :=  crHourglass;

      try
         j := 0;

         //---------------------------------------------
         // 2.1. Set Parameter Value
         //---------------------------------------------
         sType := '2';

         mdIcrect := HmdIcrect.Create;


         mdicrect.sPatno   := X_PatNo  ;
         mdicrect.sAdmDate := X_AdmDate;
         mdicrect.sActDate := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);
         mdicrect.sSetType := X_Settype;
         mdicrect.sEditId  := md_UserId;

         AppendVariant(mdicrect.sSetCode, Cells[1, Row]);
{
         AppendVariant(mdIcrect.sEditIp , G_USERIP );
         AppendVariant(mdIcrect.sActTime, '');
         AppendVariant(mdIcrect.sItemCode,'');
         AppendVariant(mdIcrect.sItemVal, '');
}
         j := j + 1;



         //---------------------------------------------
         // 2.2. Execute Transaction
         //---------------------------------------------
         RowNo := mdIcrect.InsertDayMonitorList(sType, j);



         if Rowno <> 1 then
         begin
            ShowErrMsg(stb_Message);
            mdIcrect.Free;
            exit;
         end;


         mdIcrect.Free;

         stb_Message.Panels[0].Text := '�����Ǿ����ϴ�.';



         // �Ϻ� ���� ���� Refresh
         GetMonitorDayList;


         if Trim(Cells[0, 0]) = '' then
         begin
            g_Mode := 'I';
            bbt_Delete.Enabled := False;
            GetDayList;
         end
         else
         begin
            g_Mode := 'U';
            bbt_Delete.Enabled := True;
         end;
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
// OK
   GetMonitorDayList;
end;

procedure TMDN110FP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TMDN110FP.FormCreate(Sender: TObject);
begin
   showmessage('Form Create');

   pn_PatNo.Caption   := X_PatNo;
   pn_PatName.Caption := X_PatName;
   pn_SexAge.Caption  := X_SexAge;
end;

initialization
    RegisterClass(TMDN110FP);

finalization
    UnRegisterClass(TMDN110FP);
end.

