{===============================================================================
   Program ID    : MDN110UW
   Program Name  : NICU ��ȣ����� - ��ȣ����
   Program Desc. : ICU ���� ��ȣ����� ��ȣ������ ���� �뵵�� NICU�� sheet

   Author : Lee, Se-Ha
   Date   : 2011.12.07
===============================================================================}
unit MDN110UW;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, ComCtrls, Buttons, AdvPanel, QuickRpt, Qrctrls,
  Printers, QRPrntr, Grids, UltraGrid, Variants,
  // [EMR����] 2016.04.12 ȫâ�� �߰���(������). SComReport ������ ���� �߰�
  SComFunc,
  // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
  LoadEMRFunc,
  // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
  KUMC.Packet, KUMC.Json;

type
  TMDN110FW = class(TForm)
    stb_Message: TStatusBar;
    Panel2: TPanel;
    bbt_Close: TBitBtn;
    bbt_Print: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    sbt_Previous: TSpeedButton;
    sbt_Next: TSpeedButton;
    Label20: TLabel;
    lb_PatNo: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    lb_PatName: TLabel;
    Label40: TLabel;
    lb_AdmDate: TLabel;
    sbt_CalcIntube: TSpeedButton;
    dtp_AssDate: TDateTimePicker;
    pn_Work: TPanel;
    Bevel4: TBevel;
    Label25: TLabel;
    sbt_DCopy: TSpeedButton;
    sbt_DSave: TSpeedButton;
    sbt_DDelete: TSpeedButton;
    Bevel5: TBevel;
    Label22: TLabel;
    sbt_ECopy: TSpeedButton;
    sbt_EDelete: TSpeedButton;
    sbt_ESave: TSpeedButton;
    Bevel6: TBevel;
    Label21: TLabel;
    sbt_NCopy: TSpeedButton;
    sbt_NDelete: TSpeedButton;
    sbt_NSave: TSpeedButton;
    Bevel2: TBevel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Bevel3: TBevel;
    Shape3: TShape;
    Shape4: TShape;
    Label5: TLabel;
    Label2: TLabel;
    Bevel7: TBevel;
    Shape5: TShape;
    Shape6: TShape;
    Label6: TLabel;
    Label7: TLabel;
    shp_Alert_D: TShape;
    shp_Alert_E: TShape;
    shp_Alert_N: TShape;
    lb_Sex: TLabel;
    lb_Age: TLabel;
    lb_RoomNo: TLabel;
    ed_D_AssNursName: TEdit;
    ed_D_AssNursId: TEdit;
    med_D_AssTime: TMaskEdit;
    ed_E_AssNursName: TEdit;
    ed_E_AssNursId: TEdit;
    med_E_AssTime: TMaskEdit;
    ed_D_AssDept: TEdit;
    ed_E_AssDept: TEdit;
    ed_N_AssNursName: TEdit;
    ed_N_AssNursId: TEdit;
    med_N_AssTime: TMaskEdit;
    ed_N_AssDept: TEdit;
    scrlbx_Assess: TScrollBox;
    Bevel48: TBevel;
    Bevel59: TBevel;
    Bevel90: TBevel;
    Bevel114: TBevel;
    Bevel171: TBevel;
    Bevel201: TBevel;
    Bevel253: TBevel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel96: TPanel;
    Bevel111: TBevel;
    Bevel112: TBevel;
    Bevel113: TBevel;
    D_B0405_1: TRadioButton;
    D_B0405_2: TRadioButton;
    D_B0405_3: TRadioButton;
    Panel97: TPanel;
    Bevel82: TBevel;
    Bevel87: TBevel;
    Bevel88: TBevel;
    Label65: TLabel;
    Bevel60: TBevel;
    D_B0407_1E: TEdit;
    D_B0407_1: TRadioButton;
    D_B0407_2: TRadioButton;
    Panel98: TPanel;
    Panel99: TPanel;
    Panel100: TPanel;
    Bevel80: TBevel;
    Bevel81: TBevel;
    D_B0406_1: TRadioButton;
    D_B0406_2: TRadioButton;
    Panel102: TPanel;
    Panel122: TPanel;
    Panel123: TPanel;
    Panel137: TPanel;
    Panel138: TPanel;
    pn_DItem03: TPanel;
    Bevel121: TBevel;
    Panel143: TPanel;
    Panel183: TPanel;
    Panel184: TPanel;
    Panel185: TPanel;
    Bevel173: TBevel;
    Bevel174: TBevel;
    Panel186: TPanel;
    Panel187: TPanel;
    Bevel175: TBevel;
    Bevel176: TBevel;
    Bevel177: TBevel;
    Bevel178: TBevel;
    D_B0602_1: TRadioButton;
    D_B0602_2: TRadioButton;
    D_B0602_3: TRadioButton;
    D_B0602_4: TRadioButton;
    Panel188: TPanel;
    Panel189: TPanel;
    Panel191: TPanel;
    Panel195: TPanel;
    Bevel179: TBevel;
    Bevel180: TBevel;
    Bevel181: TBevel;
    Bevel182: TBevel;
    Bevel183: TBevel;
    Bevel172: TBevel;
    D_B0701_1: TRadioButton;
    D_B0701_2: TRadioButton;
    D_B0701_3: TRadioButton;
    D_B0701_4: TRadioButton;
    D_B0701_5: TRadioButton;
    Panel196: TPanel;
    Panel206: TPanel;
    Panel216: TPanel;
    Bevel184: TBevel;
    Bevel185: TBevel;
    Bevel186: TBevel;
    D_B0702_1: TRadioButton;
    D_B0702_2: TRadioButton;
    D_B0702_3: TRadioButton;
    Panel256: TPanel;
    Bevel229: TBevel;
    Bevel230: TBevel;
    Label91: TLabel;
    Bevel241: TBevel;
    Label92: TLabel;
    Bevel228: TBevel;
    D_B0808_1: TCheckBox;
    D_B0806_1: TEdit;
    D_B0807_1: TEdit;
    Panel257: TPanel;
    Panel258: TPanel;
    Panel260: TPanel;
    Panel261: TPanel;
    Bevel235: TBevel;
    Bevel236: TBevel;
    Bevel237: TBevel;
    D_B0802_1: TRadioButton;
    D_B0802_2: TRadioButton;
    D_B0802_3: TRadioButton;
    Panel262: TPanel;
    Panel263: TPanel;
    Panel298: TPanel;
    Panel299: TPanel;
    Panel301: TPanel;
    Panel35: TPanel;
    pn_DDetail02: TPanel;
    Bevel334: TBevel;
    Label14: TLabel;
    D_B0703_2: TEdit;
    Panel37: TPanel;
    D_B0703_1: TMaskEdit;
    Panel38: TPanel;
    D_B0703_3: TEdit;
    Panel20: TPanel;
    Bevel341: TBevel;
    Bevel342: TBevel;
    D_B0304_1: TRadioButton;
    D_B0304_2: TRadioButton;
    Panel29: TPanel;
    Bevel24: TBevel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    D_B0202_1: TRadioButton;
    D_B0202_2: TRadioButton;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel7: TPanel;
    Bevel26: TBevel;
    Bevel27: TBevel;
    D_B0201_1: TRadioButton;
    D_B0201_2: TRadioButton;
    Panel17: TPanel;
    Bevel35: TBevel;
    Bevel36: TBevel;
    D_B0502_1: TRadioButton;
    D_B0502_2: TRadioButton;
    Panel19: TPanel;
    Panel18: TPanel;
    Bevel28: TBevel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Bevel37: TBevel;
    D_B0501_1: TCheckBox;
    D_B0501_2: TCheckBox;
    D_B0501_3: TCheckBox;
    D_B0501_4: TCheckBox;
    D_B0501_5: TCheckBox;
    Panel22: TPanel;
    Panel24: TPanel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    D_B0504_1: TRadioButton;
    D_B0504_2: TRadioButton;
    Panel26: TPanel;
    Panel3: TPanel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    D_B0603_1: TRadioButton;
    D_B0603_2: TRadioButton;
    Panel21: TPanel;
    Bevel10: TBevel;
    Panel25: TPanel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    D_B0604_1: TRadioButton;
    D_B0604_2: TRadioButton;
    D_B0604_3: TRadioButton;
    Panel27: TPanel;
    Panel28: TPanel;
    Bevel40: TBevel;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    D_B0801_1: TCheckBox;
    D_B0801_2: TCheckBox;
    D_B0801_3: TCheckBox;
    D_B0801_4: TCheckBox;
    D_B0801_5: TCheckBox;
    D_B0801_6: TCheckBox;
    Panel30: TPanel;
    Bevel46: TBevel;
    Bevel47: TBevel;
    Label8: TLabel;
    Bevel49: TBevel;
    Label9: TLabel;
    D_B0804_1: TCheckBox;
    D_B0803_1: TEdit;
    Panel31: TPanel;
    Bevel50: TBevel;
    Bevel51: TBevel;
    D_B0805_1: TRadioButton;
    D_B0805_2: TRadioButton;
    Panel33: TPanel;
    pn_DItem02: TPanel;
    Bevel52: TBevel;
    Bevel53: TBevel;
    Bevel54: TBevel;
    Bevel55: TBevel;
    Bevel56: TBevel;
    D_C0809_5E: TEdit;
    Panel36: TPanel;
    Bevel58: TBevel;
    Bevel61: TBevel;
    D_B0809_1: TRadioButton;
    D_B0809_2: TRadioButton;
    Panel39: TPanel;
    Bevel57: TBevel;
    Bevel62: TBevel;
    Bevel63: TBevel;
    Label10: TLabel;
    D_B0203_4: TEdit;
    D_B0203_1: TRadioButton;
    D_B0203_3: TRadioButton;
    Bevel64: TBevel;
    D_B0203_2: TRadioButton;
    Panel34: TPanel;
    Bevel65: TBevel;
    Bevel66: TBevel;
    D_B0703_4: TRadioButton;
    D_B0703_5: TRadioButton;
    Bevel67: TBevel;
    Panel42: TPanel;
    Panel44: TPanel;
    D_B0901_3: TEdit;
    Panel45: TPanel;
    Panel302: TPanel;
    Bevel312: TBevel;
    Bevel313: TBevel;
    Bevel314: TBevel;
    Panel303: TPanel;
    Panel40: TPanel;
    D_B0901_4: TEdit;
    Bevel68: TBevel;
    Label11: TLabel;
    D_B0901_2: TEdit;
    Panel43: TPanel;
    D_B0901_1: TMaskEdit;
    Bevel69: TBevel;
    Panel41: TPanel;
    Panel46: TPanel;
    Bevel70: TBevel;
    Panel47: TPanel;
    D_B0904_3: TEdit;
    Panel48: TPanel;
    Panel49: TPanel;
    Bevel71: TBevel;
    Bevel72: TBevel;
    Bevel73: TBevel;
    Bevel74: TBevel;
    Bevel75: TBevel;
    Bevel76: TBevel;
    D_B0906_1: TRadioButton;
    D_B0906_2: TRadioButton;
    D_B0906_3: TRadioButton;
    D_B0906_4: TRadioButton;
    D_B0906_5: TRadioButton;
    D_B0906_6: TRadioButton;
    Panel50: TPanel;
    Bevel77: TBevel;
    Bevel78: TBevel;
    Bevel79: TBevel;
    D_B0905_1: TRadioButton;
    D_B0905_2: TRadioButton;
    D_B0905_3: TRadioButton;
    Panel51: TPanel;
    Panel52: TPanel;
    D_B0904_4: TEdit;
    Bevel83: TBevel;
    Label12: TLabel;
    D_B0904_2: TEdit;
    Panel53: TPanel;
    D_B0904_1: TMaskEdit;
    Panel54: TPanel;
    Panel55: TPanel;
    Bevel84: TBevel;
    Panel56: TPanel;
    D_B0907_3: TEdit;
    Panel57: TPanel;
    Panel58: TPanel;
    Bevel85: TBevel;
    Bevel86: TBevel;
    Bevel89: TBevel;
    Bevel91: TBevel;
    Bevel92: TBevel;
    Bevel93: TBevel;
    D_B0909_1: TRadioButton;
    D_B0909_2: TRadioButton;
    D_B0909_3: TRadioButton;
    D_B0909_4: TRadioButton;
    D_B0909_5: TRadioButton;
    D_B0909_6: TRadioButton;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    D_B0907_4: TEdit;
    Bevel97: TBevel;
    Label13: TLabel;
    D_B0907_2: TEdit;
    Panel62: TPanel;
    D_B0907_1: TMaskEdit;
    Bevel94: TBevel;
    Bevel95: TBevel;
    Bevel96: TBevel;
    D_B0908_1: TRadioButton;
    D_B0908_2: TRadioButton;
    D_B0908_3: TRadioButton;
    Panel63: TPanel;
    Panel64: TPanel;
    Bevel98: TBevel;
    Panel65: TPanel;
    D_B0910_3: TEdit;
    Panel66: TPanel;
    Panel67: TPanel;
    Bevel99: TBevel;
    Bevel100: TBevel;
    Bevel101: TBevel;
    Bevel102: TBevel;
    Bevel103: TBevel;
    Bevel104: TBevel;
    D_B0912_1: TRadioButton;
    D_B0912_2: TRadioButton;
    D_B0912_3: TRadioButton;
    D_B0912_4: TRadioButton;
    D_B0912_5: TRadioButton;
    D_B0912_6: TRadioButton;
    Panel68: TPanel;
    Bevel105: TBevel;
    Bevel106: TBevel;
    Bevel115: TBevel;
    D_B0911_1: TRadioButton;
    D_B0911_2: TRadioButton;
    D_B0911_3: TRadioButton;
    Panel69: TPanel;
    Panel70: TPanel;
    D_B0910_4: TEdit;
    Bevel116: TBevel;
    Label15: TLabel;
    D_B0910_2: TEdit;
    Panel71: TPanel;
    D_B0910_1: TMaskEdit;
    Panel72: TPanel;
    Panel73: TPanel;
    Bevel117: TBevel;
    Panel74: TPanel;
    D_B0914_3: TEdit;
    Panel75: TPanel;
    Panel76: TPanel;
    Bevel118: TBevel;
    Bevel122: TBevel;
    Bevel123: TBevel;
    Bevel124: TBevel;
    Bevel125: TBevel;
    Bevel126: TBevel;
    D_B0916_1: TRadioButton;
    D_B0916_2: TRadioButton;
    D_B0916_3: TRadioButton;
    D_B0916_4: TRadioButton;
    D_B0916_5: TRadioButton;
    D_B0916_6: TRadioButton;
    Panel77: TPanel;
    Bevel127: TBevel;
    Bevel128: TBevel;
    Bevel129: TBevel;
    D_B0915_1: TRadioButton;
    D_B0915_2: TRadioButton;
    D_B0915_3: TRadioButton;
    Panel78: TPanel;
    Panel79: TPanel;
    D_B0914_4: TEdit;
    Bevel130: TBevel;
    Label16: TLabel;
    D_B0914_2: TEdit;
    Panel80: TPanel;
    D_B0914_1: TMaskEdit;
    Panel23: TPanel;
    Bevel213: TBevel;
    Bevel218: TBevel;
    Bevel220: TBevel;
    Bevel221: TBevel;
    Bevel222: TBevel;
    Bevel214: TBevel;
    D_B0302_1: TCheckBox;
    D_B0302_2: TCheckBox;
    D_B0302_3: TCheckBox;
    D_B0302_4: TCheckBox;
    D_B0302_5: TCheckBox;
    D_B0302_6: TCheckBox;
    Panel82: TPanel;
    D_B0902_1: TRadioButton;
    D_B0902_2: TRadioButton;
    D_B0902_3: TRadioButton;
    D_B0913_1: TEdit;
    Bevel107: TBevel;
    Bevel108: TBevel;
    Bevel109: TBevel;
    Panel32: TPanel;
    Panel83: TPanel;
    Panel84: TPanel;
    Bevel110: TBevel;
    Bevel131: TBevel;
    Bevel132: TBevel;
    E_B0405_1: TRadioButton;
    E_B0405_2: TRadioButton;
    E_B0405_3: TRadioButton;
    Panel85: TPanel;
    Bevel133: TBevel;
    Bevel134: TBevel;
    Bevel135: TBevel;
    Label17: TLabel;
    Bevel136: TBevel;
    E_B0407_1E: TEdit;
    E_B0407_1: TRadioButton;
    E_B0407_2: TRadioButton;
    Panel86: TPanel;
    Panel87: TPanel;
    Panel88: TPanel;
    Bevel137: TBevel;
    Bevel138: TBevel;
    E_B0406_1: TRadioButton;
    E_B0406_2: TRadioButton;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    Panel103: TPanel;
    Bevel150: TBevel;
    Bevel151: TBevel;
    E_B0304_1: TRadioButton;
    E_B0304_2: TRadioButton;
    Panel104: TPanel;
    Panel105: TPanel;
    Bevel152: TBevel;
    Bevel153: TBevel;
    Bevel154: TBevel;
    Label18: TLabel;
    Bevel155: TBevel;
    E_B0203_4: TEdit;
    E_B0203_1: TRadioButton;
    E_B0203_3: TRadioButton;
    E_B0203_2: TRadioButton;
    Panel106: TPanel;
    Panel107: TPanel;
    Panel108: TPanel;
    Bevel156: TBevel;
    Bevel157: TBevel;
    E_B0202_1: TRadioButton;
    E_B0202_2: TRadioButton;
    Panel109: TPanel;
    Panel110: TPanel;
    Panel111: TPanel;
    Panel112: TPanel;
    Bevel158: TBevel;
    Bevel159: TBevel;
    E_B0201_1: TRadioButton;
    E_B0201_2: TRadioButton;
    Panel113: TPanel;
    Bevel160: TBevel;
    Bevel161: TBevel;
    Bevel162: TBevel;
    Bevel163: TBevel;
    Bevel164: TBevel;
    Bevel165: TBevel;
    E_B0302_1: TCheckBox;
    E_B0302_2: TCheckBox;
    E_B0302_3: TCheckBox;
    E_B0302_4: TCheckBox;
    E_B0302_5: TCheckBox;
    E_B0302_6: TCheckBox;
    Panel114: TPanel;
    Bevel166: TBevel;
    Bevel167: TBevel;
    Bevel168: TBevel;
    Panel115: TPanel;
    Panel116: TPanel;
    Panel119: TPanel;
    Panel120: TPanel;
    Panel121: TPanel;
    Bevel188: TBevel;
    Bevel189: TBevel;
    Bevel190: TBevel;
    Panel124: TPanel;
    Panel125: TPanel;
    Bevel191: TBevel;
    Bevel192: TBevel;
    Bevel193: TBevel;
    Bevel194: TBevel;
    E_B0602_1: TRadioButton;
    E_B0602_2: TRadioButton;
    E_B0602_3: TRadioButton;
    E_B0602_4: TRadioButton;
    Panel126: TPanel;
    Panel127: TPanel;
    Panel128: TPanel;
    Panel129: TPanel;
    Bevel195: TBevel;
    Bevel196: TBevel;
    Bevel197: TBevel;
    Bevel198: TBevel;
    Bevel199: TBevel;
    Bevel200: TBevel;
    E_B0701_1: TRadioButton;
    E_B0701_2: TRadioButton;
    E_B0701_3: TRadioButton;
    E_B0701_4: TRadioButton;
    E_B0701_5: TRadioButton;
    Panel130: TPanel;
    Panel131: TPanel;
    Panel132: TPanel;
    Bevel202: TBevel;
    Bevel203: TBevel;
    Bevel204: TBevel;
    E_B0702_1: TRadioButton;
    E_B0702_2: TRadioButton;
    E_B0702_3: TRadioButton;
    Panel133: TPanel;
    Panel134: TPanel;
    Bevel205: TBevel;
    Label19: TLabel;
    Bevel206: TBevel;
    Bevel207: TBevel;
    Bevel208: TBevel;
    E_B0703_2: TEdit;
    Panel135: TPanel;
    E_B0703_1: TMaskEdit;
    Panel136: TPanel;
    E_B0703_3: TEdit;
    Panel139: TPanel;
    E_B0703_4: TRadioButton;
    E_B0703_5: TRadioButton;
    Panel140: TPanel;
    Bevel209: TBevel;
    Bevel210: TBevel;
    E_B0502_1: TRadioButton;
    E_B0502_2: TRadioButton;
    Panel142: TPanel;
    Panel144: TPanel;
    Bevel211: TBevel;
    Bevel212: TBevel;
    Bevel215: TBevel;
    Bevel216: TBevel;
    Bevel217: TBevel;
    Bevel219: TBevel;
    E_B0501_1: TCheckBox;
    E_B0501_2: TCheckBox;
    E_B0501_3: TCheckBox;
    E_B0501_4: TCheckBox;
    E_B0501_5: TCheckBox;
    Panel145: TPanel;
    Panel146: TPanel;
    Bevel223: TBevel;
    Bevel224: TBevel;
    E_B0504_1: TRadioButton;
    E_B0504_2: TRadioButton;
    Panel147: TPanel;
    Panel148: TPanel;
    Bevel225: TBevel;
    Bevel226: TBevel;
    E_B0603_1: TRadioButton;
    E_B0603_2: TRadioButton;
    Panel149: TPanel;
    Panel150: TPanel;
    Bevel227: TBevel;
    Bevel231: TBevel;
    Bevel232: TBevel;
    E_B0604_1: TRadioButton;
    E_B0604_2: TRadioButton;
    E_B0604_3: TRadioButton;
    Panel151: TPanel;
    Bevel233: TBevel;
    Panel152: TPanel;
    Bevel234: TBevel;
    Bevel238: TBevel;
    Label23: TLabel;
    Bevel239: TBevel;
    Label24: TLabel;
    Bevel240: TBevel;
    E_B0808_1: TCheckBox;
    E_B0806_1: TEdit;
    E_B0807_1: TEdit;
    Panel153: TPanel;
    Panel154: TPanel;
    Panel155: TPanel;
    Panel156: TPanel;
    Bevel242: TBevel;
    Bevel243: TBevel;
    Bevel244: TBevel;
    E_B0802_1: TRadioButton;
    E_B0802_2: TRadioButton;
    E_B0802_3: TRadioButton;
    Panel157: TPanel;
    Panel158: TPanel;
    Panel159: TPanel;
    Bevel245: TBevel;
    Bevel246: TBevel;
    Bevel247: TBevel;
    Bevel248: TBevel;
    Bevel249: TBevel;
    Bevel250: TBevel;
    E_B0801_1: TCheckBox;
    E_B0801_2: TCheckBox;
    E_B0801_3: TCheckBox;
    E_B0801_4: TCheckBox;
    E_B0801_5: TCheckBox;
    E_B0801_6: TCheckBox;
    Panel160: TPanel;
    Bevel251: TBevel;
    Bevel252: TBevel;
    Label26: TLabel;
    Bevel254: TBevel;
    Label27: TLabel;
    Bevel255: TBevel;
    Bevel256: TBevel;
    E_B0804_1: TCheckBox;
    E_B0803_1: TEdit;
    E_B0805_1: TRadioButton;
    E_B0805_2: TRadioButton;
    Panel161: TPanel;
    Panel162: TPanel;
    pn_EItem02: TPanel;
    Bevel257: TBevel;
    Bevel258: TBevel;
    Bevel259: TBevel;
    Bevel260: TBevel;
    Bevel261: TBevel;
    E_C0809_5E: TEdit;
    Panel164: TPanel;
    Bevel262: TBevel;
    Bevel263: TBevel;
    E_B0809_1: TRadioButton;
    E_B0809_2: TRadioButton;
    Panel165: TPanel;
    Bevel264: TBevel;
    Bevel265: TBevel;
    Label28: TLabel;
    Bevel266: TBevel;
    Label29: TLabel;
    Bevel267: TBevel;
    Label30: TLabel;
    Bevel268: TBevel;
    Label31: TLabel;
    Bevel269: TBevel;
    Label32: TLabel;
    Panel166: TPanel;
    Panel167: TPanel;
    Panel168: TPanel;
    Panel169: TPanel;
    Bevel270: TBevel;
    Panel170: TPanel;
    E_B0901_3: TEdit;
    Panel171: TPanel;
    Panel173: TPanel;
    Bevel277: TBevel;
    Bevel278: TBevel;
    Bevel279: TBevel;
    E_B0902_1: TRadioButton;
    E_B0902_2: TRadioButton;
    E_B0902_3: TRadioButton;
    Panel174: TPanel;
    Panel175: TPanel;
    E_B0901_4: TEdit;
    E_B0901_2: TEdit;
    Panel176: TPanel;
    E_B0901_1: TMaskEdit;
    Panel177: TPanel;
    Panel178: TPanel;
    Bevel280: TBevel;
    Panel179: TPanel;
    E_B0904_3: TEdit;
    Panel180: TPanel;
    Panel181: TPanel;
    Bevel281: TBevel;
    Bevel282: TBevel;
    Bevel283: TBevel;
    Bevel284: TBevel;
    Bevel285: TBevel;
    Bevel286: TBevel;
    E_B0906_1: TRadioButton;
    E_B0906_2: TRadioButton;
    E_B0906_3: TRadioButton;
    E_B0906_4: TRadioButton;
    E_B0906_5: TRadioButton;
    E_B0906_6: TRadioButton;
    Panel182: TPanel;
    Bevel287: TBevel;
    Bevel288: TBevel;
    Bevel289: TBevel;
    E_B0905_1: TRadioButton;
    E_B0905_2: TRadioButton;
    E_B0905_3: TRadioButton;
    Panel190: TPanel;
    Panel192: TPanel;
    E_B0904_4: TEdit;
    E_B0904_2: TEdit;
    Panel193: TPanel;
    E_B0904_1: TMaskEdit;
    Panel194: TPanel;
    Panel197: TPanel;
    Bevel290: TBevel;
    Panel198: TPanel;
    E_B0907_3: TEdit;
    Panel199: TPanel;
    Panel200: TPanel;
    Bevel291: TBevel;
    Bevel292: TBevel;
    Bevel293: TBevel;
    Bevel294: TBevel;
    Bevel295: TBevel;
    Bevel296: TBevel;
    E_B0909_1: TRadioButton;
    E_B0909_2: TRadioButton;
    E_B0909_3: TRadioButton;
    E_B0909_4: TRadioButton;
    E_B0909_5: TRadioButton;
    E_B0909_6: TRadioButton;
    Panel201: TPanel;
    Bevel297: TBevel;
    Bevel298: TBevel;
    Bevel299: TBevel;
    E_B0908_1: TRadioButton;
    E_B0908_2: TRadioButton;
    E_B0908_3: TRadioButton;
    Panel202: TPanel;
    Panel203: TPanel;
    E_B0907_4: TEdit;
    E_B0907_2: TEdit;
    Panel204: TPanel;
    E_B0907_1: TMaskEdit;
    Panel205: TPanel;
    Panel207: TPanel;
    Bevel300: TBevel;
    Panel208: TPanel;
    E_B0910_3: TEdit;
    Panel209: TPanel;
    Panel210: TPanel;
    Bevel301: TBevel;
    Bevel302: TBevel;
    Bevel303: TBevel;
    Bevel304: TBevel;
    Bevel305: TBevel;
    Bevel306: TBevel;
    E_B0912_1: TRadioButton;
    E_B0912_2: TRadioButton;
    E_B0912_3: TRadioButton;
    E_B0912_4: TRadioButton;
    E_B0912_5: TRadioButton;
    E_B0912_6: TRadioButton;
    Panel211: TPanel;
    Bevel315: TBevel;
    Bevel316: TBevel;
    Bevel317: TBevel;
    E_B0911_1: TRadioButton;
    E_B0911_2: TRadioButton;
    E_B0911_3: TRadioButton;
    Panel212: TPanel;
    Panel213: TPanel;
    E_B0910_4: TEdit;
    E_B0910_2: TEdit;
    Panel214: TPanel;
    E_B0910_1: TMaskEdit;
    Panel215: TPanel;
    Panel217: TPanel;
    Bevel318: TBevel;
    Panel218: TPanel;
    E_B0914_3: TEdit;
    Panel219: TPanel;
    Panel220: TPanel;
    Bevel319: TBevel;
    Bevel320: TBevel;
    Bevel321: TBevel;
    Bevel322: TBevel;
    Bevel323: TBevel;
    Bevel324: TBevel;
    E_B0916_1: TRadioButton;
    E_B0916_2: TRadioButton;
    E_B0916_3: TRadioButton;
    E_B0916_4: TRadioButton;
    E_B0916_5: TRadioButton;
    E_B0916_6: TRadioButton;
    Panel221: TPanel;
    Bevel325: TBevel;
    Bevel326: TBevel;
    Bevel327: TBevel;
    E_B0915_1: TRadioButton;
    E_B0915_2: TRadioButton;
    E_B0915_3: TRadioButton;
    Panel222: TPanel;
    Panel223: TPanel;
    E_B0914_4: TEdit;
    E_B0914_2: TEdit;
    Panel224: TPanel;
    E_B0914_1: TMaskEdit;
    E_B0913_1: TEdit;
    Bevel328: TBevel;
    Bevel329: TBevel;
    Bevel330: TBevel;
    Panel92: TPanel;
    Panel163: TPanel;
    Panel225: TPanel;
    Bevel331: TBevel;
    Bevel332: TBevel;
    Bevel333: TBevel;
    N_B0405_1: TRadioButton;
    N_B0405_2: TRadioButton;
    N_B0405_3: TRadioButton;
    Panel226: TPanel;
    Bevel335: TBevel;
    Bevel336: TBevel;
    Bevel337: TBevel;
    Label33: TLabel;
    Bevel338: TBevel;
    N_B0407_1E: TEdit;
    N_B0407_1: TRadioButton;
    N_B0407_2: TRadioButton;
    Panel227: TPanel;
    Panel228: TPanel;
    Panel229: TPanel;
    Bevel339: TBevel;
    Bevel340: TBevel;
    N_B0406_1: TRadioButton;
    N_B0406_2: TRadioButton;
    Panel230: TPanel;
    Panel231: TPanel;
    Panel232: TPanel;
    Panel238: TPanel;
    Bevel354: TBevel;
    Bevel355: TBevel;
    N_B0304_1: TRadioButton;
    N_B0304_2: TRadioButton;
    Panel239: TPanel;
    Panel240: TPanel;
    Bevel356: TBevel;
    Bevel357: TBevel;
    Bevel358: TBevel;
    Label34: TLabel;
    Bevel359: TBevel;
    N_B0203_4: TEdit;
    N_B0203_1: TRadioButton;
    N_B0203_3: TRadioButton;
    N_B0203_2: TRadioButton;
    Panel241: TPanel;
    Panel242: TPanel;
    Panel243: TPanel;
    Bevel360: TBevel;
    Bevel361: TBevel;
    N_B0202_1: TRadioButton;
    N_B0202_2: TRadioButton;
    Panel244: TPanel;
    Panel245: TPanel;
    Panel246: TPanel;
    Panel247: TPanel;
    Bevel362: TBevel;
    Bevel363: TBevel;
    N_B0201_1: TRadioButton;
    N_B0201_2: TRadioButton;
    Panel248: TPanel;
    Bevel364: TBevel;
    Bevel365: TBevel;
    Bevel366: TBevel;
    Bevel367: TBevel;
    Bevel368: TBevel;
    Bevel369: TBevel;
    N_B0302_1: TCheckBox;
    N_B0302_2: TCheckBox;
    N_B0302_3: TCheckBox;
    N_B0302_4: TCheckBox;
    N_B0302_5: TCheckBox;
    N_B0302_6: TCheckBox;
    Panel249: TPanel;
    Bevel370: TBevel;
    Bevel371: TBevel;
    Bevel372: TBevel;
    Panel250: TPanel;
    Panel251: TPanel;
    Panel254: TPanel;
    Panel255: TPanel;
    Panel259: TPanel;
    Bevel376: TBevel;
    Bevel377: TBevel;
    Bevel378: TBevel;
    Panel264: TPanel;
    Panel265: TPanel;
    Bevel379: TBevel;
    Bevel380: TBevel;
    Bevel381: TBevel;
    Bevel382: TBevel;
    N_B0602_1: TRadioButton;
    N_B0602_2: TRadioButton;
    N_B0602_3: TRadioButton;
    N_B0602_4: TRadioButton;
    Panel266: TPanel;
    Panel267: TPanel;
    Panel268: TPanel;
    Panel269: TPanel;
    Bevel383: TBevel;
    Bevel384: TBevel;
    Bevel385: TBevel;
    Bevel386: TBevel;
    Bevel387: TBevel;
    Bevel388: TBevel;
    N_B0701_1: TRadioButton;
    N_B0701_2: TRadioButton;
    N_B0701_3: TRadioButton;
    N_B0701_4: TRadioButton;
    N_B0701_5: TRadioButton;
    Panel270: TPanel;
    Panel271: TPanel;
    Panel272: TPanel;
    Bevel389: TBevel;
    Bevel390: TBevel;
    Bevel391: TBevel;
    N_B0702_1: TRadioButton;
    N_B0702_2: TRadioButton;
    N_B0702_3: TRadioButton;
    Panel273: TPanel;
    Panel274: TPanel;
    Bevel392: TBevel;
    Label35: TLabel;
    Bevel393: TBevel;
    Bevel394: TBevel;
    Bevel395: TBevel;
    N_B0703_2: TEdit;
    Panel275: TPanel;
    N_B0703_1: TMaskEdit;
    Panel276: TPanel;
    N_B0703_3: TEdit;
    Panel277: TPanel;
    N_B0703_4: TRadioButton;
    N_B0703_5: TRadioButton;
    Panel278: TPanel;
    Bevel396: TBevel;
    Bevel397: TBevel;
    N_B0502_1: TRadioButton;
    N_B0502_2: TRadioButton;
    Panel279: TPanel;
    Panel280: TPanel;
    Bevel398: TBevel;
    Bevel399: TBevel;
    Bevel400: TBevel;
    Bevel401: TBevel;
    Bevel402: TBevel;
    Bevel403: TBevel;
    N_B0501_1: TCheckBox;
    N_B0501_2: TCheckBox;
    N_B0501_3: TCheckBox;
    N_B0501_4: TCheckBox;
    N_B0501_5: TCheckBox;
    Panel281: TPanel;
    Panel282: TPanel;
    Bevel404: TBevel;
    Bevel405: TBevel;
    N_B0504_1: TRadioButton;
    N_B0504_2: TRadioButton;
    Panel283: TPanel;
    Panel284: TPanel;
    Bevel406: TBevel;
    Bevel407: TBevel;
    N_B0603_1: TRadioButton;
    N_B0603_2: TRadioButton;
    Panel285: TPanel;
    Panel286: TPanel;
    Bevel408: TBevel;
    Bevel409: TBevel;
    Bevel410: TBevel;
    N_B0604_1: TRadioButton;
    N_B0604_2: TRadioButton;
    N_B0604_3: TRadioButton;
    Panel287: TPanel;
    Bevel411: TBevel;
    Panel288: TPanel;
    Bevel412: TBevel;
    Bevel413: TBevel;
    Label36: TLabel;
    Bevel414: TBevel;
    Label39: TLabel;
    Bevel415: TBevel;
    N_B0808_1: TCheckBox;
    N_B0806_1: TEdit;
    N_B0807_1: TEdit;
    Panel289: TPanel;
    Panel290: TPanel;
    Panel291: TPanel;
    Panel292: TPanel;
    Bevel416: TBevel;
    Bevel417: TBevel;
    Bevel418: TBevel;
    N_B0802_1: TRadioButton;
    N_B0802_2: TRadioButton;
    N_B0802_3: TRadioButton;
    Panel293: TPanel;
    Panel294: TPanel;
    Panel295: TPanel;
    Bevel419: TBevel;
    Bevel420: TBevel;
    Bevel421: TBevel;
    Bevel422: TBevel;
    Bevel423: TBevel;
    Bevel424: TBevel;
    N_B0801_1: TCheckBox;
    N_B0801_2: TCheckBox;
    N_B0801_3: TCheckBox;
    N_B0801_4: TCheckBox;
    N_B0801_5: TCheckBox;
    N_B0801_6: TCheckBox;
    Panel296: TPanel;
    Bevel425: TBevel;
    Bevel426: TBevel;
    Label41: TLabel;
    Bevel427: TBevel;
    Label42: TLabel;
    Bevel428: TBevel;
    Bevel429: TBevel;
    N_B0804_1: TCheckBox;
    N_B0803_1: TEdit;
    N_B0805_1: TRadioButton;
    N_B0805_2: TRadioButton;
    Panel297: TPanel;
    Panel300: TPanel;
    pn_NItem02: TPanel;
    Bevel430: TBevel;
    Bevel431: TBevel;
    Bevel432: TBevel;
    Bevel433: TBevel;
    Bevel434: TBevel;
    N_C0809_5E: TEdit;
    Panel305: TPanel;
    Bevel435: TBevel;
    Bevel436: TBevel;
    N_B0809_1: TRadioButton;
    N_B0809_2: TRadioButton;
    Panel306: TPanel;
    Bevel437: TBevel;
    Bevel438: TBevel;
    Label43: TLabel;
    Bevel439: TBevel;
    Label44: TLabel;
    Bevel440: TBevel;
    Label45: TLabel;
    Panel307: TPanel;
    Panel308: TPanel;
    Bevel443: TBevel;
    Panel309: TPanel;
    N_B0901_3: TEdit;
    Panel310: TPanel;
    Panel312: TPanel;
    Bevel450: TBevel;
    Bevel451: TBevel;
    Bevel452: TBevel;
    N_B0902_1: TRadioButton;
    N_B0902_2: TRadioButton;
    N_B0902_3: TRadioButton;
    Panel313: TPanel;
    Panel314: TPanel;
    N_B0901_4: TEdit;
    N_B0901_2: TEdit;
    Panel315: TPanel;
    N_B0901_1: TMaskEdit;
    Panel316: TPanel;
    Panel317: TPanel;
    Bevel453: TBevel;
    Panel318: TPanel;
    N_B0904_3: TEdit;
    Panel319: TPanel;
    Panel320: TPanel;
    Bevel454: TBevel;
    Bevel455: TBevel;
    Bevel456: TBevel;
    Bevel457: TBevel;
    Bevel458: TBevel;
    Bevel459: TBevel;
    N_B0906_1: TRadioButton;
    N_B0906_2: TRadioButton;
    N_B0906_3: TRadioButton;
    N_B0906_4: TRadioButton;
    N_B0906_5: TRadioButton;
    N_B0906_6: TRadioButton;
    Panel321: TPanel;
    Bevel460: TBevel;
    Bevel461: TBevel;
    Bevel462: TBevel;
    N_B0905_1: TRadioButton;
    N_B0905_2: TRadioButton;
    N_B0905_3: TRadioButton;
    Panel322: TPanel;
    Panel323: TPanel;
    N_B0904_4: TEdit;
    N_B0904_2: TEdit;
    Panel324: TPanel;
    N_B0904_1: TMaskEdit;
    Panel325: TPanel;
    Panel326: TPanel;
    Bevel463: TBevel;
    Panel327: TPanel;
    N_B0907_3: TEdit;
    Panel328: TPanel;
    Panel329: TPanel;
    Bevel464: TBevel;
    Bevel465: TBevel;
    Bevel466: TBevel;
    Bevel467: TBevel;
    Bevel468: TBevel;
    Bevel469: TBevel;
    N_B0909_1: TRadioButton;
    N_B0909_2: TRadioButton;
    N_B0909_3: TRadioButton;
    N_B0909_4: TRadioButton;
    N_B0909_5: TRadioButton;
    N_B0909_6: TRadioButton;
    Panel330: TPanel;
    Bevel470: TBevel;
    Bevel471: TBevel;
    Bevel472: TBevel;
    N_B0908_1: TRadioButton;
    N_B0908_2: TRadioButton;
    N_B0908_3: TRadioButton;
    Panel331: TPanel;
    Panel332: TPanel;
    N_B0907_4: TEdit;
    N_B0907_2: TEdit;
    Panel333: TPanel;
    N_B0907_1: TMaskEdit;
    Panel352: TPanel;
    Panel353: TPanel;
    Bevel441: TBevel;
    Label46: TLabel;
    Bevel442: TBevel;
    Label47: TLabel;
    Panel334: TPanel;
    Panel335: TPanel;
    Bevel473: TBevel;
    Panel336: TPanel;
    N_B0910_3: TEdit;
    Panel337: TPanel;
    Panel338: TPanel;
    Bevel474: TBevel;
    Bevel475: TBevel;
    Bevel476: TBevel;
    Bevel477: TBevel;
    Bevel478: TBevel;
    Bevel479: TBevel;
    N_B0912_1: TRadioButton;
    N_B0912_2: TRadioButton;
    N_B0912_3: TRadioButton;
    N_B0912_4: TRadioButton;
    N_B0912_5: TRadioButton;
    N_B0912_6: TRadioButton;
    Panel339: TPanel;
    Bevel480: TBevel;
    Bevel481: TBevel;
    Bevel482: TBevel;
    N_B0911_1: TRadioButton;
    N_B0911_2: TRadioButton;
    N_B0911_3: TRadioButton;
    Panel340: TPanel;
    Panel341: TPanel;
    N_B0910_4: TEdit;
    N_B0910_2: TEdit;
    Panel342: TPanel;
    N_B0910_1: TMaskEdit;
    Panel343: TPanel;
    Panel344: TPanel;
    Bevel483: TBevel;
    Panel345: TPanel;
    N_B0914_3: TEdit;
    Panel346: TPanel;
    Panel347: TPanel;
    Bevel484: TBevel;
    Bevel485: TBevel;
    Bevel486: TBevel;
    Bevel487: TBevel;
    Bevel488: TBevel;
    Bevel489: TBevel;
    N_B0916_1: TRadioButton;
    N_B0916_2: TRadioButton;
    N_B0916_3: TRadioButton;
    N_B0916_4: TRadioButton;
    N_B0916_5: TRadioButton;
    N_B0916_6: TRadioButton;
    Panel348: TPanel;
    Bevel490: TBevel;
    Bevel491: TBevel;
    Bevel492: TBevel;
    N_B0915_1: TRadioButton;
    N_B0915_2: TRadioButton;
    N_B0915_3: TRadioButton;
    Panel349: TPanel;
    Panel350: TPanel;
    N_B0914_4: TEdit;
    N_B0914_2: TEdit;
    Panel351: TPanel;
    N_B0914_1: TMaskEdit;
    N_B0913_1: TEdit;
    D_B0601_1: TCheckBox;
    D_B0601_2: TCheckBox;
    D_B0601_3: TCheckBox;
    E_B0601_1: TCheckBox;
    E_B0601_2: TCheckBox;
    E_B0601_3: TCheckBox;
    N_B0601_1: TCheckBox;
    N_B0601_2: TCheckBox;
    N_B0601_3: TCheckBox;
    D_C0809_1: TCheckBox;
    D_C0809_2: TCheckBox;
    D_C0809_3: TCheckBox;
    D_C0809_4: TCheckBox;
    D_C0809_5: TCheckBox;
    E_C0809_5: TCheckBox;
    E_C0809_4: TCheckBox;
    E_C0809_1: TCheckBox;
    E_C0809_2: TCheckBox;
    E_C0809_3: TCheckBox;
    N_C0809_1: TCheckBox;
    N_C0809_2: TCheckBox;
    N_C0809_3: TCheckBox;
    N_C0809_5: TCheckBox;
    N_C0809_4: TCheckBox;
    D_C0503_1: TCheckBox;
    Bevel493: TBevel;
    D_C0503_2: TCheckBox;
    Panel233: TPanel;
    Bevel494: TBevel;
    Bevel495: TBevel;
    D_B0503_1: TRadioButton;
    D_B0503_2: TRadioButton;
    Bevel119: TBevel;
    D_C0503_3: TCheckBox;
    Panel141: TPanel;
    Bevel120: TBevel;
    Bevel496: TBevel;
    E_B0503_1: TRadioButton;
    E_B0503_2: TRadioButton;
    Panel304: TPanel;
    pn_EItem03: TPanel;
    Bevel169: TBevel;
    Bevel170: TBevel;
    Bevel187: TBevel;
    E_C0503_1: TCheckBox;
    E_C0503_2: TCheckBox;
    E_C0503_3: TCheckBox;
    Panel117: TPanel;
    Bevel373: TBevel;
    Bevel374: TBevel;
    N_B0503_1: TRadioButton;
    N_B0503_2: TRadioButton;
    Panel118: TPanel;
    pn_NItem03: TPanel;
    Bevel375: TBevel;
    Bevel497: TBevel;
    Bevel498: TBevel;
    N_C0503_1: TCheckBox;
    N_C0503_2: TCheckBox;
    N_C0503_3: TCheckBox;
    pn_EItem04: TPanel;
    Bevel271: TBevel;
    Bevel272: TBevel;
    Bevel273: TBevel;
    Bevel274: TBevel;
    Bevel275: TBevel;
    Bevel276: TBevel;
    E_B0903_1: TCheckBox;
    E_B0903_2: TCheckBox;
    E_B0903_3: TCheckBox;
    E_B0903_4: TCheckBox;
    E_B0903_5: TCheckBox;
    E_B0903_6: TCheckBox;
    Bevel502: TBevel;
    Bevel503: TBevel;
    Bevel504: TBevel;
    E_B0903_7: TCheckBox;
    E_B0903_8: TCheckBox;
    E_B0903_9: TCheckBox;
    pn_DItem04: TPanel;
    Bevel1: TBevel;
    Bevel307: TBevel;
    Bevel308: TBevel;
    Bevel309: TBevel;
    Bevel310: TBevel;
    Bevel311: TBevel;
    Bevel499: TBevel;
    Bevel500: TBevel;
    Bevel501: TBevel;
    D_B0903_1: TCheckBox;
    D_B0903_2: TCheckBox;
    D_B0903_3: TCheckBox;
    D_B0903_4: TCheckBox;
    D_B0903_5: TCheckBox;
    D_B0903_6: TCheckBox;
    D_B0903_7: TCheckBox;
    D_B0903_8: TCheckBox;
    D_B0903_9: TCheckBox;
    pn_NItem04: TPanel;
    Bevel444: TBevel;
    Bevel445: TBevel;
    Bevel446: TBevel;
    Bevel447: TBevel;
    Bevel448: TBevel;
    Bevel449: TBevel;
    Bevel505: TBevel;
    Bevel506: TBevel;
    Bevel507: TBevel;
    N_B0903_1: TCheckBox;
    N_B0903_2: TCheckBox;
    N_B0903_3: TCheckBox;
    N_B0903_4: TCheckBox;
    N_B0903_5: TCheckBox;
    N_B0903_6: TCheckBox;
    N_B0903_7: TCheckBox;
    N_B0903_8: TCheckBox;
    N_B0903_9: TCheckBox;
    pn_DItem01: TPanel;
    Panel6: TPanel;
    Panel81: TPanel;
    Panel5: TPanel;
    Bevel18: TBevel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    D_B0301_1: TCheckBox;
    D_B0301_2: TCheckBox;
    D_B0301_3: TCheckBox;
    D_B0301_4: TCheckBox;
    D_B0301_5: TCheckBox;
    D_B0301_6: TCheckBox;
    Panel4: TPanel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel25: TBevel;
    D_B0303_1: TCheckBox;
    D_B0303_2: TCheckBox;
    D_B0303_3: TCheckBox;
    D_B0303_4: TCheckBox;
    D_B0303_5: TCheckBox;
    pn_EItem01: TPanel;
    Panel93: TPanel;
    Panel94: TPanel;
    Panel95: TPanel;
    Bevel139: TBevel;
    Bevel140: TBevel;
    Bevel141: TBevel;
    Bevel142: TBevel;
    Bevel143: TBevel;
    Bevel144: TBevel;
    E_B0301_1: TCheckBox;
    E_B0301_2: TCheckBox;
    E_B0301_3: TCheckBox;
    E_B0301_4: TCheckBox;
    E_B0301_5: TCheckBox;
    E_B0301_6: TCheckBox;
    Panel101: TPanel;
    Bevel145: TBevel;
    Bevel146: TBevel;
    Bevel147: TBevel;
    Bevel148: TBevel;
    Bevel149: TBevel;
    E_B0303_1: TCheckBox;
    E_B0303_2: TCheckBox;
    E_B0303_3: TCheckBox;
    E_B0303_4: TCheckBox;
    E_B0303_5: TCheckBox;
    pn_NItem01: TPanel;
    Panel234: TPanel;
    Panel235: TPanel;
    Panel236: TPanel;
    Bevel343: TBevel;
    Bevel344: TBevel;
    Bevel345: TBevel;
    Bevel346: TBevel;
    Bevel347: TBevel;
    Bevel348: TBevel;
    N_B0301_1: TCheckBox;
    N_B0301_2: TCheckBox;
    N_B0301_3: TCheckBox;
    N_B0301_4: TCheckBox;
    N_B0301_5: TCheckBox;
    N_B0301_6: TCheckBox;
    Panel237: TPanel;
    Bevel349: TBevel;
    Bevel350: TBevel;
    Bevel351: TBevel;
    Bevel352: TBevel;
    Bevel353: TBevel;
    N_B0303_1: TCheckBox;
    N_B0303_2: TCheckBox;
    N_B0303_3: TCheckBox;
    N_B0303_4: TCheckBox;
    N_B0303_5: TCheckBox;
    pn_EmrList: TPanel;
    Panel172: TPanel;
    Panel252: TPanel;
    bbt_Ok: TBitBtn;
    bbt_ListExit: TBitBtn;
    bbt_Select: TBitBtn;
    Panel253: TPanel;
    ugd_EmrList: TUltraGrid;
    D_B0703Remove: TSpeedButton;
    E_B0703Remove: TSpeedButton;
    N_B0703Remove: TSpeedButton;
    D_B0901Remove: TSpeedButton;
    E_B0901Remove: TSpeedButton;
    N_B0901Remove: TSpeedButton;
    D_B0904Remove: TSpeedButton;
    D_B0907Remove: TSpeedButton;
    D_B0910Remove: TSpeedButton;
    D_B0914Remove: TSpeedButton;
    E_B0904Remove: TSpeedButton;
    E_B0907Remove: TSpeedButton;
    E_B0910Remove: TSpeedButton;
    E_B0914Remove: TSpeedButton;
    N_B0904Remove: TSpeedButton;
    N_B0907Remove: TSpeedButton;
    N_B0910Remove: TSpeedButton;
    N_B0914Remove: TSpeedButton;
    lb_Birtdate: TLabel;
    lb_Deptnm: TLabel;
    bt_print: TButton;
    bbt_ToNrRecordD: TBitBtn;
    bbt_ToNrRecordE: TBitBtn;
    bbt_ToNrRecordN: TBitBtn;


