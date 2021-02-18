unit MDN110UQ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  ExtCtrls, StdCtrls, Mask, Buttons, Grids, BaseGrid, AdvGrid, ComCtrls, 
  UltraGrid, AsgLinks, ImgList, ImagePicker, AdvEdit, Variants, AdvObj;

type
  TMDN110FQ = class(TForm)
    ImageList1: TImageList;
    Panel3: TPanel;
    bbt_Close: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    dtp_ActTime: TDateTimePicker;
    med_ActTime1: TMaskEdit;
    med_ActTime2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    agd_Input: TAdvStringGrid;
    ugd_Input: TUltraGrid;
    pn_Input: TPanel;
    combx_Input: TComboBox;
    med_Input: TMaskEdit;
    cbx_Input: TCheckBox;
    combx_Value: TComboBox;
    agd_Value: TAdvStringGrid;
    lb_Col: TLabel;
    lb_Row: TLabel;
    bbt_Save: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure agd_InputDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure agd_InputGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure agd_InputGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure agd_InputClick(Sender: TObject);
    procedure agd_InputDblClick(Sender: TObject);
    procedure combx_InputExit(Sender: TObject);
    procedure combx_InputKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbt_SaveClick(Sender: TObject);
    procedure med_ActTime2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure agd_InputKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure GetInputType(Sender: TObject);
    procedure GetInputValue(Sender: TObject);
  public
    P_PatNo, P_AdmDate, P_ActTime, P_ActDate, P_Settype : String;
  end;

var
  MDN110FQ: TMDN110FQ;

implementation

uses
   CComFunc, VarCom, TuxCom, MDCLASS1, MComFunc, HisUtil;

{$R *.DFM}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//       MDCLASS1.pas 의 HmdIcumot Class 는 더이상 사용하지 않습니다.         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

procedure TMDN110FQ.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TMDN110FQ.FormDestroy(Sender: TObject);
begin
   MDN110FQ := Nil;
end;

procedure TMDN110FQ.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;

procedure TMDN110FQ.FormShow(Sender: TObject);
var
   i, j : Integer;
   tmp_AdvGrid: TAdvStringGrid;
begin

   pn_Input.Color := clWhite;

   dtp_ActTime.Date  := StrToDate(ConvertSDate(CopyByte(P_ActTime,1,8)));
   med_ActTime1.Text := CopyByte(P_ActTime,9,2);
   med_ActTime2.Text := '00';
   med_ActTime2.SetFocus;

   tmp_AdvGrid := (GetComp('MDN110FM','agd_List1') as TAdvStringGrid);
   agd_Input.Clear;
   agd_Input.ShowColumnHeaders;
   agd_Input.RowCount := tmp_AdvGrid.RowCount;

   for i:=1 to tmp_AdvGrid.RowCount-1 do
   begin
      agd_Input.Cells[0,  i] := tmp_AdvGrid.Cells[0,  i];  // SetTitle
      agd_Input.Cells[21, i] := tmp_AdvGrid.Cells[25, i];  // SetCode
      agd_Input.Cells[22, i] := tmp_AdvGrid.Cells[26, i];  // UpCode
   end;

   if agd_Input.RowCount > 2 then
   begin
      agd_Input.Row := 2;
      agd_Input.Col := 1;
   end
   else
   begin
      agd_Input.Row := 1;
      agd_Input.Col := 0;
   end;

   GetInputType(Sender);

   agd_Value.Clear;
   agd_Value.RowCount := agd_Input.RowCount;
   agd_Value.ColCount := agd_Input.ColCount;

   for i:=0 to agd_Input.RowCount-1 do
   begin
      for j:=0 to agd_Input.ColCount-1 do
      begin
         agd_Value.Cells[j,i] := agd_Input.Cells[j, i];
      end;
   end;

   GetInputValue(Sender);

   for i:=7 to agd_Input.ColCount-1 do
   begin
      agd_Input.ColWidths[i] := 0;
   end;
   agd_Input.ScrollBars := ssVertical;

