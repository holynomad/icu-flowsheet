{===============================================================================
   Program ID : MDN110UT
   Program Name : 중환자실 통합기록지 - 간호사정
   Program Desc. : 중환자실 통합기록지 중 간호사정 부부을 관리한다.

   Author : ByoungSik, Lee
   Date   : 2010.12.16
===============================================================================}
unit MDN110UT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, BaseGrid, AdvGrid, RxGIF, 
  AdvPicture, AdvPanel, Db, DBClient, Variants, RxAnimate, RxGIFCtrl, AdvObj;

type
  TMDN110FT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    stb_Message: TStatusBar;
    bbt_Close: TBitBtn;
    asg_Header: TAdvStringGrid;
    asg_Data: TAdvStringGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    dtp_ActDate: TDateTimePicker;
    sbt_Previous: TSpeedButton;
    sbt_Next: TSpeedButton;
    Label20: TLabel;
    AdvPanel1: TAdvPanel;
    Memo1: TMemo;
    cds_ItemValues: TClientDataSet;
    cds_ItemValuessetcode: TStringField;
    cds_ItemValuesitemcode: TStringField;
    cds_ItemValuesvaluecd: TStringField;
    cds_ItemValuesvaluenm: TStringField;
    cds_ItemValuesdispseq: TStringField;

    // Event Handler -----------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure asg_HeaderGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure asg_DataGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure asg_DataCanEditCell(Sender: TObject; ARow, ACol: Integer; var CanEdit: Boolean);
    procedure asg_DataGetEditorType(Sender: TObject; ACol, ARow: Integer; var AEditor: TEditorType);
    procedure dtp_ActDateCloseUp(Sender: TObject);
    procedure sbt_PreviousClick(Sender: TObject);
    procedure sbt_NextClick(Sender: TObject);
    procedure asg_HeaderGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    //--------------------------------------------------------------------------

  private
    { Private declarations }
    FDuties   : TList;  // Duty별 사정 정보
    FRecItems : TList;  // 기록 항목 리스트

    // 초기화
    procedure Initialize;

    // 조회
    procedure Search;

    // 기록 항목 리스트 조회
    procedure LoadRecordItemList;

    // 전체 입력항목별 입력 값 목록 조회
    procedure LoadAllItemValues;

  public
    { Public declarations }
  end;




var
  MDN110FT: TMDN110FT;





implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDCLASS1;

{$R *.DFM}


//------------------------------------------------------------------------------
// Form onClose Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2010.12.16
//------------------------------------------------------------------------------
procedure TMDN110FT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


//------------------------------------------------------------------------------
// Form onDestroy Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2010.12.16
//------------------------------------------------------------------------------
procedure TMDN110FT.FormDestroy(Sender: TObject);
begin
   MDN110FT := Nil;
end;



//------------------------------------------------------------------------------
// [종료] Button onClick Event Handler
// - Close Form
//
// Author : ByoungSik, Lee
// Date   : 2010.12.23
//------------------------------------------------------------------------------
procedure TMDN110FT.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;



//------------------------------------------------------------------------------
// Form onCreate Event Handler
// - Allocate Resources
//
// Author : ByoungSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.FormCreate(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Temporary Storage
   //---------------------------------------------------------------
   FDuties   := TList.Create;
   FRecItems := TList.Create;

end;



//------------------------------------------------------------------------------
// - 초기화
//
// Author : ByoungSik, Lee
// Date   : 2011.01.05
//------------------------------------------------------------------------------
procedure TMDN110FT.Initialize;
var
   sysdate : TDateTime; // current system date

begin

   // Get Current System Date
   GetSysDate(sysdate);

   
   //-------------------------------------------------------------------
   // 1. Grid Setting
   //-------------------------------------------------------------------
   // 1.1. Header
   with asg_Header do begin
      ClearRows(1, 1);
      MergeCells(0, 1, 3, 1);
      Cells[0, 1] := '시  간';
   end;

   // 1.2. Data
   with asg_Data do begin
      ClearRows(1, RowCount);
      RowCount := 1;
   end;



   //-------------------------------------------------------------------
   // 2. Set Default Value
   //-------------------------------------------------------------------
   dtp_ActDate.Date := sysdate;


end;