// Event Handler -----------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure scrlbx_AssessMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure scrlbx_AssessMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure ed_E_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_D_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_N_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bbt_CloseClick(Sender: TObject);
    procedure dtp_AssDateCloseUp(Sender: TObject);
    procedure sbt_PreviousClick(Sender: TObject);
    procedure sbt_NextClick(Sender: TObject);
    procedure sbt_DSaveClick(Sender: TObject);
    procedure sbt_ESaveClick(Sender: TObject);
    procedure sbt_NSaveClick(Sender: TObject);
    procedure D_B0407_1Click(Sender: TObject);
    procedure D_B0808_1Click(Sender: TObject);
    procedure sbt_DDeleteClick(Sender: TObject);
    procedure sbt_EDeleteClick(Sender: TObject);
    procedure sbt_NDeleteClick(Sender: TObject);
    procedure sbt_DCopyClick(Sender: TObject);
    procedure sbt_ECopyClick(Sender: TObject);
    procedure sbt_NCopyClick(Sender: TObject);
    procedure sbt_CalcIntubeClick(Sender: TObject);
    procedure D_B0603_1Click(Sender: TObject);
    procedure D_B0901_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbt_PrintClick(Sender: TObject);
    procedure D_B0203_1Click(Sender: TObject);
    procedure D_B0304_1Click(Sender: TObject);
    procedure D_B0703_1Click(Sender: TObject);
    procedure D_B0703_1Exit(Sender: TObject);
    procedure D_B0804_1Click(Sender: TObject);
    procedure D_B0809_1Click(Sender: TObject);
    procedure D_B0902_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure D_C0809_5Click(Sender: TObject);
    procedure E_B0203_1Click(Sender: TObject);
    procedure E_B0304_1Click(Sender: TObject);
    procedure E_B0407_1Click(Sender: TObject);
    procedure E_B0808_1Click(Sender: TObject);
    procedure E_B0804_1Click(Sender: TObject);
    procedure E_B0809_1Click(Sender: TObject);
    procedure E_C0809_5Click(Sender: TObject);
    procedure N_B0203_1Click(Sender: TObject);
    procedure N_B0304_1Click(Sender: TObject);
    procedure N_B0407_1Click(Sender: TObject);
    procedure N_B0808_1Click(Sender: TObject);
    procedure N_B0804_1Click(Sender: TObject);
    procedure N_B0809_1Click(Sender: TObject);
    procedure N_C0809_5Click(Sender: TObject);
    procedure D_B0503_1Click(Sender: TObject);
    procedure E_B0503_1Click(Sender: TObject);
    procedure N_B0503_1Click(Sender: TObject);
    procedure D_B0902_1Click(Sender: TObject);
    procedure E_B0902_1Click(Sender: TObject);
    procedure N_B0902_1Click(Sender: TObject);
    procedure bbt_SelectClick(Sender: TObject);
    procedure bbt_OkClick(Sender: TObject);
    procedure D_B0703RemoveClick(Sender: TObject);
    procedure D_B0901RemoveClick(Sender: TObject);
    procedure bt_printClick(Sender: TObject);
    procedure bbt_ToNrRecordDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //--------------------------------------------------------------------------

  private
    { Private declarations }

    FsPatNo   : String;    // ȯ�ڹ�ȣ
    FsPatName : String;    // ȯ�ڸ�
    FsAdmDate : String;    // �Կ�����(YYYYMMDD)
    FsWardNo  : String;    // ����
    FsRoomNo  : String;    // ����
    FsCurDuty : String;    // ���� Duty
    FSysDate  : TDateTime; // current syste date

    // [EMR����] 2016.04.12 ȫâ�� �߰���(������). EMR���� ���� ����
    pv_SComReport  : HSComReport;
    pv_Patsect     : String;
    pv_Patno       : String;
    pv_Meddate     : String;
    pv_Reptid      : String;
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� START
    pv_Fromdate    : String;
    pv_Todate      : String;
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� END
    // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    FsAge          : String;
    FsSex          : String;
    FsBirthymd     : String;
    FsAcptNo       : String;
    FsCodvCd       : String;
    FsMedTime      : String;

    // User-Defined Procedure --------------------------------------------------
    // �ʱ�ȭ
    procedure Initialize;

    // ���� Duty ����
    procedure SetAssessDateAndCurrentDuty(AdtSysDateTime : TDateTime);

    // ���� Duty ǥ��
    procedure DisplayCurrentDuty(AsDuty : string);

    // Clear Control Value
    procedure ClearValueOf(AsDuty : String);

    // ��ȣ���� ���� ��ȸ
    procedure SearchNursingAssessment;

    // ��ȣ���� ���� ��ȸ
    procedure LoadAssessmentInfo;

    // ��ȣ���� ���� ��ȸ (All Duty)
    procedure LoadAssessmentResult;

    // Duty�� ��ȣ���� ���� ����
    function SaveAssessmentOfDuty(AsDuty : string) : Boolean;

    // Duty�� ��ȣ���� ���� ����
    function DeleteAssessmentOfDuty(AsDuty : string) : Boolean;

    // ���� ���� ���� ���� üũ
    function IsNoData(AsDuty : string) : Boolean;

    // Duty�� ���� ��ȣ���� ���� ����
    function CopyLastAssessmentOfDuty(AsDuty : String) : Boolean;

    // ȯ������ ��ȸ
    // �ش� ������ں� ȯ�� Age ���(�Ϸ�)���� ���� @ 2012.04.13 LSH
    procedure LoadPatientInfo(in_ChkDate : TDate);

    // NICU ��ȣ���� ���ĺ�ȯ��� ��ȸ, 2012.01.31 LSH
    // sType5, sType6 �߰� -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // Duty�� �۾���ư ���� ���� �߰� (�ӻ�����ǥ���� �������), 2012.03.08 LSH
    procedure SetControlStatusOfDuty(AsDuty: string);

    //--------------------------------------------------------------------------

  public
    { Public declarations }
     P_DschDate    : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �������
     P_PreviewYn   : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �̸�����
     P_EMRPrintYn  : String;   // [�ǹ���� �ڵ����Ľ�ĵ] ��¿���
     P_EMRTitle    : String;   // [�ǹ���� �ڵ����Ľ�ĵ] Report Title
     P_PatFlag     : String;   // [��������� ���] ȣ��� �Ѱ��� ȯ����ġ
     P_RgtDate     : String;   // [��������� ���] ȣ��� �Ѱ��� �������

     G_EmrYn       : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �����ȿ�� ���� (Y/N)
     G_EmrPrtIdx   : Integer;  // [�ǹ���� �ڵ����Ľ�ĵ] ���Index

  published
    property propPatNo      : String read FsPatNo      write FsPatNo  ;
    property propPatName    : String read FsPatName    write FsPatName;
    property propAdmDate    : String read FsAdmDate    write FsAdmDate;
    property propWardNo     : String read FsWardNo     write FsWardNo ;
    property propRoomNo     : String read FsRoomNo     write FsRoomNo ;
    property propDschDate   : String read P_DschDate   write P_DschDate  ;    // �ǹ���� �ڵ����Ľ�ĵ ���� �������
    property propPreviewYn  : String read P_PreviewYn  write P_PreviewYn ;    // �ǹ���� �ڵ����Ľ�ĵ ���� �̸�����
    property propEMRPrintYn : String read P_EMRPrintYn write P_EMRPrintYn;    // �ǹ���� �ڵ����Ľ�ĵ ����
    property propEMRTitle   : String read P_EMRTitle   write P_EMRTitle  ;    // �ǹ���� �ڵ����Ľ�ĵ Report Title
    property propPatFlag    : String read P_PatFlag    write P_PatFlag   ;    // ȣ��ɼ� ('D': ��������� ���, 'MDP110F2': �ǻ���ȸ)
    property propRgtDate    : String read P_RgtDate    write P_RgtDate   ;    // ���ȯ�� ��������� ������� ����

    // [EMR����] 2016.04.12 ȫâ�� �߰���(������). EMR���� ���� ����
    property prop_SComReport  : HSComReport write pv_SComReport;
    property prop_Patsect     : String      write pv_Patsect   ;
    property prop_Patno       : String      write pv_Patno     ;
    property prop_Meddate     : String      write pv_Meddate   ;
    property prop_Reptid      : String      write pv_Reptid    ;
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� START
    property prop_Fromdate    : String      write pv_Fromdate   ;
    property prop_Todate      : String      write pv_Todate     ;
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� END
    // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    property propAge          : String read FsAge        write FsAge      ;
    property propSex          : String read FsSex        write FsSex      ;
    property propBirthymd     : String read FsBirthymd   write FsBirthymd ;
    property propAcptNo       : String read FsAcptNo     write FsAcptNo   ;
    property propCodvCd       : String read FsCodvCd     write FsCodvCd   ;
    property propMedTime      : String read FsMedTime    write FsMedTime  ;

    // NICU ��ȣ���� �ǹ���� �ڵ����Ľ�ĵ
    procedure AutoScanPrint;

    // NICU ��ȣ���� �ڵ���ĵ ������� New-ver, 2012.01.31 LSH
    procedure AutoScanPrint_New;


  end;