end;

procedure TMDN110FQ.GetInputValue(Sender: TObject);
var
   i, j, k, RowNo : Integer;
   sType1, sType2, sType3, sType4 : String;
begin
   sType1 := '4';
   sType2 := P_Patno;
   sType3 := P_AdmDate;
   sType4 := P_ActDate;

   Screen.Cursor   := crHourglass;
   try
      mdIcrect := HmdIcrect.Create;
      RowNo    := mdIcrect.GetMonitorDayList(sType1,sType2,sType3,sType4,'ICU');

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcrect.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         //stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         Exit;
      end;

      for i:=0 to RowNo-1 do
      begin
         if CopyByte(mdIcrect.sActTime[i],1,10) = FormatDateTime('YYYYMMDD',dtp_ActTime.Date) + med_ActTime1.Text then
         begin
            for j:=1 to agd_Input.RowCount-1 do
            begin
               if agd_Input.Cells[22, j] = '' then Continue;

               if agd_Input.Cells[21, j] = mdIcrect.sSetCode[i] then
               begin
                  for k:=11 to 20 do
                  begin
                     if agd_Input.Cells[k, j] = mdIcrect.sUpCode[i] then
                     begin
                        if (mdIcrect.sUpCode[i] <> mdIcrect.sItemCode[i]) or
                           (mdIcrect.sInputtyp[i]='CK') or
                           (mdIcrect.sInputtyp[i]='CO') then
                        begin
                           agd_Input.Cells[k-10, j] := mdIcrect.sItemTitle[i];
                           agd_Value.Cells[k-10, j] := mdIcrect.sItemVal[i];
                        end
                        else
                        begin
                           agd_Input.Cells[k-10, j] := mdIcrect.sItemVal[i];
                           agd_Value.Cells[k-10, j] := mdIcrect.sItemVal[i];
                        end;
                        break;
                     end;
                  end;
                  Break;
               end;
            end;
         end;
      end;
      mdIcrect.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDN110FQ.GetInputType(Sender: TObject);
var
   i, j, k, RowNo : Integer;
   sType1, sType2, sType3, sType4 : String;
begin
   ugd_Input.Clear;
   ugd_Input.RowCount := 1;

   sType1 := '5';
   sType2 := P_Patno;
   sType3 := P_AdmDate;
   sType4 := P_ActDate;

   Screen.Cursor   := crHourglass;
   try
      mdIcrect := HmdIcrect.Create;
      RowNo    := mdIcrect.GetMonitorDayList(sType1,sType2,sType3,sType4,'ICU');

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcrect.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdIcrect.Free;
         //stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         Exit;
      end;

      ugd_Input.RowCount := RowNo;

      for i:=0 to RowNo-1 do
      begin
         ugd_Input.Cells[0, i] := mdIcrect.sSetCode[i];
         ugd_Input.Cells[1, i] := mdIcrect.sItemcode[i];
         ugd_Input.Cells[2, i] := mdIcrect.sUpcode[i];
         ugd_Input.Cells[3, i] := mdIcrect.sItemtitle[i];
         ugd_Input.Cells[4, i] := mdIcrect.sInputtyp[i];
         ugd_Input.Cells[5, i] := mdIcrect.sLimit[i];
         ugd_Input.Cells[6, i] := mdIcrect.sItemval[i];
      end;

      for j:=1 to agd_Input.RowCount-1 do
      begin
         k := 1;
         for i:=0 to ugd_Input.RowCount-1 do
         begin
            if (agd_Input.Cells[21, j] = ugd_Input.Cells[0, i]) and
               (ugd_Input.Cells[2, i]='') then
            begin
               agd_Input.Cells[k+10,j] := ugd_Input.Cells[1, i];
               Inc(k);
            end;
         end;
      end;

      mdIcrect.Free;

   finally
      Screen.Cursor := crDefault;
   end;

end;

procedure TMDN110FQ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      if pn_Input.Visible then
         pn_Input.Visible := False
      else
         bbt_CloseClick(Sender);
   end;
