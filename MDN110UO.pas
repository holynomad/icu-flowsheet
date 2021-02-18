unit MDN110UO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  ExtCtrls, StdCtrls, Buttons, Grids, UltraGrid, Mask, ComCtrls, Qrctrls, 
  Variants;

type
  TMDN110FO = class(TForm)
    pc_ICU: TPageControl;
    ts_ICU1: TTabSheet;
    ts_ICU2: TTabSheet;
    Bevel370: TBevel;
    stb_Message: TStatusBar;
    Panel57: TPanel;
    ed_PatNm: TEdit;
    pn_PatNo: TPanel;
    pn_Age: TPanel;
    pn_Sex: TPanel;
    Panel20: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    dtp_ActDate: TDateTimePicker;
    Panel80: TPanel;
    ed_Edit: TEdit;
    Bevel36: TBevel;
    Panel7: TPanel;
    Panel25: TPanel;
    Panel8: TPanel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    B0201_1: TRadioButton;
    B0201_2: TRadioButton;
    B0201_3: TRadioButton;
    B0001_1: TEdit;
    B0002_1: TEdit;
    B0003_1: TEdit;
    B0004_1: TEdit;
    B0005_1: TEdit;
    B0006_1: TEdit;
    B0007_1: TEdit;
    B0008_1: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    B0202_1: TEdit;
    dtp_Item01: TDateTimePicker;
    dtp_Item02: TDateTimePicker;
    Panel1: TPanel;
    B0208_1: TRadioButton;
    Panel6: TPanel;
    B0209_1: TRadioButton;
    B0009_1: TEdit;
    B0010_1: TEdit;
    B0011_1: TEdit;
    B0012_1: TEdit;
    B0013_1: TEdit;
    B0014_1: TEdit;
    B0205_1: TMemo;
    Bevel6: TBevel;
    B0201_1E: TEdit;
    Panel117: TPanel;
    Bevel2: TBevel;
    B0207_2: TRadioButton;
    Bevel5: TBevel;
    B0208_2: TRadioButton;
    Bevel7: TBevel;
    B0209_2: TRadioButton;
    Panel5: TPanel;
    Bevel9: TBevel;
    B0210_1: TRadioButton;
    B0210_2: TRadioButton;
    Panel10: TPanel;
    Bevel11: TBevel;
    B0211_1: TRadioButton;
    B0211_2: TRadioButton;
    Panel46: TPanel;
    Bevel18: TBevel;
    B0212_1: TRadioButton;
    B0212_2: TRadioButton;
    Panel15: TPanel;
    Bevel35: TBevel;
    B0213_1: TRadioButton;
    B0213_2: TRadioButton;
    B0203_1: TMaskEdit;
    B0204_1: TMaskEdit;
    B0207_1: TRadioButton;
    Panel9: TPanel;
    bbt_Close: TBitBtn;
    bbt_Add: TBitBtn;
    bbt_Delete: TBitBtn;
    pn_AdmDate: TPanel;
    ed_EditID: TEdit;
    Bevel52: TBevel;
    Label5: TLabel;
    Bevel53: TBevel;
    Label6: TLabel;
    Bevel54: TBevel;
    Label7: TLabel;
    Bevel55: TBevel;
    Label8: TLabel;
    Bevel57: TBevel;
    Label9: TLabel;
    Bevel58: TBevel;
    Label10: TLabel;
    Bevel223: TBevel;
    Label11: TLabel;
    Bevel224: TBevel;
    Label12: TLabel;
    Bevel225: TBevel;
    Label13: TLabel;
    Bevel226: TBevel;
    Label14: TLabel;
    Bevel227: TBevel;
    Label15: TLabel;
    Bevel228: TBevel;
    Label16: TLabel;
    Bevel229: TBevel;
    Label17: TLabel;
    Bevel230: TBevel;
    Label18: TLabel;
    Bevel231: TBevel;
    Label19: TLabel;
    Bevel232: TBevel;
    Label20: TLabel;
    Bevel233: TBevel;
    Label21: TLabel;
    Bevel234: TBevel;
    Label22: TLabel;
    Bevel235: TBevel;
    Label24: TLabel;
    Bevel237: TBevel;
    Label26: TLabel;
    Bevel238: TBevel;
    Label27: TLabel;
    Bevel239: TBevel;
    Label28: TLabel;
    Bevel240: TBevel;
    Label29: TLabel;
    Bevel242: TBevel;
    Label30: TLabel;
    Bevel236: TBevel;
    Label1: TLabel;
    Bevel243: TBevel;
    Label2: TLabel;
    Bevel244: TBevel;
    Label25: TLabel;
    Bevel245: TBevel;
    Label31: TLabel;
    Bevel246: TBevel;
    Label32: TLabel;
    Bevel219: TBevel;
    Label60: TLabel;
    B0206_2E: TEdit;
    Panel4: TPanel;
    Bevel3: TBevel;
    B0206_1: TRadioButton;
    B0206_2: TRadioButton;
    Bevel215: TBevel;
    Label59: TLabel;
    B0208_2E: TEdit;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    Bevel44: TBevel;
    Bevel46: TBevel;
    C0210_1: TCheckBox;
    C0210_2: TCheckBox;
    C0210_3: TCheckBox;
    C0210_4: TCheckBox;
    C0210_5: TCheckBox;
    C0210_5E: TEdit;
    Bevel327: TBevel;
    Bevel13: TBevel;
    Bevel21: TBevel;
    Bevel12: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    C0201_1: TCheckBox;
    C0201_2: TCheckBox;
    C0201_3: TCheckBox;
    C0201_4: TCheckBox;
    C0201_5: TCheckBox;
    C0201_6: TCheckBox;
    C0201_6E: TEdit;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    C0211_1: TCheckBox;
    C0211_2: TCheckBox;
    C0211_3: TCheckBox;
    C0211_4: TCheckBox;
    C0211_5: TCheckBox;
    C0211_5E: TEdit;
    Bevel26: TBevel;
    Bevel27: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    C0212_1: TCheckBox;
    C0212_2: TCheckBox;
    C0212_3: TCheckBox;
    C0212_4: TCheckBox;
    C0212_5: TCheckBox;
    C0212_5E: TEdit;
    Bevel71: TBevel;
    Bevel72: TBevel;
    Bevel73: TBevel;
    Bevel74: TBevel;
    Bevel75: TBevel;
    Bevel76: TBevel;
    Bevel77: TBevel;
    C0213_1: TCheckBox;
    C0213_2: TCheckBox;
    C0213_3: TCheckBox;
    C0213_4: TCheckBox;
    C0213_5: TCheckBox;
    C0213_6: TCheckBox;
    C0213_7E: TEdit;
    C0213_7: TCheckBox;
    Bevel37: TBevel;
    sbox_Tab2: TScrollBox;
    Bevel90: TBevel;
    Bevel48: TBevel;
    Bevel134: TBevel;
    Bevel147: TBevel;
    Bevel160: TBevel;
    Bevel168: TBevel;
    Bevel169: TBevel;
    Bevel108: TBevel;
    Bevel247: TBevel;
    Label33: TLabel;
    Bevel248: TBevel;
    Label34: TLabel;
    Bevel249: TBevel;
    Label35: TLabel;
    Bevel250: TBevel;
    Label36: TLabel;
    Bevel251: TBevel;
    Label37: TLabel;
    Bevel252: TBevel;
    Label38: TLabel;
    Bevel83: TBevel;
    Bevel84: TBevel;
    Bevel85: TBevel;
    Bevel86: TBevel;
    Bevel51: TBevel;
    Label23: TLabel;
    Bevel213: TBevel;
    Bevel214: TBevel;
    Bevel218: TBevel;
    Bevel220: TBevel;
    Bevel221: TBevel;
    Bevel222: TBevel;
    Bevel1: TBevel;
    Label39: TLabel;
    Bevel4: TBevel;
    Label40: TLabel;
    Bevel8: TBevel;
    Label41: TLabel;
    Bevel10: TBevel;
    Label42: TLabel;
    Bevel14: TBevel;
    Label43: TLabel;
    Bevel15: TBevel;
    Label44: TLabel;
    Bevel29: TBevel;
    Label45: TLabel;
    Bevel33: TBevel;
    Label46: TLabel;
    Bevel34: TBevel;
    Label47: TLabel;
    Bevel91: TBevel;
    Bevel92: TBevel;
    Bevel94: TBevel;
    Bevel95: TBevel;
    Bevel98: TBevel;
    Bevel47: TBevel;
    Bevel49: TBevel;
    Label48: TLabel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    Bevel45: TBevel;
    Bevel60: TBevel;
    Label49: TLabel;
    Bevel56: TBevel;
    Bevel59: TBevel;
    Bevel62: TBevel;
    Bevel65: TBevel;
    Bevel66: TBevel;
    Bevel67: TBevel;
    Bevel68: TBevel;
    Bevel69: TBevel;
    Bevel63: TBevel;
    Label50: TLabel;
    Bevel80: TBevel;
    Label51: TLabel;
    Bevel96: TBevel;
    Label52: TLabel;
    Bevel111: TBevel;
    Label53: TLabel;
    Bevel119: TBevel;
    Label54: TLabel;
    Bevel106: TBevel;
    Label55: TLabel;
    Bevel122: TBevel;
    Label56: TLabel;
    Bevel135: TBevel;
    Label57: TLabel;
    Bevel136: TBevel;
    Label58: TLabel;
    Bevel70: TBevel;
    Label3: TLabel;
    Bevel78: TBevel;
    Label4: TLabel;
    Bevel79: TBevel;
    Bevel89: TBevel;
    Bevel151: TBevel;
    Label61: TLabel;
    Bevel93: TBevel;
    Label62: TLabel;
    Bevel217: TBevel;
    Bevel216: TBevel;
    Label91: TLabel;
    Bevel241: TBevel;
    Label92: TLabel;
    Bevel153: TBevel;
    Label63: TLabel;
    Bevel102: TBevel;
    Bevel103: TBevel;
    Bevel104: TBevel;
    Bevel105: TBevel;
    Bevel107: TBevel;
    Bevel157: TBevel;
    Label64: TLabel;
    Bevel123: TBevel;
    Label66: TLabel;
    Bevel201: TBevel;
    Label67: TLabel;
    Bevel253: TBevel;
    Label68: TLabel;
    Bevel254: TBevel;
    Label69: TLabel;
    Bevel255: TBevel;
    Label70: TLabel;
    Bevel256: TBevel;
    Label71: TLabel;
    Bevel257: TBevel;
    Label72: TLabel;
    Bevel258: TBevel;
    Label73: TLabel;
    Panel27: TPanel;
    Bevel97: TBevel;
    B0303_1: TRadioButton;
    B0303_2: TRadioButton;
    Panel36: TPanel;
    Bevel112: TBevel;
    Bevel113: TBevel;
    B0405_1: TRadioButton;
    B0405_2: TRadioButton;
    B0405_3: TRadioButton;
    B0401_1: TEdit;
    B0402_1: TEdit;
    B0403_1: TEdit;
    B0404_1: TEdit;
    Panel34: TPanel;
    Bevel82: TBevel;
    Bevel87: TBevel;
    Bevel88: TBevel;
    Label65: TLabel;
    B0407_1E: TEdit;
    B0407_1: TRadioButton;
    B0407_2: TRadioButton;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel11: TPanel;
    Bevel50: TBevel;
    B0301_1: TRadioButton;
    B0301_2: TRadioButton;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Bevel61: TBevel;
    B0304_1: TRadioButton;
    B0304_2: TRadioButton;
    Panel17: TPanel;
    Bevel64: TBevel;
    B0305_1: TRadioButton;
    B0305_2: TRadioButton;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel24: TPanel;
    Panel32: TPanel;
    Bevel124: TBevel;
    Bevel125: TBevel;
    B0504_1: TRadioButton;
    B0504_2: TRadioButton;
    B0504_3: TRadioButton;
    Panel47: TPanel;
    Panel66: TPanel;
    Panel33: TPanel;
    Bevel81: TBevel;
    B0406_1: TRadioButton;
    B0406_2: TRadioButton;
    Panel48: TPanel;
    Bevel137: TBevel;
    B0601_1: TRadioButton;
    B0601_2: TRadioButton;
    Panel67: TPanel;
    Bevel138: TBevel;
    Bevel139: TBevel;
    Bevel140: TBevel;
    B0602_1: TRadioButton;
    B0602_2: TRadioButton;
    B0602_3: TRadioButton;
    B0602_4: TRadioButton;
    Panel37: TPanel;
    Panel50: TPanel;
    Panel53: TPanel;
    Bevel158: TBevel;
    Bevel159: TBevel;
    B0702_1: TRadioButton;
    B0702_2: TRadioButton;
    B0702_3: TRadioButton;
    Panel54: TPanel;
    Panel55: TPanel;
    pn_Item08: TPanel;
    Bevel100: TBevel;
    Bevel99: TBevel;
    Bevel101: TBevel;
    C0801_1: TRadioButton;
    C0801_3: TRadioButton;
    C0801_2: TRadioButton;
    C0801_4: TRadioButton;
    Panel70: TPanel;
    Panel71: TPanel;
    pn_Item09: TPanel;
    Bevel116: TBevel;
    Bevel117: TBevel;
    Bevel118: TBevel;
    Bevel109: TBevel;
    C0901_1: TRadioButton;
    C0901_2: TRadioButton;
    C0901_3: TRadioButton;
    C0901_4: TRadioButton;
    C0901_5: TRadioButton;
    C0901_5E: TEdit;
    pn_Item10: TPanel;
    Bevel114: TBevel;
    Bevel128: TBevel;
    Bevel129: TBevel;
    Bevel130: TBevel;
    C0902_1: TRadioButton;
    C0902_2: TRadioButton;
    C0902_3: TRadioButton;
    C0902_4: TRadioButton;
    C0902_5: TRadioButton;
    C0902_5E: TEdit;
    pn_Item11: TPanel;
    Bevel142: TBevel;
    Bevel143: TBevel;
    Bevel144: TBevel;
    Bevel145: TBevel;
    C0903_1: TRadioButton;
    C0903_2: TRadioButton;
    C0903_3: TRadioButton;
    C0903_4: TRadioButton;
    C0903_5: TRadioButton;
    C0903_5E: TEdit;
    pn_Item12: TPanel;
    Bevel166: TBevel;
    Bevel167: TBevel;
    Bevel170: TBevel;
    Bevel171: TBevel;
    C0904_1: TRadioButton;
    C0904_2: TRadioButton;
    C0904_3: TRadioButton;
    C0904_4: TRadioButton;
    C0904_5: TRadioButton;
    C0904_5E: TEdit;
    pn_Item13: TPanel;
    Bevel176: TBevel;
    Bevel177: TBevel;
    Bevel178: TBevel;
    Bevel179: TBevel;
    C0905_1: TRadioButton;
    C0905_2: TRadioButton;
    C0905_3: TRadioButton;
    C0905_4: TRadioButton;
    C0905_5: TRadioButton;
    C0905_5E: TEdit;
    pn_Item14: TPanel;
    Bevel184: TBevel;
    Bevel185: TBevel;
    Bevel186: TBevel;
    Bevel187: TBevel;
    C0906_1: TRadioButton;
    C0906_2: TRadioButton;
    C0906_3: TRadioButton;
    C0906_4: TRadioButton;
    C0906_5: TRadioButton;
    C0906_5E: TEdit;
    pn_Item15: TPanel;
    Bevel193: TBevel;
    Bevel202: TBevel;
    Bevel203: TBevel;
    Bevel204: TBevel;
    C0908_1: TRadioButton;
    C0908_2: TRadioButton;
    C0908_3: TRadioButton;
    C0908_4: TRadioButton;
    C0908_5: TRadioButton;
    C0908_5E: TEdit;
    Panel133: TPanel;
    Bevel163: TBevel;
    Bevel164: TBevel;
    B0903_1: TRadioButton;
    B0903_2: TRadioButton;
    B0903_3: TRadioButton;
    Panel137: TPanel;
    Bevel173: TBevel;
    Bevel174: TBevel;
    B0904_1: TRadioButton;
    B0904_2: TRadioButton;
    B0904_3: TRadioButton;
    Panel141: TPanel;
    Bevel181: TBevel;
    Bevel182: TBevel;
    B0905_1: TRadioButton;
    B0905_2: TRadioButton;
    B0905_3: TRadioButton;
    Panel145: TPanel;
    Bevel189: TBevel;
    Bevel190: TBevel;
    B0906_1: TRadioButton;
    B0906_2: TRadioButton;
    B0906_3: TRadioButton;
    Panel149: TPanel;
    Bevel206: TBevel;
    Bevel212: TBevel;
    B0908_1: TRadioButton;
    B0908_2: TRadioButton;
    B0908_3: TRadioButton;
    B0907_1: TEdit;
    C0301_2: TCheckBox;
    C0301_1: TCheckBox;
    C0301_4: TCheckBox;
    C0301_3: TCheckBox;
    B0302_1: TCheckBox;
    B0302_2: TCheckBox;
    B0302_3: TCheckBox;
    B0302_4: TCheckBox;
    B0302_5: TCheckBox;
    B0302_6: TCheckBox;
    B0501_1: TCheckBox;
    B0501_2: TCheckBox;
    B0501_3: TCheckBox;
    B0501_4: TCheckBox;
    B0501_5: TCheckBox;
    C0501_2: TCheckBox;
    C0501_1: TCheckBox;
    C0501_4: TCheckBox;
    C0501_3: TCheckBox;
    B0502_3: TCheckBox;
    B0502_4: TCheckBox;
    B0502_5: TCheckBox;
    B0502_6: TCheckBox;
    B0502_7: TCheckBox;
    B0502_1: TCheckBox;
    B0502_2: TCheckBox;
    Panel31: TPanel;
    Bevel120: TBevel;
    Bevel121: TBevel;
    B0503_1: TRadioButton;
    B0503_2: TRadioButton;
    B0503_3: TRadioButton;
    Panel38: TPanel;
    Bevel148: TBevel;
    Bevel149: TBevel;
    Bevel150: TBevel;
    Bevel152: TBevel;
    B0701_1: TRadioButton;
    B0701_2: TRadioButton;
    B0701_3: TRadioButton;
    B0701_4: TRadioButton;
    B0701_5: TRadioButton;
    Panel73: TPanel;
    Bevel154: TBevel;
    Bevel155: TBevel;
    Bevel156: TBevel;
    B0801_1: TRadioButton;
    B0801_2: TRadioButton;
    B0801_3: TRadioButton;
    B0801_4: TRadioButton;
    Panel74: TPanel;
    Bevel161: TBevel;
    Bevel162: TBevel;
    B0802_1: TRadioButton;
    B0802_2: TRadioButton;
    B0802_3: TRadioButton;
    B0803_1: TEdit;
    B0804_1: TEdit;
    B0805_1: TCheckBox;
    B0808_1: TCheckBox;
    B0806_1: TEdit;
    B0807_1: TEdit;
    B0809_1: TCheckBox;
    B0809_2: TCheckBox;
    B0809_3: TCheckBox;
    B0809_4: TCheckBox;
    B0809_5: TCheckBox;
    Panel128: TPanel;
    Bevel132: TBevel;
    Bevel133: TBevel;
    B0902_1: TRadioButton;
    B0902_2: TRadioButton;
    B0902_3: TRadioButton;
    Panel125: TPanel;
    Bevel126: TBevel;
    Bevel127: TBevel;
    B0901_1: TRadioButton;
    B0901_2: TRadioButton;
    B0901_3: TRadioButton;
    Bevel259: TBevel;
    Label74: TLabel;
    Bevel260: TBevel;
    Label75: TLabel;
    Bevel261: TBevel;
    Label76: TLabel;
    Bevel262: TBevel;
    Label77: TLabel;
    Bevel263: TBevel;
    Label78: TLabel;
    Bevel198: TBevel;
    Bevel199: TBevel;
    Bevel200: TBevel;
    B1001_1: TCheckBox;
    B1001_2: TCheckBox;
    B1001_3: TCheckBox;
    Bevel207: TBevel;
    Bevel208: TBevel;
    Bevel209: TBevel;
    Bevel210: TBevel;
    Bevel211: TBevel;
    Bevel192: TBevel;
    Bevel194: TBevel;
    Bevel195: TBevel;
    Bevel196: TBevel;
    Bevel197: TBevel;
    C1001_1: TCheckBox;
    C1001_2: TCheckBox;
    C1001_3: TCheckBox;
    C1001_4: TCheckBox;
    C1001_5: TCheckBox;
    C1001_6: TCheckBox;
    C1001_7: TCheckBox;
    C1001_8: TCheckBox;
    C1001_9: TCheckBox;
    C1001_10: TCheckBox;
    C1001_11: TCheckBox;
    Bevel110: TBevel;
    bbt_Print: TBitBtn;
    lb_Meddept: TLabel;
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pc_ICUChange(Sender: TObject);
    procedure B0201_1Click(Sender: TObject);
    procedure B0201_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0201_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0203_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0206_2Click(Sender: TObject);
    procedure B0206_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0207_2Click(Sender: TObject);
    procedure B0207_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0201_6Click(Sender: TObject);
    procedure B0208_2Click(Sender: TObject);
    procedure B0208_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0210_2Click(Sender: TObject);
    procedure B0210_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0210_5Click(Sender: TObject);
    procedure B0211_2Click(Sender: TObject);
    procedure B0211_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0211_5Click(Sender: TObject);
    procedure B0212_2Click(Sender: TObject);
    procedure B0212_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0212_5Click(Sender: TObject);
    procedure B0213_2Click(Sender: TObject);
    procedure B0213_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0213_7Click(Sender: TObject);
    procedure B0301_2Click(Sender: TObject);
    procedure B0301_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0407_1Click(Sender: TObject);
    procedure B0407_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0501_1Click(Sender: TObject);
    procedure B0805_1Click(Sender: TObject);
    procedure B0808_1Click(Sender: TObject);
    procedure B0901_1Click(Sender: TObject);
    procedure B0901_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0901_5Click(Sender: TObject);
    procedure C0901_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0902_3Click(Sender: TObject);
    procedure B0902_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0902_5Click(Sender: TObject);
    procedure C0902_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0903_3Click(Sender: TObject);
    procedure B0903_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0903_5Click(Sender: TObject);
    procedure C0903_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0904_3Click(Sender: TObject);
    procedure B0904_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0904_5Click(Sender: TObject);
    procedure C0904_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0905_3Click(Sender: TObject);
    procedure B0905_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0905_5Click(Sender: TObject);
    procedure C0905_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0906_3Click(Sender: TObject);
    procedure B0906_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0906_5Click(Sender: TObject);
    procedure C0906_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0908_3Click(Sender: TObject);
    procedure B0908_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure C0908_5Click(Sender: TObject);
    procedure C0908_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B1001_2Click(Sender: TObject);
    procedure dtp_Item01Change(Sender: TObject);
    procedure dtp_Item02Change(Sender: TObject);
    procedure bbt_AddClick(Sender: TObject);
    procedure B0203_1Change(Sender: TObject);
    procedure B0204_1Change(Sender: TObject);
    procedure bbt_DeleteClick(Sender: TObject);
    procedure bbt_PrintClick(Sender: TObject);
    procedure B0001_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0002_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0004_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0003_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0005_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0006_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0007_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0008_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0009_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0010_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0011_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0012_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0013_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0401_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0402_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B0403_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure GetPatInfo;
    procedure GetIcuSelect;
    function  GetIcuInfo(patno, Admdate: String): Boolean;
    procedure Clear_Screen;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDN110FO: TMDN110FO;

implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom, MDCLASS1, MComFunc, HisUtil,
   MDN110UO_P01;

{$R *.DFM}

procedure TMDN110FO.bbt_CloseClick(Sender: TObject);
begin
   close;
end;

procedure TMDN110FO.FormDestroy(Sender: TObject);
begin
   MDN110FO := nil;
end;

procedure TMDN110FO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TMDN110FO.FormShow(Sender: TObject);
var
   temp_str :String;
begin
   lb_Meddept.Caption := '';
   pc_ICU.ActivePageIndex := 0;

   sbox_Tab2.HorzScrollBar.Position := 0;
   sbox_Tab2.VertScrollBar.Position := 0;

   dtp_Actdate.Date := Date;

   dtp_Item01.Date := Date;
   dtp_Item02.Date := Date;

   if md_PatNo <> '' then
   begin
      ed_PatNm.Text := md_PatNo;
      if ChkInteger(ed_PatNm.Text) then
      // 환자명으로 대상자찾기 (Result=True:자료선택)
      ed_PatNm.Tag := 0;

      // Result=True ==> 자료가 선택된 경우
      if (GetPatName(ed_PatNm, pn_PatNo, ed_PatNm)) then
      begin
         GetPatInfo;      //환자기본정보 조회하여 display

         //중환자실 기록지 작성여부 조회
         temp_str := CopyByte(pn_AdmDate.Caption,1,4)+CopyByte(pn_AdmDate.Caption,6,2)+ CopyByte(pn_AdmDate.Caption,9,2);
         if GetIcuInfo(pn_PatNo.Caption,temp_str) then
         begin
            // 작성일 경우 작성된 내용 처리
            GetIcuSelect;
         end
         else
         begin
            // 미작성인 경우 기본 환자 정보 처리
            ed_Edit.Text   := md_UserNm;
            ed_EditID.Text := md_UserId;
            B0002_1.Text   := md_DiagName;
            B0003_1.Text   := md_Address;
            B0006_1.Text   := md_TelNo1;
            B0007_1.Text   := md_TelNo2;
            B0008_1.Text   := md_TelNo3;
         end;
      end;
      ed_PatNm.Tag := 1;
   end;
