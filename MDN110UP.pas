{===============================================================================
   Program ID    : MDN110UP
   Program Name  : ICU 처방-Monitoring 항목 Mapping 관리
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
    g_PrevPageIdx : String;   // Grid 초기화 조건위한 이전 Page 인덱스, 2011.08.04 LSH
    P_PatNo, P_PatName, P_AdmDate, P_SexAge, P_Settype : String;


    procedure SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);

    function GetFindProgress(sType1:String; inum : Integer):Boolean;

    // 작성된 전일내역 조회
    procedure GetDayList;

    // 특정일자 Interface 적용 내역 조회
    Procedure GetMonitorDayInfo(sTemp:String);

    // 일자별 처방내역 조회 (수액/수혈)
    procedure GetMonitorDayList;

    // 일자별 적용내역 조회, 2011.08.04 LSH
    procedure GetMappingDayList;

    // Grid 초기화 (Title Row 제외)
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

   // Form 종료시, Main화면 Refresh 수행.
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

   // 선택 해제..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  //선택표시설정
   end;


   // Grid 초기화
   if (pc_Monitor.ActivePageIndex = 0) or (pc_Monitor.ActivePageIndex = 1) then
   begin
      // 이전 Tab이 [일자별 SET적용완료]일때만, 모든 Grid Clear
      if g_PrevPageIdx = '2' then
      begin
         GridClear(ugd_Monitor);
         GridClear(ugd_Monitoring);
      end;

      // 현재의 Tab-Index를 확인.
      g_PrevPageIdx := IntToStr(pc_Monitor.ActivePageIndex);

   end
   else
   begin
      GridClear(ugd_Monitor);
      GridClear(ugd_Monitoring);

      // 현재의 Tab-Index를 확인.
      g_PrevPageIdx := IntToStr(pc_Monitor.ActivePageIndex);
   end;


   // 전체선택 check-box 초기화
   cbx_All.Checked := False;

   // 상태 Message-Bar 초기화
   stb_Message.Panels[0].Text := '';


   //-------------------------------------------------
   // [모니터링 Mapping Set항목] Tab 선택시,
   //-------------------------------------------------
   if pc_Monitor.ActivePageIndex = 1 then
   begin
      bbt_Add.Enabled    := True;
      bbt_Add.Caption    := '항목저장';
      pn_Monitor.Enabled := True;

      // 선택한 구분별 [모니터링 Mapping Set 항목] 조회
      rbt_IntakeClick(Sender);

   end
   else if pc_Monitor.ActivePageIndex = 0 then
   //-------------------------------------------------
   // [일자별 처방내역] Tab 선택시,
   //-------------------------------------------------
   begin
      bbt_Add.Enabled    := True;
      bbt_Add.Caption    := '항목저장';
      pn_Monitor.Enabled := True;

      dtp_OrdDate.Date   := Date;

      // 일자별 처방조회 (수액/수혈만)
      GetMonitorDayList;
   end
   else if pc_Monitor.ActivePageIndex = 2 then
   //-------------------------------------------------
   // [일자별 SET적용완료] Tab 선택시,
   //-------------------------------------------------
   begin
      bbt_Add.Enabled    := True;
      bbt_Add.Caption    := 'SET복사';
      pn_Monitor.Enabled := False;

      dtp_AppDate.Date   := dtp_RgtDate.Date;

      // [일자별 SET적용완료] 처방내역 조회
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
   // 1. 초기화
   //------------------------------------------------------------------

   // Grid 초기화
   GridClear(ugd_Monitor);
   GridClear(ugd_Monitoring);


   pn_PatNo.Caption   := P_PatNo;
   pn_PatName.Caption := P_PatName;
   pn_SexAge.Caption  := P_SexAge;



   // 적용일자 가져오기 (from MDN110FM의 기록일자)
   dtp_FromDate := (GetComp('MDN110FM', 'dtp_RgtDate') as TDateTimePicker);


   // 적용일자
   dtp_RgtDate.Date := dtp_FromDate.Date;


   // 처방일자
   dtp_OrdDate.Date := Date;


   // 적용완료 일자
   dtp_AppDate.Date := dtp_RgtDate.Date;


   // TabSheet 초기화
   pc_Monitor.ActivePageIndex := 0;


   // 모니터링 SET 항목 구성(ICU / NICU)
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
   // 2. 조회
   //------------------------------------------------------------------
   GetMonitorDayList;


end;




// 사용안함 by LSH
procedure TMDN110FP.GetDayList;
var
   i, RowNo : Integer;
   iMons    : HmdIcutot;
begin

   Clear_Grid(ugd_DayList, ugd_DayList.ColCount);
   Clear_Grid(ugd_Monitor, ugd_Monitor.ColCount);



   //----------------------------------------------------------------
   // 환자별 적용일자 리스트 조회
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

      // 조회건수 없음
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


      // 특정일자 Interface 적용 내역 조회
      GetMonitorDayInfo(ed_PreOrdDate.Text);

   finally
      Screen.Cursor := crDefault;
   end;