end;

procedure TMDN110FQ.agd_InputDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TAdvStringgrid), 7);
end;

procedure TMDN110FQ.agd_InputGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   if ARow=0 then
      HAlign := taCenter;
end;

procedure TMDN110FQ.agd_InputGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
// OK
   if ARow = 0 then Exit;

   if Trim(agd_Input.Cells[22, ARow]) = '' then
   begin
      ABrush.Color := $00EDFEED;
      AFont.Color  := clNavy;
      AFont.Style  := [fsBold];
   end;

end;

procedure TMDN110FQ.agd_InputClick(Sender: TObject);
var
   k, i : Integer;
begin
   for i:=1 to 10 do
      agd_Input.Cells[i,0] := '';

   if agd_Input.Cells[22, agd_Input.Row] = '' then Exit;

   k := 1;
   for i:=0 to ugd_Input.RowCount-1 do
   begin
      if (agd_Input.Cells[21, agd_Input.Row] = ugd_Input.Cells[0, i]) and
         (ugd_Input.Cells[2, i]='') then
      begin
         agd_Input.Cells[k, 0] := ugd_Input.Cells[3, i];
         Inc(k);
      end;
   end;
end;

procedure TMDN110FQ.agd_InputDblClick(Sender: TObject);
var
   i: Integer;
   sItemCode, sInputTyp : String;
begin
   if agd_Input.Cells[22, agd_Input.Row] = '' then Exit;

   if agd_Input.Cells[agd_Input.Col, 0] = '' then Exit;

   if agd_Input.Col = 0 then Exit;

   for i:=0 to ugd_Input.RowCount-1 do
   begin
      if agd_Input.Cells[agd_Input.Col+10, agd_Input.Row] = ugd_Input.Cells[1, i] then
      begin
         sItemCode := ugd_Input.Cells[1, i];
         sInputTyp := ugd_Input.Cells[4, i];
         Break;
      end;
   end;

   // Panel Move
   lb_Col.Caption   := IntToStr(agd_Input.Col);
   lb_Row.Caption   := IntToStr(agd_Input.Row);
   pn_Input.Width   := 89;
   pn_Input.Height  := 22;
   pn_Input.Top     := agd_Input.CellRect(agd_Input.Col, agd_Input.Row).Top;
   pn_Input.Left    := agd_Input.CellRect(agd_Input.Col, agd_Input.Row).Left;
   pn_Input.Visible := True;

   if sInputTyp = 'CO' then //ComboBox
   begin
      combx_Input.Items.Clear;
      combx_Value.Items.Clear;
      combx_Input.Items.Add('');
      combx_Value.Items.Add('');
      for i:=0 to ugd_Input.RowCount-1 do
      begin
         if sItemCode = ugd_Input.Cells[2, i] then
         begin
            combx_Input.Items.Add(ugd_Input.Cells[3, i]);
            combx_Value.Items.Add(ugd_Input.Cells[6, i]);
         end;
      end;
      combx_Input.Left      := 1;
      combx_Input.Top       := 0;
      combx_Input.ItemIndex := combx_Value.Items.IndexOf(agd_Value.Cells[agd_Input.Col, agd_Input.Row]);
      combx_Input.Visible   := True;

      combx_Value.Visible   := False;
      med_Input.Visible     := False;
      cbx_Input.Visible     := False;

      combx_Input.SetFocus;
   end
   else if sInputTyp = 'ME' then //MaskEdit
   begin
      med_Input.Left        := 1;
      med_Input.Top         := 0;
      for i:=0 to ugd_Input.RowCount-1 do
      begin
         if ugd_Input.Cells[1, i] = agd_Input.Cells[agd_Input.Col+10, agd_Input.Row] then
         begin
            med_Input.EditMask    := ugd_Input.Cells[5, i];
            Break;
         end;
      end;

      med_Input.Visible     := True;
      med_Input.Text        := agd_Value.Cells[agd_Input.Col, agd_Input.Row];

      combx_Input.Visible   := False;
      combx_Value.Visible   := False;
      cbx_Input.Visible     := False;

      med_Input.SetFocus;
   end
   else if sInputTyp = 'CK' then //CheckBox
   begin
      cbx_Input.Checked     := False;
      cbx_Input.Visible     := True;
      cbx_Input.Left        := 6;
      cbx_Input.Top         := 3;
      if agd_Value.Cells[agd_Input.Col, agd_Input.Row] <> '' then
         cbx_Input.Checked := True;

      for i:=0 to ugd_Input.RowCount-1 do
      begin
         if ugd_Input.Cells[1, i] = agd_Input.Cells[agd_Input.Col+10, agd_Input.Row] then
         begin
            cbx_Input.Caption := ugd_Input.Cells[3, i];
            Break;
         end;
      end;

      combx_Input.Visible   := False;
      combx_Value.Visible   := False;
      med_Input.Visible     := False;

      cbx_Input.SetFocus;
   end;