end;

procedure TMDN110FO.GetPatInfo;
var
   RowNo : Integer;
   PatName,PatNo,Cond : String;
begin
   //환자기본정보 조회하여 Display
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdPatinf := HmdPatinf.Create;

      //Assign Input Parameter(s).
      Cond    := '4';              //조건:'3'=재원환자번호로..
      PatNo   := pn_PatNo.Caption; //환자번호
      PatName := '';               //환자명

      //공통Class Function Call (환자 List SELECT)
      RowNo := mdPatinf.ListPatbat(Cond,PatNo,PatName);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdPatinf.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdPatinf.Free;
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ed_PatNm.Text  := mdPatinf.sPatName[0]; //환자명
      pn_Sex.Caption := mdPatinf.sSex[0];
      pn_Age.Caption := Trim(Calc_Age(Date,mdPatinf.sBirtDate[0]));
      pn_AdmDate.Caption := CopyByte(mdPatinf.sAdmDate[0],1,4) + '-' +
                            CopyByte(mdPatinf.sAdmDate[0],5,2) + '-' +
                            CopyByte(mdPatinf.sAdmDate[0],7,2);
      lb_MedDept.Caption := mdPatinf.sMedDept[0];
      mdPatinf.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

function TMDN110FO.GetIcuInfo(patno, Admdate : String): Boolean;
var
   sFlag1, sType1, sType2, sType3, sType4 : String;
   RowNo : Integer;