end;





// 사용안함
procedure TMDN110FP.rbt_MoniClick(Sender: TObject);
var
   sType1, sType2, sType3, sType4 : String;
   i, RowNo : Integer;
   iMons    : HmdIcutot;
begin


   // Grid 초기화
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


      // 조회건수 없음
      if RowNo = 0 then
      begin

         iMons.Free;

         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
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



// Grid 선택표시 설정,해제
procedure TMDN110FP.SelectCell(Sender:TObject; iCol,iRow:Integer; IsSelect:Boolean);
var
   i : Integer;
   clGridColor,clGridFontColor : TColor;
begin

   with (Sender as TUltraGrid) do
   begin
      // 선택표시,해제
      if (IsSelect) then
      begin
         Cells[iCol,iRow] := 'Y';                  // 선택표시설정
         clGridColor      := $00C7D5FF;            // Selected Row Color 지정

         clGridFontColor  := SelectedRowFontColor; // Selected Row Font Color 지정
      end
      else
      begin
         Cells[iCol,iRow] := '';                   // 선택표시해제

         if (iRow mod 2) = 0 then                  // Grid Base Color 지정
              clGridColor := Color
         else clGridColor := GridRowColor;

         clGridFontColor  := Font.Color;           // Grid Base Font Color 지정
      end;

      // Row Color 칠하기
      for i := 0 to 15 do
          SetColor(i,iRow,clGridColor);
   end;
end;





procedure TMDN110FP.cbx_AllClick(Sender: TObject);
var
   iRow : integer;
begin

   // 전체Row 선택 표시
   if (cbx_All.Checked) then
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, True );     // Row 선택표시
         ugd_Monitor.Cells[30,iRow] := '';
      end;
   end
   // 전체Row 선택 해제
   else
   begin
      for iRow := 0 to ugd_Monitor.RowCount-1 do
      begin
         SelectCell(ugd_Monitor, 25, iRow, False);    // Row 선택표시해제
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

   // <결과및진행> Cell 선택시 ==> 처방결과조회/처방수행내역 Form Call
   ugd_Monitor.MouseToCell(X,Y,SelCol,SelRow);

   // 선택범위에 대해 선택표시 설정 : <MouseDown시 Row> 부터 <현재Row> 까지
   if (Not ((ssShift in Shift) or (ssCtrl in Shift) or (ssDouble in Shift))) and
      (ugd_Monitor.Tag <> SelRow) then
       ugd_MonitorMouseDown(Sender, Button, [ssShift], X, Y);
end;




procedure TMDN110FP.rbt_MedClick(Sender: TObject);
begin
   // Grid 초기화
   GridClear(ugd_Monitor);

end;


//-------------------------------------------
// Mapping Set항목 선택시,
//-------------------------------------------
procedure TMDN110FP.rbt_IntakeClick(Sender: TObject);
var
   sType1, sType2, sType3, sType4, sType5 : String;
   i, RowNo, nRow           : Integer;
   iMons                    : HmdIcutot;
   sCodeName, sCodeVal      : String;