end;

procedure TMDN110FQ.combx_InputExit(Sender: TObject);
var
   sTmpVal, sItemVal : String;
   i : Integer;
begin
   if (lb_Col.Caption='') or (lb_Row.Caption='') then Exit;

   // 현재 Visible 되어있는 자료 Insert 후 Panel Move
   if pn_Input.Visible then
   begin
      if combx_Input.Visible then
      begin
         agd_Input.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := combx_Input.Text;
         agd_Value.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := combx_Value.Items[combx_Input.ItemIndex];
      end
      else if med_Input.Visible then
      begin
         sTmpVal  := med_Input.Text;

         sItemVal := '';
         if sTmpVal <> '' then
         begin
            for i:=1 to LengthByte(sTmpVal) do
            begin
               if CopyByte(sTmpVal,i,1) <> ' ' then
                  sItemVal := sItemVal + CopyByte(sTmpVal,i,1);
            end;
         end;

         if sItemVal = '.' then
            sItemVal := '';

         agd_Input.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := sItemVal;
         agd_Value.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := sItemVal;
      end
      else if cbx_Input.Visible then
      begin
         if cbx_Input.Checked then
         begin
            agd_Input.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := cbx_Input.Caption;
            agd_Value.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := 'Y';
         end
         else
         begin
            agd_Input.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := '';
            agd_Value.Cells[StrToInt(lb_Col.Caption), StrToInt(lb_Row.Caption)] := '';
         end;
      end;
      pn_Input.Visible := False;
   end;

end;

procedure TMDN110FQ.combx_InputKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      pn_Input.Visible := False
   else if Key = VK_RETURN then
   begin
      // 다음 칸으로 이동
      if agd_Input.Cells[agd_Input.Col+1, 0] <> '' then
      begin
         agd_Input.Col := agd_Input.Col+1;
         agd_Input.Row := agd_Input.Row;
      end
      // 다음 줄로 이동
      else
      begin
         // 마지막이면 Skip
         if agd_Input.Row = agd_Input.RowCount-1 then Exit;

         // Title 이 아니면
         if agd_Input.Cells[22, agd_Input.Row+1] <> '' then
         begin
            agd_Input.Col := 1;
            agd_Input.Row := agd_Input.Row+1;
         end
         // Title 이면
         else
         begin
            agd_Input.Col := 1;
            agd_Input.Row := agd_Input.Row+2;
         end;
      end;
      combx_InputExit(Sender);
      agd_InputDblClick(Sender);
   end;
   {
   else if Key = VK_UP then
   begin
      // 이전줄로 이동
      // Title 이 아니면
      if (agd_Input.Cells[22, agd_Input.Row-1] <> '') and
         (agd_Input.Cells[agd_Input.Col+10, agd_Input.Row-1] <> '') and
         (agd_Input.Row-1 > 0) then
      begin
         agd_Input.Col := agd_Input.Col;
         agd_Input.Row := agd_Input.Row-1;

         combx_InputExit(Sender);
         agd_InputDblClick(Sender);
      end;
   end
   else if Key = VK_DOWN then
   begin
      // 다음줄로 이동
      // Title 이 아니면
      if (agd_Input.Cells[22, agd_Input.Row+1] <> '') and
         (agd_Input.Cells[agd_Input.Col+10, agd_Input.Row+1] <> '') and
         (agd_Input.Row+1 <= agd_Input.RowCount-1) then
      begin
         agd_Input.Col := agd_Input.Col;
         agd_Input.Row := agd_Input.Row+1;

         combx_InputExit(Sender);
         agd_InputDblClick(Sender);
      end;
   end
   else if Key = VK_LEFT then
   begin
      // 이전항목로 이동
      if (agd_Input.Col = 1) then Exit;

      agd_Input.Col := agd_Input.Col-1;
      agd_Input.Row := agd_Input.Row;

      combx_InputExit(Sender);
      agd_InputDblClick(Sender);
   end
   else if Key = VK_RIGHT then
   begin
      // 다음항목로 이동
      if agd_Input.Cells[agd_Input.Col+1, 0] <> '' then
      begin
         agd_Input.Col := agd_Input.Col+1;
         agd_Input.Row := agd_Input.Row;
      end;

      combx_InputExit(Sender);
      agd_InputDblClick(Sender);
   end;
   }