begin
   GetIcuInfo := True;

   sFlag1 := 'M';
   sType1 := 'ICU';
   sType2 := pn_PatNo.Caption;
   sType3 := DelChar(pn_AdmDate.Caption,'-');
   sType4 := '';

   Screen.Cursor   := crHourglass;
   try
      mdIcuinf := HmdIcuinf.Create;
      RowNo    := mdIcuinf.getIcuinflist(sFlag1,sType1,sType2,sType3,sType4,G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdIcuinf.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdIcuinf.Free;
         GetIcuInfo := False;
         Exit;
      end;

      with mdIcuinf do
      begin
         dtp_Actdate.date := strtodate(CopyByte(sActdate[0],1,4) + '-' +
                                       CopyByte(sActdate[0],5,2) + '-' +
                                       CopyByte(sActdate[0],7,2));
         ed_Edit.Text     := sEditnm[0];
         ed_EditID.Text   := sEditid[0];
      end;

      mdIcuinf.Free;
      GetIcuInfo := True;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDN110FO.GetIcuSelect;
var
   RowNo,i : integer;
   sName   : String;
   sFlag1, sType1, sType2, sType3, sType4, sType5 : String;
begin
   Screen.Cursor := crHourglass;

   sFlag1 := 'M';
   sType1 := 'ICU';
   sType2 := pn_Patno.Caption;
   sType3 := '';
   sType4 := DelChar(pn_AdmDate.Caption,'-');
   sType5 := 'M';

   try
      mdIcuinf := HmdIcuinf.Create;

      RowNo := mdIcuinf.getIcuinfwt(sFlag1, sType1, sType2, sType3, sType4, sType5);

      // system error messae
      if RowNo = -1 then
      begin
         mdIcuinf.Free;
         Exit;
      end
      else if Rowno = 0 then
      begin
         mdIcuinf.Free;
         Exit;
      end;

      for i:= 0 to RowNo - 1 do
      begin
         with mdIcuinf do
         begin
            sName := sMcode[i] + '_' + sDcode[i];

            if sItemType[i] = 'E1' then
               with FindComponent(sName) as TEdit do
                  Text := sItem2[i]
            else if sItemType[i] = 'E2' then
               with FindComponent(sName) as TEdit do
                  Text := sItem1[i]
            else if sItemType[i] = 'E3' then
               with FindComponent(sName) as TMaskEdit do
                  Text := sItem1[i]
            else if sItemType[i] = 'E4' then
               with FindComponent(sName) as TMaskEdit do
                  Text := sItem1[i]
            else if sItemType[i] = 'CB' then
               with FindComponent(sName) as TComboBox do
                  ItemIndex := StrToInt(sItem1[i])
            else if sItemType[i] = 'CH' then
               with FindComponent(sName) as TCheckBox do
                  Checked := True
            else if sItemType[i] = 'RB' then
               with FindComponent(sName) as TRadioButton do
                  Checked := True
            else if sItemType[i] = 'ME' then
               with FindComponent(sName) as TMemo do
                  Text := sItem3[i];
         end;
      end;

      mdIcuinf.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDN110FO.pc_ICUChange(Sender: TObject);
begin
   sbox_Tab2.HorzScrollBar.Position := 0;
   sbox_Tab2.VertScrollBar.Position := 0;
end;

procedure TMDN110FO.B0201_1Click(Sender: TObject);
begin
   if B0201_3.Checked then
   begin
      B0201_1E.Enabled := True;
      if B0201_1E.CanFocus then B0201_1E.SetFocus;
   end
   else
   begin
      B0201_1E.Text := '';
      B0201_1E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0201_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
   end;
end;

procedure TMDN110FO.B0201_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
      B0201_1E.Text := '';
      B0201_1E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0203_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TMaskEdit).Text := '';
   end;
end;

procedure TMDN110FO.B0206_2Click(Sender: TObject);
begin
   if B0206_2.Checked then
   begin
      B0206_2E.Enabled := True;
      if B0206_2E.CanFocus then B0206_2E.SetFocus;
   end
   else
   begin
      B0206_2E.Text := '';
      B0206_2E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0206_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
      B0206_2E.Text := '';
      B0206_2E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0207_2Click(Sender: TObject);
begin
   if B0207_2.Checked then
   begin
      //pn_Item01.Enabled := True;
   end
   else
   begin
      C0201_1.Checked := False;
      C0201_2.Checked := False;
      C0201_3.Checked := False;
      C0201_4.Checked := False;
      C0201_5.Checked := False;
      C0201_6.Checked := False;
      C0201_6E.Text   := '';
      C0201_6E.Enabled  := False;
      //pn_Item01.Enabled := False;
   end;
end;

procedure TMDN110FO.B0207_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0201_1.Checked := False;
      C0201_2.Checked := False;
      C0201_3.Checked := False;
      C0201_4.Checked := False;
      C0201_5.Checked := False;
      C0201_6.Checked := False;
      C0201_6E.Text   := '';
      C0201_6E.Enabled  := False;
      //pn_Item01.Enabled := False;
   end;