//------------------------------------------------------------------------------
// Form onShow Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2011.01.05
//------------------------------------------------------------------------------
procedure TMDN110FT.FormShow(Sender: TObject);
begin

   //------------------------------------------------------------------
   // 1. 초기화
   //------------------------------------------------------------------
   // 1.1. initiate Control
   Initialize;

   // 1.2. Load initial code data
   LoadAllItemValues;



   //------------------------------------------------------------------
   // 2. 간호사정 내역 조회
   //------------------------------------------------------------------
   Search;

end;



//------------------------------------------------------------------------------
// 조회
//
// Author : ByongSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.Search;
begin

   //--------------------------------------------------------------------
   // 1. Header 정보 조회
   //--------------------------------------------------------------------

   //--------------------------------------------------------------------
   // 2. 기록 항목 목록 조회
   //--------------------------------------------------------------------
   LoadRecordItemList;

   //--------------------------------------------------------------------
   // 3. 간호사정 기록 조회
   //--------------------------------------------------------------------

end;



//------------------------------------------------------------------------------
// 기록 항목 리스트 조회
//
// Author : ByongSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.LoadRecordItemList;
var
   recItems : HmdIccomt;   // 기록지 Set 코드 관리
   iRowCnt  : Integer;     // the number of rows searched
   i        : Integer;     // Loop Index
   leafItem : HmdIccomt;    // Temporary Variable

   { parameters }
   AsSetType : String;  // Set 구분
   AsActDate : String;  // 기록일자(YYYYMMDD)

   { for control [Cell 병합용]}
   iLargeBaseRow  : Integer;  // 대분류 Base Row Index
   iLargeRowSpan  : Integer;  // 대분류 RowSpan 수
   iMiddleBaseRow : Integer;  // 중분류 Base Row Index
   iMiddleRowSpan : Integer;  // 중분류 RowSpan 수
   sLargePrev     : String;   // 이전 대분류
   sMiddlePrev    : String;   // 이전 중분류

begin

   //-----------------------------------------------------------------
   // 1. Initiate
   //-----------------------------------------------------------------
   // 1.1. reset grid
   with asg_Data do begin
      ClearRows(0, RowCount);
      RowCount := 1;
   end;

   // 1.2. reset list
   FRecItems.Clear;



   //-----------------------------------------------------------------
   // 2. 조회
   //-----------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      recItems := HmdIccomt.Create;


      //-----------------------------------------------
      // 2.1. Set Parameter Value
      //-----------------------------------------------
      AsSetType := 'ASS';                                         // 'ASS' : 간호사정
      AsActDate := FormatDateTime('YYYYMMDD', dtp_ActDate.Date);  // 기록일자



      //-----------------------------------------------
      // 2.2. Load Data
      //-----------------------------------------------
      iRowCnt := recItems.LoadSetItemListWithTree(AsSetType, AsActDate);


      // Show Error Message
      if iRowCnt < 0 then begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then begin
         Exit;
      end;




      //-----------------------------------------------
      // 2.3. Display Data
      //-----------------------------------------------
      with asg_Data do begin
         RowCount := iRowCnt;

         iLargeBaseRow  := 0;
         iLargeRowSpan  := 1;
         iMiddleBaseRow := 0;
         iMiddleRowSpan := 1;
         sLargePrev     := '';
         sMiddlePrev    := '';

         for i := 0 to iRowCnt - 1 do begin
            // 2.3.1. Display Classification
            Cells[0, i] := recItems.sL_Title[i];   // 대분류
            Cells[1, i] := recItems.sM_Title[i];   // 중분류
            Cells[2, i] := recItems.sS_Title[i];   // 소분류


            // Add Control
            


            // 2.3.2. restore classification code
            leafItem := HmdIccomt.Create;

            with leafItem do begin
               if recItems.sM_LeafYn[i] = 'Y' then begin
                  // 중분류 코드가 Leaf인 경우
                  sSetCode  := recItems.sM_SetCode [i];  // Set 코드
                  sTitle    := recItems.sM_Title   [i];  // Set 명
                  sInputTyp := recItems.sM_InputTyp[i];  // 입력 형식
                  sItemCode := recItems.sM_ItemCode[i];  // 입력항목 코드
               end
               else if recItems.sS_LeafYn[i] = 'Y' then begin
                  // 소분류 코드가 Leaf인 경우
                  sSetCode  := recItems.sS_SetCode [i];  // Set 코드
                  sTitle    := recItems.sS_Title   [i];  // Set 명
                  sInputTyp := recItems.sS_InputTyp[i];  // 입력 형식
                  sItemCode := recItems.sS_ItemCode[i];  // 입력항목 코드
               end;
            end;

            FRecItems.Add(leafItem);



            // 2.3.3. Row Span
            // 대분류 ------------------------
            if recItems.sL_SetCode[i] <> sLargePrev then begin
               // 이전 분류와 다른 경우
               if i > 0 then begin
                  MergeCells(0, iLargeBaseRow, 1, iLargeRowSpan);
                  iLargeRowSpan := 1;
               end;

               iLargeBaseRow := i;
            end
            else begin
               // 이전 분류와 동일한 경우
               Inc(iLargeRowSpan);

               if i = (RowCount - 1) then begin
                  MergeCells(0, iLargeBaseRow, 1, iLargeRowSpan);
               end;
            end;

            
            // 중분류 ------------------------
            if recItems.sM_SetCode[i] <> sMiddlePrev then begin
               // 이전 분류와 다른 경우
               if (i > 0) and (iMiddleRowSpan > 1) then begin
                  MergeCells(1, iMiddleBaseRow, 1, iMiddleRowSpan);
                  iMiddleRowSpan := 1;
               end;

               iMiddleBaseRow := i;

               if recItems.sM_LeafYn[i] = 'Y' then MergeCells(1, i, 2, 1);
            end
            else begin
               // 이전 분류와 동일한 경우
               Inc(iMiddleRowSpan);

               if i = (RowCount - 1) then begin
                  MergeCells(1, iMiddleBaseRow, 1, iMiddleRowSpan);
               end;
            end;


            // set previous value
            sLargePrev  := recItems.sL_SetCode[i];
            sMiddlePrev := recItems.sM_SetCode[i];
            
         end;
      end;

   finally
      Screen.Cursor := crDefault;

      recItems.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Header] Grid onGetAlignment Event Handler