end;

procedure TMDN110FQ.bbt_SaveClick(Sender: TObject);
var
   sType : String;
   i, j, k, RowNo : Integer;
begin
   Screen.Cursor := crHourGlass;
   try
      mdIcrect := HmdIcrect.Create;

      sType := '3';

      k := 0;
      with mdIcrect do
      begin
         for i:=1 to agd_Value.RowCount-1 do
         begin
            // Title 의 경우 Skip
            if agd_Value.Cells[22, i] = '' then Continue;

            for j:=1 to 10 do
            begin
               if agd_Value.Cells[j+10, i] = '' then Break;
               if agd_Value.Cells[j,    i] = '' then Continue;

               AppendVariant(sPatno  , P_PatNo  );
               AppendVariant(sAdmDate, P_AdmDate);
               AppendVariant(sActDate, P_ActDate);
               AppendVariant(sActTime, FormatDateTime('YYYYMMDD',dtp_ActTime.Date) + med_ActTime1.Text + med_ActTime2.Text);
               AppendVariant(sSetCode, agd_Value.Cells[21, i]);
               AppendVariant(sItemCode,agd_Value.Cells[j+10, i]);
               AppendVariant(sItemVal, agd_Value.Cells[j, i]);
               AppendVariant(sEditId , md_UserId);
               AppendVariant(sEditIp , G_USERIP );
               k := k + 1;
            end;
         end;

         if k=0 then
         begin
            AppendVariant(sPatno  , P_PatNo  );
            AppendVariant(sAdmDate, P_AdmDate);
            AppendVariant(sActDate, P_ActDate);
            AppendVariant(sSetType, P_Settype);
            AppendVariant(sActTime, FormatDateTime('YYYYMMDD',dtp_ActTime.Date) + med_ActTime1.Text + med_ActTime2.Text);
            AppendVariant(sSetCode, '');
            AppendVariant(sItemCode,'');
            AppendVariant(sItemVal, '');
            AppendVariant(sEditId , md_UserId);
            AppendVariant(sEditIp , G_USERIP );

            k:=1;
         end;
      end;

      RowNo := mdIcrect.InsertDayMonitorList(sType, k);

      if Rowno <> 1 then
      begin
         ShowErrMsg();
         mdIcrect.Free;
         exit;
      end;

      mdIcrect.Free;

   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDN110FQ.med_ActTime2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      agd_Input.Col := 1;
      agd_Input.Row := 2;
      agd_InputDblClick(Sender);
   end;
end;

procedure TMDN110FQ.agd_InputKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if Key = VK_RETURN then
   begin
      agd_InputDblClick(Sender);
   end;
   }

end;

initialization
    RegisterClass(TMDN110FQ);

finalization
    UnRegisterClass(TMDN110FQ);

end.

