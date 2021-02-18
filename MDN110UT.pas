{===============================================================================
   Program ID : MDN110UT
   Program Name : ��ȯ�ڽ� ���ձ���� - ��ȣ����
   Program Desc. : ��ȯ�ڽ� ���ձ���� �� ��ȣ���� �κ��� �����Ѵ�.

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
    FDuties   : TList;  // Duty�� ���� ����
    FRecItems : TList;  // ��� �׸� ����Ʈ

    // �ʱ�ȭ
    procedure Initialize;

    // ��ȸ
    procedure Search;

    // ��� �׸� ����Ʈ ��ȸ
    procedure LoadRecordItemList;

    // ��ü �Է��׸� �Է� �� ��� ��ȸ
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
// [����] Button onClick Event Handler
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
// - �ʱ�ȭ
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
      Cells[0, 1] := '��  ��';
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
   // 1. �ʱ�ȭ
   //------------------------------------------------------------------
   // 1.1. initiate Control
   Initialize;

   // 1.2. Load initial code data
   LoadAllItemValues;



   //------------------------------------------------------------------
   // 2. ��ȣ���� ���� ��ȸ
   //------------------------------------------------------------------
   Search;

end;



//------------------------------------------------------------------------------
// ��ȸ
//
// Author : ByongSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.Search;
begin

   //--------------------------------------------------------------------
   // 1. Header ���� ��ȸ
   //--------------------------------------------------------------------

   //--------------------------------------------------------------------
   // 2. ��� �׸� ��� ��ȸ
   //--------------------------------------------------------------------
   LoadRecordItemList;

   //--------------------------------------------------------------------
   // 3. ��ȣ���� ��� ��ȸ
   //--------------------------------------------------------------------

end;



//------------------------------------------------------------------------------
// ��� �׸� ����Ʈ ��ȸ
//
// Author : ByongSik, Lee
// Date   : 2011.01.06
//------------------------------------------------------------------------------
procedure TMDN110FT.LoadRecordItemList;
var
   recItems : HmdIccomt;   // ����� Set �ڵ� ����
   iRowCnt  : Integer;     // the number of rows searched
   i        : Integer;     // Loop Index
   leafItem : HmdIccomt;    // Temporary Variable

   { parameters }
   AsSetType : String;  // Set ����
   AsActDate : String;  // �������(YYYYMMDD)

   { for control [Cell ���տ�]}
   iLargeBaseRow  : Integer;  // ��з� Base Row Index
   iLargeRowSpan  : Integer;  // ��з� RowSpan ��
   iMiddleBaseRow : Integer;  // �ߺз� Base Row Index
   iMiddleRowSpan : Integer;  // �ߺз� RowSpan ��
   sLargePrev     : String;   // ���� ��з�
   sMiddlePrev    : String;   // ���� �ߺз�

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
   // 2. ��ȸ
   //-----------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      recItems := HmdIccomt.Create;


      //-----------------------------------------------
      // 2.1. Set Parameter Value
      //-----------------------------------------------
      AsSetType := 'ASS';                                         // 'ASS' : ��ȣ����
      AsActDate := FormatDateTime('YYYYMMDD', dtp_ActDate.Date);  // �������



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
            Cells[0, i] := recItems.sL_Title[i];   // ��з�
            Cells[1, i] := recItems.sM_Title[i];   // �ߺз�
            Cells[2, i] := recItems.sS_Title[i];   // �Һз�


            // Add Control
            


            // 2.3.2. restore classification code
            leafItem := HmdIccomt.Create;

            with leafItem do begin
               if recItems.sM_LeafYn[i] = 'Y' then begin
                  // �ߺз� �ڵ尡 Leaf�� ���
                  sSetCode  := recItems.sM_SetCode [i];  // Set �ڵ�
                  sTitle    := recItems.sM_Title   [i];  // Set ��
                  sInputTyp := recItems.sM_InputTyp[i];  // �Է� ����
                  sItemCode := recItems.sM_ItemCode[i];  // �Է��׸� �ڵ�
               end
               else if recItems.sS_LeafYn[i] = 'Y' then begin
                  // �Һз� �ڵ尡 Leaf�� ���
                  sSetCode  := recItems.sS_SetCode [i];  // Set �ڵ�
                  sTitle    := recItems.sS_Title   [i];  // Set ��
                  sInputTyp := recItems.sS_InputTyp[i];  // �Է� ����
                  sItemCode := recItems.sS_ItemCode[i];  // �Է��׸� �ڵ�
               end;
            end;

            FRecItems.Add(leafItem);



            // 2.3.3. Row Span
            // ��з� ------------------------
            if recItems.sL_SetCode[i] <> sLargePrev then begin
               // ���� �з��� �ٸ� ���
               if i > 0 then begin
                  MergeCells(0, iLargeBaseRow, 1, iLargeRowSpan);
                  iLargeRowSpan := 1;
               end;

               iLargeBaseRow := i;
            end
            else begin
               // ���� �з��� ������ ���
               Inc(iLargeRowSpan);

               if i = (RowCount - 1) then begin
                  MergeCells(0, iLargeBaseRow, 1, iLargeRowSpan);
               end;
            end;

            
            // �ߺз� ------------------------
            if recItems.sM_SetCode[i] <> sMiddlePrev then begin
               // ���� �з��� �ٸ� ���
               if (i > 0) and (iMiddleRowSpan > 1) then begin
                  MergeCells(1, iMiddleBaseRow, 1, iMiddleRowSpan);
                  iMiddleRowSpan := 1;
               end;

               iMiddleBaseRow := i;

               if recItems.sM_LeafYn[i] = 'Y' then MergeCells(1, i, 2, 1);
            end
            else begin
               // ���� �з��� ������ ���
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
// - �׸��� �Է� ���Ŀ� ���� Cell�� Contorl�� Setting ��.
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

         // 1. �Է��׸� �ڵ忡 ���� �Է� �� ��� �˻�
         Filter := 'setcode = ''' + sSetCode + ''' '
                +  'and itemcode = ''' + sItemCode + ''' ';

         Filtered := True;

         Memo1.Lines.Add('rec cnt : ' + IntToStr(RecordCount));


         // 2. �Է� ���Ŀ� ���� Control ����
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
// ��ü �Է��׸� �Է� �� ��� ��ȸ
// - �Ź� ���� ȣ���� �ؾ��ϴ� ����� ���̱����� �ڵ� ������ �̸� �ӽ� ����ҿ�
//   Load ��.
//
// Author : ByoungSik, Lee
// Date   : 2011.01.10
//------------------------------------------------------------------------------
procedure TMDN110FT.LoadAllItemValues;
var
   items   : HmdIcivlt;   // �Է� �׸� �Է� �� ����
   iRowCnt : Integer;   // the number of searched rows
   i       : Integer;   // Loop Index

   { parameters }
   AsActDate : String;  // ��������

begin

   //-------------------------------------------------------------------
   // 1. Initiate
   //-------------------------------------------------------------------
   if cds_ItemValues <> nil then cds_ItemValues.Close;



   //-------------------------------------------------------------------
   // 2. ��ȸ
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
            FindField('setcode' ).AsString := items.sSetCode [i];    // Set �ڵ�
            FindField('itemcode').AsString := items.sItemCode[i];    // �Է��׸� �ڵ�
            FindField('valuecd' ).AsString := items.sValueCd [i];    // �Է� �� �ڵ�
            FindField('valuenm' ).AsString := items.sValueNm [i];    // �Է� �� �̸�
            FindField('dispseq' ).AsString := items.sDispSeq [i];    // ��� ����
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
// [��������] DateTimePicker onCloseUp Event Handler
// - Refresh Data
//
// Author : ByoungSik, Lee
// Date   : 2011.01.10
//------------------------------------------------------------------------------
procedure TMDN110FT.dtp_ActDateCloseUp(Sender: TObject);
begin

   //-----------------------------------------------------------------
   // 1. ��ȸ
   //-----------------------------------------------------------------
   Search;
   
end;




//------------------------------------------------------------------------------
// [���� ����] Button onClick Event Handler
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
   // 2. ��ȸ
   //------------------------------------------------------------------
   Search;

end;



//------------------------------------------------------------------------------
// [���� ����] Button onClick Event Handler
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
   // 2. ��ȸ
   //------------------------------------------------------------------
   Search;

end;




//------------------------------------------------------------------------------
// [Header] Grid onGetEditMask Event Handler
// - Duty�� �ð��� �Է��ϱ����� MaskEdit ����
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