// - set cell text alignment
//
// Author : ByoungSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.asg_HeaderGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   // Horizontal Alignment
   HAlign := taCenter;

   // Vertical Alignment
   VAlign := vtaCenter;
end;


//------------------------------------------------------------------------------
// [Data] Grid onGetAlignment Event Handler
// - set cell text alignment
//
// Author : ByoungSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.asg_DataGetAlignment(Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   // Horizontal Alignment
   if ACol = 0 then HAlign := taCenter;

   // Vertical Alignment
   VAlign := vtaCenter;
end;



//------------------------------------------------------------------------------
// [Data] Grid onCanEditCell Event Handler
// - Set if Cell Can be Editable or not
//
// Author : ByoungSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.asg_DataCanEditCell(Sender: TObject; ARow, ACol: Integer; var CanEdit: Boolean);
begin
//   CanEdit := ACol in [3..5];
end;




//------------------------------------------------------------------------------
// [Data] Grid onGetEditorType Event Handler
// - 항목의 입력 형식에 따라 Cell의 Contorl을 Setting 함.
//
// Author : ByoungSik, Lee
// Date   : 2011.01.07
//------------------------------------------------------------------------------
procedure TMDN110FT.asg_DataGetEditorType(Sender: TObject; ACol, ARow: Integer; var AEditor: TEditorType);
var
   i, j : Integer;   // Loop Index

