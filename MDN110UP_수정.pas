{===============================================================================
   Program ID    : MDN110UP
   Program Name  : 중환자실 Monitoring항목 처방 Mapping 관리
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

    // 작성된 전일내역 조회
    procedure GetDayList;

    // 특정일자 Interface 적용 내역 조회
    Procedure GetMonitorDayInfo(sTemp:String);

    // 작성 내역 조회...
    procedure GetMonitorDayList;


  public
    { Public declarations }
    dtp_RgtDate_Date : TDateTimePicker;
    g_Mode    : String;
    X_PatNo, X_PatName, X_AdmDate, X_SexAge, X_Settype : String;

  published
    { Public declarations }
    property prop_Mode     : String write g_Mode;     // 입력모드
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
   // 선택 해제..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  //선택표시설정
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

   // Set 구분
   if X_SetType = 'ICUIF' then
      lb_SetTypeName.Caption := 'Interface'
   else if X_SetType = 'MON' then
      lb_SetTypeName.Caption := '모니터링';


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

   // 전일 내역 조회
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
   // 환자별 적용일자 리스트 조회
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

      // 조회건수 없음
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


      // 특정일자 Interface 적용 내역 조회
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


      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
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
      //Mouse위치
      ugd_Monitor.MouseToCell(X, Y, SelCol, SelRow);

      //(1) [Shift]+Click : 선택범위에 대해 선택표시 설정/해제
      if (ssShift in Shift) and (Button = mbLeft) then
      begin
         //선택범위 Position 설정
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
         //해당범위 선택표시설정
         for i := 0 to Rowcount - 1 do
         begin
            if (BeginRow <= i) and (i <= EndRow) then
               SelectCell(ugd_Monitor,25,i,True )  //선택표시설정
            else
               SelectCell(ugd_Monitor,25,i,False); //선택표시해제
         end;
      end

      //(2) [Ctrl]+Click : Click한 Row 선택표시 Toggle
      else if (ssCtrl in Shift) and (Button = mbLeft) then
      begin
         //선택표시 설정/해제 Toggle
         if (Cells[25,SelRow] = '') then
            SelectCell(ugd_Monitor,25,SelRow,True )  //선택표시
         else
            SelectCell(ugd_Monitor,25,SelRow,False); //선택표시해제
      end

      //(3) Mouse [Left] Button Click : Click한 Row만 선택표시
      else if (Button = mbLeft) then
      begin
         //Click한 Row만 선택표시, 블럭지정 시작Row로 설정
         cbx_All.Checked := False;
         for i := 0 to RowCount - 1 do
         begin
            SelectCell(ugd_Monitor,25,i,False);
            Cells[30,i] := '';
         end;
         SelectCell(ugd_Monitor,25,SelRow,True);
         Cells[30,SelRow] := 'Y';    //선택시작Row 표시
         ugd_Monitor.Tag  := SelRow; //선택시작Row지정(Mouse Drag시 블럭설정하기 위해)
      end

      //(4) Mouse [Right] Button Click - //Click한 위치로 Position이동후 Popup Menu View
      else if (Button = mbRight) then
      begin
         //선택Row가 여러건인 경우, Exit
         iCnt := 0;

         for i := 0 to RowCount - 1 do
         begin
            if (Cells[25,i] = 'Y') then Inc(iCnt);
            if (iCnt > 1) then Exit;
         end;

         //선택Row 1건인 경우, Click 위치로 Position 이동
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





//Grid 선택표시 설정/해제
procedure TMDN110FP.SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);
var
   i : Integer;
   clGridColor,clGridFontColor : TColor;