const
   { Duty }
   DT_DAY     = 'D'; // Day
   DT_EVENING = 'E'; // Evening
   DT_NIGHT   = 'N'; // Night



var
  MDN110FW: TMDN110FW;




implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDCLASS1, MDN110UW_P01,
   // [EMR����] 2016.04.12 ȫâ�� �߰���(������). TpSvc �߰�
   TpSvc;

{$R *.DFM}


//------------------------------------------------------------------------------
// Form onClose Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


procedure TMDN110FW.FormCreate(Sender: TObject);
begin
   // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   if (Application.MainForm.Name = 'SMCMainForm') then
   begin
      LoadEMRComPack;
   end;
end;

//------------------------------------------------------------------------------
// Form onDestroy Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FW.FormDestroy(Sender: TObject);
begin
   MDN110FW := Nil;
end;


//------------------------------------------------------------------------------
// [����] Button onClick Event Handler
// - Close Form
//------------------------------------------------------------------------------
procedure TMDN110FW.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;



//------------------------------------------------------------------------------
// �ʱ�ȭ
//------------------------------------------------------------------------------
procedure TMDN110FW.Initialize;
var
   edName : TEdit;   // ����ڸ� Edit
   edId   : TEdit;   // ����� ID Edit
   edDept : TEdit;   // ����� �μ� Edit
begin

   // get System Date and Time
   GetSysDate(FSysDate);


   //---------------------------------------------------------------
   // 1. reset Control
   //---------------------------------------------------------------
   // 1.1. Clear Value
   //   ClearValueOf(DT_DAY    );
   //   ClearValueOf(DT_EVENING);
   //   ClearValueOf(DT_NIGHT  );


   // 1.2. for scroll
   // [���� ����� ���]��, Invisible SetFocus �Ұ�
   if not ((P_PatFlag = 'W') or (P_PatFlag = 'D')) then
   begin
      scrlbx_Assess.SetFocus;
      scrlbx_Assess.VertScrollBar.Position := 0;


      // 1.3. ���� ���� ���� Setting
      sbt_DDelete.Tag := 0;   // ����(Day)
      sbt_EDelete.Tag := 0;   // ����(Evening)
      sbt_NDelete.Tag := 0;   // ����(Night)
   end
   else
   // [���� ����� ���/ȯ�ڱ�� ������ȸ]��, Invisible SetFocus �Ұ�, 2011.10.24 LSH
   begin
      scrlbx_Assess.SetFocus;
      scrlbx_Assess.VertScrollBar.Position := 0;

      // Set Button Control
      sbt_DCopy.Enabled   := False;
      sbt_ECopy.Enabled   := False;
      sbt_NCopy.Enabled   := False;

      sbt_DDelete.Enabled := False;
      sbt_EDelete.Enabled := False;
      sbt_NDelete.Enabled := False;

      sbt_DSave.Enabled   := False;
      sbt_ESave.Enabled   := False;
      sbt_NSave.Enabled   := False;

      // 2016-08-22 ������ , EMR���� ȣ�� �� ��ȣ������� ������ ��ư�� ReadOnly ��� �߰�.
      bbt_ToNrRecordD.Enabled := False;
      bbt_ToNrRecordE.Enabled := False;
      bbt_ToNrRecordN.Enabled := False;
   end;


   //-------------------------------------------
   // [�ǻ� ��ȸ]�� �߰�, 2012.03.05 LSH
   //-------------------------------------------
   if (P_PatFlag = 'MDP110F2') then
   begin
      // [��ȸ]�� �����ϰ� ����
      sbt_DSave.Enabled   := False;
      sbt_ESave.Enabled   := False;
      sbt_NSave.Enabled   := False;

      sbt_DCopy.Enabled   := False;
      sbt_ECopy.Enabled   := False;
      sbt_NCopy.Enabled   := False;

      sbt_DDelete.Enabled := False;
      sbt_EDelete.Enabled := False;
      sbt_NDelete.Enabled := False;
   end;



   //---------------------------------------------------------------
   // 2. Set Default Value
   //---------------------------------------------------------------
   // 2.1. load Patient Information, 2011.09.21 LSH
   LoadPatientInfo(Now);



   // 2.2. Assessment Date and Duty
   SetAssessDateAndCurrentDuty(FSysDate);



   // 2.3. Nurse & Time
   // 2.3.1. ���� ��ȣ��
   edName := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_AssNursName'));
   edId   := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_AssNursId'  ));
   edDept := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_AssDept'    ));


   edName.Text := md_UserNm;
   edId.Text   := md_UserId;
   edDept.Text := md_DeptCd;


   // ����� �˻�
   //   SearchUser('N', edName, edId, edName, edDept, nil);

   // 2.3.2. �ð�
   TMaskEdit(GetComp(Self.Name, 'med_' + FsCurDuty + '_AssTime')).Text := FormatDateTime('HH:NN', FSysDate);


end;



//------------------------------------------------------------------------------
// Form onShow Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FW.FormShow(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // 1. �ʱ�ȭ
   //-----------------------------------------------------------------
   Initialize;



   //-----------------------------------------------------------------
   // 2. ��ȣ���� ���� ��ȸ
   //-----------------------------------------------------------------
   SearchNursingAssessment;



   //-----------------------------------------------------------------
   // 3. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;



//------------------------------------------------------------------------------
// ScrollBox onMouseWheelDown Event Handler
// - Scroll Down
//------------------------------------------------------------------------------
procedure TMDN110FW.scrlbx_AssessMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   with scrlbx_Assess.VertScrollBar do
   begin
      Position := Position + Increment;
   end;
end;



//------------------------------------------------------------------------------
// ScrollBox onMouseWheelUp Event Handler
// - Scroll Up
//------------------------------------------------------------------------------
procedure TMDN110FW.scrlbx_AssessMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   with scrlbx_Assess.VertScrollBar do
   begin
      Position := Position - Increment;
   end;
end;



//------------------------------------------------------------------------------
// ��ȣ���� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FW.SearchNursingAssessment;
begin

   //-----------------------------------------------------------------
   // 1. Clear Value
   //-----------------------------------------------------------------
   ClearValueOf(DT_DAY    );
   ClearValueOf(DT_EVENING);
   ClearValueOf(DT_NIGHT  );

   //----------------------------------------------------------------
   // 2. ��ȣ���� ���� ��ȸ
   //----------------------------------------------------------------
   LoadAssessmentInfo;

   //----------------------------------------------------------------
   // 3. ��ȣ���� �� ��ȸ
   //----------------------------------------------------------------
   LoadAssessmentResult;

end;



//------------------------------------------------------------------------------
// �������� �� ���� Duty ����
// - ���� �ð��� ���� �������ڿ� Duty�� ���� ��.
//
// param : AdtSysDate - Current System Date and Time
//------------------------------------------------------------------------------
procedure TMDN110FW.SetAssessDateAndCurrentDuty(AdtSysDateTime : TDateTime);
var
   sToday   : String;      // ���� ��¥
   sCurTime : String;      // ���� �ð�

begin

   // get current time
   sCurTime := FormatDateTime('HHNNSS', AdtSysDateTime);


   // get assessment date and duty
   if (StrToFloat(sCurTime) >= StrToFloat('000000')) and (StrToFloat(sCurTime) < StrToFloat('070000')) then
   begin
      // Night of the day before (00:00 ~ 06:59)
      dtp_AssDate.Date := AdtSysDateTime - 1;
      FsCurDuty        := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('070000')) and (StrToFloat(sCurTime) < StrToFloat('150000')) then
   begin
      // Day (07:00 ~ 14:59)
      dtp_AssDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_DAY;

      // Duty ǥ��
      DisplayCurrentDuty(DT_DAY);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('150000')) and (StrToFloat(sCurTime) < StrToFloat('220000')) then
   begin
      // Evening (15:00 ~ 21:59)
      dtp_AssDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_EVENING;

      // Duty ǥ��
      DisplayCurrentDuty(DT_EVENING);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('220000')) and (StrToFloat(sCurTime) <= StrToFloat('235959')) then
   begin
      // Night (22:00 ~ 23:59)
      dtp_AssDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end;

   //--------------------------------------------------------------
   // [���� ����� ���/ȯ�ڱ�� ������ȸ]�� ������� ����.
   //--------------------------------------------------------------
   if (P_RgtDate <> '') then
   begin
      dtp_AssDate.Date := StrToDate(P_RgtDate);

      // ������� �����, P_RgtDate�� ��ȸ�ϴ� �κ� Skip���� Clear, 2012.03.07 LSH
      P_PatFlag := '';
   end;