begin

   with HmdIccomt(FRecItems.Items[ARow]) do begin
      Memo1.Lines.Add('[' + sSetCode + ':' + sInputTyp + ':' + sItemCode + ']');


      with cds_ItemValues do begin
      Memo1.Lines.Add('tot cnt : ' + IntToStr(RecordCount));

         // 1. 입력항목 코드에 따른 입력 값 목록 검색
         Filter := 'setcode = ''' + sSetCode + ''' '
                +  'and itemcode = ''' + sItemCode + ''' ';

         Filtered := True;

         Memo1.Lines.Add('rec cnt : ' + IntToStr(RecordCount));


         // 2. 입력 형식에 따른 Control 생성
         with asg_Data do begin
            if sInputTyp = 'CO' then begin
               AEditor := edComboList;
               ClearComboString;

               for i := 1 to RecordCount do begin
                  RecNo := i;

                  AddComboString(FindField('valuenm').AsString);
               end;
            end
            else if sInputTyp = 'DT' then begin
               AEditor := edDateEdit;
               
            end
            else if sInputTyp = 'CK' then begin

            end;
         end;


         // Refresh
         Filtered := False;
      end;
   end;

end;



//------------------------------------------------------------------------------
// 전체 입력항목별 입력 값 목록 조회
// - 매번 서비스 호출을 해야하는 비용을 줄이기위해 코드 정보를 미리 임시 저장소에
//   Load 함.
//
// Author : ByoungSik, Lee
// Date   : 2011.01.10
//------------------------------------------------------------------------------
procedure TMDN110FT.LoadAllItemValues;
var
   items   : HmdIcivlt;   // 입력 항목별 입력 값 관리
   iRowCnt : Integer;   // the number of searched rows
   i       : Integer;   // Loop Index

   { parameters }
   AsActDate : String;  // 수행일자

begin

   //-------------------------------------------------------------------
   // 1. Initiate
   //-------------------------------------------------------------------
   if cds_ItemValues <> nil then cds_ItemValues.Close;



   //-------------------------------------------------------------------
   // 2. 조회
   //-------------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      items := HmdIcivlt.Create;

      cds_ItemValues.CreateDataSet;


      //------------------------------------------------
      // 2.1. Set Value
      //------------------------------------------------
      AsActDate := FormatDateTime('YYYYMMDD', dtp_ActDate.Date);



      //------------------------------------------------
      // 2.2. Load Data
      //------------------------------------------------
      iRowCnt := items.LoadAllItemValueListBySetType('ASS', AsActDate);



      // Show Error Message
      if iRowCnt < 0 then begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then begin
         Exit;
      end;


      //------------------------------------------------
      // 2.3. Restore Data to Cache
      //------------------------------------------------
      for i := 0 to iRowCnt - 1 do begin
         with cds_ItemValues do begin
            // 1. Append New Row
            Append;

            // 2. Set Value to each field of new row
            FindField('setcode' ).AsString := items.sSetCode [i];    // Set 코드
            FindField('itemcode').AsString := items.sItemCode[i];    // 입력항목 코드
            FindField('valuecd' ).AsString := items.sValueCd [i];    // 입력 값 코드
            FindField('valuenm' ).AsString := items.sValueNm [i];    // 입력 값 이름
            FindField('dispseq' ).AsString := items.sDispSeq [i];    // 출력 순서
         end;
      end;

      // Refresh
      cds_ItemValues.Filtered := False;

   finally
      Screen.Cursor := crDefault;

      items.Free;
   end;

end;





//------------------------------------------------------------------------------
// [사정일자] DateTimePicker onCloseUp Event Handler
// - Refresh Data
//
// Author : ByoungSik, Lee
// Date   : 2011.01.10
//------------------------------------------------------------------------------
procedure TMDN110FT.dtp_ActDateCloseUp(Sender: TObject);
begin

   //-----------------------------------------------------------------
   // 1. 조회
   //-----------------------------------------------------------------
   Search;
   
end;




//------------------------------------------------------------------------------
// [이전 일자] Button onClick Event Handler
// - Search Assessment of Previous Date
//
// Author : ByoungSik, Lee
// Date   : 2011.01.10
//------------------------------------------------------------------------------
procedure TMDN110FT.sbt_PreviousClick(Sender: TObject);
begin

   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_ActDate.Date := dtp_ActDate.Date - 1;


   //------------------------------------------------------------------
   // 2. 조회
   //------------------------------------------------------------------
   Search;

end;



//------------------------------------------------------------------------------
// [다음 일자] Button onClick Event Handler
// - Search Assessment of Next Date
//
// Author : ByoungSik, Lee
// Date   : 2011.01.10
//------------------------------------------------------------------------------
procedure TMDN110FT.sbt_NextClick(Sender: TObject);
begin

   //------------------------------------------------------------------
   // 1. Set Date
   //------------------------------------------------------------------
   dtp_ActDate.Date := dtp_ActDate.Date + 1;


   //------------------------------------------------------------------
   // 2. 조회
   //------------------------------------------------------------------
   Search;

end;




//------------------------------------------------------------------------------
// [Header] Grid onGetEditMask Event Handler
// - Duty별 시간을 입력하기위한 MaskEdit 생성
//
// Author : ByoungSik, Lee
// Date   : 2011.01.12
//------------------------------------------------------------------------------
procedure TMDN110FT.asg_HeaderGetEditMask(Sender: TObject; ACol, ARow: Integer; var Value: String);
begin
   Value := '##:##';
end;



initialization
   RegisterClass(TMDN110FT);

finalization
   UnRegisterClass(TMDN110FT);

end.