end;

procedure TMDN110FO.C0201_6Click(Sender: TObject);
begin
   if C0201_6.checked then
   begin
      C0201_6E.Enabled := True;
      if C0201_6E.CanFocus then C0201_6E.SetFocus;
   end
   else
   begin
      C0201_6E.Text := '';
      C0201_6E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0208_2Click(Sender: TObject);
begin
   if B0208_2.Checked then
   begin
      B0208_2E.Enabled := True;
      if B0208_2E.CanFocus then B0208_2E.SetFocus;
   end
   else
   begin
      B0208_2E.Text := '';
      B0208_2E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0208_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
      B0208_2E.Text := '';
      B0208_2E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0210_2Click(Sender: TObject);
begin
   if B0210_2.Checked then
   begin
      //pn_Item02.Enabled := True;
   end
   else
   begin
      C0210_1.Checked := False;
      C0210_2.Checked := False;
      C0210_3.Checked := False;
      C0210_4.Checked := False;
      C0210_5.Checked := False;
      C0210_5E.Text := '';
      C0210_5E.Enabled := False;

      //pn_Item02.Enabled := False;
   end;
end;

procedure TMDN110FO.B0210_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
      C0210_1.Checked := False;
      C0210_2.Checked := False;
      C0210_3.Checked := False;
      C0210_4.Checked := False;
      C0210_5.Checked := False;
      C0210_5E.Text := '';
      C0210_5E.Enabled := False;

      //pn_Item02.Enabled := False;
   end;
end;

procedure TMDN110FO.C0210_5Click(Sender: TObject);
begin
   if C0210_5.Checked then
   begin
      C0210_5E.Enabled := True;
      if C0210_5E.CanFocus then C0210_5E.SetFocus;
   end
   else
   begin
      C0210_5E.Text := '';
      C0210_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0211_2Click(Sender: TObject);
begin
   if B0211_2.Checked then
   begin
      //pn_Item03.Enabled := True;
   end
   else
   begin
      C0211_1.Checked := False;
      C0211_2.Checked := False;
      C0211_3.Checked := False;
      C0211_4.Checked := False;
      C0211_5.Checked := False;
      C0211_5E.Text := '';
      C0211_5E.Enabled := False;

      //pn_Item03.Enabled := False;
   end;
end;

procedure TMDN110FO.B0211_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
      C0211_1.Checked := False;
      C0211_2.Checked := False;
      C0211_3.Checked := False;
      C0211_4.Checked := False;
      C0211_5.Checked := False;
      C0211_5E.Text := '';
      C0211_5E.Enabled := False;

      //pn_Item03.Enabled := False;
   end;
end;

procedure TMDN110FO.C0211_5Click(Sender: TObject);
begin
   if C0211_5.Checked then
   begin
      C0211_5E.Enabled := True;
      if C0211_5E.CanFocus then C0211_5E.SetFocus;
   end
   else
   begin
      C0211_5E.Text := '';
      C0211_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0212_2Click(Sender: TObject);
begin
   if B0212_2.Checked then
   begin
      //pn_Item04.Enabled := True;
   end
   else
   begin
      C0212_1.Checked := False;
      C0212_2.Checked := False;
      C0212_3.Checked := False;
      C0212_4.Checked := False;
      C0212_5.Checked := False;
      C0212_5E.Text := '';
      C0212_5E.Enabled := False;

      //pn_Item04.Enabled := False;
   end;
end;

procedure TMDN110FO.B0212_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;
      C0212_1.Checked := False;
      C0212_2.Checked := False;
      C0212_3.Checked := False;
      C0212_4.Checked := False;
      C0212_5.Checked := False;
      C0212_5E.Text := '';
      C0212_5E.Enabled := False;

      //pn_Item04.Enabled := False;
   end;
end;

procedure TMDN110FO.C0212_5Click(Sender: TObject);
begin
   if C0212_5.Checked then
   begin
      C0212_5E.Enabled := True;
      if C0212_5E.CanFocus then C0212_5E.SetFocus;
   end
   else
   begin
      C0212_5E.Text := '';
      C0212_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0213_2Click(Sender: TObject);
begin
   if B0213_2.Checked then
   begin
      //pn_Item05.Enabled := True;
   end
   else
   begin
      C0213_1.Checked := False;
      C0213_2.Checked := False;
      C0213_3.Checked := False;
      C0213_4.Checked := False;
      C0213_5.Checked := False;
      C0213_6.Checked := False;
      C0213_7.Checked := False;
      C0213_7E.Text := '';
      C0213_7E.Enabled := False;

      //pn_Item05.Enabled := False;
   end;
end;

procedure TMDN110FO.B0213_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0213_1.Checked := False;
      C0213_2.Checked := False;
      C0213_3.Checked := False;
      C0213_4.Checked := False;
      C0213_5.Checked := False;
      C0213_6.Checked := False;
      C0213_7.Checked := False;
      C0213_7E.Text := '';
      C0213_7E.Enabled := False;

      //pn_Item05.Enabled := False;
   end;
end;

procedure TMDN110FO.C0213_7Click(Sender: TObject);
begin
   if C0213_7.Checked then
   begin
      C0213_7E.Enabled := True;
      if C0213_7E.CanFocus then C0213_7E.SetFocus;
   end
   else
   begin
      C0213_7E.Text := '';
      C0213_7E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0301_2Click(Sender: TObject);
begin
   if B0301_2.Checked then
   begin
//      pn_Item06.Enabled := True;
   end
   else
   begin
      C0301_1.Checked := False;
      C0301_2.Checked := False;
      C0301_3.Checked := False;
      C0301_4.Checked := False;

  //    pn_Item06.Enabled := False;
   end;
end;

procedure TMDN110FO.B0301_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0301_1.Checked := False;
      C0301_2.Checked := False;
      C0301_3.Checked := False;
      C0301_4.Checked := False;

//      pn_Item06.Enabled := False;
   end;
end;

procedure TMDN110FO.B0407_1Click(Sender: TObject);
begin
   if B0407_1.Checked then
   begin
      B0407_1E.Enabled := True;
      if B0407_1E.CanFocus then B0407_1E.SetFocus;
   end
   else
   begin
      B0407_1E.Text := '';
      B0407_1E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0407_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      B0407_1E.Text := '';
      B0407_1E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0501_1Click(Sender: TObject);
begin
   if (B0501_1.Checked) or (B0501_2.Checked) or
      (B0501_3.Checked) or (B0501_4.Checked) or
      (B0501_5.Checked) then
   begin
//      pn_Item07.Enabled := True;
   end
   else
   begin
      C0501_1.Checked := False;
      C0501_2.Checked := False;
      C0501_3.Checked := False;
      C0501_4.Checked := False;

  //    pn_Item07.Enabled := False;
   end;
end;

procedure TMDN110FO.B0805_1Click(Sender: TObject);
begin
   if B0805_1.Checked then
   begin
      B0803_1.Text := '';
      B0804_1.Text := '';

      C0801_1.Checked := False;
      C0801_2.Checked := False;
      C0801_3.Checked := False;
      C0801_4.Checked := False;

      B0803_1.Enabled := False;
      B0804_1.Enabled := False;
      pn_Item08.Enabled := False;
   end
   else
   begin
      B0803_1.Enabled := True;
      B0804_1.Enabled := True;
      pn_Item08.Enabled := True;
   end;
end;

procedure TMDN110FO.B0808_1Click(Sender: TObject);
begin
   if B0808_1.Checked then
   begin
      B0806_1.Text := '';
      B0807_1.Text := '';
      B0806_1.Enabled := False;
      B0807_1.Enabled := False;
   end
   else
   begin
      B0806_1.Enabled := True;
      B0807_1.Enabled := True;
   end;
end;