end;



//------------------------------------------------------------------------------
// [Day ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//------------------------------------------------------------------------------
procedure TMDN110FW.ed_D_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_D_AssNursName, ed_D_AssNursId, ed_D_AssNursName, ed_D_AssDept, Nil);
   end;
end;


//------------------------------------------------------------------------------
// [Evening ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//------------------------------------------------------------------------------
procedure TMDN110FW.ed_E_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_E_AssNursName, ed_E_AssNursId, ed_E_AssNursName, ed_E_AssDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Night ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//------------------------------------------------------------------------------
procedure TMDN110FW.ed_N_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_N_AssNursName, ed_N_AssNursId, ed_N_AssNursName, ed_N_AssDept, Nil);
   end;
end;


//------------------------------------------------------------------------------
// �� �׸� �� ����
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FW.ClearValueOf(AsDuty: String);
var
   i            : Integer; // Loop Index
   oCurComp     : TObject; // ���� Component
   sCurCompName : String;  // ���� Component ��

begin

   //--------------------------------------------------------------
   // 1. ��� ����
   //--------------------------------------------------------------
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_AssNursName') as TEdit).Text     := '';  // ��ȣ�� ��
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_AssNursId'  ) as TEdit).Text     := '';  // ��ȣ�� ���
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_AssDept'    ) as TEdit).Text     := '';  // ���� �μ�
   (GetComp(Self.Name, 'med_' + AsDuty + '_AssTime'    ) as TMaskEdit).Text := '';  // ���� �ð�

   (GetComp(Self.Name, 'sbt_' + AsDuty + 'Copy'  ) as TSpeedButton).Tag := 0; // ����
   (GetComp(Self.Name, 'sbt_' + AsDuty + 'Delete') as TSpeedButton).Tag := 0; // ����


   //--------------------------------------------------------------
   // 2. ���� ����
   //--------------------------------------------------------------
   for i := 0 to Self.ComponentCount - 1 do
   begin
      oCurComp := Self.Components[i];

      sCurCompName := Self.Components[i].Name;

      if CopyByte(sCurCompName, 1, 2) = ( AsDuty + '_' ) then
      begin

         if      oCurComp is TEdit           then (oCurComp as TEdit).Text           := ''
         else if oCurComp is TMaskEdit       then (oCurComp as TMaskEdit).Text       := ''
         else if oCurComp is TComboBox       then (oCurComp as TComboBox).ItemIndex  := 0
         else if oCurComp is TCheckBox       then (oCurComp as TCheckBox).Checked    := False
         else if oCurComp is TRadioButton    then (oCurComp as TRadioButton).Checked := False
         else if oCurComp is TMemo           then (oCurComp as TMemo).Lines.Clear
         else if oCurComp is TDateTimePicker then (oCurComp as TDateTimePicker).Date := Date;
      end;
   end;

end;





//------------------------------------------------------------------------------
// ��ȣ���� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FW.LoadAssessmentInfo;
var
   assess  : HmdIcasit; // ��ȣ���� ���� ����
   iRowCnt : Integer;   // the number of rows searched
   i       : Integer;   // Loop Index

   { parameters }
   AsPatNo   : String;  // ȯ�ڹ�ȣ
   AsAdmDate : String;  // �Կ�����(YYYYMMDD)
   AsAssDate : String;  // ��������(YYYYMMDD)

   systime : TDateTime; // current system date

begin

   //------------------------------------------------------------------
   // 1. Initialize
   //------------------------------------------------------------------


   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      assess := HmdIcasit.Create;


      //---------------------------------------------
      // 2.1. Set Value
      //---------------------------------------------
      AsPatNo   := lb_PatNo.Caption;
      AsAdmDate := InvertSDate(lb_AdmDate.Caption);



      // [���� ����� ���]�� ���õ� �������.
      if (P_PatFlag = 'W') or
         (P_PatFlag = 'D') then
         AsAssDate := InvertSDate(P_RgtDate)
      else
         AsAssDate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);



      //---------------------------------------------
      // 2.2. Load Data
      //---------------------------------------------
      iRowCnt := assess.LoadAssessListByDate(AsPatNo, AsAdmDate, AsAssDate);




      // Show Error Message
      if iRowCnt < 0 then
      begin
         assess.Free;

         ShowErrMsg;

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
      end;




      //---------------------------------------------
      // 2.3. Display Data
      //---------------------------------------------
      with assess do begin
         for i := 0 to iRowCnt - 1 do
         begin
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_AssNursName') as TEdit).Text     := sAssNursNm[i]; // ���� ��ȣ�� ��
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_AssNursId'  ) as TEdit).Text     := sAssNurs  [i]; // ���� ��ȣ�� ID
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_AssDept'    ) as TEdit).Text     := sAssDept  [i]; // ���� �μ�
            (GetComp(Self.Name, 'med_' + String(sDuty[i]) + '_AssTime'    ) as TMaskEdit).Text := sAssTime  [i]; // ���� �ð�

            // ���� ���� ���� Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Copy') as TSpeedButton).Tag := 1;   // 1:���� ������ ����

            // ���� ���� ���� Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Delete') as TSpeedButton).Tag := 1; // 1:���� ����(������ ������ ����)
         end;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '�ڷᰡ ��ȸ�Ǿ����ϴ�.';


   finally
      Screen.Cursor := crDefault;

      assess.Free;
   end;



   //---------------------------------------------------------------------------
   // 3. Default ��ȣ�� ���� Setting
   //  - �ڵ����ĺ�ȯ ����, Default �������� �ȵǵ��� ��
   //---------------------------------------------------------------------------
   if (P_EMRPrintYn <> 'Y') and
      (P_PreViewYn <> 'Y')  then
   begin
      if Trim((GetComp(Self.Name, 'ed_'  + FsCurDuty + '_AssNursId'  ) as TEdit).Text) = '' then
      begin
         // get current system date
         GetSysDate(systime);

         // 2013.03.18 khs ���� Duty���� ��츸 �α����� ���� �� �ð��� ǥ�����ֵ��� ����
         // ��������ȯ�ڽ� �迬�� ���κ��� ���� �Ϸ�
         if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then
         begin
            // set default user information
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_AssNursName') as TEdit).Text     := md_UserNm; // ���� ��ȣ�� ��
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_AssNursId'  ) as TEdit).Text     := md_UserId; // ���� ��ȣ�� ID
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_AssDept'    ) as TEdit).Text     := md_DeptCd; // ���� �μ�
            (GetComp(Self.Name, 'med_' + FsCurDuty + '_AssTime'    ) as TMaskEdit).Text := FormatDateTime('HH:NN', systime); // ���� �ð�
         end;
      end;
   end;

end;




//------------------------------------------------------------------------------
// ��ȣ���� ���� ��ȸ (All Duty)
//------------------------------------------------------------------------------
procedure TMDN110FW.LoadAssessmentResult;
var
   assess  : HmdIcuinf; // ��ȣ���� ���� ����
   iRowCnt : Integer;   // the number of rows searched
   i       : Integer;   // Loop Index

   sCompName : String;  // Component Name

   { parameters }
   AsSetType : String;  // Set ����
   AsPatNo   : String;  // ȯ�ڹ�ȣ
   AsAdmDate : String;  // �Կ�����(YYYYMMDD)
   AsActDate : String;  // ��������(YYYYMMDD)

begin

   //------------------------------------------------------------------
   // 1. Initialize
   //------------------------------------------------------------------


   //------------------------------------------------------------------
   // 2. ��ȸ
   //------------------------------------------------------------------
   Screen.Cursor := crHourglass;

   try
      // Create Object
      assess := HmdIcuinf.Create;


      //----------------------------------------
      // 2.1. Set Value
      //----------------------------------------
      AsSetType := 'ICNNA';
      AsPatNo   := FsPatNo;
      AsAdmDate := FsAdmDate;



      // [���� ����� ���]�� ���õ� �������.
      if (P_PatFlag = 'W') or
         (P_PatFlag = 'D') then
         AsActDate := InvertSDate(P_RgtDate)
      else
         AsActDate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);



      //----------------------------------------
      // 2.2. Load Data from DB
      //----------------------------------------
      iRowCnt := assess.getIcuinfwt('H', AsSetType, AsPatNo, AsActDate, AsAdmDate, '');



      // Show Error Message
      if iRowCnt = -1 then
      begin
         // Free �߰� - ���⼭ free �ϸ�, �ڵ����ĺ�ȯ�� Access Violation ���� �߻���, 2012.1.2 LSH
         // assess.Free;

         ShowErrMsg;

         // �ڵ����ĺ�ȯ ��� flag
         G_EmrYn := 'N';

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         // Free �߰� - ���⼭ free �ϸ�, �ڵ����ĺ�ȯ�� Access Violation ���� �߻���, 2012.1.2 LSH
         // assess.Free;

         // �ڵ����ĺ�ȯ ��� flag
         G_EmrYn := 'N';

         Exit;
      end;


      //------------------------------------------------------------------------
      // �ڵ����ĺ�ȯ�� ������ ��ȿ�Ұ��, ��� flag ����
      //------------------------------------------------------------------------
      G_EmrYn := 'Y';




      //----------------------------------------
      // 2.3. Display Data
      //----------------------------------------
      for i := 0 to iRowCnt - 1 do
      begin
         with assess do
         begin
            sCompName := sDutycls[i] + '_' + sMcode[i] + '_' + sDcode[i];

            // ����ó�� �߰�, 2012.01.31 LSH
            try
               if      sItemType[i] = 'E1' then (FindComponent(sCompName) as TEdit).Text           := sItem2[i]
               else if sItemType[i] = 'E2' then (FindComponent(sCompName) as TEdit).Text           := sItem1[i]
               else if sItemType[i] = 'E3' then (FindComponent(sCompName) as TMaskEdit).Text       := sItem1[i]
               else if sItemType[i] = 'E4' then (FindComponent(sCompName) as TMaskEdit).Text       := sItem1[i]
               else if sItemType[i] = 'CB' then (FindComponent(sCompName) as TComboBox).ItemIndex  := StrToInt(sItem1[i])
               else if sItemType[i] = 'CH' then (FindComponent(sCompName) as TCheckBox).Checked    := True
               else if sItemType[i] = 'RB' then (FindComponent(sCompName) as TRadioButton).Checked := True
               else if sItemType[i] = 'ME' then (FindComponent(sCompName) as TMemo).Text           := sItem3[i];

            except
               on e : Exception do
               begin
                  MessageBox(Self.Handle,
                             PChar('[Exception Msg] : ' + e.Message),
                             'NICU ��ȣ���� �׸���ȸ�� ����ó��',
                             MB_OK + MB_ICONINFORMATION);
               end;
            end;

         end;
      end;




   finally
      Screen.Cursor := crDefault;

      assess.Free;
   end;

end;