begin
// OK
   with (Sender as TUltraGrid) do
   begin
      //선택표시,해제
      if (IsSelect) then
      begin
         Cells[iCol,iRow] := 'Y';                 //선택표시설정
         clGridColor      := $00FEE7CF;          //Selected Row Color 지정
         clGridFontColor  := SelectedRowFontColor;//Selected Row Font Color 지정
      end
      else
      begin
         Cells[iCol,iRow] := '';                  //선택표시해제
         if (iRow mod 2) = 0 then                 //Grid Base Color 지정
              clGridColor := Color
         else clGridColor := GridRowColor;
         clGridFontColor  := Font.Color;          //Grid Base Font Color 지정
      end;

      //Row Color 칠하기
      for i := 0 to 15 do
          SetColor(i,iRow,clGridColor);
   end;
end;





procedure TMDN110FP.cbx_AllClick(Sender: TObject);
var
   iRow : integer;
begin
// OK

   //전체Row 선택 표시
   if (cbx_All.Checked) then
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, True );     //Row 선택표시
         ugd_Monitor.Cells[30,iRow] := '';
      end;
   end
   //전체Row 선택 해제
   else
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, False); //Row 선택표시해제
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

   //<결과및진행> Cell 선택시 ==> 처방결과조회/처방수행내역 Form Call
   ugd_Monitor.MouseToCell(X,Y,SelCol,SelRow);

   //선택범위에 대해 선택표시 설정 : <MouseDown시 Row> 부터 <현재Row> 까지
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
   // ugd_Monitor.Col  0: Title, 1: SetCode, 2: UpCode, 25: 선택여부

   // 상위 코드 값이 있을 경우 데이타 처리 하기
   for i := 0 to ugd_Monitor.RowCount-1 do
   begin

      if (ugd_Monitor.Cells[25,i] = 'Y') and (ugd_Monitor.Cells[2, i] <> '') then
      begin
         for j := 0 to ugd_Monitor.RowCount-1 do
         begin
            if ugd_Monitor.Cells[2,i] = ugd_Monitor.Cells[1,j] then
               SelectCell(ugd_Monitor,25,j,True );  //선택표시설정
            if (ugd_Monitor.Cells[25,j] = 'Y') and (ugd_Monitor.Cells[2, j] <> '') then
            begin
               for k := 0 to ugd_Monitor.RowCount-1 do
               begin
                  if ugd_Monitor.Cells[2,j] = ugd_Monitor.Cells[1,k] then
                  SelectCell(ugd_Monitor,25,k,True );  //선택표시설정
               end;
            end;
         end;
      end;
   end;

   ugd_Monitor.Repaint;

   if   trim(ugd_Monitoring.Cells[0,0]) = '' then MCnt := 0
   else                                           MCnt := ugd_Monitoring.RowCount;

   // 중복 데이타 빼고 데이타 뿌려주기..
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
            ugd_Monitoring.Cells[3, MCnt] := 'N';  //New Insert 대상

            MCnt := Mcnt + 1;
         end;
      end;
   end;

   ugd_Monitoring.RowCount := MCnt;

   // 항목에 대한 변경 값이 있을 경우 삭제 못하게..
   bbt_Delete.Enabled := False;

   //Dispseq 순으로 Sorting..
   //QuickSortGrid(대상Grid,시작Row,종료Row,소팅Col,Ascendig/Decending);
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