begin

   // Grid 초기화
   GridClear(ugd_Monitor);



   // 조회구분 Flag 설정
   if (rbt_Intake.Checked) then
   begin
      sType1    := '1';                    // 섭취량 가변항목조회
      sCodeName := rbt_Intake.Caption;
      sCodeVal  := rbt_Intake.Name;
   end
   else if (rbt_Output.Checked) then
   begin
      sType1    := '2';                    // 배설량 가변항목조회
      sCodeName := rbt_Output.Caption;
      sCodeVal  := rbt_Output.Name;
   end
   else if (rbt_Hemo.Checked) then
   begin
      sType1    := '3';                    // 활력징후 가변항목조회, 2011.08.04 LSH
      sCodeName := rbt_Hemo.Caption;
      sCodeVal  := rbt_Hemo.Name;
   end
   else if (rbt_O2.Checked) then
   begin
      sType1    := '4';                    // [NICU] 산소요법 가변항목조회,    2011.10.27 LSH
      sCodeName := rbt_O2.Caption;
      sCodeVal  := rbt_O2.Name;
   end
   else if (rbt_Resp.Checked) then
   begin
      sType1    := '5';                   // [NICU] 인공호흡기 가변항목조회, 2011.10.27 LSH
      sCodeName := rbt_Resp.Caption;
      sCodeVal  := rbt_Resp.Name;
   end;


   {
   else if (rbt_Resp2.Checked) then
      sType1 := '6'                    // [NICU] 인공호흡기2 가변항목조회, 2011.10.27 LSH
   else if (rbt_Resp3.Checked) then
      sType1 := '7';                   // [NICU] 인공호흡기3 가변항목조회, 2011.10.27 LSH
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


      // 조회건수 없음
      if RowNo = 0 then
      begin
         iMons.Free;

         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         Exit;
      end;



      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitor.RowCount := 1;


      //Select된 Data를 Grid에 Display
      nRow := 0;


      for i := 0 to RowNo-1 do
      begin
         ugd_Monitor.Cells[0,nRow] := iMons.sSetTitle[i];
         ugd_Monitor.Cells[1,nRow] := iMons.sSetCode[i];
         ugd_Monitor.Cells[2,nRow] := iMons.sLeafYn[i];
         ugd_Monitor.Cells[3,nRow] := iMons.sInputTyp[i];
         ugd_Monitor.Cells[4,nRow] := iMons.sItemCode[i];
         ugd_Monitor.Cells[5,nRow] := sCodeName;                     // Set-Group 명 추가, 2011.10.27 LSH
         ugd_Monitor.Cells[6,nRow] := DeleteStr(sCodeVal, 'rbt_');   // Set-Group 명 추가, 2011.10.27 LSH

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
// [항목 Mapping] OnClick Event Handler
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
   // 일자별 처방내역 Tab
   //------------------------------------------------
   if (pc_Monitor.ActivePageIndex = 0) then
   begin

      if (ugd_Monitoring.Cells[6,1] = 'A') and
         (trim(ugd_Monitoring.Cells[0,1]) <> '') then
      begin
         stb_Message.Panels[0].Text := '[가변항목]은 처방내역과 맵핑하실 수 없습니다.';
         MCnt := 1;

         Exit;
      end
      else
      begin
         stb_Message.Panels[0].Text := '[일자별 처방내역]이 복사되었습니다.';
         MCnt := 1
      end;
   end
   //------------------------------------------------
   // 모니터링 SET Tab
   //------------------------------------------------
   else if (pc_Monitor.ActivePageIndex = 1) then
   begin
      if ((ugd_Monitor.Cells[2, ugd_Monitor.Row] <> 'A') and
          (ugd_Monitor.Cells[2, ugd_Monitor.Row] <> 'B') and
          (ugd_Monitor.Cells[2, ugd_Monitor.Row] <> 'Y')) and  // [구로] V/S 인터페이스 연동 가변항목 적용 (LEAFYN = Y/VARYN = Y) @ 2012.10.15 LSH
         (trim(ugd_Monitoring.Cells[1,1]) = '') then
      begin
         stb_Message.Panels[0].Text := '수액 또는 혈액 항목은 [일자별 처방내역]을 먼저 복사해주시기 바랍니다.';
         MCnt := 1;

         Exit;
      end
      else if (ugd_Monitor.Cells[2, ugd_Monitor.Row] = 'A') and
              (trim(ugd_Monitoring.Cells[1,1]) <> '') then
      begin
         stb_Message.Panels[0].Text := '[가변항목]은 처방내역과 맵핑하실 수 없습니다.';
         MCnt := 1;

         Exit;
      end
      else
      begin
         stb_Message.Panels[0].Text := '[모니터링 SET항목]이 복사되었습니다.';
         MCnt := 1;
      end;

   end;



   for i := 0 to ugd_Monitor.RowCount-1 do
   begin
      // 선택한 Row 만, Mapping  Grid로 넘긴다.
      if (ugd_Monitor.Cells[25,i] = 'Y') then
      begin


         if (pc_Monitor.ActivePageIndex = 0) then
         //----------------------------------------------
         // 일자별 처방내역 Tab 선택시,
         //----------------------------------------------
         begin
            if GetFindProgress(ugd_Monitor.Cells[1,i], ugd_Monitoring.RowCount-1) then
            // 이미 Mapping된 처방내역은 Filtering
            begin
               ugd_Monitoring.Cells[1, MCnt] := ugd_Monitor.Cells[0, i];   // 처방 Desc
               ugd_Monitoring.Cells[2, MCnt] := ugd_Monitor.Cells[1, i];   // 처방코드
               ugd_Monitoring.Cells[3, MCnt] := ugd_Monitor.Cells[2, i];   // 처방일자
               ugd_Monitoring.Cells[4, MCnt] := ugd_Monitor.Cells[3, i];   // 처방Seqno

               MCnt := Mcnt + 1;

            end;
         end
         else if (pc_Monitor.ActivePageIndex = 1) then
         //----------------------------------------------
         // Mapping Set항목 Tab 선택시,
         //----------------------------------------------
         begin
            if GetFindProgress(ugd_Monitor.Cells[1,i], ugd_Monitoring.RowCount-1) then
            // 이미 Mapping된 Set코드는 Filtering
            begin
               ugd_Monitoring.Cells[0, MCnt] := ugd_Monitor.Cells[0, i];      // Set항목 Title


               // NICU 산소요법/인공호흡기 가변항목인 경우, "항목 desc"도 같이 복사, 2011.10.27 LSH
               // [구로] ICU V/S 인터페이스 연동 가변항목 적용 (LEAFYN = Y/VARYN = Y) @ 2012.10.15 LSH
               if (ugd_Monitor.Cells[2, ugd_Monitor.Row] = 'B') or
                  (ugd_Monitor.Cells[2, ugd_Monitor.Row] = 'Y') then
               begin
                  ugd_Monitoring.Cells[0, MCnt] := ugd_Monitor.Cells[5, i];   //
                  ugd_Monitoring.Cells[1, MCnt] := ugd_Monitor.Cells[0, i];   // Set 항목 Desc
                  ugd_Monitoring.Cells[2, MCnt] := ugd_Monitor.Cells[5, i];   // Set 그룹명
                  ugd_Monitoring.Cells[3, MCnt] := '';                        // 처방일자
                  ugd_Monitoring.Cells[4, MCnt] := '';                        // 처방Seqno
               end;


               ugd_Monitoring.Cells[5, MCnt] := ugd_Monitor.Cells[1, i];      // Set코드
               ugd_Monitoring.Cells[6, MCnt] := ugd_Monitor.Cells[2, i];      // sLeafyn
               ugd_Monitoring.Cells[7, MCnt] := ugd_Monitor.Cells[3, i];      // 입력형태(속성)
               ugd_Monitoring.Cells[8, MCnt] := ugd_Monitor.Cells[4, i];      // sItemcode (하위항목코드)

               MCnt := Mcnt + 1;

            end;

         end;

      end
      else
         continue;


   end;


   // RowCount 조정
   if (ugd_Monitoring.Cells[0,1] = '') and
      (ugd_Monitoring.Cells[1,1] = '') then
   begin
      ugd_Monitoring.RowCount := MCnt + 1
   end
   else
   begin
      ugd_Monitoring.RowCount := MCnt;
   end;




   // SetCode 순으로 Sorting..
   // QuickSortGrid (대상Grid,시작Row,종료Row,소팅Col,Ascendig/Decending)
   QuickSortGrid(ugd_Monitoring,0,ugd_Monitoring.RowCount-1,5,False);


   ugd_Monitoring.Repaint;

end;


// 처방- SET 1:1 맵핑 함수
function TMDN110FP.GetFindProgress(sType1 : String; iNum : Integer) : Boolean;
var
   i : Integer;
begin


   GetFindProgress := False;


   for i := 0 to iNum do
   begin

      if (pc_Monitor.ActivePageIndex = 0) then
      // 일자별 처방내역 Tab 선택시,
      begin
         // 이미 선택된 처방코드인지 체크
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
      // Mapping Set항목 Tab 선택시,
      begin
         // 이미 선택된 Set항목인지 체크
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
   // Tag 초기화
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
   // [Enter] Key 아닌경우, Exit
   if Key <> #13 then Exit;


   // Enter 입력시
   if key = #13 then
   begin

      if ed_Input.Text = '' then
         ed_InputExit(Nil);


      // 신규항목 처방코드 Set
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


      // 신규입력 코드상세 및 코드값 Assign
      ugd_Monitoring.Cells[1, ugd_Monitoring.Row] := ed_Input.Text;
      ugd_Monitoring.Cells[2, ugd_Monitoring.Row] := sTempCode;        // 신규추가 SET 항목 처방코드


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

   // 선택 해제..
   for i := 0 to ugd_Monitor.Rowcount - 1 do
   begin
      SelectCell(ugd_Monitor,25,i,False);  // 선택표시 설정해제
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
      else
         Exit;


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
   i, RowNo  : Integer;
   tmp_Title : String;
   iMons     : HmdIcutot;
begin

   // Grid 초기화
   GridClear(ugd_Monitor);




   //----------------------------------------------------------------
   // Interface 적용 내역 조회
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      iMons := HmdIcutot.Create;


      //------------------------------------------------
      // 1. Set Parameter Value
      //------------------------------------------------
      sType1 := '2';                               // 조회구분('2')
      sType2 := P_Patno;                           // 환자번호
      sType3 := P_AdmDate;                         // 입원일자(YYYYMMDD)
      sType4 := DelChar(ed_PreOrdDate.text,'-');   // 적용일자


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

      // 조회건수 없음
      if RowNo = 0 then
      begin
         iMons.Free;

         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
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

      iMons.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;





//------------------------------------------------------------------------------
// [일자별 처방내역 조회] Button OnClick Event Handler
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


   // 항목 Grid 초기화
   GridClear(ugd_Monitor);



   //----------------------------------------------------------------
   // 일자별 적용내역 조회
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      // Create Class
      iOrders := HmdOrderv.Create;

      // Assign Input Parameter(s)
      sGubun   := '3';                                               // 조회구분 ('3' = 특정처방일 처방내역)
      sPatNo   := P_PatNo;                                           // 환자번호
      sOrdDate := FormatDateTime('yyyymmdd',dtp_OrdDate.Date);       // 처방일
      sLocate  := G_LOCATE;                                          // 사업장


      // 처방내역 List
      RowNo := iOrders.PreOrderSelect(sGubun, sPatNo, sOrdDate, sLocate);



      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         iOrders.Free;
         ShowErrMsg;
         Exit;
      end;


      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         iOrders.Free;
         Exit;
      end;


      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitor.RowCount := 1;


      //Select된 Data를 Grid에 Display
      nRow := 0;


      for i := 0 to RowNo-1 do
      begin

         if (iOrders.sDiscYn[i] = '') and                       // 취소 또는 D/C 내역 Skip
            (
             (iOrders.sSlipCd[i] = 'D22') or                    // 수액(Fluid) 조회
             (CopyByte(iOrders.sOrdGrp[i],1,2) = 'B2') or           // 주사약 추가, 2011.08.18 LSH (CCU 김연아)
             (CopyByte(iOrders.sOrdGrp[i],1,1) = 'E')  or           // 혈액 조회
             ((P_SetType = 'STR') and
              (iOrders.sOrdGrp[i] = 'C1') and
              (CopyByte(iOrders.sSlipCd[i],1,1) = 'L') and
              (iOrders.sOrdCd[i] = 'BE1530')                    // [SU 기록지] 진단의학 검사(Slip = L%)중 'aPTT 검사' 포함 @ 2012.06.18 LSH (이형숙 요청)
              )
             ) then
         begin
            ugd_Monitor.Cells[0,nRow] := iOrders.sOrdName[i];
            ugd_Monitor.Cells[1,nRow] := iOrders.sOrdCd[i];
            ugd_Monitor.Cells[2,nRow] := iOrders.sOrdDate[i];
            ugd_Monitor.Cells[3,nRow] := iOrders.iOrdSeqno[i];
            ugd_Monitor.Cells[4,nRow] := iOrders.sOrdDesc2[i];  // 처방상세 (처방량/용법..) 추가, 2011.08.18 LSH

            Inc(nRow);
         end;
      end;



      if nRow < 1 then
         ugd_Monitor.RowCount := 1
      else
         ugd_Monitor.RowCount := nRow;



      iOrders.Free;

      // 항목삭제 Enabled
      bbt_Delete.Enabled := True;


   finally
      Screen.Cursor := crDefault;
   end;

end;





//------------------------------------------------------------------------------
// [항목저장] Button onClick Event Handler
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
   // 적용일자 모니터링 Set 저장여부 확인, 2011.10.04 LSH
   //  - ICU 기록지의 특징중 하나는, 해당 ACTDATE에 대한
   //    MDICUSET (모니터링 항목) + MDICUTMT (타임 항목)이 구성되어 있어야
   //    신규 항목저장/삭제가 가능함.
   //---------------------------------------------------------------------------
   sPatNo     := P_PatNo;
   sAdmDate   := P_AdmDate;
   sActDate   := FormatDateTime('yyyymmdd',dtp_RgtDate.Date);

   //------------------------------------------------------------------------
   // 기록지별 최초 1회 저장내역 조회 분기 @ 2012.12.24 LSH
   //    - [구로] SU --> ICU로 당일 전실되어, 항목관리 - 처방추가 case 발견
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
               , PChar('[' + DateToStr(dtp_RgtDate.Date) + '] Flowsheet 저장내역이 없습니다.' + #13#10 + #13#10 + '메인화면으로 돌아가셔서 모니터링 측정주기를 선택 →[' + DateToStr(dtp_RgtDate.Date) + '] 일자 최초저장 → 항목관리 진행바랍니다.')
               , '적용일자 FlowSheet 미저장'
               , MB_OK + MB_ICONINFORMATION);
      Exit;
   end;


   j := 0;


   // 상태 Message-Bar 초기화
   stb_Message.Panels[0].Text := '';


   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   if (Trim(P_Patno)= '') then
   begin
      showmessage('작성할 환자가 선택되지 않았습니다.');
      Exit;
   end;



   // 실제 입원일자 이전 적용일자를 선택한 경우.
   if dtp_RgtDate.Date < StrToDate(ConvertSDate(P_AdmDate)) then
   begin

      // 현재 시간 가져오기
      GetSysDate(systime);

      // 관리자 모드는 무조건 pass, 2011.10.26 LSH
      if (md_UserId <> '99995') then
      begin
         // 적용일자가 입원일자 - 1인 경우
         // 날짜 비교는 항상 "String"으로 할 수 있도록 하기위해 DateToStr 추가, 2011.12.22 LSH
         if DateToStr(dtp_RgtDate.Date)  = DateToStr(StrToDate(ConvertSDate(P_AdmDate)) - 1) then
         begin

            // 기록일자가 [입원일자-1 : 예: 12/22 03시 환자 입원경우, 기록(적용)일자는 아직 12/21] 인 경우,
            // 입원당일 00 ~ 06시에만 추가 가능하도록 세팅했는데, Day Duty때 추가해야되는 경우가 많이 생겨서
            // 아래 시간대 구분로직 주석처리함, 2011.12.22 LSH (김연아 수선생님과 통화함)
            {
            if  (
                (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
                (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
                ) then
            begin
               MessageBox(Self.Handle,
                          '선택하신 적용일자가 입원일자보다 작습니다' + #13#10 + '적용일자를 다시 확인해 주십시오.',
                          '항목 저장전 적용일자 확인',
                          MB_OK + MB_ICONWARNING);
               Exit;
            end
            else if  (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
                     (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
            begin
               // 00:00~ 06:00 시간대에는 전일자 항목추가 및 삭제가능
            end;
            }

         end
         else
         begin
            MessageBox(Self.Handle,
                       '선택하신 적용일자가 입원일자보다 작습니다' + #13#10 + '적용일자를 다시 확인해 주십시오.',
                       '항목 저장전 적용일자 확인',
                       MB_OK + MB_ICONWARNING);
            Exit;
         end;

      end;

   end;



   //-----------------------------------------------------------------
   // 2. Monitoring 항목 적용
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
         // 기록지별 최초 1회 저장내역 조회 분기 @ 2012.12.24 LSH
         //    - [구로] SU --> ICU로 당일 전실되어, 항목관리 - 처방추가 case 발견
         //---------------------------------------------------------------------
         if (P_SetType = 'STR') then
            tSetType := 'S'
         else if (P_SetType = 'NIC') then
            tSetType := 'Y'
         else
            tSetType := '';


         //-----------------------------------------------------
         // 전 SET 맵핑항목 [복사] 분기 @ 2012.04.25 LSH
         //-----------------------------------------------------
         if (pc_Monitor.ActivePageIndex = 0) or
            (pc_Monitor.ActivePageIndex = 1) then
         // [일자별 처방내역] or [모니터링 SET항목] Tab
         begin
            sActDate := FormatDateTime('yyyymmdd', dtp_RgtDate.Date);
         end
         else if (pc_Monitor.ActivePageIndex = 2) then
         // [일자별 SET 적용내역] Tab
         begin
            // SET 복사하려는 선택일자가 "오늘"이면, Exit.
            if DateToStr(dtp_AppDate.Date) >= FormatDateTime('yyyy-mm-dd', Date) then
            begin
               MessageBox(Self.Handle,
                          '당일자(또는 당일이후) SET적용항목은 복사하실 수 없습니다.',
                          '당일자 SET항목 복사불가',
                          MB_OK + MB_ICONWARNING);
               Exit;
            end;

            // 당일자 Main FlowSheet 미저장시, Exit.
            if not CheckIcuFstSave(sPatNo,
                                   sAdmDate,
                                   FormatDateTime('yyyymmdd', Date),
                                   tSetType) then
            begin
               MessageBox(Self.Handle
                        , PChar('오늘일자 Flowsheet 저장내역이 없습니다.' + #13#10 + #13#10 + '메인화면으로 돌아가셔서 모니터링 측정주기를 선택 →[' + FormatDateTime('yyyy-mm-dd', Date) + '] 일자 최초저장 → 항목관리 진행바랍니다.')
                        , '오늘일자 FlowSheet 미저장'
                        , MB_OK + MB_ICONINFORMATION);
               Exit;
            end;

            // 복사하려는 SET 적용일자 확인 Message.
            if Application.MessageBox(PChar('선택하신 [' + FormatDateTime('yyyy-mm-dd', dtp_AppDate.Date) + ']일자 SET항목을' + #13#10 +
                                      '"오늘일자" SET 항목으로 복사하시겠습니까?'),
                                      '처방-SET항목 복사전 확인',
                                      MB_OKCANCEL) <> IDOK then
            begin
               stb_Message.Panels[0].Text := '모니터링 처방-SET항목 복사가 [취소]되었습니다.';
               Exit;
            end;

            // 무조건 SET복사는 당일자로만 가능.
            sActDate := FormatDateTime('yyyymmdd', Date);

         end;



         for i := 0 to RowCount - 1 do
         begin
            // Set항목과 처방상세내역이 Mapping된 Row만 Insert
            if (Cells[0, i+1] <> '') and (Cells[1, i+1] <> '') then
            begin

               AppendVariant(sOrdDesc , Cells[1, i+1]);  // 처방명
               AppendVariant(sOrdCd   , Cells[2, i+1]);  // 처방코드
               AppendVariant(sOrdDate , Cells[3, i+1]);  // 처방일자
               AppendVariant(sOrdSeqNo, Cells[4, i+1]);  // 처방Seqno
               AppendVariant(sSetCode , Cells[5, i+1]);  // 모니터링 SetCode

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


      stb_Message.Panels[0].Text := '모니터링 처방-SET항목이 [저장]되었습니다.';


   finally
      // Page Reset
      if (pc_Monitor.ActivePageIndex = 0) or
         (pc_Monitor.ActivePageIndex = 1) then
      begin
         pc_Monitor.ActivePageIndex := 0;

         // 항목삭제 Enabled
         bbt_Delete.Enabled := True;

         // Mapping Grid Clear
         GridClear(ugd_Monitoring);

         // 일자별 처방내역 조회
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
// [항목 삭제] Button onClick Event Handler
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

   // 상태 Message-Bar 초기화
   stb_Message.Panels[0].Text := '';



   //------------------------------------------------------------------
   // 1. Check
   //------------------------------------------------------------------
   if (Trim(P_Patno)= '') then
   begin
      MessageBox(Self.Handle,'작성할 환자가 선택되지 않았습니다.','항목 삭제전 확인',MB_OK + MB_ICONWARNING);
      Exit;
   end;



   if dtp_RgtDate.Date < StrToDate(ConvertSDate(P_AdmDate)) then
   begin


      GetSysDate(systime);


      // 관리자 모드는 무조건 pass, 2011.10.26 LSH
      if (md_UserId <> '99995') then
      begin

         // 날짜 비교는 항상 "String"으로 할 수 있도록 하기위해 DateToStr 추가, 2011.12.22 LSH
         if DateToStr(dtp_RgtDate.Date)  = DateToStr(StrToDate(ConvertSDate(P_AdmDate)) - 1) then
         begin

            // 기록일자가 [입원일자-1 : 예: 12/22 03시 환자 입원경우, 기록(적용)일자는 아직 12/21] 인 경우,
            // 입원당일 00 ~ 06시에만 추가 가능하도록 세팅했는데, Day Duty때 추가해야되는 경우가 많이 생겨서
            // 아래 시간대 구분로직 주석처리함, 2011.12.22 LSH (김연아 수선생님과 통화함)
            {
            if  (
                (StrToFloat(FormatDateTime('hhnn', systime)) >= 0601) and
                (StrToFloat(FormatDateTime('hhnn', systime)) <= 2359)
                ) then
            begin
               MessageBox(Self.Handle,
                          '선택하신 적용일자가 입원일자보다 작습니다' + #13#10 + '적용일자를 다시 확인해 주십시오.',
                          '항목 삭제전 적용일자 확인',
                          MB_OK + MB_ICONWARNING);
               Exit;
            end
            else if  (StrToFloat(FormatDateTime('hhnn', systime)) >= 0000) and
                     (StrToFloat(FormatDateTime('hhnn', systime)) <= 0600) then
            begin
               // 00:00~ 06:00 시간대에는 전일자 항목추가 및 삭제가능
            end;
            }

         end
         else
         begin
            MessageBox(Self.Handle,
                       '선택하신 적용일자가 입원일자보다 작습니다' + #13#10 + '적용일자를 다시 확인해 주십시오.',
                       '항목 삭제전 적용일자 확인',
                       MB_OK + MB_ICONWARNING);
            Exit;
         end;

      end;

   end;



   // 삭제할 Row Check
   if (pc_Monitor.ActivePageIndex = 0) or
      (pc_Monitor.ActivePageIndex = 1) then     // [일자별 처방내역] 또는 [모니터링 SET 항목]인 경우, Clear
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
         MessageBox(Self.Handle,'선택하신 항목이 없습니다.','항목 삭제전 확인',MB_OK + MB_ICONWARNING);
         Exit;
      end
      else if (Cells[0, Row] = 'SET항목') then
      begin
         MessageBox(Self.Handle,'타이틀 항목은 삭제할 수 없습니다.','항목 삭제전 확인',MB_OK + MB_ICONWARNING);
         Exit;
      end;



      if Application.MessageBox(PChar('선택하신 [' + Cells[0, Row] + ' : ' + Cells[1, Row] + '] 항목을 삭제하시겠습니까?'),'처방-SET항목 삭제전 확인', MB_OKCANCEL) <> IDOK then
         exit;



      //------------------------------------------------------------------
      // 2. 처방-SET 항목 삭제
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


         stb_Message.Panels[0].Text := '해당 처방-SET항목이 삭제되었습니다.';


         // 일자별 적용내역 Refresh
         GetMappingDayList;



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
   // Tabsheet 초기화
   pc_Monitor.ActivePageIndex := 0;

   // Grid 초기화
   GridClear(ugd_Monitor);
   GridClear(ugd_Monitoring);

   // 일자별 처방내역 조회
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
   // 2. 조회
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
   // 2. 조회
   //------------------------------------------------------------------
   GetMonitorDayList;

end;


procedure TMDN110FP.dtp_OrdDateCloseUp(Sender: TObject);
begin
   // 일자별 처방내역 조회
   GetMonitorDayList
end;

procedure TMDN110FP.dtp_OrdDateChange(Sender: TObject);
begin
   // 일자별 처방내역 조회
   GetMonitorDayList
end;


//------------------------------------------------------------------------------
// [추가항목 입력] UltraGrid onDblClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.07.21
//------------------------------------------------------------------------------
procedure TMDN110FP.ugd_MonitoringDblClick(Sender: TObject);
var
   u_Rect : TRect;
begin

   // 모니터링 신규추가 가변항목여부 (sLeafYn = 'A')
   if (ugd_Monitoring.Cells[6, ugd_Monitoring.Row] <> 'A') then
   begin
      //MessageBox(Self.Handle, '[수정]가능한 SET항목이 아닙니다.', '모니터링 SET 수정불가', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;


   // Edit창 위치 세팅.
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

   // 모니터링 신규추가 가변항목여부 (sLeafYn = 'A')
   if (ugd_Monitoring.Cells[6, ugd_Monitoring.Row] <> 'A') then
   begin
      //MessageBox(Self.Handle, '[수정]가능한 SET항목이 아닙니다.', '모니터링 SET 수정불가', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;


   // [Enter] Key 입력시, 입력모드 설정
   if (Key = #13) then
   begin
      with ugd_Monitoring do
      begin

         // 입력Edit Visible
         u_Rect           := ugd_Monitoring.CellRect(1, ugd_Monitoring.Row);
         ed_Input.Top     := u_Rect.Top + 67;
         ed_Input.Left    := u_Rect.Left;
         ed_Input.Visible := True;
      end;

      ed_Input.SetFocus;

   end;

end;



//------------------------------------------------------------------------------
// [일자별 적용내역 조회] Button OnClick Event Handler
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
   // 일자별 적용내역 조회
   //----------------------------------------------------------------
   Screen.Cursor   := crHourglass;

   try
      // Create Class
      iCutot := HmdIcutot.Create;

      // Assign Input Parameter(s)..
      sGubun   := '11';
      sPatNo   := P_PatNo;                                           // 환자번호
      sAdmDate := P_AdmDate;                                         // 입원일자
      sActDate := FormatDateTime('yyyymmdd',dtp_AppDate.Date);       // 적용일자
      sSetType := '';



      // 공통Class Function Call
      RowNo := iCutot.GetMonitorDayList(sGubun, sPatNo, sAdmDate, sActDate, sSetType);



      // 오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         iCutot.Free;
         ShowErrMsg;
         Exit;
      end;


      // 자료건수 = 0인경우, Exit
      if (RowNo = 0) then
      begin
         iCutot.Free;
         Exit;
      end;


      //-----------------------------------------------
      // 3. Display Data
      //-----------------------------------------------
      ugd_Monitoring.RowCount := 2;



      // Select된 Data를 Grid에 Display
      nRow := 1;


      for i := 0 to RowNo - 1 do
      begin
         ugd_Monitoring.Cells[0, nRow] := iCutot.sItemTitle[i];    // SET 항목명
         ugd_Monitoring.Cells[1, nRow] := iCutot.sSetTitle[i];     // 처방상세 (Orddesc)
         ugd_Monitoring.Cells[2, nRow] := iCutot.sItemCode[i];     // 처방코드 (Ordcd)
         ugd_Monitoring.Cells[3, nRow] := iCutot.sActDate[i];      // 처방일자 (Orddate)
         ugd_Monitoring.Cells[4, nRow] := iCutot.sInputTyp[i];     // 처방 Seqno (Ordseqno)
         ugd_Monitoring.Cells[5, nRow] := iCutot.sSetCode[i];      // SET 코드

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
   // 2. 조회
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
   // 2. 조회
   //------------------------------------------------------------------
   GetMappingDayList;
end;


// Grid 초기화
procedure TMDN110FP.GridClear(in_Grid : TUltraGrid);
var
   i, j : Integer;
begin

   if (in_Grid.Name = 'ugd_Monitor') then
   begin
      // 항목 Grid 초기화 (Title까지)
      for i := 0 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';

   end
   else if (in_Grid.Name = 'ugd_Monitoring') then
   begin
      // 항목 Grid 초기화 (Title 제외)
      for i := 1 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';
   end;
end;


// 가변항목 Hint 표기
procedure TMDN110FP.ugd_MonitoringMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   NowCol, NowRow : Integer;
begin

   with ugd_Monitoring do
   begin
      // 현재 Cell 좌표 가져오기
      MouseToCell(X, Y, NowCol, NowRow);


      if (NowRow >= 1) and
         (Cells[6, NowRow] = 'A') then    // 가변항목 코드 여부
      begin

         Hint := '가변항목 선택후, [Enter]키를 누르거나 더블클릭하여 항목명을 입력해주세요.';


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



// 처방상세내역 Hint 표기
procedure TMDN110FP.ugd_MonitorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
   NowCol, NowRow : Integer;
begin

   // 일자별 처방내역 조회시, 처방상세 Hint 표기
   if (pc_Monitor.ActivePageIndex = 0) then
   begin
      with ugd_Monitor do
      begin
         // 현재 Cell 좌표 가져오기
         MouseToCell(X, Y, NowCol, NowRow);


         // 처방상세 내역있으면, Hint로 보여주기
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