//------------------------------------------------------------------------------
// [��������] DateTimePicker onCloseUp Event Handler
// - �������� ��ȣ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FW.dtp_AssDateCloseUp(Sender: TObject);
begin

   //----------------------------------------------------------------
   // 1. ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_AssDate.Date);



   //-----------------------------------------------------------------
   // 2. ��ȣ���� ��ȸ
   //-----------------------------------------------------------------
   SearchNursingAssessment;



   //----------------------------------------------------------------
   // 3. ���� Duty ǥ��
   //----------------------------------------------------------------
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then
   begin
      DisplayCurrentDuty(FsCurDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - �������� ��ȣ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_PreviousClick(Sender: TObject);
begin

   //----------------------------------------------------------------
   // 1. Change Date
   //----------------------------------------------------------------
   dtp_AssDate.Date := dtp_AssDate.Date - 1;


   //----------------------------------------------------------------
   // 2. ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_AssDate.Date);


   //----------------------------------------------------------------
   // 3. ����� ���� ��ȣ���� ��ȸ
   //----------------------------------------------------------------
   SearchNursingAssessment;


   //----------------------------------------------------------------
   // 4. ���� Duty ǥ��
   //----------------------------------------------------------------
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then
   begin
      DisplayCurrentDuty(FsCurDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - �������� ��ȣ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_NextClick(Sender: TObject);
begin
   //----------------------------------------------------------------
   // 1. Change Date
   //----------------------------------------------------------------
   dtp_AssDate.Date := dtp_AssDate.Date + 1;


   //----------------------------------------------------------------
   // 2. ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_AssDate.Date);


   //----------------------------------------------------------------
   // 3. ����� ���� ��ȣ���� ��ȸ
   //----------------------------------------------------------------
   SearchNursingAssessment;




   //----------------------------------------------------------------
   // 4. ���� Duty ǥ��
   //----------------------------------------------------------------
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then
   begin
      DisplayCurrentDuty(FsCurDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;



//------------------------------------------------------------------------------
// ��ȣ���� ���� ����
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FW.SaveAssessmentOfDuty(AsDuty: string): Boolean;
var
   nrsAss  : HmdIcasit; // ��ȣ���� ���� ����
   iResult : Integer;   // the result of transaction
   i       : Integer;   // Loop Index

   { parameters }
   assInfo : HmdIcasit; // ��ȣ���� ����
   lsAssVO : TList;     // ���� ����

   oCurComp     : TComponent; // current component
   sCurCompName : String;     // current component name
   curAss       : HmdIcuinf;  // current component value

begin

   // initiate return value
   Result := True;


   //--------------------------------------------------------------------
   // 1. Initialize
   //--------------------------------------------------------------------
   lsAssVO := TList.Create;



   //--------------------------------------------------------------------
   // ����
   //--------------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      nrsAss := HmdIcasit.Create;



      //-----------------------------------------
      // 1. Set Parameter Value
      //-----------------------------------------
      // 1.1. ��ȣ���� ����
      assInfo := HmdIcasit.Create;



      with assInfo do
      begin
         sPatNo   := FsPatNo;                                                                // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                                              // �Կ�����
         sAssDate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);                           // ��������
         sDuty    := AsDuty;                                                                 // Duty
         sAssTime := (GetComp(Self.Name, 'med_' + AsDuty + '_AssTime'  ) as TMaskEdit).Text; // ���� �ð�
         sAssNurs := (GetComp(Self.Name, 'ed_'  + AsDuty + '_AssNursId') as TEdit).Text;     // ���� ��ȣ��
         sAssDept := (GetComp(Self.Name, 'ed_'  + AsDuty + '_AssDept'  ) as TEdit).Text;     // ���� �μ�
         sWardNo  := FsWardNo;                                                               // ����
         sRoomNo  := FsRoomNo;                                                               // ����
         sEditId  := md_UserId;                                                              // ������ID
      end;


      // 1.2. ��ȣ���� ����
      for i := 0 to Self.ComponentCount - 1 do
      begin
         oCurComp     := Self.Components[i];
         sCurCompName := oCurComp.Name;


         // �ش� Duty�� ���븸 ����
         if CopyByte(sCurCompName, 1, 2) = (AsDuty + '_') then
         begin


            if Self.Components[i] is TEdit then
            begin
               //-----------------------------------------
               // Edit Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 2) <> 'ed') and (LengthByte((oCurComp as TEdit).Text) > 0) then
               begin
                  curAss := HmdIcuinf.Create;

                  with curAss do
                  begin
                     sSettype := 'ICNNA';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'E1';
                     sItem2    := (oCurComp as TEdit).Text;
                  end;

                  // Value Object�� �߰�
                  lsAssVO.Add(curAss);
               end;
            end
            else if Self.Components[i] is TMaskEdit then
            begin
               //-----------------------------------------
               // MaskEdit Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'med') and (LengthByte((oCurComp as TMaskEdit).Text) > 1) then
               begin
                  curAss := HmdIcuinf.Create;

                  with curAss do
                  begin
                     sSettype := 'ICNNA';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'E3';
                     sItem1    := (oCurComp as TMaskEdit).Text;
                  end;

                  // Value Object�� �߰�
                  lsAssVO.Add(curAss);
               end;
            end
            else if Self.Components[i] is TCheckBox then
            begin
               //-----------------------------------------
               // CheckBox Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'chx') and (oCurComp as TCheckBox).Checked then
               begin
                  curAss := HmdIcuinf.Create;

                  with curAss do
                  begin
                     sSettype := 'ICNNA';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'CH';
                     sItem1    := 'Y';
                     sItem2    := (oCurComp as TCheckBox).Caption;
                  end;

                  // Value Object�� �߰�
                  lsAssVO.Add(curAss);
               end;
            end
            else if Self.Components[i] is TRadioButton then
            begin
               //-----------------------------------------
               // RadioButton Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'rbt') and (oCurComp as TRadioButton).Checked then
               begin
                  curAss := HmdIcuinf.Create;

                  with curAss do
                  begin
                     sSettype := 'ICNNA';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'RB';
                     sItem1    := 'Y';
                     sItem2    := (oCurComp as TRadioButton).Caption;
                  end;

                  // Value Object�� �߰�
                  lsAssVO.Add(curAss);
               end;
            end
            else if Self.Components[i] is TMemo then
            begin
               //-----------------------------------------
               // Memo Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 2) <> 'me') and (LengthByte(Trim((oCurComp as TMemo).Text)) > 0) then
               begin
                  curAss := HmdIcuinf.Create;

                  with curAss do
                  begin
                     sSettype := 'ICNNA';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'ME';
                     sItem3    := (oCurComp as TMemo).Text;
                  end;

                  // Value Object�� �߰�
                  lsAssVO.Add(curAss);
               end;
            end;

         end;
      end;


      //-----------------------------------------
      // 2. Save
      //-----------------------------------------
      iResult := nrsAss.SaveByDuty(assInfo, lsAssVO);


      // Show Error Message
      if iResult < 0 then
      begin
         Result := False;

         // Free �߰�
         nrsAss.Free;
         assInfo.Free;
         curAss.Free;
         lsAssVO.Free;

         ShowErrMsg;

         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         // Free �߰�
         nrsAss.Free;
         assInfo.Free;
         curAss.Free;
         lsAssVO.Free;

         stb_Message.Panels[0].Text := '��ȣ���� ������ ������� �ʾҽ��ϴ�.';
         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '��ȣ���� ������ ���������� ����Ǿ����ϴ�.';


   finally
      Screen.Cursor := crDefault;

      // Free �߰�
      nrsAss.Free;
      assInfo.Free;
      curAss.Free;
      lsAssVO.Free;
   end;

end;



//------------------------------------------------------------------------------
// [Day ó��] Button onClick Event Handler
// - Day Duty ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_DSaveClick(Sender: TObject);
var
   iChoice : Integer;   // ���ð��

begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //---------------------------------------------------------------------
   // 1. Check
   //---------------------------------------------------------------------
   // 1.1. �ۼ��� ���� �Է� üũ
   if LengthByte(Trim(ed_D_AssNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      ed_D_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_D_AssTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      med_D_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_DAY) then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date) + '������ Day Duty ��ȣ���� ������ ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Day) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;


   //---------------------------------------------------------------------
   // 2. ��ȣ���� ���� ����
   //---------------------------------------------------------------------
   SaveAssessmentOfDuty(DT_DAY);

end;



//------------------------------------------------------------------------------
// [Evening ó��] Button onClick Event Handler
// - Evening Duty ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_ESaveClick(Sender: TObject);
var
   iChoice : Integer;   // ���ð��

begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //---------------------------------------------------------------------
   // 1. Check
   //---------------------------------------------------------------------
   // 1.1. �ۼ��� ���� �Է� üũ
   if LengthByte(Trim(ed_E_AssNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      ed_E_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_E_AssTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      med_E_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_EVENING) then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date) + '������ Evening Duty ��ȣ���� ������ ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Evening) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;



   //---------------------------------------------------------------------
   // 2. ��ȣ���� ���� ����
   //---------------------------------------------------------------------
   SaveAssessmentOfDuty(DT_EVENING);

end;



//------------------------------------------------------------------------------
// [Night ó��] Button onClick Event Handler
// - Night Duty ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_NSaveClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���

begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //---------------------------------------------------------------------
   // 1. Check
   //---------------------------------------------------------------------
   // 1.1. �ۼ��� ���� �Է� üũ
   if LengthByte(Trim(ed_N_AssNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      ed_N_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ� �ð� üũ
   if Trim(med_N_AssTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      med_N_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_NIGHT) then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date) + '������ Night Duty ��ȣ���� ������ ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Night) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;


   //---------------------------------------------------------------------
   // 2. ��ȣ���� ���� ����
   //---------------------------------------------------------------------
   SaveAssessmentOfDuty(DT_NIGHT);

end;



//------------------------------------------------------------------------------
// [Day - ��ȯ��] ���� ���ý�, ���� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0407_1Click(Sender: TObject);
begin
    // ����
    D_B0407_1E.Enabled := D_B0407_1.Checked;

    if not D_B0407_1E.Enabled then
      D_B0407_1E.Text := '';
end;




//------------------------------------------------------------------------------
// [Day - �Ǻ�] ���� �׸�
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0808_1Click(Sender: TObject);
begin

   D_B0806_1.Enabled := not D_B0808_1.Checked;  // ��ġ
   D_B0807_1.Enabled := not D_B0808_1.Checked;  // ũ��

   if D_B0808_1.Checked then
   begin
      D_B0806_1.Text := '';
      D_B0807_1.Text := '';
   end;

end;



//------------------------------------------------------------------------------
// Duty�� ��ȣ���� ���� ����
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished Successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FW.DeleteAssessmentOfDuty(AsDuty: string): Boolean;
var
   nrsAss : HmdIcasit;  // ��ȣ���� ���� ����
   iResult : Integer;   // the result of transaction(1:Success, 0:Fail)

   { parameter }
   AsSetType : string;     // ����� ����
   assess    : HmdIcasit;  // ��ȣ���� ����

begin

   // initiate return value
   Result := True;



   //--------------------------------------------------------------------
   // ��ȣ���� ���� ����
   //--------------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      nrsAss := HmdIcasit.Create;



      //------------------------------------------------
      // 1. Set Parameter Value
      //------------------------------------------------
      AsSetType := 'ICNNA';
      assess := HmdIcasit.Create;

      with assess do
      begin
         sPatNo   := FsPatNo;                                        // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                      // �Կ�����(YYYYMMDD)
         sAssDate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);   // ��������(YYYYMMDD)
         sDuty    := AsDuty;                                         // Duty
      end;



      //------------------------------------------------
      // 2. Execute Transaction
      //------------------------------------------------
      iResult := nrsAss.DeleteByDuty(assess, AsSetType);



      // Show Error Message
      if iResult < 0 then
      begin
         Result := False;

         // Free �߰�
         assess.Free;
         nrsAss.Free;

         ShowErrMsg;
         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         // Free �߰�
         assess.Free;
         nrsAss.Free;

         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '��ȣ���� ���� [����] ó���� ���������� �Ϸ�Ǿ����ϴ�.';

   finally
      Screen.Cursor := crDefault;

      assess.Free;
      nrsAss.Free;
   end;

end;



//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - Day ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_DDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
   sAssDate : String;   // ��������

begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-------------------------------------------------------------------
   // 1. Check
   //-------------------------------------------------------------------
   // 1.1. ���� ���� ���� üũ
   if sbt_DDelete.Tag = 0 then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sAssDate := FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sAssDate + '������ Day Duty ��ȣ���� ������ �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Day) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;




   //-------------------------------------------------------------------
   // 2. Day ��ȣ���� ���� ����
   //-------------------------------------------------------------------
   DeleteAssessmentOfDuty(DT_DAY);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   SearchNursingAssessment;

end;



//------------------------------------------------------------------------------
// [Evening ����] Button onClick Event Handler
// - Evening ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_EDeleteClick(Sender: TObject);
var
   iChoice  : Integer;  // ���� ���
   sAssDate : String;   // ��������

begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-------------------------------------------------------------------
   // 1. Check
   //-------------------------------------------------------------------
   // 1.1. ���� ���� ���� üũ
   if sbt_EDelete.Tag = 0 then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sAssDate := FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date);


   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sAssDate + '������ Evening Duty ��ȣ���� ������ �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Evening) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;



   //-------------------------------------------------------------------
   // 2. Day ��ȣ���� ���� ����
   //-------------------------------------------------------------------
   DeleteAssessmentOfDuty(DT_EVENING);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   SearchNursingAssessment;

end;



//------------------------------------------------------------------------------
// [Night ����] Button onClick Event Handler
// - Night ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_NDeleteClick(Sender: TObject);
var
   iChoice  : Integer;  // ���� ���
   sAssDate : String;   // ��������
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-------------------------------------------------------------------
   // 1. Check
   //-------------------------------------------------------------------
   // 1.1. ���� ���� ���� üũ
   if sbt_NDelete.Tag = 0 then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sAssDate := FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sAssDate + '������ Night Duty ��ȣ���� ������ �����մϴ�.' + #13#10 + #13#10 + '������ ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Night) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;



   //-------------------------------------------------------------------
   // 2. Day ��ȣ���� ���� ����
   //-------------------------------------------------------------------
   DeleteAssessmentOfDuty(DT_NIGHT);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   SearchNursingAssessment;

end;





//------------------------------------------------------------------------------
// ���� ���� ���� ���� üũ
//
// param : AsDuty - Duty
//------------------------------------------------------------------------------
function TMDN110FW.IsNoData(AsDuty: string): Boolean;
var
   i            : Integer;    // Loop Index
   oCurComp     : TComponent; // current component
   sCurCompName : String;     // current component name
   iChkCnt      : Integer;    // �Է� �� ��

begin

   // initiate return value
   Result := True;


   //--------------------------------------------------------------
   // Data �Է� ���� üũ
   //--------------------------------------------------------------
   iChkCnt := 0;

   // 1.2. ��ȣ���� ����
   for i := 0 to Self.ComponentCount - 1 do
   begin
      oCurComp     := Self.Components[i];
      sCurCompName := oCurComp.Name;

      // �ش� Duty�� ���븸 ����
      if CopyByte(sCurCompName, 1, 2) = (AsDuty + '_') then
      begin

         if Self.Components[i] is TEdit then
         begin
            //-----------------------------------------
            // Edit Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 2) <> 'ed') and (LengthByte((oCurComp as TEdit).Text) > 0) then Inc(iChkCnt);
         end
         else if Self.Components[i] is TMaskEdit then
         begin
            //-----------------------------------------
            // MaskEdit Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 3) <> 'med') and (LengthByte((oCurComp as TMaskEdit).Text) > 1) then Inc(iChkCnt);
         end
         else if Self.Components[i] is TCheckBox then
         begin
            //-----------------------------------------
            // CheckBox Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 3) <> 'chx') and (oCurComp as TCheckBox).Checked then Inc(iChkCnt);
         end
         else if Self.Components[i] is TRadioButton then
         begin
            //-----------------------------------------
            // RadioButton Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 3) <> 'rbt') and (oCurComp as TRadioButton).Checked then Inc(iChkCnt);
         end
         else if Self.Components[i] is TMemo then
         begin
            //-----------------------------------------
            // Memo Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 2) <> 'me') and (LengthByte(Trim((oCurComp as TMemo).Text)) > 0) then Inc(iChkcnt);
         end;
      end;
   end;


   // return
   if iChkCnt > 0 then
      Result := False
   else
      Result := True;

end;





//------------------------------------------------------------------------------
// ���� Duty ǥ��
//------------------------------------------------------------------------------
procedure TMDN110FW.DisplayCurrentDuty(AsDuty: string);
begin

   // Day
   if AsDuty = DT_DAY then
      shp_Alert_D.Brush.Color := $009D3DD7
   else
      shp_Alert_D.Brush.Color := clBtnFace;

   // Evening
   if AsDuty = DT_EVENING then
      shp_Alert_E.Brush.Color := $009D3DD7
   else
      shp_Alert_E.Brush.Color := clBtnFace;

   // Night
   if AsDuty = DT_NIGHT then
      shp_Alert_N.Brush.Color := $009D3DD7
   else
      shp_Alert_N.Brush.Color := clBtnFace;

end;




//------------------------------------------------------------------------------
// Duty�� ���� ��ȣ���� ���� ����
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
function TMDN110FW.CopyLastAssessmentOfDuty(AsDuty: String): Boolean;
var
   nrsAss  : HmdIcasit; // Duty�� ��ȣ���� ����
   iResult : Integer;   // the result of transaction(1:Success, 0:Fail)

   { parameters }
   assess    : HmdIcasit;  // ��ȣ���� ����
   AsSetType : String;     // ����� ����

begin

   //-----------------------------------------------------------------
   // 1. Initialize
   //-----------------------------------------------------------------



   //-----------------------------------------------------------------
   // 2. �ش� Duty ���� ���� ��ȣ���� �� ���� ����
   //-----------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      nrsAss := HmdIcasit.Create;



      //----------------------------------------------
      // 2.1. Set Parameter Value
      //----------------------------------------------
      // ����� ����
      AsSetType := 'ICNNA';

      // ��ȣ���� ����
      assess := HmdIcasit.Create;

      with assess do
      begin
         sPatNo   := FsPatNo;                                        // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                      // �Կ�����
         sAssDate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);   // ���� ����
         sDuty    := AsDuty;                                         // Duty
         sAssTime := Trim((GetComp(Self.Name, 'med_' + AsDuty + '_AssTime' ) as TMaskEdit).Text);   // ���� �ð�
         sAssNurs := Trim((GetComp(Self.Name, 'ed_'  + AsDuty + '_AssNursId') as TEdit).Text);      // ���� ��ȣ��
         sAssDept := Trim((GetComp(Self.Name, 'ed_'  + AsDuty + '_AssDept'  ) as TEdit).Text);      // ���� �μ�
         sWardNo  := FsWardNo;                                       // ����
         sRoomNo  := FsRoomNo;                                       // ����
         sEditId  := md_UserId;                                      // ������ID
      end;


      //----------------------------------------------
      // 2.2. CopyByte
      //----------------------------------------------
      iResult := nrsAss.CopyByDuty(assess, AsSetType);


      // Show Error Message
      if iResult < 0 then
      begin
         Result := False;

         // Free �߰�
         assess.Free;
         nrsAss.Free;

         ShowErrMsg;
         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         // Free �߰�
         assess.Free;
         nrsAss.Free;

         stb_Message.Panels[0].Text := '�� �� ���簡 �Ϸ���� �ʾҽ��ϴ�.';
         Exit;
      end;


      // Return Value
      Result := True;


      // Show Message
      stb_Message.Panels[0].Text := '�� �� ���簡 ���������� �Ϸ�Ǿ����ϴ�';


   finally
      Screen.Cursor := crDefault;

      assess.Free;
      nrsAss.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_DCopyClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   // 1.1. �ۼ��� ���� �Է� üũ
   if LengthByte(Trim(ed_D_AssNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      ed_D_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_D_AssTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      med_D_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_DCopy.Tag = 1 then
   begin
      MessageBox(Self.Handle, '���� Duty�� ���� ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� ��ȣ���� ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Day) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then
      Exit;




   //-----------------------------------------------------------------
   // 2. ����
   //-----------------------------------------------------------------
   CopyLastAssessmentOfDuty(DT_DAY);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   SearchNursingAssessment;

end;



//------------------------------------------------------------------------------
// [Evening ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_ECopyClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   // 1.1. �ۼ��� ���� �Է� üũ
   if LengthByte(Trim(ed_E_AssNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      ed_E_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_E_AssTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      med_E_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_ECopy.Tag = 1 then
   begin
      MessageBox(Self.Handle, '���� Duty�� ���� ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� ��ȣ���� ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Evening) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then
      Exit;




   //-----------------------------------------------------------------
   // 2. ����
   //-----------------------------------------------------------------
   CopyLastAssessmentOfDuty(DT_EVENING);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   SearchNursingAssessment;

end;




//------------------------------------------------------------------------------
// [Night ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_NCopyClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   // 1.1. �ۼ��� ���� �Է� üũ
   if LengthByte(Trim(ed_N_AssNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      ed_N_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_N_AssTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      med_N_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_NCopy.Tag = 1 then
   begin
      MessageBox(Self.Handle, '���� Duty�� ���� ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� ��ȣ���� ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Night) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then
      Exit;



   //-----------------------------------------------------------------
   // 2. ����
   //-----------------------------------------------------------------
   CopyLastAssessmentOfDuty(DT_NIGHT);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   SearchNursingAssessment;

end;







//------------------------------------------------------------------------------
// [����ϼ� ���] Button onClick Event Handler
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FW.sbt_CalcIntubeClick(Sender: TObject);
var
   sName, sFlag : String;
   i_Year,i_Month,i_Day : Integer;
   v_Year,v_Month,v_Day : Integer;
   systime : TDateTime;
   sResult : String;
begin
   // Sender �� ��������
   sName := CopyByte((Sender as TMaskEdit).Name, 1, 8);


   // Component ���� Flag �� ��������
   sFlag := CopyByte((Sender as TMaskEdit).Name, 9, 1);



   GetSysDate(systime);


   // �������
   try
      i_Year  := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 1, 4));
      i_Month := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 6, 2));
      i_Day   := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 9, 2));
   except
      Exit; // tube Remove��, ������� ���� ��� ����ó��.
   end;


   // ��������
   try
      v_Year  := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),1,4));
      v_Month := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),5,2));
      v_Day   := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),7,2));
   except
      Exit; // tube Remove��, ������� ���� ��� ����ó��.
   end;


   // ����ϼ� ��� (��������� �ϼ���� ����)
   try
      sResult := IntToStr(Trunc(EncodeDate(v_Year,v_Month,v_Day)) -
                          Trunc(EncodeDate(i_Year,i_Month,i_Day)));
   except
      Exit; // tube Remove��, ������� ���� ��� ����ó��.
   end;


   // Flag�� ���� Component�� ã�Ƽ� �ڵ������ ����� �ֱ�
   if (sFlag = '1') then
      TEdit(GetComp(Self.Name, sName + '2')).Text := sResult
   else if (sFlag = '2') then
      TEdit(GetComp(Self.Name, sName + '1')).Text := sResult;

end;


//------------------------------------------------------------------------------
// [���� �ڵ��Է�] OnClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0603_1Click(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TMaskEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Sender�� ���ó�¥ �ڵ� ����
         if Trim(DelChar((Sender as TMaskEdit).Text,'-')) = '' then
            (Sender as TMaskEdit).Text := FormatDateTime('yyyy-mm-dd', now);

         Break;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [��ư �Է����] OnKeyDown Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0901_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      // [ESC] Key �Է½�, Sender üũ����
      if (Sender as TRadioButton).Name = sName then
      begin
         Sender := (oComp as TComponent);

         if Key = VK_ESCAPE then
            (Sender as TRadioButton).Checked := False;

         Break;
      end;
   end;

end;


//------------------------------------------------------------------------------
// [��ȣ���� ���] Button onClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FW.bbt_PrintClick(Sender: TObject);

var
   srcPrt            : TMDN110FW_P01;
   srcForm           : TMDN110FW;
   i, iPrinterIndex  : Integer;
   FForm             : TForm;
begin
   //-----------------------------------------------------------------
   // �ӻ�ǽ��л� OCS ���ٱ���(����/����/����/���/����) ����
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('PRINT', '', '', '', self.Name) = False then Exit;

   //----------------------------------------------------------------
   // 1. Check
   //----------------------------------------------------------------
   // 2016-06-07 ������ , QRP ��� ��ȸ �� ������ ���� üũ ���� START
   // �ϴ� ���� ����
//   if (IsNotPrinterReady) then exit;
   // �ϴ� ���� ����
   if pv_SComReport = nil then
   begin
      if (IsNotPrinterReady) then exit;
   end;
   // 2016-06-07 ������ , QRP ��� ��ȸ �� ������ ���� üũ ���� END



   if MDN110FW_P01 <> nil  then
      MDN110FW_P01 := nil;

   if MDN110FW <> nil  then
      MDN110FW := nil;



   srcPrt  := TMDN110FW_P01.Create(Application);
   srcForm := TMDN110FW.Create(Application);



   for i := 0 to srcForm.ComponentCount - 1 do
   begin
      try
         if (srcForm.Components[i].ClassType = TRadioButton) then
         begin
            //---------------------------------------------
            // TRadioButton Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TCheckBox) then
         begin
            //---------------------------------------------
            // TCheckBox Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TEdit) then
         begin
            //---------------------------------------------
            // TEdit Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TMaskEdit) then
         begin
            //---------------------------------------------
            // TMaskEdit Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TMemo) then
         begin
            //---------------------------------------------
            // TMemo Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRMemo).Lines.Clear;
         end
         else if (srcForm.Components[i].ClassType = TComboBox) then
         begin
            //---------------------------------------------
            // TComboBox Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end;


      except
         //
      end;

   end;  // end of for




   //----------------------------------------------------------------
   // 2. Set Value
   //----------------------------------------------------------------
   srcPrt.qrlb_PatNo.Caption   := lb_PatNo.Caption;             // ȯ�ڹ�ȣ
   srcPrt.qrlb_PatName.Caption := lb_PatName.Caption;           // ȯ�ڸ�
   srcPrt.qrlb_Sex.Caption     := lb_Sex.Caption;               // ����
   srcPrt.qrlb_Age.Caption     := lb_Age.Caption;               // ����
   srcPrt.qrlb_RoomNo.Caption  := lb_RoomNo.Caption;            // ����-����
   srcPrt.qrlb_AssDate.Caption := FormatDateTime('yyyy-mm-dd', dtp_AssDate.Date);

   // ------------------------------------------------------------------------
   // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark
   // 2015�� 8�� 11�� open
   // ------------------------------------------------------------------------
   if FormatDateTime('YYYYMMDD', dtp_AssDate.Date) >= '20150811' then
   begin
      srcPrt.QRLabel5.Caption := '�������:';
      srcPrt.qrlb_Meddept.Enabled  := True;
      srcPrt.qrlb_Birtdate.Enabled := True;

      srcPrt.qrlb_Meddept.Caption  := lb_Deptnm.Caption;
      srcPrt.qrlb_Birtdate.Caption := lb_Birtdate.Caption;
   end
   else
   begin
      srcPrt.QRLabel5.Caption := 'ħ���ȣ:';
      srcPrt.qrlb_RoomNo.Top  := 53;
      srcPrt.qrlb_RoomNo.Left := 88;
      srcPrt.qrlb_RoomNo.Font.Style := [];

      srcPrt.qrlb_Meddept.Enabled  := False;
      srcPrt.qrlb_Birtdate.Enabled := False;
   end;


   //====================================================
   // ���� ���
   //====================================================
   for i := 0 to srcForm.ComponentCount - 1 do
   begin
      // �⺻ ȯ�������� ����
      if (srcForm.Components[i].Name = 'lb_PatNo'   ) or
         (srcForm.Components[i].Name = 'lb_PatName' ) or
         (srcForm.Components[i].Name = 'lb_Sex'     ) or
         (srcForm.Components[i].Name = 'lb_Age'     ) or
         (srcForm.Components[i].Name = 'lb_RoomNo'  ) or
         (srcForm.Components[i].Name = 'dtp_AssDate') or
         (srcForm.Components[i].Name = 'lb_Deptnm'  ) or
         (srcForm.Components[i].Name = 'lb_Birtdate') then
         Continue;

      try
         if (srcForm.Components[i].ClassType = TRadioButton) then
         begin
            //---------------------------------------------
            // TRadioButton Type
            //---------------------------------------------
            if (FindComponent(srcForm.Components[i].Name) as TRadioButton).Checked then
               (GetComp(srcPrt.Name,srcForm.Components[i].Name) as TQRLabel).Caption := '��'
            else
               (GetComp(srcPrt.Name,srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TCheckBox) then
         begin
            //---------------------------------------------
            // TCheckBox Type
            //---------------------------------------------
            if (FindComponent(srcForm.Components[i].Name) as TCheckBox).Checked then
               (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '��'
            else
               (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TEdit) then
         begin
            //---------------------------------------------
            // TEdit Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := Trim((FindComponent(srcForm.Components[i].Name) as TEdit).Text);
         end
         else if (srcForm.Components[i].ClassType = TMaskEdit) then
         begin
            //---------------------------------------------
            // TMaskEdit Type
            //---------------------------------------------
            (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := (FindComponent(srcForm.Components[i].Name) as TMaskEdit).Text;
         end
         else if (srcForm.Components[i].ClassType = TMemo) then
         begin
            //---------------------------------------------
            // TMemo Type
            //---------------------------------------------
            (GetComp(srcPrt.Name,srcForm.Components[i].Name) as TQRMemo).Lines.Text := (FindComponent(srcForm.Components[i].Name) as TMemo).Text;
         end;

      except

      end;

   end;  // end of for



   //----------------------------------------------------------------
   // 3. Print Mode Set
   //----------------------------------------------------------------

   // EMR �̸����� ���
   if P_PreviewYn = 'Y' then
   begin
      // ��¿��� Global Var (������ NICU ����� ���峻�� �ִ°�� Y)
      if (G_EmrYn = 'Y') then
      begin
         FForm := BplFormCreate('PTP001F1');

         SetBplStrProp  ('PTP001F1','prop_Caption', srcPrt.Caption);         // �̸����� Ÿ��Ʋ
         SetBplClassProp('PTP001F1','prop_Report' , srcPrt.qr_Assess);       // ��� ù�忡 �ø� ����Ʈ��
         SetBplStrProp  ('PTP001F1','prop_Zoom'   , 'Fit');	                 // ��¹� ���� ����

         FForm.ShowModal;
      end;

      Exit;

   end;




   //------------------------------------------------------------------------
   // 3-1. NICU ��ȣ���� �ڵ����ĺ�ȯ
   //------------------------------------------------------------------------
   if P_EMRPrintYn = 'Y' then
   begin
      // 3-2. �ڵ����ĺ�ȯ ��¿��� Global Var
      if (G_EmrYn = 'Y') then
      begin
         // EMR Index ����
         Inc(G_EmrPrtIdx);


         // Print(EMR Image)
         iPrinterIndex := Printer.Printers.IndexOf('bitPrinter');
         // iPrinterIndex := Printer.Printers.IndexOf('Microsoft XPS Document Writer');


         // EMR ������ ����
         srcPrt.qr_Assess.PrinterSettings.PrinterIndex := iPrinterIndex;

         // EMR Report ���� ����
         srcPrt.qr_Assess.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);;

         // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
         // // Main Form Print
         // srcPrt.qr_Assess.Print;

         if pv_SComReport <> nil then
         begin
            pv_SComReport.AddReport(srcPrt.qr_Assess); // ������� Add
            pv_SComReport.PageTextList.Add('');         // ������������ ����. ����� ��� ����
         end
         else
         begin
            srcPrt.qr_Assess.Print;
         end;
         // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End

         // ��� Form-Free
         srcPrt.Close;
      end;
   end
   else
   // �Ϲ� ���
   begin
      //-------------------------------------------------------
      // ����������ȣ ��¹�����
      //-------------------------------------------------------
      srcPrt.qr_Assess.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
      fn_SetReportID(srcPrt.qr_Assess);

      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
      // //      srcPrt.qr_Assess.Preview;
      // srcPrt.qr_Assess.Print;

      if pv_SComReport <> nil then
      begin
         pv_SComReport.AddReport(srcPrt.qr_Assess); // ������� Add
         pv_SComReport.PageTextList.Add('');         // ������������ ����. ����� ��� ����
      end
      else
      begin
         srcPrt.qr_Assess.Print;
      end;
      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End

      // ��� Form-Free
      srcPrt.Close;
   end;








end;


//------------------------------------------------------------------------------
// [ȯ������ ��ȸ] ��ȣ���� ��½� ȯ������ ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FW.LoadPatientInfo(in_ChkDate : TDate);
var
   patient : HmdPatinf; // ȯ�� ���� ����
   iRowCnt : Integer;   // the number of rows searched

   { parameters }
   AsIOFlag  : String;   // �Կ�/�ܷ� ����
   AsLocate  : String;   // �����
   AsPatNo   : String;
   AsAdmDate : String;
begin

   //-----------------------------------------------------------------
   // 1. Initialize
   //-----------------------------------------------------------------



   //-----------------------------------------------------------------
   // 2. ȯ�� ���� ��ȸ
   //-----------------------------------------------------------------
   Screen.Cursor := crHourGlass;


   try
      // Create Object
      patient := HmdPatinf.Create;


      //-----------------------------------------------
      // 2.1. Set Parameter Value
      //-----------------------------------------------
      AsIOFlag  := 'I';
      AsPatNo   := FsPatNo;
      AsAdmDate := DelChar(FsAdmDate,'-');
      AsLocate  := G_LOCATE;



      //-----------------------------------------------
      // 2.2. Load Data
      //-----------------------------------------------
      iRowCnt := patient.PatInfo(AsIOFlag, AsPatNo, AsAdmDate, '', '', AsLocate, '');

      // 2016-06-07 ������ , QRP ���� ���� ��ȿ�� CHECK ���� �߰� START
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := iRowCnt;   //�����, ����:����, 0:�Ǽ�����, ���: ����
         pv_SComReport.RsltMsg  := GetTxMsg;  //��� �޽���
      end;
      // 2016-06-07 ������ , QRP ���� ���� ��ȿ�� CHECK ���� �߰� END

      // Show Error Message
      if iRowCnt < 0 then begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then begin
         stb_Message.Panels[0].Text := 'ȯ������ Loading�� �����Ͽ����ϴ�.';
         Exit;
      end;



      //-----------------------------------------------
      // 2.3. Set Data
      //-----------------------------------------------
      // 2.3.1. Set Patient information
      with patient do
      begin
         lb_PatNo.Caption   := FsPatNo;                                  // ȯ�ڹ�ȣ
         lb_PatName.Caption := sPatName[0];                              // ȯ�ڸ�
         lb_AdmDate.Caption := ConvertSDate(AsAdmDate);                  // �Կ�����
         lb_Sex.Caption     := sSex    [0];                              // ����
         lb_Age.Caption     := Trim(Calc_Age(in_ChkDate, sBirtDate[0])); // �� ���� ���� ���(���� by ������ ��������, 2011.12.22 LSH)
         lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];            // ����-����

         // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark
         lb_Deptnm.Caption   := sDeptNm[0];
         lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
      end;

      // Show Message
      stb_Message.Panels[0].Text := 'ȯ������ Loading�� �Ϸ�Ǿ����ϴ�.';

   finally
      Screen.Cursor := crDefault;
   end;

end;


//------------------------------------------------------------------------------
// ICU ��ȣ���� �ڵ���ĵ �������
// - ȯ�ں� ���
//------------------------------------------------------------------------------
procedure TMDN110FW.AutoScanPrint;
begin

   // ����� ��������(�Կ���) �޾ƿ���
   dtp_AssDate.Date := StrToDate(FsAdmDate);


   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;


   //---------------------------------------------------
   // 1. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo(dtp_AssDate.Date);


   //-----------------------------------------------------------------
   // 2. ��ȣ���� ���� ��ȸ
   //-----------------------------------------------------------------
   SearchNursingAssessment;


   //-----------------------------------------------------------------
   // 3. ��� flag�� ���� ��ºб�
   //-----------------------------------------------------------------
   bbt_PrintClick(Self);

end;


//------------------------------------------------------------------------------
// [Day - �Ϲ�] Keep in �����ϼ� Enable üũ
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0203_1Click(Sender: TObject);
begin
   D_B0203_4.Enabled := (Sender as TRadioButton).Checked;

   if not D_B0203_4.Enabled then
      D_B0203_4.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - �Ű��] Sedation ������ ���� �����׸� Enable üũ