{ // 일단 임시로 추가하는 항목은 막음. 2006.11.10 김용서비...
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
   ed_Input.Tag := 0;  //Tag 초기화
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
   //[Enter] Key 아닌경우, Exit
   if Key <> #13 then Exit;

   if key = #13 then
   begin
      ValCheck := False;

      if ed_Input.Text = '' then ed_InputExit(Nil);

      iCnt := 0;
      for i := 0 to ugd_Monitoring.RowCount - 1 do
      begin
         // 기타 항목 타이틀 처리 여부
         if ugd_Monitoring.Cells[1, i] = 'T9999' then ValCheck := True;
         // upcode에 기타 항목이 있을 경우 맥스값으로 처리
         if ugd_Monitoring.Cells[3, i] = 'T9999' then
         begin
            sTemp := ugd_Monitoring.Cells[0, i];
         end;
      end;

      if ValCheck = False then
      begin
         ugd_Monitoring.Cells[0, ugd_Monitoring.Row] := '기 타';  // Title
         ugd_Monitoring.Cells[1, ugd_Monitoring.Row] := 'T9999';  // sProgcd
         ugd_Monitoring.Cells[2, ugd_Monitoring.Row] := '';       // sUpcode

         ugd_Monitoring.RowCount := ugd_Monitoring.RowCount + 1;

         ugd_Monitoring.Cells[0, ugd_Monitoring.Row+1] := ' ' + ed_Input.Text;  // Title
         ugd_Monitoring.Cells[1, ugd_Monitoring.Row+1] := 'PT101';              // sProgcd
         ugd_Monitoring.Cells[2, ugd_Monitoring.Row+1] := 'T9999';        // sUpcode
      end
      else
      begin
         // temp 밑에 추가
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
   // 선택 해제..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  //선택표시설정
   end;

   if ugd_DayList.Cells[0,0] <> '' then
   begin
      //[Previous] Button Click시
      if (Sender = bbt_PrevDate) and (ugd_DayList.Row < ugd_DayList.RowCount-1) then
          ugd_DayList.Row := ugd_DayList.Row + 1
      //[Next] Button Click시
      else if (Sender = bbt_NextDate) and
              (ugd_DayList.Row > 0) then
          ugd_DayList.Row := ugd_DayList.Row - 1
      //[First] Button Click시
      else if (Sender = bbt_FirstDate) and
              (ugd_DayList.Row <> ugd_DayList.RowCount-1) then
          ugd_DayList.Row := ugd_DayList.RowCount-1
      //[Last] Button Click시
      else if (Sender = bbt_LastDate) and
              (ugd_DayList.Row <> 0) then
          ugd_DayList.Row := 0
      else Exit;

      //해당 처방일에 대한 처방상세 List 조회
      ed_PreOrdDate.Text := CopyByte(ugd_DayList.Cells[0,ugd_DayList.Row],1,4)+'-' +
                            CopyByte(ugd_DayList.Cells[0,ugd_DayList.Row],5,2)+'-' +
                            CopyByte(ugd_DayList.Cells[0,ugd_DayList.Row],7,2);
      GetMonitorDayInfo(ed_PreOrdDate.Text);
      ugd_Monitor.SetFocus;
   end;
end;




//------------------------------------------------------------------------------
// 특정일자 Interface 적용 내역 조회
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
   // Interface 적용 내역 조회
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      mdIcrect := HmdIcrect.Create;


      //------------------------------------------------
      // 1. Set Parameter Value
      //------------------------------------------------
      sType1 := '2';                               // 조회구분('2')
//      sType2 := P_Patno;                           // 환자번호
//      sType3 := P_AdmDate;                         // 입원일자(YYYYMMDD)
      sType4 := DelChar(ed_PreOrdDate.text,'-');   // 적용일자


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

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
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
               // Interface 항목명
               if CopyByte(sUpCode[i],2,2) = '00' then
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // 항목 코드
               Cells[2, RowCount-1] := sUpCode [i];   // 상위항목 코드
            end
            else
            begin
               if CopyByte(sUpCode[i],2,2) = '00' then
               begin
                  Cells[0, RowCount-1] := sUpTitle[i];   // 항목명


                  // Hidden Information
                  Cells[1, RowCount-1] := sUpCode[i];    // 상위항목 코드
                  Cells[2, RowCount-1] := '';

                  tmp_Title := sUpTitle[i];
                  RowCount  := RowCount + 1;
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               end
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // 항목 코드
               Cells[2, RowCount-1] := sUpCode [i];   // 상위항목 코드
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
// 일자별 적용 내역 조회...
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
   // 일자별 처방내역 조회
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try

   {
      mdIcrect := HmdIcrect.Create;


      //-----------------------------------------------
      // 1. Set Parameter Value
      //-----------------------------------------------
      sType1 := '2';                                           // 조회구분
      sType2 := P_Patno;                                       // 환자번호
      sType3 := P_AdmDate;                                     // 입원일자(YYYYMMDD)
      sType4 := FormatDateTime('YYYYMMDD', dtp_RgtDate.Date);  // 조회일자(YYYYMMDD)



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

      // 조회건수 없음
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
      sGubun   := '3';                                               //조회구분('3'=특정처방일에 대한 처방내역)
      sPatNo   := X_PatNo; //pn_PatNo.Caption;                                          //환자번호
      sOrdDate := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);                   //처방일
      sLocate  := G_LOCATE;                                          //사업장


      // 공통Class Function Call (특정처방일에 대한 처방내역List SELECT)
      RowNo := mdOrderv.PreOrderSelect(sGubun,sPatNo,sOrdDate,sLocate);


      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg;
         Exit;
      end;


      //자료건수=0인경우, Exit
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


      //Select된 Data를 Grid에 Display
      nRow := 1;


      for i := 0 to RowNo-1 do
      begin
         if (mdOrderv.sSlipCd[i] = 'D22') then       // 수액(Fluid) 조회
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
               // Interface 항목명
               if CopyByte(sUpCode[i],2,2) = '00' then
                  Cells[0, RowCount-1] := '  ' + sSetTitle[i]
               else
                  Cells[0, RowCount-1] := '    ' + sSetTitle[i];


               // Hidden Information
               Cells[1, RowCount-1] := sSetCode[i];   // 항목코드
               Cells[2, RowCount-1] := sUpCode [i];   // 상위항목 코드
            end
            else
            begin
               // Interface 항목명
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
               Cells[1, RowCount-1] := sSetCode[i];   // 항목코드
               Cells[2, RowCount-1] := sUpCode [i];   // 상위항목 코드
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
// [적용] Button onClick Event Handler
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
      showmessage('작성할 환자가 선택되지 않았습니다.');
      Exit;
   end;

   if dtp_RgtDate.Date < StrToDate(ConvertSDate(X_AdmDate)) then
   begin
      showmessage('선택하신 작성일자가 입원일자보다 작습니다' + #13#10 +
                  '작성일자를 변경해 주십시오!!');
      Exit;
   end;



   //-----------------------------------------------------------------
   // 2. Monitoring 항목 적용
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

      stb_Message.Panels[0].Text := '저장되었습니다.';

      g_Mode := 'U';

      bbt_Delete.Enabled := True;

   finally
      GetMonitorDayList;

      screen.Cursor := crDefault;
   end;

end;






//------------------------------------------------------------------------------
// [항목 삭제] Button onClick Event Handler
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
   // 삭제 할 Row 처리..
   with ugd_Monitoring do
   begin
      if Cells[ 0, Row] = '' then
      begin
         Showmessage('선택 하신 항목이 없습니다.');
         Exit;
      end;

      // 타이틀 항목인 경우 삭제 불가 처리
      if Cells[ 2, Row] = '' then   // UpCode = '' 은 Title
      begin
         Showmessage('선택 하신 항목이 타이틀 항목입니다.' + #13#10 + #13#10 +
                     '하위 항목을 삭제하면 자동 삭제됩니다.');
         Exit;
      end;

      // 하위 코드를 가지고 있을 경우 삭제 못 하게
      for i := 0 to RowCount - 1 do
      begin
         if Cells[1,Row] = Cells[2, i] then
         begin
            Showmessage('선택 하신 항목이 하위 항목을 포함하고 있습니다.' +#13#13+
                        '먼저 하위 항목을 삭제 하셔야 합니다.');
            Exit;
         end;
      end;

      if Application.MessageBox('모니터링 항목 및 입력된 결과 내역을 삭제 합니다. 삭제하시겠습니까?','확인', MB_OKCANCEL) <> IDOK then
         exit;




      //------------------------------------------------------------------
      // 2. 항목 삭제
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

         stb_Message.Panels[0].Text := '삭제되었습니다.';



         // 일변 적용 내역 Refresh
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
   // 3. Refresh 일자별 적용 내역
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