procedure TMDN110FO.B0901_1Click(Sender: TObject);
begin
   if (B0901_1.Checked) or (B0901_2.Checked) or (B0901_3.Checked) then
   begin
      pn_Item09.Enabled := True;
   end
   else
   begin
      C0901_1.Checked := False;
      C0901_2.Checked := False;
      C0901_3.Checked := False;
      C0901_4.Checked := False;
      C0901_5.Checked := False;
      C0901_5E.Text := '';
      C0901_5E.Enabled := False;
      pn_Item09.Enabled := False;
   end;
end;

procedure TMDN110FO.B0901_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0901_1.Checked := False;
      C0901_2.Checked := False;
      C0901_3.Checked := False;
      C0901_4.Checked := False;
      C0901_5.Checked := False;
      C0901_5E.Text := '';
      C0901_5E.Enabled := False;
      pn_Item09.Enabled := False;
   end;
end;

procedure TMDN110FO.C0901_5Click(Sender: TObject);
begin
   if C0901_5.Checked then
   begin
      C0901_5E.Enabled := True;
      if C0901_5E.CanFocus then C0901_5E.SetFocus;
   end
   else
   begin
      C0901_5E.Text := '';
      C0901_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0901_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0901_5E.Text := '';
      C0901_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0902_3Click(Sender: TObject);
begin
   if (B0902_1.Checked) or (B0902_2.Checked) or (B0902_3.Checked) then
   begin
      pn_Item10.Enabled := True;
   end
   else
   begin
      C0902_1.Checked := False;
      C0902_2.Checked := False;
      C0902_3.Checked := False;
      C0902_4.Checked := False;
      C0902_5.Checked := False;
      C0902_5E.Text := '';
      C0902_5E.Enabled := False;
      pn_Item10.Enabled := False;
   end;
end;

procedure TMDN110FO.B0902_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0902_1.Checked := False;
      C0902_2.Checked := False;
      C0902_3.Checked := False;
      C0902_4.Checked := False;
      C0902_5.Checked := False;
      C0902_5E.Text := '';
      C0902_5E.Enabled := False;
      pn_Item10.Enabled := False;
   end;
end;

procedure TMDN110FO.C0902_5Click(Sender: TObject);
begin
   if C0902_5.Checked then
   begin
      C0902_5E.Enabled := True;
      if C0902_5E.CanFocus then C0902_5E.SetFocus;
   end
   else
   begin
      C0902_5E.Text := '';
      C0902_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0902_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0902_5E.Text := '';
      C0902_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0903_3Click(Sender: TObject);
begin
   if (B0903_1.Checked) or (B0903_2.Checked) or (B0903_3.Checked) then
   begin
      pn_Item11.Enabled := True;
   end
   else
   begin
      C0903_1.Checked := False;
      C0903_2.Checked := False;
      C0903_3.Checked := False;
      C0903_4.Checked := False;
      C0903_5.Checked := False;
      C0903_5E.Text := '';
      C0903_5E.Enabled := False;
      pn_Item11.Enabled := False;
   end;
end;

procedure TMDN110FO.B0903_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0903_1.Checked := False;
      C0903_2.Checked := False;
      C0903_3.Checked := False;
      C0903_4.Checked := False;
      C0903_5.Checked := False;
      C0903_5E.Text := '';
      C0903_5E.Enabled := False;
      pn_Item11.Enabled := False;
   end;
end;

procedure TMDN110FO.C0903_5Click(Sender: TObject);
begin
   if C0903_5.Checked then
   begin
      C0903_5E.Enabled := True;
      if C0903_5E.CanFocus then C0903_5E.SetFocus;
   end
   else
   begin
      C0903_5E.Text := '';
      C0903_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0903_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0903_5E.Text := '';
      C0903_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0904_3Click(Sender: TObject);
begin
   if (B0904_1.Checked) or (B0904_2.Checked) or (B0904_3.Checked) then
   begin
      pn_Item12.Enabled := True;
   end
   else
   begin
      C0904_1.Checked := False;
      C0904_2.Checked := False;
      C0904_3.Checked := False;
      C0904_4.Checked := False;
      C0904_5.Checked := False;
      C0904_5E.Text := '';
      C0904_5E.Enabled := False;
      pn_Item12.Enabled := False;
   end;
end;

procedure TMDN110FO.B0904_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0904_1.Checked := False;
      C0904_2.Checked := False;
      C0904_3.Checked := False;
      C0904_4.Checked := False;
      C0904_5.Checked := False;
      C0904_5E.Text := '';
      C0904_5E.Enabled := False;
      pn_Item12.Enabled := False;
   end;
end;

procedure TMDN110FO.C0904_5Click(Sender: TObject);
begin
   if C0904_5.Checked then
   begin
      C0904_5E.Enabled := True;
      if C0904_5E.CanFocus then C0904_5E.SetFocus;
   end
   else
   begin
      C0904_5E.Text := '';
      C0904_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0904_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0904_5E.Text := '';
      C0904_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0905_3Click(Sender: TObject);
begin
   if (B0905_1.Checked) or (B0905_2.Checked) or (B0905_3.Checked) then
   begin
      pn_Item13.Enabled := True;
   end
   else
   begin
      C0905_1.Checked := False;
      C0905_2.Checked := False;
      C0905_3.Checked := False;
      C0905_4.Checked := False;
      C0905_5.Checked := False;
      C0905_5E.Text := '';
      C0905_5E.Enabled := False;
      pn_Item13.Enabled := False;
   end;
end;

procedure TMDN110FO.B0905_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0905_1.Checked := False;
      C0905_2.Checked := False;
      C0905_3.Checked := False;
      C0905_4.Checked := False;
      C0905_5.Checked := False;
      C0905_5E.Text := '';
      C0905_5E.Enabled := False;
      pn_Item13.Enabled := False;
   end;
end;

procedure TMDN110FO.C0905_5Click(Sender: TObject);
begin
   if C0905_5.Checked then
   begin
      C0905_5E.Enabled := True;
      if C0905_5E.CanFocus then C0905_5E.SetFocus;
   end
   else
   begin
      C0905_5E.Text := '';
      C0905_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0905_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0905_5E.Text := '';
      C0905_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0906_3Click(Sender: TObject);
begin
   if (B0906_1.Checked) or (B0906_2.Checked) or (B0906_3.Checked) then
   begin
      pn_Item14.Enabled := True;
   end
   else
   begin
      C0906_1.Checked := False;
      C0906_2.Checked := False;
      C0906_3.Checked := False;
      C0906_4.Checked := False;
      C0906_5.Checked := False;
      C0906_5E.Text := '';
      C0906_5E.Enabled := False;
      pn_Item14.Enabled := False;
   end;
end;

procedure TMDN110FO.B0906_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0906_1.Checked := False;
      C0906_2.Checked := False;
      C0906_3.Checked := False;
      C0906_4.Checked := False;
      C0906_5.Checked := False;
      C0906_5E.Text := '';
      C0906_5E.Enabled := False;
      pn_Item14.Enabled := False;
   end;
end;

procedure TMDN110FO.C0906_5Click(Sender: TObject);
begin
   if C0906_5.Checked then
   begin
      C0906_5E.Enabled := True;
      if C0906_5E.CanFocus then C0906_5E.SetFocus;
   end
   else
   begin
      C0906_5E.Text := '';
      C0906_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0906_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0906_5E.Text := '';
      C0906_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B0908_3Click(Sender: TObject);
begin
   if (B0908_1.Checked) or (B0908_2.Checked) or (B0908_3.Checked) then
   begin
      pn_Item15.Enabled := True;
   end
   else
   begin
      C0908_1.Checked := False;
      C0908_2.Checked := False;
      C0908_3.Checked := False;
      C0908_4.Checked := False;
      C0908_5.Checked := False;
      C0908_5E.Text := '';
      C0908_5E.Enabled := False;
      pn_Item15.Enabled := False;
   end;
end;

procedure TMDN110FO.B0908_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0908_1.Checked := False;
      C0908_2.Checked := False;
      C0908_3.Checked := False;
      C0908_4.Checked := False;
      C0908_5.Checked := False;
      C0908_5E.Text := '';
      C0908_5E.Enabled := False;
      pn_Item15.Enabled := False;
   end;
end;