//  - NICU ������/�ϻ��� ��û���� activity,status �׸� �̻��, 2012.01.19
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0304_1Click(Sender: TObject);
begin

   pn_DItem01.Enabled := D_B0304_2.Checked;

   if D_B0304_1.Checked then
   begin
      // Activity
      D_B0301_1.Checked := False;
      D_B0301_2.Checked := False;
      D_B0301_3.Checked := False;
      D_B0301_4.Checked := False;
      D_B0301_5.Checked := False;
      D_B0301_6.Checked := False;

      // Status
      D_B0303_1.Checked := False;
      D_B0303_2.Checked := False;
      D_B0303_3.Checked := False;
      D_B0303_4.Checked := False;
      D_B0303_5.Checked := False;

   end;
end;


//------------------------------------------------------------------------------
// [Day - �񴢱��] Foley Cath. ������� �ڵ�����
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0703_1Click(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TMaskEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Sender�� ���ó�¥ �ڵ� ����
         if Trim(DelChar((Sender as TMaskEdit).Text,'-')) = '' then
            (Sender as TMaskEdit).Text := FormatDateTime('yyyy-mm-dd', now);

         Break;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Day - �񴢱��] Foley Cath. ������� ����ϼ� �ڵ����
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0703_1Exit(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // ������� Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TMaskEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Sender�� ������ Name�� Editâ�� ����Ͻ� �ڵ����
         sbt_CalcIntubeClick(Sender);

         Break;
      end;
   end;

end;


//------------------------------------------------------------------------------
// [Day - �Ǻ�] ������ �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0804_1Click(Sender: TObject);
begin
   D_B0803_1.Enabled := not D_B0804_1.Checked;  // ����
   D_B0805_1.Enabled := not D_B0804_1.Checked;  // �Ǻλ���-Normal
   D_B0805_2.Enabled := not D_B0804_1.Checked;  // �Ǻλ���-Discoloration

   if D_B0804_1.Checked then
   begin
      D_B0803_1.Text    := '';
      D_B0805_1.Checked := False;
      D_B0805_2.Checked := False;
   end;
end;

//------------------------------------------------------------------------------
// [Day - �Ǻ�] �������� ���� �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0809_1Click(Sender: TObject);
begin
   pn_DItem02.Enabled := D_B0809_1.Checked;

   if not pn_Ditem02.Enabled then
   begin
      D_C0809_1.Checked := False;   // ����
      D_C0809_2.Checked := False;   // Bleeding
      D_C0809_3.Checked := False;   // Oozing
      D_C0809_4.Checked := False;   // Enema
      D_C0809_5.Checked := False;   // Other
      D_C0809_5E.Text   := '';
   end;
end;


//------------------------------------------------------------------------------
// [Day - ���] ESC Ű �Է½�, üũ����
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0902_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      // [ESC] Key �Է½�, Sender üũ����
      if (Sender as TRadioButton).Name = sName then
      begin
         Sender := (oComp as TComponent);

         if Key = VK_ESCAPE then
            (Sender as TRadioButton).Checked := False;

         Break;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Day - �Ǻ�] �������� ���� - ��Ÿ �׸�
//------------------------------------------------------------------------------
procedure TMDN110FW.D_C0809_5Click(Sender: TObject);
begin
   D_C0809_5E.Enabled := D_C0809_5.Checked;

   if not D_C0809_5E.Enabled then
      D_C0809_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evn - �Ϲ�] Keep in �����ϼ� Enable üũ
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0203_1Click(Sender: TObject);
begin
   E_B0203_4.Enabled := (Sender as TRadioButton).Checked;

   if not E_B0203_4.Enabled then
      E_B0203_4.Text := '';
end;


//------------------------------------------------------------------------------
// [Evn - �Ű��] Sedation ������ ���� �����׸� Enable üũ
//  - NICU ������/�ϻ��� ��û���� activity,status �׸� �̻��, 2012.01.19
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0304_1Click(Sender: TObject);
begin

   pn_EItem01.Enabled := E_B0304_2.Checked;

   if E_B0304_1.Checked then
   begin
      // Activity
      E_B0301_1.Checked := False;
      E_B0301_2.Checked := False;
      E_B0301_3.Checked := False;
      E_B0301_4.Checked := False;
      E_B0301_5.Checked := False;
      E_B0301_6.Checked := False;

      // Status
      E_B0303_1.Checked := False;
      E_B0303_2.Checked := False;
      E_B0303_3.Checked := False;
      E_B0303_4.Checked := False;
      E_B0303_5.Checked := False;

   end;

end;


//------------------------------------------------------------------------------
// [Evn - ��ȯ��] ���� ���ý�, ���� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0407_1Click(Sender: TObject);
begin
    // ����
    E_B0407_1E.Enabled := E_B0407_1.Checked;

    if not E_B0407_1E.Enabled then
      E_B0407_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evn - �Ǻ�] ���� �׸�
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0808_1Click(Sender: TObject);
begin

   E_B0806_1.Enabled := not E_B0808_1.Checked;  // ��ġ
   E_B0807_1.Enabled := not E_B0808_1.Checked;  // ũ��

   if E_B0808_1.Checked then
   begin
      E_B0806_1.Text := '';
      E_B0807_1.Text := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evn - �Ǻ�] ������ �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0804_1Click(Sender: TObject);
begin
   E_B0803_1.Enabled := not E_B0804_1.Checked;  // ����
   E_B0805_1.Enabled := not E_B0804_1.Checked;  // �Ǻλ���-Normal
   E_B0805_2.Enabled := not E_B0804_1.Checked;  // �Ǻλ���-Discoloration

   if E_B0804_1.Checked then
   begin
      E_B0803_1.Text    := '';
      E_B0805_1.Checked := False;
      E_B0805_2.Checked := False;
   end;
end;


//------------------------------------------------------------------------------
// [Evn - �Ǻ�] �������� ���� �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0809_1Click(Sender: TObject);
begin
   pn_EItem02.Enabled := E_B0809_1.Checked;

   if not pn_Eitem02.Enabled then
   begin
      E_C0809_1.Checked := False;   // ����
      E_C0809_2.Checked := False;   // Bleeding
      E_C0809_3.Checked := False;   // Oozing
      E_C0809_4.Checked := False;   // Enema
      E_C0809_5.Checked := False;   // Other
      E_C0809_5E.Text   := '';
   end;
end;


//------------------------------------------------------------------------------
// [Evn - �Ǻ�] �������� ���� - ��Ÿ �׸�
//------------------------------------------------------------------------------
procedure TMDN110FW.E_C0809_5Click(Sender: TObject);
begin
   E_C0809_5E.Enabled := E_C0809_5.Checked;

   if not E_C0809_5E.Enabled then
      E_C0809_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - �Ϲ�] Keep in �����ϼ� Enable üũ
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0203_1Click(Sender: TObject);
begin
   N_B0203_4.Enabled := (Sender as TRadioButton).Checked;

   if not N_B0203_4.Enabled then
      N_B0203_4.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - �Ű��] Sedation ������ ���� �����׸� Enable üũ
//  - NICU ������/�ϻ��� ��û���� activity,status �׸� �̻��, 2012.01.19
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0304_1Click(Sender: TObject);
begin

   pn_NItem01.Enabled := N_B0304_2.Checked;

   if N_B0304_1.Checked then
   begin
      // Activity
      N_B0301_1.Checked := False;
      N_B0301_2.Checked := False;
      N_B0301_3.Checked := False;
      N_B0301_4.Checked := False;
      N_B0301_5.Checked := False;
      N_B0301_6.Checked := False;

      // Status
      N_B0303_1.Checked := False;
      N_B0303_2.Checked := False;
      N_B0303_3.Checked := False;
      N_B0303_4.Checked := False;
      N_B0303_5.Checked := False;

   end;

end;


//------------------------------------------------------------------------------
// [Ngt - ��ȯ��] ���� ���ý�, ���� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0407_1Click(Sender: TObject);
begin
    // ����
    N_B0407_1E.Enabled := N_B0407_1.Checked;

    if not N_B0407_1E.Enabled then
      N_B0407_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - �Ǻ�] ���� �׸�
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0808_1Click(Sender: TObject);
begin

   N_B0806_1.Enabled := not N_B0808_1.Checked;  // ��ġ
   N_B0807_1.Enabled := not N_B0808_1.Checked;  // ũ��

   if N_B0808_1.Checked then
   begin
      N_B0806_1.Text := '';
      N_B0807_1.Text := '';
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - �Ǻ�] ������ �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0804_1Click(Sender: TObject);
begin
   N_B0803_1.Enabled := not N_B0804_1.Checked;  // ����
   N_B0805_1.Enabled := not N_B0804_1.Checked;  // �Ǻλ���-Normal
   N_B0805_2.Enabled := not N_B0804_1.Checked;  // �Ǻλ���-Discoloration

   if N_B0804_1.Checked then
   begin
      N_B0803_1.Text    := '';
      N_B0805_1.Checked := False;
      N_B0805_2.Checked := False;
   end;
end;




//------------------------------------------------------------------------------
// [Ngt - �Ǻ�] �������� ���� �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0809_1Click(Sender: TObject);
begin
   pn_NItem02.Enabled := N_B0809_1.Checked;

   if not pn_Nitem02.Enabled then
   begin
      N_C0809_1.Checked := False;   // ����
      N_C0809_2.Checked := False;   // Bleeding
      N_C0809_3.Checked := False;   // Oozing
      N_C0809_4.Checked := False;   // Enema
      N_C0809_5.Checked := False;   // Other
      N_C0809_5E.Text   := '';
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - �Ǻ�] �������� ���� - ��Ÿ �׸�
//------------------------------------------------------------------------------
procedure TMDN110FW.N_C0809_5Click(Sender: TObject);
begin
   N_C0809_5E.Enabled := N_C0809_5.Checked;

   if not N_C0809_5E.Enabled then
      N_C0809_5E.Text := '';
end;




//------------------------------------------------------------------------------
// [Day - ȣ����] ������� ���� �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0503_1Click(Sender: TObject);
begin
   pn_DItem03.Enabled := D_B0503_1.Checked;

   if not pn_Ditem03.Enabled then
   begin
      D_C0503_1.Checked := False;   // Percussion
      D_C0503_2.Checked := False;   // Vibration
      D_C0503_3.Checked := False;   // Postural Drainage
   end;
end;



//------------------------------------------------------------------------------
// [Evn - ȣ����] ������� ���� �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0503_1Click(Sender: TObject);
begin
   pn_EItem03.Enabled := E_B0503_1.Checked;

   if not pn_Eitem03.Enabled then
   begin
      E_C0503_1.Checked := False;   // Percussion
      E_C0503_2.Checked := False;   // Vibration
      E_C0503_3.Checked := False;   // Postural Drainage
   end;
end;



//------------------------------------------------------------------------------
// [Ngt - ȣ����] ������� ���� �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0503_1Click(Sender: TObject);
begin
   pn_NItem03.Enabled := N_B0503_1.Checked;

   if not pn_Nitem03.Enabled then
   begin
      N_C0503_1.Checked := False;   // Percussion
      N_C0503_2.Checked := False;   // Vibration
      N_C0503_3.Checked := False;   // Postural Drainage
   end;
end;



//------------------------------------------------------------------------------
// [Day - ���] L-tube �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.D_B0902_1Click(Sender: TObject);
begin
   pn_DItem04.Enabled := D_B0902_1.Checked or D_B0902_2.Checked;

   if not pn_Ditem04.Enabled then
   begin
      D_B0903_1.Checked := False;   // yellow
      D_B0903_2.Checked := False;   // old bloody
      D_B0903_3.Checked := False;   // milky
      D_B0903_4.Checked := False;   // green
      D_B0903_5.Checked := False;   // fresh bloody
      D_B0903_6.Checked := False;   // whitish
      D_B0903_7.Checked := False;   // brown
      D_B0903_8.Checked := False;   // blood tinged
      D_B0903_9.Checked := False;   // foamy
   end;
end;



//------------------------------------------------------------------------------
// [Evn - ���] L-tube �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.E_B0902_1Click(Sender: TObject);
begin
   pn_EItem04.Enabled := E_B0902_1.Checked or E_B0902_2.Checked;

   if not pn_Eitem04.Enabled then
   begin
      E_B0903_1.Checked := False;   // yellow
      E_B0903_2.Checked := False;   // old bloody
      E_B0903_3.Checked := False;   // milky
      E_B0903_4.Checked := False;   // green
      E_B0903_5.Checked := False;   // fresh bloody
      E_B0903_6.Checked := False;   // whitish
      E_B0903_7.Checked := False;   // brown
      E_B0903_8.Checked := False;   // blood tinged
      E_B0903_9.Checked := False;   // foamy
   end;

end;



//------------------------------------------------------------------------------
// [Ngt - ���] L-tube �׸� Enabled
//------------------------------------------------------------------------------
procedure TMDN110FW.N_B0902_1Click(Sender: TObject);
begin
   pn_NItem04.Enabled := N_B0902_1.Checked or N_B0902_2.Checked;

   if not pn_Nitem04.Enabled then
   begin
      N_B0903_1.Checked := False;   // yellow
      N_B0903_2.Checked := False;   // old bloody
      N_B0903_3.Checked := False;   // milky
      N_B0903_4.Checked := False;   // green
      N_B0903_5.Checked := False;   // fresh bloody
      N_B0903_6.Checked := False;   // whitish
      N_B0903_7.Checked := False;   // brown
      N_B0903_8.Checked := False;   // blood tinged
      N_B0903_9.Checked := False;   // foamy
   end;
end;




//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ�� ��ȸ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FW.bbt_SelectClick(Sender: TObject);
var
   sGubun, sWardNo, sPatNo, sAdmDate, sSetType : string;
begin

   ugd_EmrList.Clear;
   ugd_EmrList.RowCount := 2;



   //-------------------------------------------------------------------
   // ���� Assign
   //-------------------------------------------------------------------
   sGubun   := '5';
   sWardNo  := '';
   sPatNo   := FsPatNo;
   sAdmDate := DelChar(FsAdmDate,'-');
   // ��ȣ���� ���� ��ȸ ������ �߱� -2014.02.10 smpark
   sSetType := 'ICNNA';


   //-------------------------------------------------------------------
   // EMR ��� ��ȸ
   //-------------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(sGubun, sWardNo, sPatNo, sAdmDate, sSetType, '', '');

end;





procedure TMDN110FW.bbt_ToNrRecordDClick(Sender: TObject);
var
   sFlag      : String; // D/E/N Caller Component Flag
   sNrsRecord : String; // ��ȣ��� ����
   sTime      : String; // ����Ͻ�

   // �Ϲ�
   sB0201     : String; // ID BAND 2��Ȯ��
   sB0202     : String; // Photo therapy
   sB0203     : String; // Keep in
   // �Ű��
   sB0304     : String; // Sedation
   sB0302     : String; // Fontanel
   // ��ȯ��
   sB0405     : String; // ���ܺοµ�
   sB0406     : String; // ����û����
   sB0407     : String; // ����
   // ȣ����
   sB0501     : String; // ���
   sB0502     : String; // ��Ī��
   sB0504     : String; // Chest retraction
   sB0503     : String; // �������
   // �����
   sB0601     : String; // ����
   sB0603     : String; // Color
   sB0602     : String; // ����
   sB0604     : String; // ��������� ����
   // �񴢱��
   sB0701     : String; // �Һ���
   sB0702     : String; // �Һ����
   sB0703     : String; // Foley Cath
   // �Ǻ�
   sB0801     : String; // �Ǻλ�
   sB0802     : String; // ź��
   sB0806     : String; // ����
   sB0803     : String; // ������
   sB0809     : String; // ��������
   sC0809     : String; // ����
   // ���
   sB0901     : String; // L-tube
   sB0903     : String; // L-tube ���
   sB0904     : String; // Chest tube
   sB0907     : String; // Hemo vac tube
   sB0910     : String; // EVD
   sB0914     : String; // Other

   sSummary0  : String; // �Ϲ�
   sSummary1  : String; // �Ű�� ����
   sSummary2  : String; // ��ȯ�� ����
   sSummary3  : String; // ȣ���� ����
   sSummary4  : String; // ����� ����
   sSummary5  : String; // �񴢱�� ����
   sSummary6  : String; // �Ǻ� ����
   sSummary7  : String; // ��� ����

   // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   aPacket : IPipePacket;
   i : Integer;
   jPatInfo : TJsonObject;
