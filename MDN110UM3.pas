unit MDN110UM3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  StdCtrls, Buttons, ExtCtrls, Grids, UltraGrid, ComCtrls, Variants;

type
  TMDN110FM3 = class(TForm)
    Panel2: TPanel;
    Label18: TLabel;
    sbt_Refresh: TSpeedButton;
    Label1: TLabel;
    Bevel2: TBevel;
    rbt_Gubun1: TRadioButton;
    rbt_Gubun2: TRadioButton;
    rbt_Gubun3: TRadioButton;
    ed_DocNm: TEdit;
    ed_DocCd: TEdit;
    combx_WardNm: TComboBox;
    combx_WardCd: TComboBox;
    bbt_DocSelect: TBitBtn;
    cbx_NowPos: TCheckBox;
    pn_PatList: TPanel;
    ugd_List: TUltraGrid;
    Panel1: TPanel;
    ugd_OrdDate: TUltraGrid;
    stb_Message: TStatusBar;
    sbt_PtInfo: TSpeedButton;
    sbt_Act: TSpeedButton;
    Panel3: TPanel;
    bbt_Close: TBitBtn;
    procedure sbt_PtInfoClick(Sender: TObject);
    procedure sbt_ActClick(Sender: TObject);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDN110FM3: TMDN110FM3;

implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom, MDCLASS1, MComFunc, HisUtil;

{$R *.DFM}

procedure TMDN110FM3.sbt_PtInfoClick(Sender: TObject);
var
   FForm : TForm;
begin
   FForm := BplFormCreate('MDN110FM2','MDN110LM');
   FForm.Position := poMainFormCenter;
   FForm.Show;
end;

procedure TMDN110FM3.sbt_ActClick(Sender: TObject);
var
   FForm : TForm;
begin
   FForm := BplFormCreate('MDN110FM1','MDN110LM');
   FForm.Position := poMainFormCenter;
   FForm.Show;
end;

procedure TMDN110FM3.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;

procedure TMDN110FM3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDN110FM3.FormDestroy(Sender: TObject);
begin
   MDN110FM3 := Nil;
end;

procedure TMDN110FM3.FormShow(Sender: TObject);
begin
   GetNowPos(combx_WardCd, combx_WardNm); // NowPos Code Setting.

   // 병동 자동 Setting
   combx_WardNm.ItemIndex := combx_WardCd.Items.IndexOf(md_DeptCd);
   //combx_WardNmChange(Sender);
end;

initialization
    RegisterClass(TMDN110FM3);

finalization
    UnRegisterClass(TMDN110FM3);

end.