procedure TMDN110FO.C0908_5Click(Sender: TObject);
begin
   if C0908_5.Checked then
   begin
      C0908_5E.Enabled := True;
      if C0908_5E.CanFocus then C0908_5E.SetFocus;
   end
   else
   begin
      C0908_5E.Text := '';
      C0908_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.C0908_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      (Sender as TRadioButton).Checked := False;

      C0908_5E.Text := '';
      C0908_5E.Enabled := False;
   end;
end;

procedure TMDN110FO.B1001_2Click(Sender: TObject);
begin
   if B1001_2.Checked then
   begin
//      pn_Item16.Enabled := True;
   end
   else
   begin
      C1001_1.Checked := False;
      C1001_2.Checked := False;
      C1001_3.Checked := False;
      C1001_4.Checked := False;
      C1001_5.Checked := False;
      C1001_6.Checked := False;
      C1001_7.Checked := False;
      C1001_8.Checked := False;
      C1001_9.Checked := False;
      C1001_10.Checked := False;
      C1001_11.Checked := False;

  //    pn_Item16.Enabled := False;
   end;
end;

procedure TMDN110FO.dtp_Item01Change(Sender: TObject);
begin
   B0203_1.Text := FormatDateTime('yyyymmdd',dtp_Item01.Date);
end;

procedure TMDN110FO.dtp_Item02Change(Sender: TObject);
begin
   B0204_1.Text := FormatDateTime('yyyymmdd',dtp_Item02.Date);
end;

procedure TMDN110FO.bbt_AddClick(Sender: TObject);
var
   i, j, Rowno: Integer;
   sName, sData : String;
   oComp : TObject;
begin
   j := 0;

   if ((Trim(ed_Patnm.Text)= '') or (Trim(pn_PatNo.Caption) = '' )) then
   begin
      showmessage('작성할 환자가 선택되지 않았습니다.');
      ed_PatNm.SetFocus;
      Exit;
   end;

   Screen.Cursor  :=  crHourglass;
   try
      mdIcuinf := HmdIcuinf.Create;

      AppendVariant(mdIcuinf.sFlag1   , 'I');                 // 조건
      AppendVariant(mdIcuinf.sSettype , 'ICU');
      AppendVariant(mdIcuinf.sPatno   , pn_Patno.Caption);
      AppendVariant(mdIcuinf.sActdate , FormatDateTime('yyyymmdd',dtp_ActDate.Date));
      AppendVariant(mdIcuinf.sDutycls , 'M');
      AppendVariant(mdIcuinf.sAdmdate , DelChar(pn_Admdate.Caption,'-'));
      AppendVariant(mdIcuinf.sWardno  , md_NowWardNo);
      AppendVariant(mdIcuinf.sRemark  , '');
      AppendVariant(mdIcuinf.sEditid  , md_UserId);         // 수정자
      AppendVariant(mdIcuinf.sEditip  , G_USERIP);          // 수정IP

      for i := 0 to Self.ComponentCount -1 do
      begin
         oComp := Self.Components[i];
         // 일반 Edit 처리 구문...
         if oComp is TEdit then
         begin
            sData := (oComp as TEdit).Text;
            if StrLen(PChar(Trim(sData))) > 0 then
            begin
               sName := (oComp as TEdit).Name;

               if CopyByte(sName,1,2) <> 'ed' then
               begin
                  AppendVariant(mdIcuinf.sMCode, CopyByte(sName, 1, 5));
                  AppendVariant(mdIcuinf.sDCode, Trim(CopyByte(sName, 7, 4)));

                  AppendVariant(mdIcuinf.sItemType, 'E1');
                  AppendVariant(mdIcuinf.sItem1   , '');
                  AppendVariant(mdIcuinf.sItem2   , (oComp as TEdit).Text);
                  AppendVariant(mdIcuinf.sItem3   , '');

                  j := j + 1;
               end;
            end;
         end
         // MaskEdit 처리 구문
         else if oComp is TMaskEdit then
         begin
            sData := (oComp as TMaskEdit).Text;

            if StrLen(PChar(Trim(sData))) > 2 then
            begin
               // Date type...
               if StrLen(PChar(Trim(sData))) > 7 then
               begin
                  sName := (oComp as TMaskEdit).Name;

                  AppendVariant(mdIcuinf.sMCode   , CopyByte(sName, 1, 5));
                  AppendVariant(mdIcuinf.sDCode   , CopyByte(sName, 7, 3));
                  AppendVariant(mdIcuinf.sItemType, 'E3');
                  AppendVariant(mdIcuinf.sItem1   , (oComp as TMaskEdit).Text);
                  AppendVariant(mdIcuinf.sItem2   , '');
                  AppendVariant(mdIcuinf.sItem3   , '');

                  j := j + 1;
               end
               // Time type...
               else
               begin
                  sName := (oComp as TMaskEdit).Name;

                  AppendVariant(mdIcuinf.sMCode   , CopyByte(sName, 1, 5));
                  AppendVariant(mdIcuinf.sDCode   , CopyByte(sName, 7, 3));
                  AppendVariant(mdIcuinf.sItemType, 'E4');
                  AppendVariant(mdIcuinf.sItem1   , (oComp as TMaskEdit).Text);
                  AppendVariant(mdIcuinf.sItem2   , '');
                  AppendVariant(mdIcuinf.sItem3   , '');

                  j := j + 1;
               end;
            end;
         end
         //CheckBox 처리 구문...
         else if oComp is TCheckBox then
         begin
            if (oComp as TCheckBox).Checked then
            begin
               sName := (oComp as TCheckBox).Name;

               AppendVariant(mdIcuinf.sMCode   , CopyByte(sName, 1, 5));
               AppendVariant(mdIcuinf.sDCode   , CopyByte(sName, 7, 3));
               AppendVariant(mdIcuinf.sItemType, 'CH');
               AppendVariant(mdIcuinf.sItem1   , 'Y');
               AppendVariant(mdIcuinf.sItem2   , (oComp as TCheckBox).Caption);
               AppendVariant(mdIcuinf.sItem3   , '');

               j := j + 1;
            end;
         end
         // RadioButton 처리 구문...
         else if oComp is TRadioButton then
         begin
            if (oComp as TRadioButton).Checked then
            begin
               sName := (oComp as TRadioButton).Name;

               AppendVariant(mdIcuinf.sMCode   , CopyByte(sName, 1, 5));
               AppendVariant(mdIcuinf.sDCode   , CopyByte(sName, 7, 3));
               AppendVariant(mdIcuinf.sItemType, 'RB');
               AppendVariant(mdIcuinf.sItem1   , 'Y');
               AppendVariant(mdIcuinf.sItem2   , (oComp as TRadiobutton).Caption);
               AppendVariant(mdIcuinf.sItem3   , '');

               j := j + 1;
            end;
         end
         // Memo 처리 구문...
         else if oComp is TMemo then
         begin
            sData := (oComp as TMemo).Text;

            if StrLen(PChar(Trim(sData))) > 0 then
            begin
               sName := (oComp as TMemo).Name;

               AppendVariant(mdIcuinf.sMCode   , CopyByte(sName, 1, 5));
               AppendVariant(mdIcuinf.sDCode   , CopyByte(sName, 7, 3));
               AppendVariant(mdIcuinf.sItemType, 'ME');
               AppendVariant(mdIcuinf.sItem1   , '');
               AppendVariant(mdIcuinf.sItem2   , '');
               AppendVariant(mdIcuinf.sItem3   , (oComp as TMemo).Text);

               j := j + 1;
            end;
         end;
      end;

      Rowno := mdIcuinf.InsertIcuwtinsert(j);

      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         mdIcuinf.Free;
         exit;
      end;

      mdIcuinf.Free;
      stb_Message.Panels[0].Text := '저장되었습니다.';
   finally
      screen.Cursor  :=  crDefault;
   end;

end;

procedure TMDN110FO.B0203_1Change(Sender: TObject);
begin
   try
      dtp_item01.Date := StrToDate(CopyByte(B0203_1.Text,1,4) +'-'+
                                   CopyByte(B0203_1.Text,5,2) +'-'+
                                   CopyByte(B0203_1.Text,7,2));
   except
      Exit;
   end;