begin
   // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   if (Application.MainForm.Name = 'SMCMainForm') then
   begin
      if      (Sender as TBitBtn) = bbt_ToNrRecordD then sFlag := 'D'
      else if (Sender as TBitBtn) = bbt_ToNrRecordE then sFlag := 'E'
      else if (Sender as TBitBtn) = bbt_ToNrRecordN then sFlag := 'N'
      else                                               sFlag := '';

      if sFlag = '' then
      begin
         Exit;
      end;

      // �⺻������ �ۼ����� ���� ������ �׸� ������ �ʵ��� ���� (�̰��� ������)
      sNrsRecord := '';

      // ID BAND 2��Ȯ��
      begin
         sB0201 := 'ID BAND 2��Ȯ��:';

         if      (Self.FindComponent(sFlag + '_B0201_1') as TRadioButton).Checked then
         begin
            sB0201 := sB0201
                    + '��';
         end
         else if (Self.FindComponent(sFlag + '_B0201_2') as TRadioButton).Checked then
         begin
            sB0201 := sB0201
                    + '��';
         end
         else
         begin
            sB0201 := '';
         end;
      end;

      // Photo therapy
      begin
         sB0202 := 'Photo therapy:';

         if      (Self.FindComponent(sFlag + '_B0202_1') as TRadioButton).Checked then
         begin
            sB0202 := sB0202
                    + '��';
         end
         else if (Self.FindComponent(sFlag + '_B0202_2') as TRadioButton).Checked then
         begin
            sB0202 := sB0202
                    + '��';
         end
         else
         begin
            sB0202 := '';
         end;
      end;

      // Keep in
      begin
         sB0203 := 'Keep in:';

         if      (Self.FindComponent(sFlag + '_B0203_1') as TRadioButton).Checked then
         begin
            sB0203 := sB0203
                    + 'Incubator';
         end
         else if (Self.FindComponent(sFlag + '_B0203_2') as TRadioButton).Checked then
         begin
            sB0203 := sB0203
                    + 'Crib';
         end
         else if (Self.FindComponent(sFlag + '_B0203_3') as TRadioButton).Checked then
         begin
            sB0203 := sB0203
                    + 'Radiation warmer';
         end
         else
         begin
            sB0203 := '';
         end;

         if (sB0203 <> '') and
            ((Self.FindComponent(sFlag + '_B0203_4') as TEdit).Text <> '') then
         begin
            sB0203 :=  sB0203
                     + ' '
                     + (Self.FindComponent(sFlag + '_B0203_4') as TEdit).Text
                     + '��°'
                     ;
         end;
      end;

      // Sedation
      begin
         sB0304 := 'Sedation:';

         if      (Self.FindComponent(sFlag + '_B0304_1') as TRadioButton).Checked then
         begin
            sB0304 := sB0304
                    + '��';
         end
         else if (Self.FindComponent(sFlag + '_B0304_2') as TRadioButton).Checked then
         begin
            sB0304 := sB0304
                    + '��';
         end
         else
         begin
            sB0304 := '';
         end;
      end;

      // Fontanel
      begin
         sB0302 := '';

         if      (Self.FindComponent(sFlag + '_B0302_1') as TCheckBox).Checked then
         begin
            if sB0302 <> '' then
            begin
               sB0302 := sB0302
                       + ','
                       ;
            end;

            sB0302 := sB0302
                    + 'Flat';
         end;

         if      (Self.FindComponent(sFlag + '_B0302_2') as TCheckBox).Checked then
         begin
            if sB0302 <> '' then
            begin
               sB0302 := sB0302
                       + ','
                       ;
            end;

            sB0302 := sB0302
                    + 'Full';
         end;

         if      (Self.FindComponent(sFlag + '_B0302_3') as TCheckBox).Checked then
         begin
            if sB0302 <> '' then
            begin
               sB0302 := sB0302
                       + ','
                       ;
            end;

            sB0302 := sB0302
                    + 'Bulging';
         end;

         if      (Self.FindComponent(sFlag + '_B0302_4') as TCheckBox).Checked then
         begin
            if sB0302 <> '' then
            begin
               sB0302 := sB0302
                       + ','
                       ;
            end;

            sB0302 := sB0302
                    + 'Tense';
         end;

         if      (Self.FindComponent(sFlag + '_B0302_5') as TCheckBox).Checked then
         begin
            if sB0302 <> '' then
            begin
               sB0302 := sB0302
                       + ','
                       ;
            end;

            sB0302 := sB0302
                    + 'Sunken';
         end;

         if      (Self.FindComponent(sFlag + '_B0302_6') as TCheckBox).Checked then
         begin
            if sB0302 <> '' then
            begin
               sB0302 := sB0302
                       + ','
                       ;
            end;

            sB0302 := sB0302
                    + 'Soft';
         end;

         if sB0302 <> '' then
         begin
            sB0302 := 'Fontanel:'
                    + sB0302
                    ;
         end;
      end;

      // ���ܺ� �µ�
      begin
         sB0405 := '���ܺ� �µ�:';

         if      (Self.FindComponent(sFlag + '_B0405_1') as TRadioButton).Checked then
         begin
            sB0405 := sB0405
                    + 'Cold';
         end
         else if (Self.FindComponent(sFlag + '_B0405_2') as TRadioButton).Checked then
         begin
            sB0405 := sB0405
                    + 'Warm';
         end
         else if (Self.FindComponent(sFlag + '_B0405_3') as TRadioButton).Checked then
         begin
            sB0405 := sB0405
                    + 'Clammy';
         end
         else
         begin
            sB0405 := '';
         end;
      end;

      // ���� û����
      begin
         sB0406 := '���� û����:';

         if      (Self.FindComponent(sFlag + '_B0406_1') as TRadioButton).Checked then
         begin
            sB0406 := sB0406
                    + '��';
         end
         else if (Self.FindComponent(sFlag + '_B0406_2') as TRadioButton).Checked then
         begin
            sB0406 := sB0406
                    + '��';
         end
         else
         begin
            sB0406 := '';
         end;
      end;

      // ����
      begin
         sB0407 := '����:';

         if      (Self.FindComponent(sFlag + '_B0407_1') as TRadioButton).Checked then
         begin
            sB0407 := sB0407
                    + '��';
         end
         else if (Self.FindComponent(sFlag + '_B0407_2') as TRadioButton).Checked then
         begin
            sB0407 := sB0407
                    + '��';
         end
         else
         begin
            sB0407 := '';
         end;

         if (sB0407 <> '') and
            ((Self.FindComponent(sFlag + '_B0407_1E') as TEdit).Text <> '') then
         begin
            sB0407 :=  sB0407
                     + '('
                     + '����:'
                     + (Self.FindComponent(sFlag + '_B0407_1E') as TEdit).Text
                     + ')'
                     ;
         end;
      end;

      // ���
      begin
         sB0501 := '';

         if      (Self.FindComponent(sFlag + '_B0501_1') as TCheckBox).Checked then
         begin
            if sB0501 <> '' then
            begin
               sB0501 := sB0501
                       + ','
                       ;
            end;

            sB0501 := sB0501
                    + 'Clear';
         end;

         if      (Self.FindComponent(sFlag + '_B0501_2') as TCheckBox).Checked then
         begin
            if sB0501 <> '' then
            begin
               sB0501 := sB0501
                       + ','
                       ;
            end;

            sB0501 := sB0501
                    + 'Crackle';
         end;

         if      (Self.FindComponent(sFlag + '_B0501_3') as TCheckBox).Checked then
         begin
            if sB0501 <> '' then
            begin
               sB0501 := sB0501
                       + ','
                       ;
            end;

            sB0501 := sB0501
                    + 'Wheezing';
         end;

         if      (Self.FindComponent(sFlag + '_B0501_4') as TCheckBox).Checked then
         begin
            if sB0501 <> '' then
            begin
               sB0501 := sB0501
                       + ','
                       ;
            end;

            sB0501 := sB0501
                    + 'Decrease';
         end;

         if      (Self.FindComponent(sFlag + '_B0501_5') as TCheckBox).Checked then
         begin
            if sB0501 <> '' then
            begin
               sB0501 := sB0501
                       + ','
                       ;
            end;

            sB0501 := sB0501
                    + 'Coarse';
         end;

         if sB0501 <> '' then
         begin
            sB0501 := '���:'
                    + sB0501
                    ;
         end;
      end;

      // ��Ī��
      begin
         sB0502 := '��Ī��:';

         if      (Self.FindComponent(sFlag + '_B0502_1') as TRadioButton).Checked then
         begin
            sB0502 := sB0502
                    + 'Symmetric';
         end
         else if (Self.FindComponent(sFlag + '_B0502_2') as TRadioButton).Checked then
         begin
            sB0502 := sB0502
                    + 'Asymmetric';
         end
         else
         begin
            sB0502 := '';
         end;
      end;

      // Chest retraction
      begin
         sB0504 := 'Chest retraction:';

         if      (Self.FindComponent(sFlag + '_B0504_1') as TRadioButton).Checked then
         begin
            sB0504 := sB0504
                    + '��';
         end
         else if (Self.FindComponent(sFlag + '_B0504_2') as TRadioButton).Checked then
         begin
            sB0504 := sB0504
                    + '��';
         end
         else
         begin
            sB0504 := '';
         end;
      end;

      // �������
      begin
         sB0503 := '�������:';

         if      (Self.FindComponent(sFlag + '_B0503_1') as TRadioButton).Checked then
         begin
            sB0503 := sB0503
                    + '��';

            if ((Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked)    then
            begin
               sB0503 := sB0503
                       + '('
                       ;
            end;

            if      (Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked then
            begin
               if sB0503 <> '�������:��' then
               begin
                  sB0503 := sB0503
                          + ','
                          ;
               end;

               sB0503 := sB0503
                       + 'Percurssion';
            end;

            if      (Self.FindComponent(sFlag + '_C0503_2') as TCheckBox).Checked then
            begin
               if sB0503 <> '�������:��' then
               begin
                  sB0503 := sB0503
                          + ','
                          ;
               end;

               sB0503 := sB0503
                       + 'Vibration';
            end;

            if      (Self.FindComponent(sFlag + '_C0503_3') as TCheckBox).Checked then
            begin
               if sB0503 <> '�������:��' then
               begin
                  sB0503 := sB0503
                          + ','
                          ;
               end;

               sB0503 := sB0503
                       + 'Postural drainage';
            end;

            if ((Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0503_1') as TCheckBox).Checked)    then
            begin
               sB0503 := sB0503
                       + ')'
                       ;
            end;
         end
         else if (Self.FindComponent(sFlag + '_B0503_2') as TRadioButton).Checked then
         begin
            sB0503 := sB0503
                    + '��';
         end
         else
         begin
            sB0503 := '';
         end;
      end;

      // ����
      begin
         sB0601 := '';

         if      (Self.FindComponent(sFlag + '_B0601_1') as TCheckBox).Checked then
         begin
            if sB0601 <> '' then
            begin
               sB0601 := sB0601
                       + ','
                       ;
            end;

            sB0601 := sB0601
                    + 'Soft';
         end;

         if      (Self.FindComponent(sFlag + '_B0601_2') as TCheckBox).Checked then
         begin
            if sB0601 <> '' then
            begin
               sB0601 := sB0601
                       + ','
                       ;
            end;

            sB0601 := sB0601
                    + 'Distension';
         end;

         if      (Self.FindComponent(sFlag + '_B0601_3') as TCheckBox).Checked then
         begin
            if sB0601 <> '' then
            begin
               sB0601 := sB0601
                       + ','
                       ;
            end;

            sB0601 := sB0601
                    + 'Tense';
         end;

         if sB0601 <> '' then
         begin
            sB0601 := '����:'
                    + sB0601
                    ;
         end;
      end;

      // Color
      begin
         sB0603 := 'Color:';

         if      (Self.FindComponent(sFlag + '_B0603_1') as TRadioButton).Checked then
         begin
            sB0603 := sB0603
                    + 'Normal';
         end
         else if (Self.FindComponent(sFlag + '_B0603_2') as TRadioButton).Checked then
         begin
            sB0603 := sB0603
                    + 'Discoloration';
         end
         else
         begin
            sB0603 := '';
         end;
      end;

      // ����
      begin
         sB0602 := '����:';

         if      (Self.FindComponent(sFlag + '_B0602_1') as TRadioButton).Checked then
         begin
            sB0602 := sB0602
                    + 'Normal';
         end
         else if (Self.FindComponent(sFlag + '_B0602_2') as TRadioButton).Checked then
         begin
            sB0602 := sB0602
                    + 'Increased';
         end
         else if (Self.FindComponent(sFlag + '_B0602_3') as TRadioButton).Checked then
         begin
            sB0602 := sB0602
                    + 'Dicreased';
         end
         else if (Self.FindComponent(sFlag + '_B0602_4') as TRadioButton).Checked then
         begin
            sB0602 := sB0602
                    + 'Absent';
         end
         else
         begin
            sB0602 := '';
         end;
      end;

      // ��������� ����
      begin
         sB0604 := '��������� ����:';

         if      (Self.FindComponent(sFlag + '_B0604_1') as TRadioButton).Checked then
         begin
            sB0604 := sB0604
                    + 'Yellow';
         end
         else if (Self.FindComponent(sFlag + '_B0604_2') as TRadioButton).Checked then
         begin
            sB0604 := sB0604
                    + 'Bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0604_3') as TRadioButton).Checked then
         begin
            sB0604 := sB0604
                    + 'Green';
         end
         else
         begin
            sB0604 := '';
         end;
      end;

      // �Һ���
      begin
         sB0701 := '�Һ���:';

         if      (Self.FindComponent(sFlag + '_B0701_1') as TRadioButton).Checked then
         begin
            sB0701 := sB0701
                    + 'Normal';
         end
         else if (Self.FindComponent(sFlag + '_B0701_2') as TRadioButton).Checked then
         begin
            sB0701 := sB0701
                    + 'Amber';
         end
         else if (Self.FindComponent(sFlag + '_B0701_3') as TRadioButton).Checked then
         begin
            sB0701 := sB0701
                    + 'Straw';
         end
         else if (Self.FindComponent(sFlag + '_B0701_4') as TRadioButton).Checked then
         begin
            sB0701 := sB0701
                    + 'Hematuria';
         end
         else if (Self.FindComponent(sFlag + '_B0701_5') as TRadioButton).Checked then
         begin
            sB0701 := sB0701
                    + 'Bilirubinuria';
         end
         else
         begin
            sB0701 := '';
         end;
      end;

      // �Һ����
      begin
         sB0702 := '�Һ����:';

         if      (Self.FindComponent(sFlag + '_B0702_1') as TRadioButton).Checked then
         begin
            sB0702 := sB0702
                    + 'Clear';
         end
         else if (Self.FindComponent(sFlag + '_B0702_2') as TRadioButton).Checked then
         begin
            sB0702 := sB0702
                    + 'Turbid';
         end
         else if (Self.FindComponent(sFlag + '_B0702_3') as TRadioButton).Checked then
         begin
            sB0702 := sB0702
                    + 'Foamy';
         end
         else
         begin
            sB0702 := '';
         end;
      end;

      // Foley Cath
      begin
         sB0703 := 'Foley Cath';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0703_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0703_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0703_3') as TEdit).Text ) <> '') then
         begin
            sB0703 :=  sB0703
                    + ' '
                    + '�������:'
                    + (Self.FindComponent(sFlag + '_B0703_1') as TMaskEdit).Text
                    + '(#'
                    + (Self.FindComponent(sFlag + '_B0703_2') as TEdit).Text
                    + ') '
                    + 'Size(Fr.)'
                    + (Self.FindComponent(sFlag + '_B0703_3') as TEdit).Text
                    ;
         end
         else
         begin
            sB0703 := '';
         end;

         if      (Self.FindComponent(sFlag + '_B0703_4') as TRadioButton).Checked then
         begin
            sB0703 := sB0703
                    + ' '
                    + 'Perineal Care:'
                    + '��'
                    ;
         end
         else if (Self.FindComponent(sFlag + '_B0703_5') as TRadioButton).Checked then
         begin
            sB0703 := sB0703
                    + ' '
                    + 'Perineal Care:'
                    + '��'
                    ;
         end
         else
         begin
            sB0703 := sB0703;
         end;
      end;

      // �Ǻλ�
      begin
         sB0801 := '';

         if      (Self.FindComponent(sFlag + '_B0801_1') as TCheckBox).Checked then
         begin
            if sB0801 <> '' then
            begin
               sB0801 := sB0801
                       + ','
                       ;
            end;

            sB0801 := sB0801
                    + 'Pink';
         end;

         if      (Self.FindComponent(sFlag + '_B0801_2') as TCheckBox).Checked then
         begin
            if sB0801 <> '' then
            begin
               sB0801 := sB0801
                       + ','
                       ;
            end;

            sB0801 := sB0801
                    + 'Pale';
         end;

         if      (Self.FindComponent(sFlag + '_B0801_3') as TCheckBox).Checked then
         begin
            if sB0801 <> '' then
            begin
               sB0801 := sB0801
                       + ','
                       ;
            end;

            sB0801 := sB0801
                    + 'Anemic';
         end;

         if      (Self.FindComponent(sFlag + '_B0801_4') as TCheckBox).Checked then
         begin
            if sB0801 <> '' then
            begin
               sB0801 := sB0801
                       + ','
                       ;
            end;

            sB0801 := sB0801
                    + 'Icteric';
         end;

         if      (Self.FindComponent(sFlag + '_B0801_5') as TCheckBox).Checked then
         begin
            if sB0801 <> '' then
            begin
               sB0801 := sB0801
                       + ','
                       ;
            end;

            sB0801 := sB0801
                    + 'Cyanotic';
         end;

         if      (Self.FindComponent(sFlag + '_B0801_6') as TCheckBox).Checked then
         begin
            if sB0801 <> '' then
            begin
               sB0801 := sB0801
                       + ','
                       ;
            end;

            sB0801 := sB0801
                    + 'Mottle';
         end;

         if sB0801 <> '' then
         begin
            sB0801 := '�Ǻλ�:'
                    + sB0801
                    ;
         end;
      end;

      // ź��
      begin
         sB0802 := 'ź��:';

         if      (Self.FindComponent(sFlag + '_B0802_1') as TRadioButton).Checked then
         begin
            sB0802 := sB0802
                    + 'Good';
         end
         else if (Self.FindComponent(sFlag + '_B0802_2') as TRadioButton).Checked then
         begin
            sB0802 := sB0802
                    + 'Moderate';
         end
         else if (Self.FindComponent(sFlag + '_B0802_3') as TRadioButton).Checked then
         begin
            sB0802 := sB0802
                    + 'Poor';
         end
         else
         begin
            sB0802 := '';
         end;
      end;

      // ����
      begin
         sB0806 := '';

         if not (Self.FindComponent(sFlag + '_B0808_1') as TCheckBox).Checked then
         begin
            sB0806 := '����';

            if (Self.FindComponent(sFlag + '_B0806_1') as TEdit).Text <> '' then
            begin
               sB0806 := sB0806
                       + ' '
                       + '����:'
                       + (Self.FindComponent(sFlag + '_B0806_1') as TEdit).Text
                       ;
            end;

            if (Self.FindComponent(sFlag + '_B0807_1') as TEdit).Text <> '' then
            begin
               sB0806 := sB0806
                       + ' '
                       + 'ũ��:'
                       + (Self.FindComponent(sFlag + '_B0807_1') as TEdit).Text
                       ;
            end;

            if ((Self.FindComponent(sFlag + '_B0806_1') as TEdit).Text = '') and
               ((Self.FindComponent(sFlag + '_B0807_1') as TEdit).Text = '')     then
            begin
               sB0806 := '';
            end;
         end;
      end;

      // ������
      begin
         sB0803 := '';

         if not (Self.FindComponent(sFlag + '_B0804_1') as TCheckBox).Checked then
         begin
            sB0803 := '������';

            if (Self.FindComponent(sFlag + '_B0803_1') as TEdit).Text <> '' then
            begin
               sB0803 := sB0803
                       + ' '
                       + '����:'
                       + (Self.FindComponent(sFlag + '_B0803_1') as TEdit).Text
                       ;
            end
            else
            begin
               sB0803 := '';
            end;

            if      (Self.FindComponent(sFlag + '_B0805_1') as TRadioButton).Checked then
            begin
               sB0803 := sB0803
                       + ' '
                       + '�Ǻλ���:'
                       + 'Normal'
                       ;
            end
            else if (Self.FindComponent(sFlag + '_B0805_2') as TRadioButton).Checked then
            begin
               sB0803 := sB0803
                       + ' '
                       + '�Ǻλ���:'
                       + 'Discoloration'
                       ;
            end
            else
            begin
               sB0803 := sB0803;
            end;
         end;
      end;

      // ��������
      begin
         sB0809 := '��������:';

         if      (Self.FindComponent(sFlag + '_B0809_1') as TRadioButton).Checked then
         begin
            sB0809 := sB0809
                    + '��';

            sC0809 := '';

            if      (Self.FindComponent(sFlag + '_C0809_1') as TCheckBox).Checked then
            begin
               if sC0809 <> '' then
               begin
                  sC0809 := sC0809
                          + ','
                          ;
               end;

               sC0809 := sC0809
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0809_2') as TCheckBox).Checked then
            begin
               if sC0809 <> '' then
               begin
                  sC0809 := sC0809
                          + ','
                          ;
               end;

               sC0809 := sC0809
                       + 'Bleeding';
            end;

            if      (Self.FindComponent(sFlag + '_C0809_3') as TCheckBox).Checked then
            begin
               if sC0809 <> '' then
               begin
                  sC0809 := sC0809
                          + ','
                          ;
               end;

               sC0809 := sC0809
                       + 'Oozing';
            end;

            if      (Self.FindComponent(sFlag + '_C0809_4') as TCheckBox).Checked then
            begin
               if sC0809 <> '' then
               begin
                  sC0809 := sC0809
                          + ','
                          ;
               end;

               sC0809 := sC0809
                       + 'Edema';
            end;

            if      (Self.FindComponent(sFlag + '_C0809_5') as TCheckBox).Checked then
            begin
               if sC0809 <> '' then
               begin
                  sC0809 := sC0809
                          + ','
                          ;
               end;

               sC0809 := sC0809
                       + '��Ÿ'
                       ;
               if (Self.FindComponent(sFlag + '_C0809_5E') as TEdit).Text <> '' then
               begin
                  sC0809 := sC0809
                          + '('
                          + (Self.FindComponent(sFlag + '_C0809_5E') as TEdit).Text
                          + ')'
                          ;
               end;

            end;

            if sC0809 <> '' then
            begin
               sC0809 := '����:'
                       + sC0809
                       ;
            end;
         end
         else if (Self.FindComponent(sFlag + '_B0809_2') as TRadioButton).Checked then
         begin
            sB0809 := sB0809
                    + '��';
         end
         else
         begin
            sB0809 := '';
         end;
      end;

      // L-Tube
      begin
         sB0901 := 'L-tube';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0901_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0901_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0901_3') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0901_4') as TEdit).Text ) <> '') then
         begin
            sB0901 := sB0901
                    + ' '
                    + '�������:'
                    + (Self.FindComponent(sFlag + '_B0901_1') as TMaskEdit).Text
                    + '(#'
                    + (Self.FindComponent(sFlag + '_B0901_2') as TEdit).Text
                    + ') '
                    + 'Size(Fr.)'
                    + (Self.FindComponent(sFlag + '_B0901_3') as TEdit).Text
                    + ' '
                    + '����:'
                    + (Self.FindComponent(sFlag + '_B0901_4') as TEdit).Text
                    + 'cm'
                    ;
         end;

         if      (Self.FindComponent(sFlag + '_B0902_1') as TRadioButton).Checked then
         begin
            sB0901 := sB0901
                    + ' '
                    + 'Type:'
                    + 'Natural drainage'
                    ;
         end
         else if (Self.FindComponent(sFlag + '_B0902_2') as TRadioButton).Checked then
         begin
            sB0901 := sB0901
                    + ' '
                    + 'Type:'
                    + 'Int.suction'
                    ;
         end
         else if (Self.FindComponent(sFlag + '_B0902_3') as TRadioButton).Checked then
         begin
            sB0901 := sB0901
                    + ' '
                    + 'Type:'
                    + '��'
                    ;
         end
         else
         begin
            sB0901 := sB0901;
         end;

         if ((Self.FindComponent(sFlag + '_B0902_1') as TRadioButton).Checked) or
            ((Self.FindComponent(sFlag + '_B0902_2') as TRadioButton).Checked)    then
         begin
            sB0903 := '';

            if      (Self.FindComponent(sFlag + '_B0903_1') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Yellow';
            end;

            if      (Self.FindComponent(sFlag + '_B0903_2') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Old Bloody';
            end;

            if      (Self.FindComponent(sFlag + '_B0903_3') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Milky';
            end;

            if      (Self.FindComponent(sFlag + '_B0903_4') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Green';
            end;

            if      (Self.FindComponent(sFlag + '_B0903_5') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Fresh Bloody'
                       ;
            end;

            if      (Self.FindComponent(sFlag + '_B0903_6') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Whitish'
                       ;
            end;

            if      (Self.FindComponent(sFlag + '_B0903_7') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Brown'
                       ;
            end;

            if      (Self.FindComponent(sFlag + '_B0903_8') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Blood tinged'
                       ;
            end;

            if      (Self.FindComponent(sFlag + '_B0903_9') as TCheckBox).Checked then
            begin
               if sB0903 <> '' then
               begin
                  sB0903 := sB0903
                          + ','
                          ;
               end;

               sB0903 := sB0903
                       + 'Foamy'
                       ;
            end;

            if sB0903 <> '' then
            begin
               sB0903 := '���:'
                       + sB0903
                       ;
            end;
         end;
      end;

      // Chest Tube
      begin
         sB0904 := 'Chest tube';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0904_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0904_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0904_3') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0904_4') as TEdit).Text ) <> '') then
         begin
            sB0904 :=  sB0904
                    + ' '
                    + '�������:'
                    + (Self.FindComponent(sFlag + '_B0904_1') as TMaskEdit).Text
                    + '(#'
                    + (Self.FindComponent(sFlag + '_B0904_2') as TEdit).Text
                    + ') '
                    + 'Size(Fr.)'
                    + (Self.FindComponent(sFlag + '_B0904_3') as TEdit).Text
                    + ' '
                    + '����:'
                    + (Self.FindComponent(sFlag + '_B0904_4') as TEdit).Text
                    + 'cm'
                    + ' '
                    ;
         end;

         if      (Self.FindComponent(sFlag + '_B0905_1') as TRadioButton).Checked then
         begin
            sB0904 := sB0904
                    + ' '
                    + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0905_2') as TRadioButton).Checked then
         begin
            sB0904 := sB0904
                    + ' '
                    + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0905_3') as TRadioButton).Checked then
         begin
            sB0904 := sB0904
                    + ' '
                    + 'C/S, ';
         end
         else
         begin
            sB0904 := sB0904;
         end;

         if      (Self.FindComponent(sFlag + '_B0906_1') as TRadioButton).Checked then
         begin
            sB0904 := sB0904 + '���:Yellow';
         end
         else if (Self.FindComponent(sFlag + '_B0906_2') as TRadioButton).Checked then
         begin
            sB0904 := sB0904 + '���:Green';
         end
         else if (Self.FindComponent(sFlag + '_B0906_3') as TRadioButton).Checked then
         begin
            sB0904 := sB0904 + '���:Brown';
         end
         else if (Self.FindComponent(sFlag + '_B0906_4') as TRadioButton).Checked then
         begin
            sB0904 := sB0904 + '���:Old bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0906_5') as TRadioButton).Checked then
         begin
            sB0904 := sB0904 + '���:Fresh bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0906_6') as TRadioButton).Checked then
         begin
            sB0904 := sB0904 + '���:Blood tinged';
         end
         else
         begin
            sB0904 := sB0904;
         end;
      end;

      // Hemo vac tube
      begin
         sB0907 := 'Hemo vac tube';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0907_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0907_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0907_3') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0907_4') as TEdit).Text ) <> '') then
         begin
            sB0907 :=  sB0907
                    + ' '
                    + '�������:'
                    + (Self.FindComponent(sFlag + '_B0907_1') as TMaskEdit).Text
                    + '(#'
                    + (Self.FindComponent(sFlag + '_B0907_2') as TEdit).Text
                    + ') '
                    + 'Size(Fr.)'
                    + (Self.FindComponent(sFlag + '_B0907_3') as TEdit).Text
                    + ' '
                    + '����:'
                    + (Self.FindComponent(sFlag + '_B0907_4') as TEdit).Text
                    + 'cm'
                    + ' '
                    ;
         end;

         if      (Self.FindComponent(sFlag + '_B0908_1') as TRadioButton).Checked then
         begin
            sB0907 := sB0907
                    + ' '
                    + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0908_2') as TRadioButton).Checked then
         begin
            sB0907 := sB0907
                    + ' '
                    + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0908_3') as TRadioButton).Checked then
         begin
            sB0907 := sB0907
                    + ' '
                    + 'C/S, ';
         end
         else
         begin
            sB0907 := sB0907;
         end;

         if      (Self.FindComponent(sFlag + '_B0909_1') as TRadioButton).Checked then
         begin
            sB0907 := sB0907 + '���:Yellow';
         end
         else if (Self.FindComponent(sFlag + '_B0909_2') as TRadioButton).Checked then
         begin
            sB0907 := sB0907 + '���:Green';
         end
         else if (Self.FindComponent(sFlag + '_B0909_3') as TRadioButton).Checked then
         begin
            sB0907 := sB0907 + '���:Brown';
         end
         else if (Self.FindComponent(sFlag + '_B0909_4') as TRadioButton).Checked then
         begin
            sB0907 := sB0907 + '���:Old bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0909_5') as TRadioButton).Checked then
         begin
            sB0907 := sB0907 + '���:Fresh bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0909_6') as TRadioButton).Checked then
         begin
            sB0907 := sB0907 + '���:Blood tinged';
         end
         else
         begin
            sB0907 := sB0907;
         end;
      end;

      // EVD
      begin
         sB0910 := 'EVD';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0910_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0910_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0910_3') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0910_4') as TEdit).Text ) <> '') then
         begin
            sB0910 :=  sB0910
                    + ' '
                    + '�������:'
                    + (Self.FindComponent(sFlag + '_B0910_1') as TMaskEdit).Text
                    + '(#'
                    + (Self.FindComponent(sFlag + '_B0910_2') as TEdit).Text
                    + ') '
                    + 'Size(Fr.)'
                    + (Self.FindComponent(sFlag + '_B0910_3') as TEdit).Text
                    + ' '
                    + '����:'
                    + (Self.FindComponent(sFlag + '_B0910_4') as TEdit).Text
                    + 'cm'
                    + ' '
                    ;
         end;

         if      (Self.FindComponent(sFlag + '_B0911_1') as TRadioButton).Checked then
         begin
            sB0910 := sB0910
                    + ' '
                    + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0911_2') as TRadioButton).Checked then
         begin
            sB0910 := sB0910
                    + ' '
                    + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0911_3') as TRadioButton).Checked then
         begin
            sB0910 := sB0910
                    + ' '
                    + 'C/S, ';
         end
         else
         begin
            sB0910 := sB0910;
         end;

         if      (Self.FindComponent(sFlag + '_B0912_1') as TRadioButton).Checked then
         begin
            sB0910 := sB0910 + '���:Yellow';
         end
         else if (Self.FindComponent(sFlag + '_B0912_2') as TRadioButton).Checked then
         begin
            sB0910 := sB0910 + '���:Green';
         end
         else if (Self.FindComponent(sFlag + '_B0912_3') as TRadioButton).Checked then
         begin
            sB0910 := sB0910 + '���:Brown';
         end
         else if (Self.FindComponent(sFlag + '_B0912_4') as TRadioButton).Checked then
         begin
            sB0910 := sB0910 + '���:Old bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0912_5') as TRadioButton).Checked then
         begin
            sB0910 := sB0910 + '���:Fresh bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0912_6') as TRadioButton).Checked then
         begin
            sB0910 := sB0910 + '���:Blood tinged';
         end
         else
         begin
            sB0910 := sB0910;
         end;
      end;

      // Other
      begin
         sB0914 := 'other';

         if (Self.FindComponent(sFlag + '_B0913_1') as TEdit).Text <> '' then
         begin
            sB0914 := sB0914
                    + ' '
                    + (Self.FindComponent(sFlag + '_B0913_1') as TEdit).Text
         end;

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0914_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0914_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0914_3') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0914_4') as TEdit).Text ) <> '') then
         begin
            sB0914 :=  sB0914
                    + ' '
                    + '�������:'
                    + (Self.FindComponent(sFlag + '_B0914_1') as TMaskEdit).Text
                    + '(#'
                    + (Self.FindComponent(sFlag + '_B0914_2') as TEdit).Text
                    + ') '
                    + 'Size(Fr.)'
                    + (Self.FindComponent(sFlag + '_B0914_3') as TEdit).Text
                    + ' '
                    + '����:'
                    + (Self.FindComponent(sFlag + '_B0914_4') as TEdit).Text
                    + 'cm'
                    + ' '
                    ;
         end;

         if      (Self.FindComponent(sFlag + '_B0915_1') as TRadioButton).Checked then
         begin
            sB0914 := sB0914
                    + ' '
                    + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0915_2') as TRadioButton).Checked then
         begin
            sB0914 := sB0914
                    + ' '
                    + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0915_3') as TRadioButton).Checked then
         begin
            sB0914 := sB0914
                    + ' '
                    + 'C/S, ';
         end
         else
         begin
            sB0914 := sB0914;
         end;

         if      (Self.FindComponent(sFlag + '_B0916_1') as TRadioButton).Checked then
         begin
            sB0914 := sB0914 + '���:Yellow';
         end
         else if (Self.FindComponent(sFlag + '_B0916_2') as TRadioButton).Checked then
         begin
            sB0914 := sB0914 + '���:Green';
         end
         else if (Self.FindComponent(sFlag + '_B0916_3') as TRadioButton).Checked then
         begin
            sB0914 := sB0914 + '���:Brown';
         end
         else if (Self.FindComponent(sFlag + '_B0916_4') as TRadioButton).Checked then
         begin
            sB0914 := sB0914 + '���:Old bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0916_5') as TRadioButton).Checked then
         begin
            sB0914 := sB0914 + '���:Fresh bloody';
         end
         else if (Self.FindComponent(sFlag + '_B0916_6') as TRadioButton).Checked then
         begin
            sB0914 := sB0914 + '���:Blood tinged';
         end
         else
         begin
            sB0914 := sB0914;
         end;
      end;


      // ��ȣ��� ���� ����
      sSummary0 := '';
      sSummary1 := '';
      sSummary2 := '';
      sSummary3 := '';
      sSummary4 := '';
      sSummary5 := '';
      sSummary6 := '';
      sSummary7 := '';

      sSummary0  :=        sSummary0
                   +       sB0201     // ID BAND 2��Ȯ��
                   + ' ' + sB0202     // Photo therapy
                   + ' ' + sB0203     // Keep in
                   ;
      if Trim(sSummary0) <> '' then sSummary0 := Trim(sSummary0) + #13#10
      else                          sSummary0 := '';

      sSummary1  :=        sSummary1
                   +       sB0304     // Sedation
                   + ' ' + sB0302     // Fontanel
                   ;
      if Trim(sSummary1) <> '' then sSummary1 := Trim(sSummary1) + #13#10
      else                          sSummary1 := '';

      sSummary2  :=        sSummary2
                   +       sB0405     // ���ܺοµ�
                   + ' ' + sB0406     // ����û����
                   + ' ' + sB0407     // ����
                   ;
      if Trim(sSummary2) <> '' then sSummary2 := Trim(sSummary2) + #13#10
      else                          sSummary2 := '';

      sSummary3  :=        sSummary3
                   +       sB0501     // ���
                   + ' ' + sB0502     // ��Ī��
                   + ' ' + sB0504     // Chest retraction
                   + ' ' + sB0503     // �������
                   ;
      if Trim(sSummary3) <> '' then sSummary3 := Trim(sSummary3) + #13#10
      else                          sSummary3 := '';

      sSummary4  :=        sSummary4
                   +       sB0601     // ����
                   + ' ' + sB0603     // Color
                   + ' ' + sB0602     // ����
                   + ' ' + sB0604     // ��������� ����
                   ;
      if Trim(sSummary4) <> '' then sSummary4 := Trim(sSummary4) + #13#10
      else                          sSummary4 := '';

      sSummary5  :=        sSummary5
                   +       sB0701     // �Һ���
                   + ' ' + sB0702     // �Һ����
                   + ' ' + sB0703     // Foley Cath
                   ;
      if Trim(sSummary5) <> '' then sSummary5 := Trim(sSummary5) + #13#10
      else                          sSummary5 := '';

      sSummary6  :=        sSummary6
                   +       sB0801     // �Ǻλ�
                   + ' ' + sB0802     // ź��
                   + ' ' + sB0806     // ����
                   + ' ' + sB0803     // ������
                   + ' ' + sB0809     // ��������
                   + ' ' + sC0809     // ����
                   ;
      if Trim(sSummary6) <> '' then sSummary6 := Trim(sSummary6) + #13#10
      else                          sSummary6 := '';

      sSummary7  :=        sSummary7
                   +       sB0901      // L-Tube
                   + ' ' + sB0903      // L-Tube ���
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sB0904  // Chest Tube
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sB0907   // H-vac Tube
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sB0910        // EVD
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sB0914    // Pigtail
                   ;

      sNrsRecord :=  sSummary0
                   + sSummary1
                   + sSummary2
                   + sSummary3
                   + sSummary4
                   + sSummary5
                   + sSummary6
                   + sSummary7
                   ;

      sTime :=  FormatDateTime('yyyymmdd', dtp_AssDate.Date)
              + StringReplace((Self.FindComponent('med_' + sFlag + '_AssTime') as TMaskEdit).Text, ':', '', [rfReplaceAll])
              ;

      aPacket  := NewPacket('');
      aPacket.Request.A['PAT_INFOS']   := TJsonArray.Create;

      jPatInfo                   := aPacket.Request.A['PAT_INFOS'].AddObject;
      jPatInfo.S['PATNO']        := FsPatNo;                   // ȯ�ڹ�ȣ
      jPatInfo.S['PATNAME']      := FsPatName;

      jPatInfo.S['AGE']          := FsAge;
      jPatInfo.S['SEX']          := FsSex;
      jPatInfo.S['BIRTHYMD']     := FsBirthymd;

      jPatInfo.S['ADMDATE']      := FsAdmDate;                 // �Կ�����
      jPatInfo.S['MEDTIME']      := FsMedTime;                 // ��������
      jPatInfo.S['MDRP_NO']      := FsAcptNo;                  // ������ȣ
      jPatInfo.S['CODVCD']       := FsCodvCd;                  // ���������ڵ�(�ܷ�:O, �Կ�:I, ����:E)
      jPatInfo.S['RCRDDT']       := sTime;                     // ����Ͻ�(YYYYMMDDHH24MI)
      jPatInfo.S['CARCCTN']      := sNrsRecord;                // �ۼ�����
      jPatInfo.S['DEPTCD']       := md_WkareaCd;               // �ۼ��ںμ�
      jPatInfo.S['TMPRSAVEYN']   := 'N';                       //
      jPatInfo.S['CARCPRVCCD']   := 'IA';                      // IA:ICU��ȣ���� IQ:ICU�ӻ�����ǥ
      jPatInfo.S['RECID']        := G_USERID;

      // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
      if (Assigned(EMR_CallEmrNurseLinker) = True) then
      begin
         EMR_CallEmrNurseLinker(aPacket);

         {
         if (aPacket.Response.B['RESULT'] = False) then
         begin
            ShowMessage('���� ��ȣ��� ���� ����(CallEmrNurseLinker). ����ǿ� �����ϼ���. ');
            Exit;
         end;
         }
      end
      else
      begin
         ShowMessage('EMR ���� ��������(CallEmrNurseLinker) �Դϴ�. ����ǿ� �����Ͻñ� �ٶ��ϴ�.' );
         Exit;
      end;
   end;
end;

//------------------------------------------------------------------------------
// [���ĺ�ȯ ���ȯ��] ��ȸ Procedure
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
// sType5, sType6 �߰� -2015.05.27 smpark
procedure TMDN110FW.GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);
var
   RowNo, i    : Integer;
   iPats       : HmdIcpatt;
begin
   //---------------------------------------------------------------
   // 0. Initialization
   //---------------------------------------------------------------
   Screen.Cursor   := crHourglass;


   try
      iPats := HmdIcpatt.Create;

      // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� START
      if pv_SComReport <> nil then
      begin
         // ������ȯ�ڿ� �˻� From-To�� �̹� ���ǵǾ� �����Ƿ� �� ���� �����.
         if (pv_Fromdate <> '') and
            (pv_Todate   <> '')     then
         begin
            sType5 := InvertSDate(pv_Fromdate);
            sType6 := InvertSDate(pv_Todate  );
         end;
      end;
      // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� END

      //--------------------------------------------
      // 1. Load Data
      //--------------------------------------------
      RowNo := iPats.SelIcuPat(sType1, sType2, sType3, sType4, sType5, sType6, sFlag1);

      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := RowNo;     //�����, ����:����, 0:�Ǽ�����, ���: ����
         pv_SComReport.RsltMsg  := GetTxMsg;  //��� �޽���
      end;
      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iPats.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;


      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         iPats.Free;
         Exit;
      end;



      //--------------------------------------------
      // 2. �ڵ����ĺ�ȯ(EMR) ���ȯ�� ��ȸ
      //   - 2012.01.31 LSH
      //--------------------------------------------
      begin

         ugd_EmrList.RowCount := RowNo + 1;


         with ugd_EmrList do
         begin
            for i := 0 to RowNo - 1 do
            begin
               Cells[0, i+1] := iPats.sPatNo[i];                  // ��ȯ��� ȯ�ڹ�ȣ
               Cells[1, i+1] := iPats.sAdmDate[i];                // �Կ�����
               Cells[2, i+1] := ConvertSDate(iPats.sActDate[i]);  // �������
            end;


            // ��ȯ��� ȯ�� �� Row �� �����ϸ�, EMR ���.
            for i := 1 to RowCount - 1 do
            begin
              Row := i;

              // ������� Set
              dtp_AssDate.Date := StrToDateTime(Cells[2, i]);

              // ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
              LoadPatientInfo(dtp_AssDate.Date);

              // ���õ� Row�� ������� ��ȸ
              bbt_OkClick(ugd_EmrList);

              // EMR ���
              bbt_PrintClick(nil);

            end;
         end;
      end;


      iPats.Free;


   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ���� ������ں� ����ȸ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FW.bbt_OkClick(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // ���ں� ��ȣ���� ���� ��ȸ
   //-----------------------------------------------------------------
   SearchNursingAssessment;
end;



//------------------------------------------------------------------------------
// NICU ��ȣ���� �ڵ���ĵ ������� New-verion
// - ���ȯ���� ������� fetch��, �ش� ������ں� �󼼳��� EMR ��ȯ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FW.AutoScanPrint_New;
begin
   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;


   //---------------------------------------------------
   // 1. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo(dtp_AssDate.Date);


   //---------------------------------------------------
   // EMR ���ĺ�ȯ ��� ��ȸ
   //---------------------------------------------------
   bbt_SelectClick(ugd_EmrList);

end;




//------------------------------------------------------------------------------
// Duty�� �۾���ư ���� ���� �߰� (�ӻ�����ǥ���� �������)
//
// Author : Lee, Se-Ha
// Date   : 2012.03.08
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FW.SetControlStatusOfDuty(AsDuty: string);
begin
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then
   begin
      DisplayCurrentDuty(AsDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;


//-------------------------------------------------------------------
// [�񴢱��] Duty�� ��� Remove�� ���� ������� + ����ϼ� Clear
//   - 2012.04.24 LSH
//-------------------------------------------------------------------
procedure TMDN110FW.D_B0703RemoveClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      // �ش� Duty ��� ���� Component ã��
      if CopyByte((Sender as TSpeedButton).Name, 1, 7) = CopyByte(sName, 1, 7) then
      begin
         Sender := (oComp as TComponent);

         // Clear
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_1') as TMaskEdit).Text    := '';
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_2') as TEdit).Text        := '';
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_3') as TEdit).Text        := '';

         Break;
      end;
   end;
end;


//-------------------------------------------------------------------
// [���] Duty�� ��� Remove�� ���� ������� + ����ϼ� Clear
//   - 2012.04.24 LSH
//-------------------------------------------------------------------
procedure TMDN110FW.D_B0901RemoveClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      // �ش� Duty ��� ���� Component ã��
      if CopyByte((Sender as TSpeedButton).Name, 1, 7) = CopyByte(sName, 1, 7) then
      begin
         Sender := (oComp as TComponent);

         // Clear
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_1') as TMaskEdit).Text    := '';
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_2') as TEdit).Text        := '';
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_3') as TEdit).Text        := '';
         (GetComp(Self.Name, CopyByte((Sender as TComponent).Name, 1, 7) + '_4') as TEdit).Text        := '';

         Break;
      end;
   end;

end;

// [EMR����] 2016.04.12 ȫâ�� �߰���(������).
procedure TMDN110FW.bt_printClick(Sender: TObject);
var
   rc         : Integer;
   wk_o_tpsvc : TTpSvc;
   sPageText  : String;
begin
   // [EMR����] 2016-04-04 ������ , �Կ�ȯ�� �⺻���� Load �߰�
   if pv_Patsect = 'I' then
   begin
      wk_o_tpsvc := TTpSvc.Create;
      try
         wk_o_tpsvc.Init (   nil    );
         wk_o_tpsvc.MsgClearFlag     :=  False   ;
         wk_o_tpsvc.ShowMsgFlag      :=  False   ;
         wk_o_tpsvc.ShowCursorFlag   :=  False   ;
         wk_o_tpsvc.ShowErrMsgFlag   :=  False   ;
         wk_o_tpsvc.NoDataMsgType    :=  0       ;
         wk_o_tpsvc.CountField       :=  '';

         wk_o_tpsvc.GetSvc('SI_EMRPR_L2'
                        , [
                           'S_FLAG1'     , 'B'
                        ,  'S_STRING1'   , pv_Patno
                        ,  'S_STRING2'   , pv_Meddate
                          ]
                        , [
                           'S_STRING1'   , 'Patno'
                        ,  'S_STRING2'   , 'Patname'
                        ,  'S_STRING3'   , 'Sex'
                        ,  'S_STRING4'   , 'Age'
                        ,  'S_STRING5'   , 'Dschdate'
                        ,  'S_STRING6'   , 'Meddept'
                        ,  'S_STRING7'   , 'Meddeptnm'
                        ,  'S_STRING8'   , 'Ward'
                        ,  'S_STRING9'   , 'Chadrid'
                        ,  'S_STRING10'  , 'Chadrnm'
                        ,  'S_STRING11'  , 'Gendrnm'
                        ,  'S_STRING12'  , 'Resno'
                        ,  'S_STRING13'  , 'Diagname'
                        ,  'S_STRING14'  , 'Birthdate'
                        ,  'S_STRING15'  , 'Printdate'
                        ,  'S_STRING16'  , 'Chartstat'
                        ,  'S_NAME1'     , 'Hospaddr'
                        ,  'S_NAME2'     , 'Cpattest'
                          ]
                          );

         rc :=  wk_o_tpsvc.RowCount;

         if rc < 1 then begin
            Exit;
         end;

         FsPatNo      := pv_Patno;
         FsAdmDate    := pv_Meddate;
         P_PreviewYn  := 'N';
         P_EMRPrintYn := 'N';
         P_EMRTitle   := pv_Patno                                        + '_' +
                         StringReplace(pv_Meddate,'-','',[rfReplaceAll]) + '_' +
                         '000000'                                        + '_' +
                         '1'                                             + '_' +
                         wk_o_tpsvc.GetOutputDataS('Meddept   ', 0)      + '_' +
                         wk_o_tpsvc.GetOutputDataS('Chadrid   ', 0)      + '_' +
                         pv_Reptid                                       + '_' ;
      finally
         FreeAndNil(wk_o_tpsvc);
      end;
   end;

   AutoScanPrint_New;
end;

initialization
   RegisterClass(TMDN110FW);

finalization
   UnRegisterClass(TMDN110FW);

end.