end;

procedure TMDN110FO.B0204_1Change(Sender: TObject);
begin
   try
      dtp_item02.Date := StrToDate(CopyByte(B0204_1.Text,1,4) +'-'+
                                   CopyByte(B0204_1.Text,5,2) +'-'+
                                   CopyByte(B0204_1.Text,7,2));
   except
      Exit;
   end;
end;

procedure TMDN110FO.bbt_DeleteClick(Sender: TObject);
var
   j, Rowno : integer;
begin
   j := 0;

   if ((Trim(ed_Patnm.Text)= '') or (Trim(pn_PatNo.Caption) = '' )) then
   begin
      showmessage('환자가 선택되지 않았습니다.');
      Exit;
   end;

   if Application.MessageBox('중환자실 간호정보조사지의 내용이 모두 삭제됩니다. 삭제하시겠습니까?', '삭제', MB_OKCANCEL) <> IDOK then
         exit;

   Screen.Cursor  :=  crHourglass;
   try
      mdIcuinf := HmdIcuinf.Create;

      AppendVariant(mdIcuinf.sFlag1   , 'D');                 // 조건
      AppendVariant(mdIcuinf.sSettype , 'ICU');
      AppendVariant(mdIcuinf.sPatno   , pn_Patno.Caption);
      AppendVariant(mdIcuinf.sActdate , FormatDateTime('yyyymmdd',dtp_ActDate.Date));
      AppendVariant(mdIcuinf.sDutycls , 'M');
      AppendVariant(mdIcuinf.sAdmdate , DelChar(pn_Admdate.Caption,'-'));
      AppendVariant(mdIcuinf.sWardno  , md_NowWardNo);
      AppendVariant(mdIcuinf.sRemark  , '');
      AppendVariant(mdIcuinf.sEditid  , md_UserId);         // 수정자
      AppendVariant(mdIcuinf.sEditip  , G_USERIP);          // 수정IP

      Rowno := mdIcuinf.InsertIcuwtinsert(j);

      if Rowno <> 1 then
      begin
         ShowErrMsg(stb_Message);
         mdIcuinf.Free;
         exit;
      end;

      mdIcuinf.Free;
      stb_Message.Panels[0].Text := '삭제되었습니다.';

      Clear_Screen;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

procedure TMDN110FO.Clear_Screen;
var
   i: Integer;
   oComp : TObject;
   sName : String;
begin

   ed_PatNm.Text      := '';
   pn_PatNo.Caption   := '';
   pn_Sex.Caption     := '';
   pn_Age.Caption     := '';
   pn_AdmDate.Caption := '';
   dtp_Actdate.Date   := Date;
   ed_Edit.Text       := '';
   ed_EditID.Text     := '';


   // 기본 compoent 처리..
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];

      if oComp is TEdit then
      begin
         sName := (oComp as TEdit).Name;
         if CopyByte(sName,1,2) <> 'ed' then
            (oComp as TEdit).Text := '';
      end
      else if oComp is TMaskEdit then
         (oComp as TMaskEdit).Text := ''
      else if oComp is TComboBox then
      begin
         sName := (oComp as TComboBox).Name;
         if CopyByte(sName,1,2) <> 'co' then
            (oComp as TComboBox).ItemIndex := 0;
      end
      else if oComp is TCheckBox then
         (oComp as TCheckBox).Checked := False
      else if oComp is TRadioButton then
         (oComp as TRadioButton).Checked := False
      else if oComp is TMemo     then
         (oComp as TMemo).Lines.Clear
      else if oComp is TDateTimePicker then
      begin
         if (ocomp as TDateTimePicker).Kind = dtkDate then
         begin
            (ocomp as TDateTimePicker).Date := now;
         end
         else if (ocomp as TDateTimePicker).Kind = dtkTime then
         begin
            (ocomp as TDateTimePicker).Time := now;
         end;
      end;
   end;
end;

procedure TMDN110FO.bbt_PrintClick(Sender: TObject);
var
   i : Integer;
//   qrlb_Comp : TQRLabel;
//   qrme_Comp : TQRMemo;
begin
   // 프린트 상태 Check
   if (IsNotPrinterReady) then exit;

   if MDN110FO_P01 = nil then
      Application.CreateForm(TMDN110FO_P01, MDN110FO_P01);

   MDN110FO_P01.qrlb_PatNo.Caption   := pn_PatNo.Caption;
   MDN110FO_P01.qrlb_PatName.Caption := ed_PatNm.Text;
   MDN110FO_P01.qrlb_Sex.Caption     := pn_Sex.Caption + '/' + pn_Age.Caption;
   MDN110FO_P01.qrlb_MedDept.Caption := lb_MedDept.Caption;
   MDN110FO_P01.qrlb_AdmDte1.Caption := CopyByte(FormatDateTime('YYYYMMDD',dtp_ActDate.Date),1,4);
   MDN110FO_P01.qrlb_AdmDte2.Caption := CopyByte(FormatDateTime('YYYYMMDD',dtp_ActDate.Date),5,2);
   MDN110FO_P01.qrlb_AdmDte3.Caption := CopyByte(FormatDateTime('YYYYMMDD',dtp_ActDate.Date),7,2);

   for i:=0 to Self.ComponentCount - 1 do
   begin
      if (Self.Components[i].Name = 'pn_PatNo') or
         (Self.Components[i].Name = 'ed_PatNm') or
         (Self.Components[i].Name = 'pn_Sex') or
         (Self.Components[i].Name = 'pn_Age') or
         (Self.Components[i].Name = 'lb_MedDept') or
         (Self.Components[i].Name = 'dtp_ActDate') then
         Continue;
      try
         if (Self.Components[i].ClassType = TRadioButton) then
         begin
            if (Self.Components[i] as TRadioButton).Checked then
            begin
               (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRLabel).Caption := '√'
            end
            else
               (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (Self.Components[i].ClassType = TCheckBox) then
         begin
            if (Self.Components[i] as TCheckBox).Checked then
               (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRLabel).Caption := '√'
            else
               (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (Self.Components[i].ClassType = TEdit) then
         begin
            (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRLabel).Caption := (Self.Components[i] as TEdit).Text;
         end
         else if (Self.Components[i].ClassType = TMaskEdit) then
         begin
            (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRLabel).Caption := (Self.Components[i] as TMaskEdit).Text;
         end
         else if (Self.Components[i].ClassType = TMemo) then
         begin
            (GetComp('MDN110FO_P01',Self.Components[i].Name) as TQRMemo).Lines.Text := (Self.Components[i] as TEdit).Text;
         end;
      except

      end;
   end;

   MDN110FO_P01.qr_Report1.Print;
   MDN110FO_P01.qr_Report2.Print;
   MDN110FO_P01.Close;
end;

procedure TMDN110FO.B0001_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0002_1.SetFocus;
end;

procedure TMDN110FO.B0002_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0003_1.SetFocus;
end;

procedure TMDN110FO.B0004_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0005_1.SetFocus;
end;

procedure TMDN110FO.B0003_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0004_1.SetFocus;
end;

procedure TMDN110FO.B0005_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0006_1.SetFocus;
end;

procedure TMDN110FO.B0006_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0007_1.SetFocus;
end;

procedure TMDN110FO.B0007_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0008_1.SetFocus;
end;

procedure TMDN110FO.B0008_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0009_1.SetFocus;
end;

procedure TMDN110FO.B0009_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0010_1.SetFocus;
end;

procedure TMDN110FO.B0010_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0011_1.SetFocus;
end;

procedure TMDN110FO.B0011_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0012_1.SetFocus;
end;

procedure TMDN110FO.B0012_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0013_1.SetFocus;
end;

procedure TMDN110FO.B0013_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0014_1.SetFocus;
end;

procedure TMDN110FO.B0401_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0402_1.SetFocus;
end;

procedure TMDN110FO.B0402_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0403_1.SetFocus;
end;

procedure TMDN110FO.B0403_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      B0404_1.SetFocus;
end;

initialization
    RegisterClass(TMDN110FO);

finalization
    UnRegisterClass(TMDN110FO);

end.
