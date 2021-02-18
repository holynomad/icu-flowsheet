{===============================================================================
   Program ID    : MDN110UX
   Program Name  : NICU ��ȣ����� - �ӻ�����ǥ
   Program Desc. : ICU ���� ��ȣ����� �ӻ�����ǥ�� ���� �뵵�� NICU�� sheet

   Author : Lee, Se-Ha
   Date   : 2011.12.08
===============================================================================}
unit MDN110UX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, ExtCtrls, Buttons, ComCtrls, MDCLASS1, AdvPanel, Grids,
  UltraGrid, Bianco_Panel, Printers, QRPrntr, QuickRpt, Qrctrls, Variants,
  // [EMR����] 2016.04.12 ȫâ�� �߰���(������). SComReport ������ ���� �߰�
  SComFunc,
  // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
  LoadEMRFunc,
  // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
  KUMC.Packet, KUMC.Json;

type
  TMDN110FX = class(TForm)
    stb_Message: TStatusBar;
    Panel2: TPanel;
    bbt_Close: TBitBtn;
    pn_Work: TPanel;
    Bevel4: TBevel;
    Label25: TLabel;
    sbt_DSave: TSpeedButton;
    sbt_DDelete: TSpeedButton;
    Bevel5: TBevel;
    Label22: TLabel;
    sbt_EDelete: TSpeedButton;
    sbt_ESave: TSpeedButton;
    Bevel6: TBevel;
    Label21: TLabel;
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
    ed_D_ChkNursName: TEdit;
    ed_D_ChkNursId: TEdit;
    med_D_ChkTime: TMaskEdit;
    ed_E_ChkNursName: TEdit;
    ed_E_ChkNursId: TEdit;
    med_E_ChkTime: TMaskEdit;
    ed_D_ChkDept: TEdit;
    ed_E_ChkDept: TEdit;
    ed_N_ChkNursName: TEdit;
    ed_N_ChkNursId: TEdit;
    med_N_ChkTime: TMaskEdit;
    ed_N_ChkDept: TEdit;
    scrlbx_QualityCheck: TScrollBox;
    Bevel48: TBevel;
    pn_DDetail01: TPanel;
    Bevel213: TBevel;
    Bevel220: TBevel;
    D_B0102_1: TCheckBox;
    D_B0103_1: TCheckBox;
    Panel11: TPanel;
    Bevel49: TBevel;
    Bevel50: TBevel;
    D_B0101_1: TRadioButton;
    D_B0101_2: TRadioButton;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel3: TPanel;
    Shape7: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dtp_ChkDate: TDateTimePicker;
    sbt_Next: TSpeedButton;
    sbt_Previous: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    pn_DDetail02: TPanel;
    Label15: TLabel;
    D_C0102_1: TEdit;
    Bevel1: TBevel;
    Panel8: TPanel;
    D_C0102_2: TMaskEdit;
    Panel5: TPanel;
    Label16: TLabel;
    D_C0102_3: TEdit;
    Bevel8: TBevel;
    Panel9: TPanel;
    Label17: TLabel;
    D_C0102_4: TEdit;
    Bevel9: TBevel;
    pn_DDetail03: TPanel;
    Label19: TLabel;
    Bevel11: TBevel;
    Label23: TLabel;
    Bevel12: TBevel;
    D_C0103_1: TEdit;
    Panel6: TPanel;
    D_C0103_2: TMaskEdit;
    Panel7: TPanel;
    D_C0103_3: TEdit;
    Bevel13: TBevel;
    Panel15: TPanel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    D_B0201_1: TRadioButton;
    D_B0201_2: TRadioButton;
    Panel17: TPanel;
    Panel18: TPanel;
    pn_DDetail04: TPanel;
    Panel19: TPanel;
    D_B0202_1: TMaskEdit;
    Label24: TLabel;
    Bevel17: TBevel;
    D_B0202_2: TEdit;
    Panel21: TPanel;
    Panel22: TPanel;
    Bevel20: TBevel;
    Panel25: TPanel;
    Panel26: TPanel;
    Bevel21: TBevel;
    D_B0302_1: TCheckBox;
    D_B0302_1E: TEdit;
    Bevel22: TBevel;
    Panel27: TPanel;
    Panel28: TPanel;
    pn_DDetail06: TPanel;
    Bevel26: TBevel;
    Panel30: TPanel;
    D_C0401_1: TEdit;
    Panel32: TPanel;
    D_C0403_1: TEdit;
    Panel33: TPanel;
    Panel34: TPanel;
    Bevel35: TBevel;
    D_C0404_1: TRadioButton;
    Bevel36: TBevel;
    D_C0404_2: TRadioButton;
    Bevel37: TBevel;
    Panel35: TPanel;
    Panel36: TPanel;
    Bevel38: TBevel;
    D_B0402_1: TCheckBox;
    D_B0402_1E: TEdit;
    Panel37: TPanel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    D_B0501_1: TRadioButton;
    D_B0501_2: TRadioButton;
    Panel38: TPanel;
    pn_DDetail07: TPanel;
    Bevel41: TBevel;
    D_B0504_1: TRadioButton;
    Bevel42: TBevel;
    D_B0504_2: TRadioButton;
    Bevel46: TBevel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Bevel47: TBevel;
    Bevel51: TBevel;
    D_B0601_1: TRadioButton;
    D_B0601_2: TRadioButton;
    Panel43: TPanel;
    pn_DDetail08: TPanel;
    Label27: TLabel;
    Bevel52: TBevel;
    Bevel53: TBevel;
    D_B0602_1: TMaskEdit;
    D_B0602_2: TEdit;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Bevel238: TBevel;
    D_B0603_1: TCheckBox;
    Bevel54: TBevel;
    D_B0603_2: TCheckBox;
    Bevel55: TBevel;
    D_B0603_3: TCheckBox;
    Bevel56: TBevel;
    D_B0603_4: TCheckBox;
    Bevel57: TBevel;
    Bevel58: TBevel;
    Bevel59: TBevel;
    Bevel60: TBevel;
    D_B0604_1: TCheckBox;
    Bevel61: TBevel;
    D_B0604_2: TCheckBox;
    Bevel62: TBevel;
    D_B0604_3: TCheckBox;
    Bevel63: TBevel;
    D_B0604_4: TCheckBox;
    Bevel64: TBevel;
    D_B0604_5: TCheckBox;
    Bevel65: TBevel;
    D_B0605_1: TCheckBox;
    Bevel66: TBevel;
    D_B0605_2: TCheckBox;
    Bevel67: TBevel;
    D_B0605_3: TCheckBox;
    Bevel68: TBevel;
    D_B0605_4: TCheckBox;
    Panel48: TPanel;
    Panel49: TPanel;
    Bevel69: TBevel;
    Bevel70: TBevel;
    D_B0606_1: TRadioButton;
    D_B0606_2: TRadioButton;
    Label28: TLabel;
    Bevel71: TBevel;
    D_B0606_3: TEdit;
    Bevel72: TBevel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    pn_DDetail12: TPanel;
    Label29: TLabel;
    Bevel75: TBevel;
    D_C0701_1: TCheckBox;
    D_C0701_2: TCheckBox;
    Label30: TLabel;
    pn_DDetail09: TPanel;
    Panel55: TPanel;
    D_C0701_3: TEdit;
    Panel56: TPanel;
    D_C0701_4: TEdit;
    Panel57: TPanel;
    D_C0701_5: TEdit;
    Panel58: TPanel;
    D_B0702_1: TEdit;
    Panel59: TPanel;
    Bevel76: TBevel;
    D_B0703_1: TCheckBox;
    Bevel77: TBevel;
    D_B0703_2: TCheckBox;
    Bevel78: TBevel;
    D_B0703_3: TCheckBox;
    Bevel79: TBevel;
    D_B0703_4: TCheckBox;
    Bevel80: TBevel;
    D_B0703_5: TCheckBox;
    D_B0703_5E: TEdit;
    Panel60: TPanel;
    Panel61: TPanel;
    Bevel82: TBevel;
    Bevel83: TBevel;
    D_B0704_1: TRadioButton;
    D_B0704_2: TRadioButton;
    Panel62: TPanel;
    Panel63: TPanel;
    Bevel81: TBevel;
    Bevel84: TBevel;
    Label31: TLabel;
    Bevel85: TBevel;
    D_B0705_1: TRadioButton;
    D_B0705_2: TRadioButton;
    D_B0705_3: TEdit;
    Bevel86: TBevel;
    Panel64: TPanel;
    Panel65: TPanel;
    Bevel87: TBevel;
    D_B0801_1: TCheckBox;
    Bevel88: TBevel;
    D_B0801_2: TCheckBox;
    Bevel89: TBevel;
    D_B0801_3: TCheckBox;
    Bevel90: TBevel;
    lb_PatNo: TLabel;
    lb_PatName: TLabel;
    lb_Sex: TLabel;
    lb_Age: TLabel;
    lb_RoomNo: TLabel;
    AdvPanel1: TAdvPanel;
    Memo1: TMemo;
    Panel174: TPanel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    D_B0401_1: TRadioButton;
    D_B0401_3: TRadioButton;
    D_B0401_3E: TEdit;
    D_B0401_4: TRadioButton;
    D_B0401_4E: TEdit;
    sbt_CalcIntube: TSpeedButton;
    Panel20: TPanel;
    Panel93: TPanel;
    Bevel277: TBevel;
    Label56: TLabel;
    Bevel278: TBevel;
    Bevel279: TBevel;
    Bevel280: TBevel;
    D_B0502_1: TMaskEdit;
    D_B0502_2: TEdit;
    D_B0503_1: TCheckBox;
    D_B0503_2: TCheckBox;
    Bevel281: TBevel;
    D_B0503_3: TCheckBox;
    Bevel282: TBevel;
    D_B0503_4: TCheckBox;
    Panel54: TPanel;
    Panel127: TPanel;
    Panel162: TPanel;
    Bevel298: TBevel;
    Bevel299: TBevel;
    D_B0505_1: TRadioButton;
    D_B0505_2: TRadioButton;
    Panel177: TPanel;
    pn_DDetail10: TPanel;
    Bevel305: TBevel;
    Label60: TLabel;
    Bevel306: TBevel;
    Bevel308: TBevel;
    Bevel309: TBevel;
    Bevel312: TBevel;
    Bevel313: TBevel;
    D_B0506_1: TMaskEdit;
    D_B0506_2: TEdit;
    D_B0507_1: TCheckBox;
    D_B0507_2: TCheckBox;
    D_B0507_3: TCheckBox;
    D_B0507_4: TCheckBox;
    Panel189: TPanel;
    Panel190: TPanel;
    bbt_Print: TBitBtn;
    Bevel10: TBevel;
    D_B0202_3: TEdit;
    Panel1: TPanel;
    Bevel14: TBevel;
    Panel4: TPanel;
    Bevel18: TBevel;
    Bevel19: TBevel;
    D_B0301_1: TRadioButton;
    D_B0301_2: TRadioButton;
    Bevel295: TBevel;
    Bevel25: TBevel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    D_B0607_1: TCheckBox;
    D_B0607_2: TCheckBox;
    D_B0607_3: TCheckBox;
    D_B0607_4: TCheckBox;
    Panel10: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    Bevel32: TBevel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel29: TPanel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    D_B0609_1: TRadioButton;
    D_B0609_2: TRadioButton;
    Panel31: TPanel;
    pn_DDetail11: TPanel;
    Bevel92: TBevel;
    Label1: TLabel;
    Bevel93: TBevel;
    Bevel94: TBevel;
    Bevel95: TBevel;
    Bevel96: TBevel;
    Bevel97: TBevel;
    Bevel98: TBevel;
    Bevel99: TBevel;
    Bevel100: TBevel;
    Bevel101: TBevel;
    Bevel102: TBevel;
    Bevel103: TBevel;
    Bevel104: TBevel;
    Bevel105: TBevel;
    Bevel106: TBevel;
    Bevel107: TBevel;
    Bevel108: TBevel;
    Bevel109: TBevel;
    Bevel110: TBevel;
    Bevel111: TBevel;
    Bevel112: TBevel;
    Bevel113: TBevel;
    D_B0610_1: TMaskEdit;
    D_B0610_2: TEdit;
    D_B0611_1: TCheckBox;
    D_B0611_2: TCheckBox;
    D_B0611_3: TCheckBox;
    D_B0611_4: TCheckBox;
    D_B0611_5: TCheckBox;
    D_B0611_6: TCheckBox;
    D_B0614_1: TCheckBox;
    D_B0614_2: TCheckBox;
    D_B0615_1: TCheckBox;
    D_B0615_2: TCheckBox;
    D_B0615_3: TCheckBox;
    D_B0617_1: TCheckBox;
    D_B0617_2: TCheckBox;
    D_B0617_3: TCheckBox;
    D_B0617_4: TCheckBox;
    Panel44: TPanel;
    Bevel114: TBevel;
    Bevel115: TBevel;
    Label18: TLabel;
    Bevel116: TBevel;
    D_B0616_1: TRadioButton;
    D_B0616_2: TRadioButton;
    D_B0616_3: TEdit;
    D_B0612_1: TCheckBox;
    D_B0612_2: TCheckBox;
    D_B0612_3: TCheckBox;
    D_B0612_4: TCheckBox;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    D_B0608_1: TEdit;
    D_B0613_1: TEdit;
    Bevel91: TBevel;
    Bevel117: TBevel;
    Bevel118: TBevel;
    Bevel119: TBevel;
    pn_EDetail01: TPanel;
    Bevel121: TBevel;
    Bevel122: TBevel;
    E_B0102_1: TCheckBox;
    E_B0103_1: TCheckBox;
    pn_EDetail02: TPanel;
    Bevel123: TBevel;
    Bevel124: TBevel;
    Bevel125: TBevel;
    Label20: TLabel;
    Label26: TLabel;
    Label32: TLabel;
    E_C0102_1: TEdit;
    Panel73: TPanel;
    E_C0102_2: TMaskEdit;
    Panel74: TPanel;
    E_C0102_3: TEdit;
    Panel75: TPanel;
    E_C0102_4: TEdit;
    pn_EDetail03: TPanel;
    Bevel126: TBevel;
    Bevel127: TBevel;
    Label33: TLabel;
    Label34: TLabel;
    Bevel128: TBevel;
    E_C0103_1: TEdit;
    Panel77: TPanel;
    E_C0103_2: TMaskEdit;
    Panel78: TPanel;
    E_C0103_3: TEdit;
    Panel79: TPanel;
    Bevel129: TBevel;
    Bevel130: TBevel;
    E_B0101_1: TRadioButton;
    E_B0101_2: TRadioButton;
    Panel80: TPanel;
    Panel81: TPanel;
    Panel82: TPanel;
    Bevel131: TBevel;
    Bevel132: TBevel;
    E_B0201_1: TRadioButton;
    E_B0201_2: TRadioButton;
    Panel83: TPanel;
    Panel84: TPanel;
    pn_EDetail04: TPanel;
    Bevel133: TBevel;
    Label35: TLabel;
    Bevel134: TBevel;
    Panel86: TPanel;
    E_B0202_1: TMaskEdit;
    E_B0202_2: TEdit;
    Panel87: TPanel;
    Panel88: TPanel;
    Bevel135: TBevel;
    E_B0202_3: TEdit;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    E_B0302_1: TCheckBox;
    E_B0302_1E: TEdit;
    Panel99: TPanel;
    Bevel142: TBevel;
    Bevel143: TBevel;
    E_B0301_1: TRadioButton;
    E_B0301_2: TRadioButton;
    Bevel120: TBevel;
    Bevel136: TBevel;
    Bevel137: TBevel;
    Panel92: TPanel;
    Panel94: TPanel;
    pn_EDetail06: TPanel;
    E_C0401_1: TEdit;
    E_C0403_1: TEdit;
    Panel96: TPanel;
    Bevel138: TBevel;
    Bevel139: TBevel;
    E_C0404_1: TRadioButton;
    E_C0404_2: TRadioButton;
    Panel97: TPanel;
    Panel98: TPanel;
    Panel100: TPanel;
    Panel101: TPanel;
    Panel102: TPanel;
    E_B0402_1: TCheckBox;
    E_B0402_1E: TEdit;
    Panel103: TPanel;
    Bevel140: TBevel;
    Bevel141: TBevel;
    E_B0501_1: TRadioButton;
    E_B0501_2: TRadioButton;
    Panel104: TPanel;
    Bevel149: TBevel;
    Label36: TLabel;
    Bevel150: TBevel;
    Bevel151: TBevel;
    Bevel152: TBevel;
    Bevel153: TBevel;
    Bevel154: TBevel;
    E_B0502_1: TMaskEdit;
    E_B0502_2: TEdit;
    E_B0503_1: TCheckBox;
    E_B0503_2: TCheckBox;
    E_B0503_3: TCheckBox;
    E_B0503_4: TCheckBox;
    Panel106: TPanel;
    Bevel155: TBevel;
    Bevel156: TBevel;
    Bevel157: TBevel;
    Bevel158: TBevel;
    E_B0401_1: TRadioButton;
    E_B0401_3: TRadioButton;
    E_B0401_3E: TEdit;
    E_B0401_4: TRadioButton;
    E_B0401_4E: TEdit;
    Panel107: TPanel;
    Panel108: TPanel;
    Bevel159: TBevel;
    Bevel160: TBevel;
    Panel109: TPanel;
    Panel110: TPanel;
    Panel111: TPanel;
    Bevel161: TBevel;
    Bevel162: TBevel;
    E_B0601_1: TRadioButton;
    E_B0601_2: TRadioButton;
    Panel112: TPanel;
    pn_EDetail08: TPanel;
    Bevel163: TBevel;
    Label37: TLabel;
    Bevel164: TBevel;
    Bevel165: TBevel;
    Bevel166: TBevel;
    Bevel167: TBevel;
    Bevel168: TBevel;
    Bevel169: TBevel;
    Bevel170: TBevel;
    Bevel171: TBevel;
    Bevel172: TBevel;
    Bevel173: TBevel;
    Bevel174: TBevel;
    Bevel175: TBevel;
    Bevel176: TBevel;
    Bevel177: TBevel;
    Bevel178: TBevel;
    Bevel179: TBevel;
    Bevel180: TBevel;
    Bevel181: TBevel;
    Bevel182: TBevel;
    Bevel183: TBevel;
    Bevel184: TBevel;
    E_B0602_1: TMaskEdit;
    E_B0602_2: TEdit;
    E_B0603_1: TCheckBox;
    E_B0603_2: TCheckBox;
    E_B0603_3: TCheckBox;
    E_B0603_4: TCheckBox;
    E_B0604_1: TCheckBox;
    E_B0604_2: TCheckBox;
    E_B0604_3: TCheckBox;
    E_B0604_4: TCheckBox;
    E_B0604_5: TCheckBox;
    E_B0605_1: TCheckBox;
    E_B0605_2: TCheckBox;
    E_B0605_3: TCheckBox;
    E_B0605_4: TCheckBox;
    Panel114: TPanel;
    Bevel185: TBevel;
    Bevel186: TBevel;
    Label38: TLabel;
    Bevel187: TBevel;
    E_B0606_1: TRadioButton;
    E_B0606_2: TRadioButton;
    E_B0606_3: TEdit;
    E_B0607_1: TCheckBox;
    E_B0607_2: TCheckBox;
    E_B0607_3: TCheckBox;
    E_B0607_4: TCheckBox;
    E_B0608_1: TEdit;
    Panel115: TPanel;
    Panel116: TPanel;
    Panel117: TPanel;
    Panel118: TPanel;
    Panel119: TPanel;
    Panel120: TPanel;
    Panel121: TPanel;
    Bevel188: TBevel;
    Bevel189: TBevel;
    E_B0505_1: TRadioButton;
    E_B0505_2: TRadioButton;
    Panel122: TPanel;
    pn_EDetail10: TPanel;
    Bevel195: TBevel;
    Label39: TLabel;
    Bevel196: TBevel;
    Bevel197: TBevel;
    Bevel198: TBevel;
    Bevel199: TBevel;
    Bevel200: TBevel;
    E_B0506_1: TMaskEdit;
    E_B0506_2: TEdit;
    E_B0507_1: TCheckBox;
    E_B0507_2: TCheckBox;
    E_B0507_3: TCheckBox;
    E_B0507_4: TCheckBox;
    Panel124: TPanel;
    Panel125: TPanel;
    Panel126: TPanel;
    Panel128: TPanel;
    Panel129: TPanel;
    Bevel201: TBevel;
    Panel130: TPanel;
    Panel131: TPanel;
    Panel132: TPanel;
    Bevel202: TBevel;
    Bevel203: TBevel;
    E_B0609_1: TRadioButton;
    E_B0609_2: TRadioButton;
    Panel133: TPanel;
    pn_EDetail11: TPanel;
    Bevel204: TBevel;
    Label40: TLabel;
    Bevel205: TBevel;
    Bevel206: TBevel;
    Bevel207: TBevel;
    Bevel208: TBevel;
    Bevel209: TBevel;
    Bevel210: TBevel;
    Bevel211: TBevel;
    Bevel212: TBevel;
    Bevel214: TBevel;
    Bevel215: TBevel;
    Bevel216: TBevel;
    Bevel217: TBevel;
    Bevel218: TBevel;
    Bevel219: TBevel;
    Bevel221: TBevel;
    Bevel222: TBevel;
    Bevel223: TBevel;
    Bevel224: TBevel;
    Bevel225: TBevel;
    Bevel226: TBevel;
    Bevel227: TBevel;
    E_B0610_1: TMaskEdit;
    E_B0610_2: TEdit;
    E_B0611_1: TCheckBox;
    E_B0611_2: TCheckBox;
    E_B0611_3: TCheckBox;
    E_B0611_4: TCheckBox;
    E_B0611_5: TCheckBox;
    E_B0611_6: TCheckBox;
    E_B0614_1: TCheckBox;
    E_B0614_2: TCheckBox;
    E_B0615_1: TCheckBox;
    E_B0615_2: TCheckBox;
    E_B0615_3: TCheckBox;
    E_B0617_1: TCheckBox;
    E_B0617_2: TCheckBox;
    E_B0617_3: TCheckBox;
    E_B0617_4: TCheckBox;
    Panel135: TPanel;
    Bevel228: TBevel;
    Bevel229: TBevel;
    Label41: TLabel;
    Bevel230: TBevel;
    E_B0616_1: TRadioButton;
    E_B0616_2: TRadioButton;
    E_B0616_3: TEdit;
    E_B0612_1: TCheckBox;
    E_B0612_2: TCheckBox;
    E_B0612_3: TCheckBox;
    E_B0612_4: TCheckBox;
    E_B0613_1: TEdit;
    Panel136: TPanel;
    Panel137: TPanel;
    Panel138: TPanel;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel141: TPanel;
    Panel142: TPanel;
    Bevel231: TBevel;
    Bevel232: TBevel;
    Bevel233: TBevel;
    Bevel234: TBevel;
    Bevel235: TBevel;
    Bevel236: TBevel;
    Panel143: TPanel;
    Panel144: TPanel;
    Panel145: TPanel;
    pn_EDetail12: TPanel;
    Bevel243: TBevel;
    Label42: TLabel;
    Label43: TLabel;
    E_C0701_1: TCheckBox;
    E_C0701_2: TCheckBox;
    pn_EDetail09: TPanel;
    Panel148: TPanel;
    E_C0701_3: TEdit;
    Panel149: TPanel;
    E_C0701_4: TEdit;
    Panel150: TPanel;
    E_C0701_5: TEdit;
    Panel151: TPanel;
    E_B0702_1: TEdit;
    Panel152: TPanel;
    E_B0703_1: TCheckBox;
    E_B0703_2: TCheckBox;
    E_B0703_3: TCheckBox;
    E_B0703_4: TCheckBox;
    E_B0703_5: TCheckBox;
    E_B0703_5E: TEdit;
    Panel153: TPanel;
    Panel154: TPanel;
    Bevel244: TBevel;
    Bevel245: TBevel;
    E_B0704_1: TRadioButton;
    E_B0704_2: TRadioButton;
    Panel155: TPanel;
    Panel156: TPanel;
    Bevel246: TBevel;
    Bevel247: TBevel;
    Label44: TLabel;
    Bevel248: TBevel;
    E_B0705_1: TRadioButton;
    E_B0705_2: TRadioButton;
    E_B0705_3: TEdit;
    Bevel237: TBevel;
    Bevel239: TBevel;
    Bevel240: TBevel;
    Bevel241: TBevel;
    Panel157: TPanel;
    Panel158: TPanel;
    E_B0801_1: TCheckBox;
    E_B0801_2: TCheckBox;
    E_B0801_3: TCheckBox;
    pn_EDetail07: TPanel;
    Bevel251: TBevel;
    Bevel252: TBevel;
    Bevel253: TBevel;
    Bevel254: TBevel;
    pn_NDetail01: TPanel;
    Bevel255: TBevel;
    Bevel256: TBevel;
    N_B0102_1: TCheckBox;
    N_B0103_1: TCheckBox;
    pn_NDetail02: TPanel;
    Bevel257: TBevel;
    Bevel258: TBevel;
    Bevel259: TBevel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    N_C0102_1: TEdit;
    Panel76: TPanel;
    N_C0102_2: TMaskEdit;
    Panel85: TPanel;
    N_C0102_3: TEdit;
    Panel95: TPanel;
    N_C0102_4: TEdit;
    pn_NDetail03: TPanel;
    Bevel260: TBevel;
    Bevel261: TBevel;
    Label48: TLabel;
    Label49: TLabel;
    Bevel262: TBevel;
    N_C0103_1: TEdit;
    Panel113: TPanel;
    N_C0103_2: TMaskEdit;
    Panel123: TPanel;
    N_C0103_3: TEdit;
    Panel134: TPanel;
    Bevel263: TBevel;
    Bevel264: TBevel;
    N_B0101_1: TRadioButton;
    N_B0101_2: TRadioButton;
    Panel146: TPanel;
    Panel147: TPanel;
    Panel159: TPanel;
    Bevel265: TBevel;
    Bevel266: TBevel;
    N_B0201_1: TRadioButton;
    N_B0201_2: TRadioButton;
    Panel160: TPanel;
    Panel161: TPanel;
    pn_NDetail04: TPanel;
    Bevel267: TBevel;
    Label50: TLabel;
    Bevel268: TBevel;
    Panel164: TPanel;
    N_B0202_1: TMaskEdit;
    N_B0202_2: TEdit;
    Panel165: TPanel;
    Panel166: TPanel;
    Bevel269: TBevel;
    N_B0202_3: TEdit;
    Panel167: TPanel;
    Panel168: TPanel;
    Panel169: TPanel;
    N_B0302_1: TCheckBox;
    N_B0302_1E: TEdit;
    Panel170: TPanel;
    Bevel270: TBevel;
    Bevel271: TBevel;
    N_B0301_1: TRadioButton;
    N_B0301_2: TRadioButton;
    Bevel272: TBevel;
    Bevel273: TBevel;
    Bevel274: TBevel;
    Panel171: TPanel;
    Panel172: TPanel;
    pn_NDetail06: TPanel;
    N_C0401_1: TEdit;
    N_C0403_1: TEdit;
    Panel175: TPanel;
    Bevel275: TBevel;
    Bevel276: TBevel;
    N_C0404_1: TRadioButton;
    N_C0404_2: TRadioButton;
    Panel176: TPanel;
    Panel178: TPanel;
    Panel179: TPanel;
    Panel180: TPanel;
    Panel181: TPanel;
    N_B0402_1: TCheckBox;
    N_B0402_1E: TEdit;
    Panel182: TPanel;
    Bevel283: TBevel;
    Bevel284: TBevel;
    N_B0501_1: TRadioButton;
    N_B0501_2: TRadioButton;
    Panel183: TPanel;
    pn_NDetail07: TPanel;
    Bevel290: TBevel;
    Label51: TLabel;
    Bevel291: TBevel;
    Bevel292: TBevel;
    Bevel293: TBevel;
    Bevel294: TBevel;
    Bevel296: TBevel;
    N_B0502_1: TMaskEdit;
    N_B0502_2: TEdit;
    N_B0503_1: TCheckBox;
    N_B0503_2: TCheckBox;
    N_B0503_3: TCheckBox;
    N_B0503_4: TCheckBox;
    Panel185: TPanel;
    Bevel297: TBevel;
    Bevel307: TBevel;
    Bevel310: TBevel;
    Bevel311: TBevel;
    N_B0401_1: TRadioButton;
    N_B0401_3: TRadioButton;
    N_B0401_3E: TEdit;
    N_B0401_4: TRadioButton;
    N_B0401_4E: TEdit;
    Panel186: TPanel;
    Panel187: TPanel;
    Bevel314: TBevel;
    Panel188: TPanel;
    Panel191: TPanel;
    Panel192: TPanel;
    Bevel315: TBevel;
    Bevel316: TBevel;
    N_B0505_1: TRadioButton;
    N_B0505_2: TRadioButton;
    Panel193: TPanel;
    pn_NDetail10: TPanel;
    Bevel322: TBevel;
    Label52: TLabel;
    Bevel323: TBevel;
    Bevel324: TBevel;
    Bevel325: TBevel;
    Bevel326: TBevel;
    Bevel327: TBevel;
    N_B0506_1: TMaskEdit;
    N_B0506_2: TEdit;
    N_B0507_1: TCheckBox;
    N_B0507_2: TCheckBox;
    N_B0507_3: TCheckBox;
    N_B0507_4: TCheckBox;
    Panel195: TPanel;
    Panel196: TPanel;
    Bevel328: TBevel;
    Panel197: TPanel;
    Panel198: TPanel;
    Panel199: TPanel;
    Bevel329: TBevel;
    Bevel330: TBevel;
    N_B0601_1: TRadioButton;
    N_B0601_2: TRadioButton;
    Panel200: TPanel;
    pn_NDetail08: TPanel;
    Bevel331: TBevel;
    Label53: TLabel;
    Bevel332: TBevel;
    Bevel333: TBevel;
    Bevel334: TBevel;
    Bevel335: TBevel;
    Bevel336: TBevel;
    Bevel337: TBevel;
    Bevel338: TBevel;
    Bevel339: TBevel;
    Bevel340: TBevel;
    Bevel341: TBevel;
    Bevel342: TBevel;
    Bevel343: TBevel;
    Bevel344: TBevel;
    Bevel345: TBevel;
    Bevel346: TBevel;
    Bevel347: TBevel;
    Bevel348: TBevel;
    Bevel349: TBevel;
    Bevel350: TBevel;
    Bevel351: TBevel;
    Bevel352: TBevel;
    N_B0602_1: TMaskEdit;
    N_B0602_2: TEdit;
    N_B0603_1: TCheckBox;
    N_B0603_2: TCheckBox;
    N_B0603_3: TCheckBox;
    N_B0603_4: TCheckBox;
    N_B0604_1: TCheckBox;
    N_B0604_2: TCheckBox;
    N_B0604_3: TCheckBox;
    N_B0604_4: TCheckBox;
    N_B0604_5: TCheckBox;
    N_B0605_1: TCheckBox;
    N_B0605_2: TCheckBox;
    N_B0605_3: TCheckBox;
    N_B0605_4: TCheckBox;
    Panel202: TPanel;
    Bevel353: TBevel;
    Bevel354: TBevel;
    Label54: TLabel;
    Bevel355: TBevel;
    N_B0606_1: TRadioButton;
    N_B0606_2: TRadioButton;
    N_B0606_3: TEdit;
    N_B0607_1: TCheckBox;
    N_B0607_2: TCheckBox;
    N_B0607_3: TCheckBox;
    N_B0607_4: TCheckBox;
    N_B0608_1: TEdit;
    Panel203: TPanel;
    Panel204: TPanel;
    Panel205: TPanel;
    Panel206: TPanel;
    Panel207: TPanel;
    Panel208: TPanel;
    Panel209: TPanel;
    Bevel356: TBevel;
    Panel210: TPanel;
    Panel211: TPanel;
    Panel212: TPanel;
    Bevel357: TBevel;
    Bevel358: TBevel;
    N_B0609_1: TRadioButton;
    N_B0609_2: TRadioButton;
    Panel213: TPanel;
    pn_NDetail11: TPanel;
    Bevel359: TBevel;
    Label55: TLabel;
    Bevel360: TBevel;
    Bevel361: TBevel;
    Bevel362: TBevel;
    Bevel363: TBevel;
    Bevel364: TBevel;
    Bevel365: TBevel;
    Bevel366: TBevel;
    Bevel367: TBevel;
    Bevel368: TBevel;
    Bevel369: TBevel;
    Bevel370: TBevel;
    Bevel371: TBevel;
    Bevel372: TBevel;
    Bevel373: TBevel;
    Bevel374: TBevel;
    Bevel375: TBevel;
    Bevel376: TBevel;
    Bevel377: TBevel;
    Bevel378: TBevel;
    Bevel379: TBevel;
    Bevel380: TBevel;
    N_B0610_1: TMaskEdit;
    N_B0610_2: TEdit;
    N_B0611_1: TCheckBox;
    N_B0611_2: TCheckBox;
    N_B0611_3: TCheckBox;
    N_B0611_4: TCheckBox;
    N_B0611_5: TCheckBox;
    N_B0611_6: TCheckBox;
    N_B0614_1: TCheckBox;
    N_B0614_2: TCheckBox;
    N_B0615_1: TCheckBox;
    N_B0615_2: TCheckBox;
    N_B0615_3: TCheckBox;
    N_B0617_1: TCheckBox;
    N_B0617_2: TCheckBox;
    N_B0617_3: TCheckBox;
    N_B0617_4: TCheckBox;
    Panel215: TPanel;
    Bevel381: TBevel;
    Bevel382: TBevel;
    Label57: TLabel;
    Bevel383: TBevel;
    N_B0616_1: TRadioButton;
    N_B0616_2: TRadioButton;
    N_B0616_3: TEdit;
    N_B0612_1: TCheckBox;
    N_B0612_2: TCheckBox;
    N_B0612_3: TCheckBox;
    N_B0612_4: TCheckBox;
    N_B0613_1: TEdit;
    Panel216: TPanel;
    Panel217: TPanel;
    Panel218: TPanel;
    Panel219: TPanel;
    Panel220: TPanel;
    Panel221: TPanel;
    Panel222: TPanel;
    Bevel384: TBevel;
    Bevel385: TBevel;
    Bevel386: TBevel;
    Bevel387: TBevel;
    Bevel388: TBevel;
    Bevel389: TBevel;
    Panel223: TPanel;
    Panel224: TPanel;
    Panel225: TPanel;
    pn_NDetail12: TPanel;
    Bevel390: TBevel;
    Label58: TLabel;
    Label61: TLabel;
    N_C0701_1: TCheckBox;
    N_C0701_2: TCheckBox;
    pn_NDetail09: TPanel;
    Panel228: TPanel;
    N_C0701_3: TEdit;
    Panel229: TPanel;
    N_C0701_4: TEdit;
    Panel230: TPanel;
    N_C0701_5: TEdit;
    Panel231: TPanel;
    N_B0702_1: TEdit;
    Panel232: TPanel;
    N_B0703_1: TCheckBox;
    N_B0703_2: TCheckBox;
    N_B0703_3: TCheckBox;
    N_B0703_4: TCheckBox;
    N_B0703_5: TCheckBox;
    N_B0703_5E: TEdit;
    Panel233: TPanel;
    Panel234: TPanel;
    Bevel391: TBevel;
    Bevel392: TBevel;
    N_B0704_1: TRadioButton;
    N_B0704_2: TRadioButton;
    Panel235: TPanel;
    Panel236: TPanel;
    Bevel393: TBevel;
    Bevel394: TBevel;
    Label62: TLabel;
    Bevel395: TBevel;
    N_B0705_1: TRadioButton;
    N_B0705_2: TRadioButton;
    N_B0705_3: TEdit;
    Bevel398: TBevel;
    Bevel399: TBevel;
    Bevel400: TBevel;
    Bevel401: TBevel;
    Panel237: TPanel;
    Panel238: TPanel;
    N_B0801_1: TCheckBox;
    N_B0801_2: TCheckBox;
    N_B0801_3: TCheckBox;
    bpn_Add: TBiancoPanel;
    Shape8: TShape;
    Label59: TLabel;
    bbt_Cancel: TBitBtn;
    ugd_AddList: TUltraGrid;
    dtp_Fromadd: TDateTimePicker;
    bbt_Add: TBitBtn;
    D_B0611_7: TCheckBox;
    E_B0611_7: TCheckBox;
    N_B0611_7: TCheckBox;
    D_B0801_4: TCheckBox;
    D_B0801_4E: TEdit;
    Bevel242: TBevel;
    E_B0801_4: TCheckBox;
    E_B0801_4E: TEdit;
    Bevel402: TBevel;
    N_B0801_4: TCheckBox;
    N_B0801_4E: TEdit;
    pn_DDetail13: TPanel;
    Bevel43: TBevel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    Bevel403: TBevel;
    D_C0504_1: TCheckBox;
    D_C0504_2: TCheckBox;
    D_C0504_3: TCheckBox;
    D_C0504_4: TCheckBox;
    Bevel144: TBevel;
    Bevel145: TBevel;
    E_B0504_1: TRadioButton;
    E_B0504_2: TRadioButton;
    pn_EDetail13: TPanel;
    Bevel146: TBevel;
    Bevel147: TBevel;
    Bevel148: TBevel;
    Bevel404: TBevel;
    E_C0504_1: TCheckBox;
    E_C0504_2: TCheckBox;
    E_C0504_3: TCheckBox;
    E_C0504_4: TCheckBox;
    Bevel285: TBevel;
    Bevel286: TBevel;
    N_B0504_1: TRadioButton;
    N_B0504_2: TRadioButton;
    Bevel287: TBevel;
    Bevel288: TBevel;
    Bevel289: TBevel;
    Bevel405: TBevel;
    N_C0504_1: TCheckBox;
    N_C0504_2: TCheckBox;
    N_C0504_3: TCheckBox;
    N_C0504_4: TCheckBox;
    pn_NDetail13: TPanel;
    Bevel300: TBevel;
    Bevel301: TBevel;
    D_B0508_1: TRadioButton;
    D_B0508_2: TRadioButton;
    pn_DDetail14: TPanel;
    Bevel302: TBevel;
    Bevel303: TBevel;
    Bevel304: TBevel;
    Bevel406: TBevel;
    D_C0508_1: TCheckBox;
    D_C0508_2: TCheckBox;
    D_C0508_3: TCheckBox;
    D_C0508_4: TCheckBox;
    Bevel190: TBevel;
    Bevel191: TBevel;
    E_B0508_1: TRadioButton;
    E_B0508_2: TRadioButton;
    pn_EDetail14: TPanel;
    Bevel192: TBevel;
    Bevel193: TBevel;
    Bevel194: TBevel;
    Bevel407: TBevel;
    E_C0508_1: TCheckBox;
    E_C0508_2: TCheckBox;
    E_C0508_3: TCheckBox;
    E_C0508_4: TCheckBox;
    Bevel317: TBevel;
    Bevel318: TBevel;
    N_B0508_1: TRadioButton;
    N_B0508_2: TRadioButton;
    pn_NDetail14: TPanel;
    Bevel319: TBevel;
    Bevel320: TBevel;
    Bevel321: TBevel;
    Bevel408: TBevel;
    N_C0508_1: TCheckBox;
    N_C0508_2: TCheckBox;
    N_C0508_3: TCheckBox;
    N_C0508_4: TCheckBox;
    D_B0603_5: TCheckBox;
    D_B0603_6: TCheckBox;
    D_B0603_7: TCheckBox;
    E_B0603_5: TCheckBox;
    E_B0603_6: TCheckBox;
    E_B0603_7: TCheckBox;
    N_B0603_5: TCheckBox;
    N_B0603_6: TCheckBox;
    N_B0603_7: TCheckBox;
    Panel39: TPanel;
    Bevel73: TBevel;
    Bevel74: TBevel;
    D_B0701_1: TRadioButton;
    D_B0701_2: TRadioButton;
    Panel53: TPanel;
    Bevel249: TBevel;
    Bevel250: TBevel;
    E_B0701_1: TRadioButton;
    E_B0701_2: TRadioButton;
    Panel105: TPanel;
    Bevel396: TBevel;
    Bevel397: TBevel;
    N_B0701_1: TRadioButton;
    N_B0701_2: TRadioButton;
    pn_EmrList: TPanel;
    Panel163: TPanel;
    Panel173: TPanel;
    bbt_Ok: TBitBtn;
    bbt_ListExit: TBitBtn;
    bbt_Select: TBitBtn;
    Panel184: TPanel;
    ugd_EmrList: TUltraGrid;
    sbt_DCopy: TSpeedButton;
    sbt_ECopy: TSpeedButton;
    sbt_NCopy: TSpeedButton;
    lb_Birtdate: TLabel;
    lb_Deptnm: TLabel;
    bt_print: TButton;
    bbt_ToNrRecordD: TBitBtn;
    bbt_ToNrRecordE: TBitBtn;
    bbt_ToNrRecordN: TBitBtn;

    // Event Handler -----------------------------------------------------------
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure scrlbx_QualityCheckMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure scrlbx_QualityCheckMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure sbt_DSaveClick(Sender: TObject);
    procedure sbt_ESaveClick(Sender: TObject);
    procedure sbt_NSaveClick(Sender: TObject);
    procedure ed_D_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_E_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_N_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbt_PreviousClick(Sender: TObject);
    procedure sbt_NextClick(Sender: TObject);
    procedure dtp_ChkDateCloseUp(Sender: TObject);
    procedure sbt_DDeleteClick(Sender: TObject);
    procedure sbt_EDeleteClick(Sender: TObject);
    procedure sbt_NDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure D_B0101_1Click(Sender: TObject);
    procedure D_B0102_1Click(Sender: TObject);
    procedure D_B0103_1Click(Sender: TObject);
    procedure D_B0201_1Click(Sender: TObject);
    procedure D_B0401_1Click(Sender: TObject);
    procedure D_B0402_1Click(Sender: TObject);
    procedure D_B0501_1Click(Sender: TObject);
    procedure D_B0601_1Click(Sender: TObject);
    procedure D_B0701_1Click(Sender: TObject);
    procedure D_B0703_5Click(Sender: TObject);
    procedure D_C0102_2Exit(Sender: TObject);
    procedure sbt_CalcIntubeClick(Sender: TObject);
    procedure D_B0702_1Click(Sender: TObject);
    procedure D_C0102_2Click(Sender: TObject);
    procedure bbt_CancelClick(Sender: TObject);
    procedure dtp_FromaddChange(Sender: TObject);
    procedure dtp_FromaddCloseUp(Sender: TObject);
    procedure bbt_AddClick(Sender: TObject);
    procedure E_B0302_1EClick(Sender: TObject);
    procedure ugd_AddListDblClick(Sender: TObject);
    procedure D_B0505_1Click(Sender: TObject);
    procedure D_B0607_1Click(Sender: TObject);
    procedure D_B0401_4EClick(Sender: TObject);
    procedure bbt_PrintClick(Sender: TObject);
    procedure D_B0302_1Click(Sender: TObject);
    procedure D_B0301_1Click(Sender: TObject);
    procedure D_B0609_1Click(Sender: TObject);
    procedure E_B0101_1Click(Sender: TObject);
    procedure E_B0102_1Click(Sender: TObject);
    procedure E_B0103_1Click(Sender: TObject);
    procedure E_B0201_1Click(Sender: TObject);
    procedure E_B0301_1Click(Sender: TObject);
    procedure E_B0302_1Click(Sender: TObject);
    procedure E_B0401_1Click(Sender: TObject);
    procedure E_B0501_1Click(Sender: TObject);
    procedure E_B0505_1Click(Sender: TObject);
    procedure E_B0601_1Click(Sender: TObject);
    procedure E_B0609_1Click(Sender: TObject);
    procedure E_B0701_1Click(Sender: TObject);
    procedure N_B0101_1Click(Sender: TObject);
    procedure N_B0102_1Click(Sender: TObject);
    procedure N_B0103_1Click(Sender: TObject);
    procedure N_B0201_1Click(Sender: TObject);
    procedure N_B0301_1Click(Sender: TObject);
    procedure N_B0302_1Click(Sender: TObject);
    procedure N_B0401_1Click(Sender: TObject);
    procedure E_B0402_1Click(Sender: TObject);
    procedure N_B0402_1Click(Sender: TObject);
    procedure N_B0501_1Click(Sender: TObject);
    procedure N_B0505_1Click(Sender: TObject);
    procedure N_B0601_1Click(Sender: TObject);
    procedure N_B0609_1Click(Sender: TObject);
    procedure N_B0701_1Click(Sender: TObject);
    procedure D_B0801_4Click(Sender: TObject);
    procedure E_B0801_4Click(Sender: TObject);
    procedure N_B0801_4Click(Sender: TObject);
    procedure D_B0504_1Click(Sender: TObject);
    procedure E_B0504_1Click(Sender: TObject);
    procedure N_B0504_1Click(Sender: TObject);
    procedure D_B0508_1Click(Sender: TObject);
    procedure E_B0508_1Click(Sender: TObject);
    procedure N_B0508_1Click(Sender: TObject);
    procedure E_B0703_5Click(Sender: TObject);
    procedure N_B0703_5Click(Sender: TObject);
    procedure bbt_SelectClick(Sender: TObject);
    procedure bbt_OkClick(Sender: TObject);
    procedure sbt_DCopyClick(Sender: TObject);
    procedure sbt_ECopyClick(Sender: TObject);
    procedure sbt_NCopyClick(Sender: TObject);
    procedure D_B0401_3EClick(Sender: TObject);
    procedure bt_printClick(Sender: TObject);
    procedure bbt_ToNrRecordDClick(Sender: TObject);
    //--------------------------------------------------------------------------

  private
    { Private declarations }
    FsPatNo   : string;    // ȯ�ڹ�ȣ
    FsAdmDate : String;    // �Կ�����
    FsCurDuty : String;    // Current Duty
    FPatient  : HmdPatinf; // ȯ������
    FSysDate  : TDateTime; // current system date
    FIsRoot   : Boolean;   // root authority
    FsSelDuty : String;    // ���� Editing�ϱ����� ������ Duty

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
    FsPatName      : String;
    FsAge          : String;
    FsSex          : String;
    FsBirthymd     : String;
    FsAcptNo       : String;
    FsCodvCd       : String;
    FsMedTime      : String;

    // User-defined Function --------------------------------------------------
    // �ʱ�ȭ
    procedure Initialize;

    // ���� Duty ����
    procedure SetAssessDateAndCurrentDuty(AdtSysDateTime : TDateTime);

    // �۾� ��ư ���� ����
    procedure SetControlStatusOfDuty(AsDuty : string);

    // ���� Duty ǥ��
    procedure DisplayCurrentDuty(AsDuty : string);

    // Clear Control Value
    procedure ClearValueOf(AsDuty : String);

    // ȯ������ ��ȸ
    // �ش� ������ں� ȯ�� Age ���(�Ϸ�)���� ���� @ 2012.04.13 LSH
    procedure LoadPatientInfo(in_ChkDate : TDate);

    // �ӻ� �� ��ǥ ��� ���� ��ȸ
    procedure LoadQualityCheck;

    // �ӻ� �� ��ǥ ��� ���� ��ȸ
    procedure LoadQualityCheckInfo;

    // �ӻ� �� ��ǥ ��� �� ��ȸ(All Duty)
    procedure LoadQualityCheckResult;

    // Duty�� �ӻ� �� ��ǥ ��� ����
    function SaveQualityCheckOfDuty(AsDuty : string) : Boolean;

    // ���� ���� ���� ���� üũ
    function IsNoData(AsDuty : string) : Boolean;

    // Duty�� �ӻ� �� ��ǥ ��� ����
    function DeleteQualityCheckOfDuty(AsDuty : String) : Boolean;

    // �۾� ���� ����
    procedure SetAuthority;

    // �� ó�泻�� ��ȸ Call Procedure
    procedure SelOrderList;

    // Grid �ʱ�ȭ (Title Row ����)
    procedure GridClear(in_Grid : TUltraGrid);

    // NICU �ӻ�����ǥ ���ĺ�ȯ��� ��ȸ, 2012.01.31 LSH
    // sType5, sType6 �߰� -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // Duty�� ���� �ӻ�����ǥ ���� ����, 2012.03.19 LSH
    function CopyLastQualCheckOfDuty(AsDuty: String): Boolean;


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
    property propPatNo      : String read FsPatNo      write FsPatNo;
    property propAdmDate    : String read FsAdmDate    write FsAdmDate;
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
    property prop_Fromdate    : String      write pv_Fromdate  ;
    property prop_Todate      : String      write pv_Todate    ;
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� END
    // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    property propPatName      : String read FsPatName    write FsPatName;
    property propAge          : String read FsAge        write FsAge      ;
    property propSex          : String read FsSex        write FsSex      ;
    property propBirthymd     : String read FsBirthymd   write FsBirthymd ;
    property propAcptNo       : String read FsAcptNo     write FsAcptNo   ;
    property propCodvCd       : String read FsCodvCd     write FsCodvCd   ;
    property propMedTime      : String read FsMedTime    write FsMedTime  ;

    // NICU �ӻ�����ǥ �ǹ���� �ڵ����Ľ�ĵ
    procedure AutoScanPrint;

    // ��â���赵��(MDN470F1)���� callback�� ����
    procedure AssignBdScore(Sender: TObject);

    // ��ȯ�� ������(MDN920F2)���� callback�� ����
//    procedure AssignPainScore(Sender: TObject);

    // NICU �ӻ�����ǥ �ڵ���ĵ ������� New-ver, 2012.01.31 LSH
    procedure AutoScanPrint_New;

    // ����������(MDN920F1)���� callback�� ���� @ 2012.06.13 LSH
    procedure AssignPainRslt(Sender: TObject);

  end;




var
  MDN110FX: TMDN110FX;





implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDN110UU, MDN110UV_P01,
   MDN110UX_P01,
   // [EMR����] 2016.04.12 ȫâ�� �߰���(������). TpSvc �߰�
   TpSvc;

{$R *.DFM}


//------------------------------------------------------------------------------
// Form onClose Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


//------------------------------------------------------------------------------
// Form onDestroy Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.FormDestroy(Sender: TObject);
begin
   MDN110FX := Nil;
end;


//------------------------------------------------------------------------------
// [����] Button onClick Event Handler
// - Close Form
//------------------------------------------------------------------------------
procedure TMDN110FX.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;




//------------------------------------------------------------------------------
// Form onCreate Event Handler
// - initialize member variables
//------------------------------------------------------------------------------
procedure TMDN110FX.FormCreate(Sender: TObject);
begin
   // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   if (Application.MainForm.Name = 'SMCMainForm') then
   begin
      LoadEMRComPack;
   end
   else
   begin
      FsPatNo   := '';
      FsAdmDate := '';
      FsCurDuty := '';
      FPatient  := Nil;
      FSysDate  := Now;
      FIsRoot   := False;
      FsSelDuty := '';
   end;
end;





//------------------------------------------------------------------------------
// �ʱ�ȭ
//------------------------------------------------------------------------------
procedure TMDN110FX.Initialize;
var
   edName : TEdit;   // ����ڸ� Edit
   edId   : TEdit;   // ����� ID Edit
   edDept : TEdit;   // ����� �μ� Edit
begin

   // get system date & time
   GetSysdate(FSysDate);



   //---------------------------------------------------------------
   // 1. reset Control
   //---------------------------------------------------------------
   // 1.1. Clear Value
//   ClearValueOf(DT_DAY    );
//   ClearValueOf(DT_EVENING);
//   ClearValueOf(DT_NIGHT  );

   // 1.2. for scroll
   // [���� ����� ���/ȯ�ڱ�� ������ȸ]��, Invisible SetFocus �Ұ�
   if not ((P_PatFlag = 'W') or
           (P_PatFlag = 'D')) then
   begin
      scrlbx_QualityCheck.SetFocus;
      scrlbx_QualityCheck.VertScrollBar.Position := 0;

      // 1.3. ���� ���� ���� Setting
      sbt_DDelete.Tag := 0;   // ����(Day)
      sbt_EDelete.Tag := 0;   // ����(Evening)
      sbt_NDelete.Tag := 0;   // ����(Night)
   end
   else
   begin
      scrlbx_QualityCheck.SetFocus;
      scrlbx_QualityCheck.VertScrollBar.Position := 0;

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
   end;



   // [�ǻ� ��ȸ]�� �߰�, 2012.03.05 LSH
   if (P_PatFlag = 'MDP110F2') then
   begin
      // [��ȸ]�� �����ϰ� ����
      sbt_DCopy.Enabled   := False;
      sbt_ECopy.Enabled   := False;
      sbt_NCopy.Enabled   := False;

      sbt_DSave.Enabled   := False;
      sbt_ESave.Enabled   := False;
      sbt_NSave.Enabled   := False;

      sbt_DDelete.Enabled := False;
      sbt_EDelete.Enabled := False;
      sbt_NDelete.Enabled := False;

      // 2016-08-22 ������ , EMR���� ȣ�� �� ��ȣ������� ������ ��ư�� ReadOnly ��� �߰�.
      bbt_ToNrRecordD.Enabled := False;
      bbt_ToNrRecordE.Enabled := False;
      bbt_ToNrRecordN.Enabled := False;
   end;




   //---------------------------------------------------------------
   // 2. Set Default Value
   //---------------------------------------------------------------
   // 2.1. load Patient Information

   // �ش� ������ں� ȯ�� Age ���(�Ϸ�)���� ���� @ 2012.04.13 LSH
   LoadPatientInfo(Now);



{
   // 2.1.1. Set Patient information
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
      lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
      lb_Sex.Caption     := sSex    [0];                       // ����
      lb_Age.Caption     := Trim(Calc_Age(Now, sBirtDate[0])); // �� ���� ���� ���(���� by ������ ��������, 2011.12.22 LSH)
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����
   end;
}



   // 2.2. Quality Check Date and Duty
   SetAssessDateAndCurrentDuty(FSysDate);



   // 2.3. Nurse & Time
   // 2.3.1. ���� ��ȣ��
   edName := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_ChkNursName'));
   edId   := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_ChkNursId'  ));
   edDept := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_ChkDept'    ));


   edName.Text := md_UserNm;
   edId.Text   := md_UserId;
   edDept.Text := md_DeptCd;


   // ����� �˻�
//   SearchUser('N', edName, edId, edName, edDept, nil);

   // 2.3.2. �ð�
   TMaskEdit(GetComp(Self.Name, 'med_' + FsCurDuty + '_ChkTime')).Text := FormatDateTime('HH:NN', FSysDate);


   // 2.4. Set Authority
   SetAuthority;


   // 2.5. Set Control Status
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Form onShow Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.FormShow(Sender: TObject);
begin

   //-------------------------------------------------------------------
   // 1. �ʱ�ȭ
   //-------------------------------------------------------------------
   Initialize;


   //-------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ��ȸ
   //-------------------------------------------------------------------
   LoadQualityCheck;


   //-------------------------------------------------------------------
   // 3. Duty�� �ۼ����� ����, 2011.08.08 LSH
   //-------------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;





//------------------------------------------------------------------------------
// �������� �� ���� Duty ����
// - ���� �ð��� ���� �������ڿ� Duty�� ���� ��.
//
// param : AdtSysDate - Current System Date and Time
//------------------------------------------------------------------------------
procedure TMDN110FX.SetAssessDateAndCurrentDuty(AdtSysDateTime: TDateTime);
var
   sCurTime : String;      // ���� �ð�

begin

   // get current time
   sCurTime := FormatDateTime('HHNNSS', AdtSysDateTime);


   // get assessment date and duty
   if (StrToFloat(sCurTime) >= StrToFloat('000000')) and (StrToFloat(sCurTime) < StrToFloat('070000')) then
   begin
      // Night of the day before (00:00 ~ 06:59)
      dtp_ChkDate.Date := AdtSysDateTime - 1;
      FsCurDuty        := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('070000')) and (StrToFloat(sCurTime) < StrToFloat('150000')) then
   begin
      // Day (07:00 ~ 14:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_DAY;

      // Duty ǥ��
      DisplayCurrentDuty(DT_DAY);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('150000')) and (StrToFloat(sCurTime) < StrToFloat('220000')) then
   begin
      // Evening (15:00 ~ 21:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_EVENING;

      // Duty ǥ��
      DisplayCurrentDuty(DT_EVENING);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('220000')) and (StrToFloat(sCurTime) <= StrToFloat('235959')) then
   begin
      // Night (22:00 ~ 23:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end;


   //-----------------------------------------------------------
   // [���� ����� ���/ȯ�ڱ�� ������ȸ]�� ������� ����.
   //-----------------------------------------------------------
   if (P_RgtDate <> '') then
   begin
      dtp_ChkDate.Date := StrToDate(P_RgtDate);

      // ������� �����, P_RgtDate�� ��ȸ�ϴ� �κ� Skip���� Clear, 2012.03.07 LSH
      P_PatFlag := '';
   end;


end;



//------------------------------------------------------------------------------
// ���� Duty ǥ��
//------------------------------------------------------------------------------
procedure TMDN110FX.DisplayCurrentDuty(AsDuty: string);
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
// �� �׸� �� ����
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FX.ClearValueOf(AsDuty: String);
var
   i            : Integer; // Loop Index
   oCurComp     : TObject; // ���� Component
   sCurCompName : String;  // ���� Component ��

begin

   //--------------------------------------------------------------
   // 1. ��� ����
   //--------------------------------------------------------------
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursName') as TEdit).Text     := '';  // ��ȣ�� ��
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursId'  ) as TEdit).Text     := '';  // ��ȣ�� ���
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkDept'    ) as TEdit).Text     := '';  // ���� �μ�
   (GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime'    ) as TMaskEdit).Text := '';  // ���� �ð�

   (GetComp(Self.Name, 'sbt_' + AsDuty + 'Delete') as TSpeedButton).Tag := 0;       // ����


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
// ScrollBox onMouseWheelDown Event Handler
// - scroll down
//------------------------------------------------------------------------------
procedure TMDN110FX.scrlbx_QualityCheckMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin

   with scrlbx_QualityCheck.VertScrollBar do
   begin
      Position := Position + Increment;
   end;

end;


//------------------------------------------------------------------------------
// ScrollBox onMouseWheelUp Event Handler
// - scroll Up
//------------------------------------------------------------------------------
procedure TMDN110FX.scrlbx_QualityCheckMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin

   with scrlbx_QualityCheck.VertScrollBar do
   begin
      Position := Position - Increment;
   end;

end;




//------------------------------------------------------------------------------
// NICU ȯ������ ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadPatientInfo(in_ChkDate : TDate);
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
   FreeAndNil(FPatient);



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
      AsIOFlag := 'I';
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
      if iRowCnt < 0 then
      begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := 'ȯ������ Loading�� �����Ͽ����ϴ�.';
         Exit;
      end;



      //-----------------------------------------------
      // 2.3. Set Data
      //-----------------------------------------------
      FPatient := patient;


      // 2.1.1. Set Patient information
      with FPatient do
      begin
         lb_PatNo.Caption   := FsPatNo;                                  // ȯ�ڹ�ȣ
         lb_PatName.Caption := sPatName[0];                              // ȯ�ڸ�
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
// �ӻ� �� ��ǥ ��� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadQualityCheck;
begin

   //-----------------------------------------------------------------
   // 1. Clear Value
   //-----------------------------------------------------------------
   ClearValueOf(DT_DAY    );
   ClearValueOf(DT_EVENING);
   ClearValueOf(DT_NIGHT  );




   //----------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ��ȸ
   //----------------------------------------------------------------
   LoadQualityCheckInfo;



   //----------------------------------------------------------------
   // 3. �ӻ� �� ��ǥ ��� �� ��ȸ
   //----------------------------------------------------------------
   LoadQualityCheckResult;



end;




//------------------------------------------------------------------------------
// �ӻ� �� ��ǥ ��� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadQualityCheckInfo;
var
   QcInfo  : HmdIcqcit; // �ӻ� �� ��ǥ ��� ���� ����
   iRowCnt : Integer;   // the number of rows searched
   i       : Integer;   // Loop Index

   { parameters }
   AsPatNo   : String;  // ȯ�ڹ�ȣ
   AsAdmDate : String;  // �Կ�����(YYYYMMDD)
   AsChkDate : String;  // Check����(YYYYMMDD)

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
      QcInfo := HmdIcqcit.Create;



      //---------------------------------------------
      // 2.1. Set Value
      //---------------------------------------------
      AsPatNo   := FsPatNo;
      AsAdmDate := DelChar(FsAdmDate,'-');


      // [���� ����� ���]�� ���õ� �������.
      if (P_PatFlag = 'W') or
         (P_PatFlag = 'D') then
         AsChkDate := InvertSDate(P_RgtDate)
      else
         AsChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);



      //---------------------------------------------
      // 2.2. Load Data
      //---------------------------------------------
      iRowCnt := QcInfo.LoadCheckListByDate(AsPatNo, AsAdmDate, AsChkDate);



      // Show Error Message
      if iRowCnt < 0 then
      begin
         // Free �߰�
         QcInfo.Free;

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
      with QcInfo do
      begin
         for i := 0 to iRowCnt - 1 do
         begin
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursName') as TEdit).Text     := sChkNursNm[i]; // ���� ��ȣ�� ��
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursId'  ) as TEdit).Text     := sChkNurs  [i]; // ���� ��ȣ�� ID
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkDept'    ) as TEdit).Text     := sChkDept  [i]; // ���� �μ�
            (GetComp(Self.Name, 'med_' + String(sDuty[i]) + '_ChkTime'    ) as TMaskEdit).Text := sChkTime  [i]; // ���� �ð�

            // ���� ���� ���� Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Delete') as TSpeedButton).Tag := 1;                // 1:���� ����(������ ������ ����)
         end;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '�ڷᰡ ��ȸ�Ǿ����ϴ�.';

   finally
      Screen.Cursor := crDefault;
      QcInfo.Free;
   end;



   //------------------------------------------------------------------
   // 3. Default ��ȣ�� ���� Setting
   //------------------------------------------------------------------
   if (P_EMRPrintYn <> 'Y') and
      (P_PreViewYn <> 'Y') then
   begin
      if Trim((GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursId'  ) as TEdit).Text) = '' then
      begin
         // get current system date
         GetSysDate(systime);

         // 2013.03.18 khs ���� Duty���� ��츸 �α����� ���� �� �ð��� ǥ�����ֵ��� ����
         // ��������ȯ�ڽ� �迬�� ���κ��� ���� �Ϸ�
         if (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) then
         begin
            // set default user information
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursName') as TEdit).Text     := md_UserNm; // ���� ��ȣ�� ��
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursId'  ) as TEdit).Text     := md_UserId; // ���� ��ȣ�� ID
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkDept'    ) as TEdit).Text     := md_DeptCd; // ���� �μ�
            (GetComp(Self.Name, 'med_' + FsCurDuty + '_ChkTime'    ) as TMaskEdit).Text := FormatDateTime('HH:NN', systime); // ���� �ð�
         end;
      end;
   end;
end;




//------------------------------------------------------------------------------
// �ӻ� �� ��ǥ ��� �� ��ȸ (All Duty)
// - ��� Duty�� ��� ������ ��ȸ ��.
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadQualityCheckResult;
var
   check   : HmdIcuinf; // ��ȣ���� ���� ����
   iRowCnt : Integer;   // the number of rows searched
   i       : Integer;   // Loop Index

   sCompName : String;  // Component Name

   { parameters }
   AsSetType : String;  // Set ����
   AsPatNo   : String;  // ȯ�ڹ�ȣ
   AsAdmDate : String;  // �Կ�����(YYYYMMDD)
   AsChkDate : String;  // Check����(YYYYMMDD)

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
      check := HmdIcuinf.Create;


      //----------------------------------------
      // 2.1. Set Value
      //----------------------------------------
      AsSetType := 'ICNNQ';
      AsPatNo   := FsPatNo;
      AsAdmDate := DelChar(FsAdmDate,'-');


      // [���� ����� ���]�� ���õ� �������.
      if (P_PatFlag = 'W') or
         (P_PatFlag = 'D') then
         AsChkDate := InvertSDate(P_RgtDate)
      else
         AsChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);



      //----------------------------------------
      // 2.2. Load Data from DB
      //----------------------------------------
      iRowCnt := check.getIcuinfwt('H', AsSetType, AsPatNo, AsChkDate, AsAdmDate, '');



      // Show Error Message
      if iRowCnt = -1 then
      begin
         // Free �߰� - ���⼭ free �ϸ�, �ڵ����ĺ�ȯ�� Access Violation ���� �߻���, 2012.1.2 LSH
         //         check.Free;

         ShowErrMsg;

         // �ڵ����ĺ�ȯ ��� flag
         G_EmrYn := 'N';

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         // Free �߰� - ���⼭ free �ϸ�, �ڵ����ĺ�ȯ�� Access Violation ���� �߻���, 2012.1.2 LSH
         //         check.Free;

         // �ڵ����ĺ�ȯ ��� flag
         G_EmrYn := 'N';

         Exit;
      end;



      // �ڵ����ĺ�ȯ ��� flag
      G_EmrYn := 'Y';



      //----------------------------------------
      // 2.3. Display Data
      //----------------------------------------
      for i := 0 to iRowCnt - 1 do
      begin
         with check do
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
                             'NICU �ӻ�����ǥ �׸���ȸ�� ����ó��',
                             MB_OK + MB_ICONINFORMATION);
               end;
            end;
         end;
      end;





   finally
      Screen.Cursor := crDefault;

      check.Free;
   end;


end;




//------------------------------------------------------------------------------
// Duty�� �ӻ� �� ��ǥ ��� ����
//
// param : AsDuty - Duty(D/E/N)
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FX.SaveQualityCheckOfDuty(AsDuty: string): Boolean;
var
   qltChk  : HmdIcqcit; // �ӻ� �� ��ǥ ��� ���� ����
   iResult : Integer;   // the result of transaction
   i       : Integer;   // Loop Index

   { parameters }
   QcInfo  : HmdIcqcit; // ��ȣ���� ����
   lsChkVO : TList;     // ���� ����

   oCurComp     : TComponent; // current component
   sCurCompName : String;     // current component name
   curChk       : HmdIcuinf;  // current component value

begin

   // initiate return value
   Result := True;


   //--------------------------------------------------------------------
   // 1. Initialize
   //--------------------------------------------------------------------
   lsChkVO := TList.Create;



   //--------------------------------------------------------------------
   // ����
   //--------------------------------------------------------------------
   Screen.Cursor := crHourGlass;


   try
      // Create Object
      qltChk := HmdIcqcit.Create;



      //-----------------------------------------
      // 1. Set Parameter Value
      //-----------------------------------------
      // 1.1. �ӻ� �� ��ǥ ��� ����
      QcInfo := HmdIcqcit.Create;




      with QcInfo do
      begin
         sPatNo   := FsPatNo;                                                                // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                                              // �Կ�����
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);                           // ��������
         sDuty    := AsDuty;                                                                 // Duty
         sChkTime := (GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime'  ) as TMaskEdit).Text; // ���� �ð�
         sChkNurs := (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursId') as TEdit).Text;     // ���� ��ȣ��
         sChkDept := (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkDept'  ) as TEdit).Text;     // ���� �μ�
         sWardNo  := FPatient.sWardNo[0];                                                    // ����
         sRoomNo  := FPatient.sRoomNo[0];                                                    // ����
         sEditId  := md_UserId;                                                              // ������ID
      end;




      // 1.2. �ӻ� �� ��ǥ ��� ����
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
                  curChk := HmdIcuinf.Create;

                  with curChk do
                  begin
                     sSettype := 'ICNNQ';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'E1';
                     sItem2    := (oCurComp as TEdit).Text;
                  end;


                  // Value Object�� �߰�
                  lsChkVO.Add(curChk);


               end;
            end
            else if Self.Components[i] is TMaskEdit then
            begin
               //-----------------------------------------
               // MaskEdit Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'med') and (Trim((oCurComp as TMaskEdit).Text) <> '-  -') then
               begin
                  curChk := HmdIcuinf.Create;

                  with curChk do
                  begin
                     sSettype := 'ICNNQ';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'E3';
                     sItem1    := (oCurComp as TMaskEdit).Text;
                  end;


                  // Value Object�� �߰�
                  lsChkVO.Add(curChk);


               end;
            end
            else if Self.Components[i] is TCheckBox then
            begin
               //-----------------------------------------
               // CheckBox Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'chx') and (oCurComp as TCheckBox).Checked then
               begin
                  curChk := HmdIcuinf.Create;

                  with curChk do
                  begin
                     sSettype := 'ICNNQ';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'CH';
                     sItem1    := 'Y';
                     sItem2    := (oCurComp as TCheckBox).Caption;
                  end;

                  // Value Object�� �߰�
                  lsChkVO.Add(curChk);
               end;
            end
            else if Self.Components[i] is TRadioButton then
            begin
               //-----------------------------------------
               // RadioButton Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'rbt') and (oCurComp as TRadioButton).Checked then
               begin
                  curChk := HmdIcuinf.Create;

                  with curChk do
                  begin
                     sSettype := 'ICNNQ';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'RB';
                     sItem1    := 'Y';
                     sItem2    := (oCurComp as TRadioButton).Caption;
                  end;

                  // Value Object�� �߰�
                  lsChkVO.Add(curChk);
               end;
            end
            else if Self.Components[i] is TMemo then
            begin
               //-----------------------------------------
               // Memo Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 2) <> 'me') and (LengthByte(Trim((oCurComp as TMemo).Text)) > 0) then
               begin
                  curChk := HmdIcuinf.Create;

                  with curChk do
                  begin
                     sSettype := 'ICNNQ';
                     sPatno   := FsPatNo;
                     sActdate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);
                     sDutycls := AsDuty;
                     sAdmdate := FsAdmDate;
                     sMcode   := CopyByte(sCurCompName, 3, 5);
                     sDcode   := CopyByte(sCurCompName, 9, 3);

                     sItemtype := 'ME';
                     sItem3    := (oCurComp as TMemo).Text;
                  end;

                  // Value Object�� �߰�
                  lsChkVO.Add(curChk);

               end;
            end;
         end;
      end;



      //-----------------------------------------
      // 2. Save
      //-----------------------------------------
      iResult := qltChk.SaveByDuty(QcInfo, lsChkVO);




      // Show Error Message
      if iResult < 0 then
      begin
         Result := False;

         // Free �߰�
         QcInfo.Free;
         qltChk.Free;
         curChk.Free;
         lsChkVO.Free;

         ShowErrMsg;

         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         // Free �߰�
         QcInfo.Free;
         qltChk.Free;
         curChk.Free;
         lsChkVO.Free;

         stb_Message.Panels[0].Text := '�ӻ�����ǥ ������ ������� �ʾҽ��ϴ�.';

         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '�ӻ�����ǥ ������ ���������� ����Ǿ����ϴ�.';


   finally
      Screen.Cursor := crDefault;

      // Free �߰�
      QcInfo.Free;
      qltChk.Free;
      curChk.Free;
      lsChkVO.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - Day Duty �ӻ� ����ǥ ��� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_DSaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_D_ChkNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      ed_D_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_D_ChkTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      med_D_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_DAY) then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '������ Day Duty �ӻ�����ǥ ������ ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Day) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;



   //---------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ����
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_DAY);


end;




//------------------------------------------------------------------------------
// ���� ���� ���� ���� üũ
//
// param : AsDuty - Duty
//------------------------------------------------------------------------------
function TMDN110FX.IsNoData(AsDuty: string): Boolean;
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

   // 1.2. �ӻ� �� ��ǥ ��� ����
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
            if (CopyByte(sCurCompName, 1, 3) <> 'med') and (Trim((oCurComp as TMaskEdit).Text) <> '-  -') then Inc(iChkCnt);
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
// [Evening ����] Button onClick Event Handler
// - Evening Duty �ӻ� ����ǥ ��� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_ESaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_E_ChkNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      ed_E_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_E_ChkTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      med_E_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_EVENING) then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '������ Evening Duty �ӻ�����ǥ ������ ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Evening) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;


   //---------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ����
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_EVENING);


end;



//------------------------------------------------------------------------------
// [Night ����] Button onClick Event Handler
// - Night Duty �ӻ� ����ǥ ��� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NSaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_N_ChkNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      ed_N_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_N_ChkTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      med_N_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_NIGHT) then
   begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '������ Night Duty �ӻ�����ǥ ������ ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Night) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;


   //---------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ����
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_NIGHT);


end;




//------------------------------------------------------------------------------
// [Day ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//------------------------------------------------------------------------------
procedure TMDN110FX.ed_D_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_D_ChkNursName, ed_D_ChkNursId, ed_D_ChkNursName, ed_D_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Evening ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//------------------------------------------------------------------------------
procedure TMDN110FX.ed_E_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_E_ChkNursName, ed_E_ChkNursId, ed_E_ChkNursName, ed_E_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Night ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//------------------------------------------------------------------------------
procedure TMDN110FX.ed_N_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_N_ChkNursName, ed_N_ChkNursId, ed_N_ChkNursName, ed_N_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - ���� ���� �ӻ� �� ��ǥ ��� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_PreviousClick(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Set Check Date
   //---------------------------------------------------------------
   dtp_ChkDate.Date := dtp_ChkDate.Date - 1;


   //----------------------------------------------------------------
   // 2. ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);


   //---------------------------------------------------------------
   // 3. �ӻ� �� ��ǥ ��� ���� ��ȸ
   //---------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 4. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - ���� ���� �ӻ� �� ��ǥ ��� ���� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NextClick(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Set Check Date
   //---------------------------------------------------------------
   dtp_ChkDate.Date := dtp_ChkDate.Date + 1;


   //----------------------------------------------------------------
   // 2. ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);


   //---------------------------------------------------------------
   // 3. �ӻ� �� ��ǥ ��� ���� ��ȸ
   //---------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 4. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty�� �۾���ư ���� ����
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FX.SetControlStatusOfDuty(AsDuty: string);
begin

   // [CCU �迬�� ��û] Duty�� ������� ����/���� �����ϵ���, 2011.08.17 LSH
   {
   // Day
   sbt_DSave.Enabled   := (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) and (AsDuty = DT_DAY) or FIsRoot;
   sbt_DDelete.Enabled := (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) and (AsDuty = DT_DAY) or FIsRoot;

   // Evening
   sbt_ESave.Enabled   := (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) and (AsDuty = DT_EVENING) or FIsRoot;
   sbt_EDelete.Enabled := (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) and (AsDuty = DT_EVENING) or FIsRoot;

   // Night
   sbt_NSave.Enabled   := (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) and (AsDuty = DT_NIGHT) or FIsRoot;
   sbt_NDelete.Enabled := (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) and (AsDuty = DT_NIGHT) or FIsRoot;
   }


   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) then
   begin
      DisplayCurrentDuty(AsDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;




//------------------------------------------------------------------------------
// [Check ����] DateTimePicker onCloseUp Event Handler
// - �������� �ӻ� �� ��ǥ ��� ��ȸ
//------------------------------------------------------------------------------
procedure TMDN110FX.dtp_ChkDateCloseUp(Sender: TObject);
begin

   //----------------------------------------------------------------
   // 1. ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);


   //-----------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ��ȸ
   //-----------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 3. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty�� �ӻ� �� ��ǥ ��� ���� ����
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FX.DeleteQualityCheckOfDuty(AsDuty: String): Boolean;
var
   qltChk  : HmdIcqcit; // �ӻ� �� ��ǥ ��� ���� ����
   iResult : Integer;   // the result of transaction(1:Success, 0:Fail)

   { parameter }
   AsSetType : string;     // ����� ����
   AQcInfo   : HmdIcqcit;  // �ӻ�����ǥ ��� ����

begin

   // initiate return value
   Result := True;



   //--------------------------------------------------------------------
   // ��ȣ���� ���� ����
   //--------------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      qltChk := HmdIcqcit.Create;



      //------------------------------------------------
      // 1. Set Parameter Value
      //------------------------------------------------
      AsSetType := 'ICNNQ';
      AQcInfo := HmdIcqcit.Create;


      with AQcInfo do
      begin
         sPatNo   := FsPatNo;                                        // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                      // �Կ�����(YYYYMMDD)
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);   // Check����(YYYYMMDD)
         sDuty    := AsDuty;                                         // Duty
      end;



      //------------------------------------------------
      // 2. Execute Transaction
      //------------------------------------------------
      iResult := qltChk.DeleteByDuty(AQcInfo, AsSetType);



      // Show Error Message
      if iResult < 0 then
      begin
         Result := False;

         // Free �߰�
         AQcInfo.Free;
         qltChk.Free;

         ShowErrMsg;
         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         // Free �߰�
         AQcInfo.Free;
         qltChk.Free;

         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '��ȣ���� ���� [����] ó���� ���������� �Ϸ�Ǿ����ϴ�.';

   finally
      Screen.Cursor := crDefault;

      AQcInfo.Free;
      qltChk.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - Day Duty �ӻ�����ǥ ��� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_DDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
   sChkDate : String;   // Check����

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
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sChkDate + '������ Day Duty �ӻ�����ǥ ����� �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Day) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;




   //-------------------------------------------------------------------
   // 2. Day �ӻ�����ǥ ��� ����
   //-------------------------------------------------------------------
   DeleteQualityCheckOfDuty(DT_DAY);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   LoadQualityCheck;

end;



//------------------------------------------------------------------------------
// [Evening ����] Button onClick Event Handler
// - Evening Duty �ӻ�����ǥ ��� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_EDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
   sChkDate : String;   // Check����

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
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sChkDate + '������ Evening Duty �ӻ�����ǥ ����� �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Evening) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;




   //-------------------------------------------------------------------
   // 2. Day �ӻ�����ǥ ��� ����
   //-------------------------------------------------------------------
   DeleteQualityCheckOfDuty(DT_EVENING);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   LoadQualityCheck;

end;




//------------------------------------------------------------------------------
// [Night ����] Button onClick Event Handler
// - Night Duty �ӻ�����ǥ ��� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // ���� ���
   sChkDate : String;   // Check����
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
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sChkDate + '������ Night Duty �ӻ�����ǥ ����� �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Night) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;




   //-------------------------------------------------------------------
   // 2. Day �ӻ�����ǥ ��� ����
   //-------------------------------------------------------------------
   DeleteQualityCheckOfDuty(DT_NIGHT);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   LoadQualityCheck;

end;




//------------------------------------------------------------------------------
// �۾� ���� ����
// - root : �ش� Duty ������� ��� ��� ����/���� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.SetAuthority;
begin
   FIsRoot := (md_JikGup = 'N51') or (md_JikGup = 'N52') or (md_UserId = '99995');
end;



//------------------------------------------------------------------------------
// [Day - �ΰ��⵵] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0101_1Click(Sender: TObject);
begin

   pn_DDetail01.Enabled := D_B0101_1.Checked;

   if not pn_DDetail01.Enabled then
   begin
      D_B0102_1.Checked := False;   // ET Tube
      D_B0103_1.Checked := False;   // Tracheostomy
   end;

end;





//------------------------------------------------------------------------------
// [Day - ET Tube] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0102_1Click(Sender: TObject);
begin
   pn_DDetail02.Enabled := D_B0102_1.Checked;

   if not pn_DDetail02.Enabled then
   begin
      D_C0102_1.Text := '';   // #
      D_C0102_2.Text := '';   // �������
      D_C0102_3.Text := '';   // ����
      D_C0102_4.Text := '';   // ����
   end;

end;





//------------------------------------------------------------------------------
// [Day - Tracheostomy] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0103_1Click(Sender: TObject);
begin

   pn_DDetail03.Enabled := D_B0103_1.Checked;

   if not pn_DDetail03.Enabled then
   begin
      D_C0103_1.Text := '';   // #
      D_C0103_2.Text := '';   // ��������
      D_C0103_3.Text := '';   // ����
   end;

end;





//------------------------------------------------------------------------------
// [Day - ���ȯ��] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0201_1Click(Sender: TObject);
begin

   pn_DDetail04.Enabled := D_B0201_1.Checked;

   if not pn_DDetail04.Enabled then
   begin
      D_B0202_1.Text    := '';      // ��������
      D_B0202_2.Text    := '';      // ��������(#)
      D_B0202_3.Text    := '';      // Vent. Set
   end;

end;


//------------------------------------------------------------------------------
// [Day - ����������] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0401_1Click(Sender: TObject);
begin


   D_B0401_3E.Enabled := D_B0401_3.Checked;  // NIPS score
   D_B0401_4E.Enabled := D_B0401_4.Checked;  // PIPP score


   if not D_B0401_3E.Enabled then D_B0401_3E.Text := '';
   if not D_B0401_4E.Enabled then D_B0401_4E.Text := '';


   pn_DDetail06.Enabled := D_B0401_3.Checked or D_B0401_4.Checked;


   if not pn_DDetail06.Enabled then
   begin
      D_C0401_1.Text := '';   // ���߿���
      D_C0403_1.Text := '';   // ������

      // ��
      D_C0404_1.Checked := False;   // ������
      D_C0404_2.Checked := False;   // ������
   end;

end;



//------------------------------------------------------------------------------
// [Day - ���������� - Drug] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0402_1Click(Sender: TObject);
begin
   D_B0402_1E.Enabled := D_B0402_1.Checked;

   if not D_B0402_1E.Enabled then
      D_B0402_1E.Text := '';
end;



//------------------------------------------------------------------------------
// [Day - �������ư�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0501_1Click(Sender: TObject);
begin

   pn_DDetail07.Enabled := D_B0501_1.Checked;   // �������ư� 1

   if not pn_DDetail07.Enabled then
   begin
      // �����Ͻ�
      D_B0502_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      D_B0502_2.Text := '';   // #

      // ��ġ
      D_B0503_1.Checked := False;   // �����
      D_B0503_2.Checked := False;   // �»���
      D_B0503_3.Checked := False;   // ������
      D_B0503_4.Checked := False;   // ������

      // ���Ժ��� ����
      D_B0504_1.Checked := False;   // ����
      D_B0504_2.Checked := False;   // ������
      D_C0504_1.Checked := False;   // ����
      D_C0504_2.Checked := False;   // ����
      D_C0504_3.Checked := False;   // ����
      D_C0504_4.Checked := False;   // ����
   end;


end;







//------------------------------------------------------------------------------
// [Day - �߽����ư�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0601_1Click(Sender: TObject);
begin

   pn_DDetail08.Enabled := D_B0601_1.Checked;

   if not pn_DDetail08.Enabled then
   begin
      // �����Ͻ�
      D_B0602_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      D_B0602_2.Text := '';   // #


      // ����
      D_B0603_1.Checked := False;   // Subclavian
      D_B0603_2.Checked := False;   // Internal Jugular
      D_B0603_3.Checked := False;   // Femoral
      D_B0603_4.Checked := False;   // PICC
      D_B0603_5.Checked := False;   // S-Gnz
      D_B0603_6.Checked := False;   // Left

      // ��ġ
      D_B0607_1.Checked := False;   // �����
      D_B0607_2.Checked := False;   // �»���
      D_B0607_3.Checked := False;   // ������
      D_B0607_4.Checked := False;   // ������

      // cm (Fixed)
      D_B0608_1.Text    := '';

      // �巹�� ����
      D_B0604_1.Checked := False;   // �ʸ��巹��
      D_B0604_2.Checked := False;   // ����巹��

      // �巹�� ����
      D_B0604_3.Checked := False;   // ����
      D_B0604_4.Checked := False;   // ����
      D_B0604_5.Checked := False;   // ������


      // �巹�� ��ȯ
      D_B0606_1.Checked := False;  // ��
      D_B0606_2.Checked := False;  // �ƴϿ�
      D_B0606_3.Text    := '';     // #

      // ���Ժ��� ����
      D_B0605_1.Checked := False;  // ����
      D_B0605_2.Checked := False;  // ����
      D_B0605_3.Checked := False;  // ����
      D_B0605_4.Checked := False;  // ���⹰


   end;

end;



//------------------------------------------------------------------------------
// [Day - ��â�߻�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0701_1Click(Sender: TObject);
begin

   pn_DDetail09.Enabled := D_B0701_1.Checked;   // ��ġ-�ܰ�/ũ��
   pn_DDetail12.Enabled := D_B0701_1.Checked;   // �Խǽ�, �Խ���


   if not pn_DDetail09.Enabled then
   begin
      D_C0701_1.Checked := False;   // �Խ� ��
      D_C0701_2.Checked := False;   // �Խ� ��
      D_C0701_3.Text    := '';      // ��ġ
      D_C0701_4.Text    := '';      // �ܰ�
      D_C0701_5.Text    := '';      // ũ��
   end;
end;



//------------------------------------------------------------------------------
// [Day - ��â�������Ȱ�� �� ġ�� - ��Ÿ] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0703_5Click(Sender: TObject);
begin
   D_B0703_5E.Enabled := D_B0703_5.Checked;

   if not D_B0703_5E.Enabled then
      D_B0703_5E.Text := '';
end;






//------------------------------------------------------------------------------
// [����Ͻ� �Է�] OnExit Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_C0102_2Exit(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // ����Ͻ� Sender �޾ƿ���
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
// [����ϼ� ���] Button onClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_CalcIntubeClick(Sender: TObject);
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
   i_Year  := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 1, 4));
   i_Month := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 6, 2));
   i_Day   := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 9, 2));


   // ��������
   v_Year  := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),1,4));
   v_Month := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),5,2));
   v_Day   := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),7,2));


   // ����ϼ� ��� (��������� �ϼ���꿡�� ����)
   sResult := IntToStr(Trunc(EncodeDate(v_Year,v_Month, v_Day)) -
                       Trunc(EncodeDate(i_Year,i_Month,i_Day)));


   // Flag�� ���� Component�� ã�Ƽ� �ڵ������ ����� �ֱ�
   if (sFlag = '1') then
      TEdit(GetComp(Self.Name, sName + '2')).Text := sResult
   else if (sFlag = '2') then
      TEdit(GetComp(Self.Name, sName + '1')).Text := sResult;

end;



//------------------------------------------------------------------------------
// [��â���迹����(MDN470F1) ȣ��] onClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0702_1Click(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
   FForm : TForm;
begin

   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Editing ������ Duty ���� (Call-Back ���� ����), 2011.08.24 LSH
         FsSelDuty := CopyByte((Sender as TEdit).Name,1,1);

         Break;
      end;
   end;


   // ��â���赵 �򰡵���(MDN470F1) ȣ��.
   FForm := BplFormCreate('MDN470F1');

   SetBplStrProp(FForm.Name, 'Prop_PatNo'       , FsPatNo                 );
   SetBplStrProp(FForm.Name, 'Prop_AdmDate'     , FsAdmDate               );
   SetBplStrProp(FForm.Name, 'Prop_CallerForm'  , 'MDN110FX'              );
   SetBplStrProp(FForm.Name, 'Prop_CallerMethod', 'AssignBdScore'         );
   SetBplStrProp(FForm.Name, 'Prop_ParentForm'  , 'MDN110FX'              );
   SetBplStrProp(FForm.Name, 'Prop_ExecDate'    , FormatDatetime('yyyymmdd',dtp_ChkDate.Date));

   McomFormShow(FForm);
end;




//------------------------------------------------------------------------------
// [��â���赵 �򰡰�� ��ȸ] CallBack Event Procedure
//------------------------------------------------------------------------------
procedure TMDN110FX.AssignBdScore(Sender: TObject);
var
   sFlag, sPatNo, sAdmDate, sEstiDate : string;
   RowNo         : Integer;
   bdsEstiInfo   : HmdBdspmt;   // ������
begin
   sFlag     := 'B';                                               // '' �̸�, �Ϲݼ���/��ȯ�� �򰡵���, 'B'�� �Ż��� �򰡵���
   sPatNo    := FsPatNo;                                           // ȯ�ڹ�ȣ
   sAdmDate  := FsAdmDate;                                         // �Կ�����
   sEstiDate := FormatDateTime('yyyymmdd',dtp_ChkDate.date);       // ������


   Screen.Cursor := crHourglass;


   try
      bdsEstiInfo := HmdBdspmt.Create;


      // ��â���赵�� ���� ��ȸ
      RowNo := bdsEstiInfo.loadEstiInfo(G_LOCATE, sPatNo, sAdmDate, sEstiDate, sFlag);



      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         stb_Message.Panels[0].Text := GetTxMsg;
         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
         Exit;
      end;



      // ��â���赵 �򰡰�� Call-Back (���� Editing���� Duty�� C/B)
      TEdit(GetComp(Self.Name, FsSelDuty + '_B0702_1')).Text := bdsEstiInfo.iTotScore[0] + '(' + bdsEstiInfo.sEstiRslt[0] + ')';



   finally
      screen.Cursor  :=  crDefault;
      FreeAndNil(bdsEstiInfo);
   end;

end;


//------------------------------------------------------------------------------
// [���� �ڵ��Է�] OnClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_C0102_2Click(Sender: TObject);
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
// [�� ó�泻�� ��ȸ] Call Procedure
//------------------------------------------------------------------------------
procedure TMDN110FX.SelOrderList;
var
   RowNo, i, nRow, iCol : Integer;
   sType1, sPatNo, sOrdDate, sType2 : String;
   sTempOrdGrpNm, sTempOrdType, sTempOrdKind : String;
begin

   // ó�泻�� ȭ�� Clear
   GridClear(ugd_AddList);


   // Ư��ó���Ͽ� ���� ó�泻�� ��ȸ�Ͽ� Display
   Screen.Cursor := crHourGlass;


   try
      //Create Class
      mdOrderv := HmdOrderv.Create;


      sType1   := '4';
      sPatNo   := FsPatNo;                                      // ȯ�ڹ�ȣ
      sOrdDate := FormatDateTime('YYYYMMDD',dtp_Fromadd.Date);  // ó����
      sType2   := '';


      // ���ں� ó�泻�� ��ȸ(md_order_l8)
      RowNo := mdOrderv.DayOrderSelect(sType1, sPatNo, sOrdDate, sType2, G_Locate);


      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      if (RowNo = 0) then
      begin
         mdOrderv.Free;
         Exit;
      end;



      nRow := 1;


      sTempOrdGrpNm := '';


      for i := 0 to RowNo-1 do
      begin

         if (mdOrderv.sDiscYn[i]  =  'X') or
            (mdOrderv.sOrdKind[i] =  '8') or    // �ܷ�+�Կ���ó��
            (mdOrderv.sOrdKind[i] =  '9') or    // �ܷ�+�̷�ó��
            (mdOrderv.sOrdKind[i] =  'F') then  // ����+�̷�ó��
             Continue;


         // �� ó�游 ��ȸ
         if (CopyByte(mdOrderv.sOrdGrp[i],1,1) <> 'B') then
             Continue;


         if (mdOrderv.sOrdGrpNm[i] <> sTempOrdGrpNm) or
            (mdOrderv.sOrdCd[i] = 'SPECIAL') then
            ugd_AddList.Cells[0,nRow] := mdOrderv.sOrdGrpNm[i];   // ó��з���

         ugd_AddList.Cells[1,nRow] := mdOrderv.sOrdName[i];       // ó���


         sTempOrdGrpNm := mdOrderv.sOrdGrpNm[i];


         Inc(nRow);

      end;


      if nRow < 2 then
         ugd_AddList.RowCount := 2
      else
         ugd_AddList.RowCount := nRow;



      mdOrderv.Free;



   finally
      Screen.Cursor := crDefault;
   end;


end;



procedure TMDN110FX.bbt_CancelClick(Sender: TObject);
begin
   bpn_Add.Visible := False;

   ugd_AddList.Clear;

   ugd_AddList.RowCount := 2;
end;


procedure TMDN110FX.dtp_FromaddChange(Sender: TObject);
begin
   SelOrderList;
end;


procedure TMDN110FX.dtp_FromaddCloseUp(Sender: TObject);
begin
   dtp_FromaddChange(Sender);
end;


// ó�泻�� �ش�(��) duty Editâ�� ����
procedure TMDN110FX.bbt_AddClick(Sender: TObject);
var
   sTemp : String;
begin
   sTemp := TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text;

   TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text := sTemp + ' ' + ugd_AddList.Cells[1, ugd_AddList.Row];
end;


// ó�泻�� �ش� duty Editâ�� ����
procedure TMDN110FX.E_B0302_1EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // ó����ȸ ����
   dtp_Fromadd.Date := dtp_ChkDate.Date;

   bpn_Add.Visible := True;

   bpn_Add.Left    := (Sender as TEdit).Left - 95;
   bpn_Add.Top     := (Sender as TEdit).Top  + 20;

   // ó�泻�� ��ȸ
   SelOrderList;

end;



procedure TMDN110FX.ugd_AddListDblClick(Sender: TObject);
begin
   bbt_AddClick(Sender);
end;



// Grid �ʱ�ȭ (Title Row ����)
procedure TMDN110FX.GridClear(in_Grid : TUltraGrid);
var
   i, j : Integer;
begin

   if (in_Grid.Name = 'ugd_TempList') then
   begin
      // �׸� Grid �ʱ�ȭ (Title����)
      for i := 0 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';

   end
   else if (in_Grid.Name = 'ugd_AddList') then
   begin
      // �׸� Grid �ʱ�ȭ (Title ����)
      for i := 1 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';
   end;
end;



//------------------------------------------------------------------------------
// [Day - �������ư�(II)] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0505_1Click(Sender: TObject);
begin

   pn_DDetail10.Enabled := D_B0505_1.Checked;   // �������ư� 2 �߰�


   if not pn_DDetail10.Enabled then
   begin
      // �����Ͻ�
      D_B0506_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      D_B0506_2.Text := '';   // #

      // ��ġ
      D_B0507_1.Checked := False;   // �����
      D_B0507_2.Checked := False;   // �»���
      D_B0507_3.Checked := False;   // ������
      D_B0507_4.Checked := False;   // ������

      // ���Ժ��� ����
      D_B0508_1.Checked := False;   // ����
      D_B0508_2.Checked := False;   // ������
      D_C0508_1.Checked := False;   // ����
      D_C0508_2.Checked := False;   // ����
      D_C0508_3.Checked := False;   // ����
      D_C0508_4.Checked := False;   // ����
   end;

end;



procedure TMDN110FX.D_B0607_1Click(Sender: TObject);
begin
{
   pn_DDetail11.Enabled := D_B0607_1.Checked;

   if not pn_DDetail11.Enabled then
   begin
      // �����Ͻ�
      D_B0608_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      D_B0608_2.Text := '';   // #

      // ��ġ(����)
      D_B0609_1.Checked := False;   // Subclavian
      D_B0609_2.Checked := False;   // Internal Jugular
      D_B0609_3.Checked := False;   // Femoral
      D_B0609_4.Checked := False;   // PICC
      D_B0609_5.Checked := False;   // S-Gnz
      D_B0609_6.Checked := False;   // Left
      D_B0609_7.Checked := False;   // Right

      // �巹�� ����
      D_B0610_1.Checked := False;   // �ʸ��巹��
      D_B0610_2.Checked := False;   // ����巹��
      D_B0610_3.Checked := False;   // ����
      D_B0610_4.Checked := False;   // ����
      D_B0610_5.Checked := False;   // ������

      // ���Ժ��� ����
      D_B0611_1.Checked := False;  // ����
      D_B0611_2.Checked := False;  // ����
      D_B0611_3.Checked := False;  // ����
      D_B0611_4.Checked := False;  // ���⹰

      // �巹�� ��ȯ
      D_B0612_1.Checked := False;  // ��
      D_B0612_2.Checked := False;  // �ƴϿ�
      D_B0612_3.Text    := '';     // #
   end;
   }
end;




//------------------------------------------------------------------------------
// [��ȯ�� ������(MDN920F2) ȣ��] onClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0401_4EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;

   FForm : TForm;
   sTool, sPatNo, sAdmDate, sCurPosYn : String;
begin

   // Sender �޾ƿ���
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Editing ������ Duty ���� (Call-Back ���� ����)
         FsSelDuty := CopyByte((Sender as TEdit).Name,1,1);

         Break;
      end;
   end;


   sTool     := 'BPS';
   sPatNo    := FsPatNo;
   sAdmDate  := FsAdmDate;
   sCurPosYn := 'N';




   // ��ȯ�� �����򰡵���(BPS) �Է�ȭ�� ����
   FForm := BplFormCreate('MDN920F2');

   SetBplStrProp('MDN920F2', 'Prop_FromFlag',sTool);
   SetBplStrProp('MDN920F2', 'Prop_PatNo'   ,sPatNo);
   SetBplStrProp('MDN920F2', 'Prop_AdmDate' ,sAdmDate);
   SetBplStrProp('MDN920F2', 'Prop_EstiDate',FormatDateTime('yyyymmdd',dtp_ChkDate.date));
   SetBplStrProp('MDN920F2', 'Prop_EstiTime',FormatDateTime('yyyymmddhhmm',Now));
   SetBplStrProp('MDN920F2', 'Prop_CurPosYn',sCurPosYn );

   // CallBack �޼ҵ� ȣ�� (ȣ���� ���� ��ȸ ȭ���� Refresh ��Ű���� �Ҷ�)
   SetBplStrProp('MDN920F2', 'Prop_CallerForm'  , 'MDN110FX'           );
   SetBplStrProp('MDN920F2', 'Prop_CallerMethod', 'AssignPainScore'    );


   MComFormShow(FForm);

end;


{
//------------------------------------------------------------------------------
// [��ȯ�� �����򰡰�� ��ȸ] CallBack Event Procedure
//------------------------------------------------------------------------------
procedure TMDN110FX.AssignPainScore(Sender: TObject);
var
  // sFlag, sPatNo, sAdmDate, sEstiDate : string;
  // RowNo         : Integer;

   iMstCnt : Integer;   // the number of rows selected (�� ����)
   iRow    : Integer;   // code table row index
   iCol    : Integer;   // code table column index

   i : Integer;         // Loop Index

   bExist : Boolean;

   sPatNo, sAdmDate, sEstiDate, sEstiTime : String;
   sTool  : String;
   sScore, sEstiRslt : String;
   paiEstiInfo   : Hmdpainmt;

begin


   try

      if paiEstiInfo   = nil then
         paiEstiInfo   := Hmdpainmt.Create;

      //----------------------------------------------------------------
      // STEP 1 : �򰡳��� �⺻��ȸ ���� setting
      //----------------------------------------------------------------
      sPatNo    := FsPatNo;
      sAdmDate  := FsAdmDate;
      sEstiDate := FormatDateTime('yyyymmdd',dtp_ChkDate.date);
      sEstiTime := FormatDateTime('yyyymmddhhmm',Now);
      sTool     := 'BPS';


      //----------------------------------------------------------------
      // STEP 2 : �� Data �Է� ���� üũ
      //----------------------------------------------------------------
      bExist := paiEstiInfo.isExist(sPatNo, sAdmDate, sEstiDate, sEstiTime, sTool);



      if bExist then
      begin

         //----------------------------------------------------------------
         // CASE 1 : �� Data�� �ִ� ���
         //----------------------------------------------------------------





         //----------------------------------------------------------------
         // STEP 3 : �� Data Load
         //----------------------------------------------------------------
         // 3.1. �� ���� �������� (MDPAINMT)
         iMstCnt := paiEstiInfo.loadEstiInfo(G_LOCATE, sPatNo, sAdmDate, sEstiDate, sEstiTime, sTool);


         if (iMstCnt < 0) then
         begin
            stb_Message.Panels[0].Text := GetTxMsg;
            showErrMsg(stb_Message);
            Exit;
         end;



         // ���������� �� ��� assign
         sScore    := paiEstiInfo.iTotScore[0];
         sEstiRslt := paiEstiInfo.sEstiRslt[0];


         // ������ ��� �ݿ�
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := sScore;

      end
      else
      // �򰡳���(MDPAINMT) ���°��, [����] �ٽ� �����ؼ� ������.
      begin
         MessageBox(Self.Handle,
                    PChar('����� �����򰡳����� �����ϴ�.'+ #13#10 + '�������ݿ��� ���Ͻø�, [����]�� �ٽ� �������� �������ֽʽÿ�.'),
                    '������ ��������',
                    MB_OK + MB_ICONERROR);

      end;



   finally
      Screen.Cursor := crDefault;
      FreeAndNil(paiEstiInfo);
   end;


end;
}


//------------------------------------------------------------------------------
// [�ӻ�����ǥ ���] Button onClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.bbt_PrintClick(Sender: TObject);
var
   srcPrt                 : TMDN110FX_P01;
   srcForm                : TMDN110FX;
   i, iPrinterIndex       : Integer;
   FForm                  : TForm;
   sEdit                  : TEdit;
   sMaskEdit              : TMaskEdit;
   sMemo                  : TMemo;
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


   if MDN110FX_P01 <> nil  then
      MDN110FX_P01 := nil;

   if MDN110FX <> nil  then
      MDN110FX := nil;


   srcPrt  := TMDN110FX_P01.Create(Application);
   srcForm := TMDN110FX.Create(Application);



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
   srcPrt.qrlb_ChkDate.Caption := FormatDateTime('yyyy-mm-dd', dtp_ChkDate.Date);


   // ------------------------------------------------------------------------
   // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark
   // 2015�� 8�� 11�� open
   // ------------------------------------------------------------------------
   if FormatDateTime('YYYYMMDD', dtp_ChkDate.Date) >= '20150811' then
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
      srcPrt.qrlb_RoomNo.Top  := 62;
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
         (srcForm.Components[i].Name = 'dtp_ChkDate') or
         (srcForm.Components[i].Name = 'lb_Deptnm'  ) or
         (srcForm.Components[i].Name = 'lb_Birtdate') then
         Continue;


         //sEdit     := FindComponent(srcForm.Components[i].Name) as TEdit;
         //sMaskEdit := FindComponent(srcForm.Components[i].Name) as TMaskEdit;
         //sMemo     := FindComponent(srcForm.Components[i].Name) as TMemo;



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
      // ��¿��� Global Var (������ ICU ����� ���峻�� �ִ°�� Y)
      if (G_EmrYn = 'Y') then
      begin

         FForm := BplFormCreate('PTP001F1');

         SetBplStrProp  ('PTP001F1','prop_Caption', srcPrt.Caption);         // �̸����� Ÿ��Ʋ
         SetBplClassProp('PTP001F1','prop_Report' , srcPrt.qr_Quality);      // ��� ù�忡 �ø� ����Ʈ
         SetBplStrProp  ('PTP001F1','prop_Zoom'   , 'Fit');	                 // ��¹� ���� ����

         FForm.ShowModal;
      end;

      Exit;

   end;




   //------------------------------------------------------------------------
   // 3-1. NICU �ӻ�����ǥ  �ڵ����ĺ�ȯ
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
         srcPrt.qr_Quality.PrinterSettings.PrinterIndex := iPrinterIndex;

         // EMR Report ���� ����
         srcPrt.qr_Quality.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);;

         // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
         // // Main Form Print
         // srcPrt.qr_Quality.Print;

         if pv_SComReport <> nil then
         begin
            pv_SComReport.AddReport(srcPrt.qr_Quality); // ������� Add
            pv_SComReport.PageTextList.Add('');         // ������������ ����. ����� ��� ����
         end
         else
         begin
            srcPrt.qr_Quality.Print;
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
      srcPrt.qr_Quality.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
      fn_SetReportID(srcPrt.qr_Quality);

      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
      // srcPrt.qr_Quality.Print;

      if pv_SComReport <> nil then
      begin
         pv_SComReport.AddReport(srcPrt.qr_Quality); // ������� Add
         pv_SComReport.PageTextList.Add('');         // ������������ ����. ����� ��� ����
      end
      else
      begin
         srcPrt.qr_Quality.Print;
      end;
      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. End

      // ��� Form-Free
      srcPrt.Close;
   end;









end;






//------------------------------------------------------------------------------
// NICU �ӻ�����ǥ �ڵ���ĵ �������
// - ȯ�ں� ���
//------------------------------------------------------------------------------
procedure TMDN110FX.AutoScanPrint;
begin

   // ����� ��������(�Կ���) �޾ƿ���
   dtp_ChkDate.Date := StrToDate(FsAdmDate);




   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;



   //---------------------------------------------------
   // 2. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);



{
   // 2.1.1. Set Patient information
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
      lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
      lb_Sex.Caption     := sSex    [0];                       // ����
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // ����
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����
   end;
}


   //-----------------------------------------------------------------
   // 2. �ӻ�����ǥ ���� ��ȸ
   //-----------------------------------------------------------------
   LoadQualityCheck;



   //-----------------------------------------------------------------
   // 3. ��� flag�� ���� ��ºб�
   //-----------------------------------------------------------------
   bbt_PrintClick(Self);



end;


//------------------------------------------------------------------------------
// [Day - ����] Drug �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0302_1Click(Sender: TObject);
begin
   D_B0302_1E.Enabled := D_B0302_1.Checked
end;



//------------------------------------------------------------------------------
// [Day - ����] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0301_1Click(Sender: TObject);
begin

   D_B0302_1.Enabled := D_B0301_1.Checked;

   if not D_B0302_1.Enabled then
   begin
      D_B0302_1.Checked  := False;
      D_B0302_1E.Text    := '';      // ���� �๰ ���
   end;

end;


//------------------------------------------------------------------------------
// [Day - �߽����ư�(II)] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0609_1Click(Sender: TObject);
begin

   pn_DDetail11.Enabled := D_B0609_1.Checked;

   if not pn_DDetail11.Enabled then
   begin

      // �����Ͻ�
      D_B0610_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      D_B0610_2.Text := '';   // #


      // ����
      D_B0611_1.Checked := False;   // Subclavian
      D_B0611_2.Checked := False;   // Internal Jugular
      D_B0611_3.Checked := False;   // Femoral
      D_B0611_4.Checked := False;   // PICC
      D_B0611_5.Checked := False;   // A-Line
      D_B0611_6.Checked := False;   // UAC
      D_B0611_7.Checked := False;   // UVC


      // ��ġ
      D_B0612_1.Checked := False;   // �����
      D_B0612_2.Checked := False;   // �»���
      D_B0612_3.Checked := False;   // ������
      D_B0612_4.Checked := False;   // ������


      // cm (Fixed)
      D_B0613_1.Text    := '';


      // �巹�� ����
      D_B0614_1.Checked := False;   // �ʸ��巹��
      D_B0614_2.Checked := False;   // ����巹��


      // �巹�� ����
      D_B0615_1.Checked := False;   // ����
      D_B0615_2.Checked := False;   // ����
      D_B0615_3.Checked := False;   // ������


      // �巹�� ��ȯ
      D_B0616_1.Checked := False;  // ��
      D_B0616_2.Checked := False;  // �ƴϿ�
      D_B0616_3.Text    := '';     // #


      // ���Ժ��� ����
      D_B0617_1.Checked := False;  // ����
      D_B0617_2.Checked := False;  // ����
      D_B0617_3.Checked := False;  // ����
      D_B0617_4.Checked := False;  // ���⹰
   end;

end;


//------------------------------------------------------------------------------
// [Evn - �ΰ��⵵] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0101_1Click(Sender: TObject);
begin
   pn_EDetail01.Enabled := E_B0101_1.Checked;

   if not pn_EDetail01.Enabled then
   begin
      E_B0102_1.Checked := False;   // ET Tube
      E_B0103_1.Checked := False;   // Tracheostomy
   end;
end;


//------------------------------------------------------------------------------
// [Evn - ET Tube] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0102_1Click(Sender: TObject);
begin

   pn_EDetail02.Enabled := E_B0102_1.Checked;

   if not pn_EDetail02.Enabled then
   begin
      E_C0102_1.Text := '';   // #
      E_C0102_2.Text := '';   // �������
      E_C0102_3.Text := '';   // ����
      E_C0102_4.Text := '';   // ����
   end;
end;


//------------------------------------------------------------------------------
// [Evn - Tracheostomy] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0103_1Click(Sender: TObject);
begin
   pn_EDetail03.Enabled := E_B0103_1.Checked;

   if not pn_EDetail03.Enabled then
   begin
      E_C0103_1.Text := '';   // #
      E_C0103_2.Text := '';   // ��������
      E_C0103_3.Text := '';   // ����
   end;
end;


//------------------------------------------------------------------------------
// [Evn - ���ȯ��] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0201_1Click(Sender: TObject);
begin
   pn_EDetail04.Enabled := E_B0201_1.Checked;

   if not pn_EDetail04.Enabled then
   begin
      E_B0202_1.Text    := '';      // ��������
      E_B0202_2.Text    := '';      // ��������(#)
      E_B0202_3.Text    := '';      // Vent. Set
   end;
end;


//------------------------------------------------------------------------------
// [Evn - ����] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0301_1Click(Sender: TObject);
begin
   E_B0302_1.Enabled := E_B0301_1.Checked;

   if not E_B0302_1.Enabled then
   begin
      E_B0302_1.Checked  := False;
      E_B0302_1E.Text    := '';      // ���� �๰ ���
   end;
end;


//------------------------------------------------------------------------------
// [Evn - ����] Drug �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0302_1Click(Sender: TObject);
begin
   E_B0302_1E.Enabled := E_B0302_1.Checked
end;


//------------------------------------------------------------------------------
// [Evn - ����������] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0401_1Click(Sender: TObject);
begin

   E_B0401_3E.Enabled := E_B0401_3.Checked;  // NIPS score
   E_B0401_4E.Enabled := E_B0401_4.Checked;  // PIPP score


   if not E_B0401_3E.Enabled then
      E_B0401_3E.Text := '';

   if not E_B0401_4E.Enabled then
      E_B0401_4E.Text := '';


   pn_EDetail06.Enabled := E_B0401_3.Checked or E_B0401_4.Checked;


   if not pn_EDetail06.Enabled then
   begin
      E_C0401_1.Text := '';   // ���߿���
      E_C0403_1.Text := '';   // ������

      // ��
      E_C0404_1.Checked := False;   // ������
      E_C0404_2.Checked := False;   // ������
   end;

end;


//------------------------------------------------------------------------------
// [Evn - �������ư�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0501_1Click(Sender: TObject);
begin
   pn_EDetail07.Enabled := E_B0501_1.Checked;   // �������ư� 1

   if not pn_EDetail07.Enabled then
   begin
      // �����Ͻ�
      E_B0502_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      E_B0502_2.Text := '';   // #

      // ��ġ
      E_B0503_1.Checked := False;   // �����
      E_B0503_2.Checked := False;   // �»���
      E_B0503_3.Checked := False;   // ������
      E_B0503_4.Checked := False;   // ������


      // ���Ժ��� ����
      E_B0504_1.Checked := False;   // ����
      E_B0504_2.Checked := False;   // ������
      E_C0504_1.Checked := False;   // ����
      E_C0504_2.Checked := False;   // ����
      E_C0504_3.Checked := False;   // ����
      E_C0504_4.Checked := False;   // ����
   end;

end;


//------------------------------------------------------------------------------
// [Evn - �������ư�(II)] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0505_1Click(Sender: TObject);
begin

   pn_EDetail10.Enabled := E_B0505_1.Checked;   // �������ư� 2 �߰�


   if not pn_EDetail10.Enabled then
   begin
      // �����Ͻ�
      E_B0506_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      E_B0506_2.Text := '';   // #

      // ��ġ
      E_B0507_1.Checked := False;   // �����
      E_B0507_2.Checked := False;   // �»���
      E_B0507_3.Checked := False;   // ������
      E_B0507_4.Checked := False;   // ������

      // ���Ժ��� ����
      E_B0508_1.Checked := False;   // ����
      E_B0508_2.Checked := False;   // ������
      E_C0508_1.Checked := False;   // ����
      E_C0508_2.Checked := False;   // ����
      E_C0508_3.Checked := False;   // ����
      E_C0508_4.Checked := False;   // ����
   end;


end;


//------------------------------------------------------------------------------
// [Evn - �߽����ư�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0601_1Click(Sender: TObject);
begin
   pn_EDetail08.Enabled := E_B0601_1.Checked;

   if not pn_EDetail08.Enabled then
   begin
      // �����Ͻ�
      E_B0602_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      E_B0602_2.Text := '';   // #


      // ����
      E_B0603_1.Checked := False;   // Subclavian
      E_B0603_2.Checked := False;   // Internal Jugular
      E_B0603_3.Checked := False;   // Femoral
      E_B0603_4.Checked := False;   // PICC
      E_B0603_5.Checked := False;   // S-Gnz
      E_B0603_6.Checked := False;   // Left

      // ��ġ
      E_B0607_1.Checked := False;   // �����
      E_B0607_2.Checked := False;   // �»���
      E_B0607_3.Checked := False;   // ������
      E_B0607_4.Checked := False;   // ������

      // cm (Fixed)
      E_B0608_1.Text    := '';

      // �巹�� ����
      E_B0604_1.Checked := False;   // �ʸ��巹��
      E_B0604_2.Checked := False;   // ����巹��

      // �巹�� ����
      E_B0604_3.Checked := False;   // ����
      E_B0604_4.Checked := False;   // ����
      E_B0604_5.Checked := False;   // ������


      // �巹�� ��ȯ
      E_B0606_1.Checked := False;  // ��
      E_B0606_2.Checked := False;  // �ƴϿ�
      E_B0606_3.Text    := '';     // #

      // ���Ժ��� ����
      E_B0605_1.Checked := False;  // ����
      E_B0605_2.Checked := False;  // ����
      E_B0605_3.Checked := False;  // ����
      E_B0605_4.Checked := False;  // ���⹰

   end;

end;


//------------------------------------------------------------------------------
// [Evn - �߽����ư�(II)] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0609_1Click(Sender: TObject);
begin

   pn_EDetail11.Enabled := E_B0609_1.Checked;

   if not pn_EDetail11.Enabled then
   begin

      // �����Ͻ�
      E_B0610_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      E_B0610_2.Text := '';   // #


      // ����
      E_B0611_1.Checked := False;   // Subclavian
      E_B0611_2.Checked := False;   // Internal Jugular
      E_B0611_3.Checked := False;   // Femoral
      E_B0611_4.Checked := False;   // PICC
      E_B0611_5.Checked := False;   // A-Line
      E_B0611_6.Checked := False;   // UAC
      E_B0611_7.Checked := False;   // UVC


      // ��ġ
      E_B0612_1.Checked := False;   // �����
      E_B0612_2.Checked := False;   // �»���
      E_B0612_3.Checked := False;   // ������
      E_B0612_4.Checked := False;   // ������


      // cm (Fixed)
      E_B0613_1.Text    := '';


      // �巹�� ����
      E_B0614_1.Checked := False;   // �ʸ��巹��
      E_B0614_2.Checked := False;   // ����巹��


      // �巹�� ����
      E_B0615_1.Checked := False;   // ����
      E_B0615_2.Checked := False;   // ����
      E_B0615_3.Checked := False;   // ������


      // �巹�� ��ȯ
      E_B0616_1.Checked := False;  // ��
      E_B0616_2.Checked := False;  // �ƴϿ�
      E_B0616_3.Text    := '';     // #


      // ���Ժ��� ����
      E_B0617_1.Checked := False;  // ����
      E_B0617_2.Checked := False;  // ����
      E_B0617_3.Checked := False;  // ����
      E_B0617_4.Checked := False;  // ���⹰
   end;

end;

//------------------------------------------------------------------------------
// [Evn - ��â�߻�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0701_1Click(Sender: TObject);
begin
   pn_EDetail09.Enabled := E_B0701_1.Checked;   // ��ġ-�ܰ�/ũ��
   pn_EDetail12.Enabled := E_B0701_1.Checked;   // �Խǽ�, �Խ���


   if not pn_EDetail09.Enabled then
   begin
      E_C0701_1.Checked := False;   // �Խ� ��
      E_C0701_2.Checked := False;   // �Խ� ��
      E_C0701_3.Text    := '';      // ��ġ
      E_C0701_4.Text    := '';      // �ܰ�
      E_C0701_5.Text    := '';      // ũ��
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - �ΰ��⵵] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0101_1Click(Sender: TObject);
begin
   pn_NDetail01.Enabled := N_B0101_1.Checked;

   if not pn_NDetail01.Enabled then
   begin
      N_B0102_1.Checked := False;   // ET Tube
      N_B0103_1.Checked := False;   // Tracheostomy
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - ET Tube] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0102_1Click(Sender: TObject);
begin
   pn_NDetail02.Enabled := N_B0102_1.Checked;

   if not pn_NDetail02.Enabled then
   begin
      N_C0102_1.Text := '';   // #
      N_C0102_2.Text := '';   // �������
      N_C0102_3.Text := '';   // ����
      N_C0102_4.Text := '';   // ����
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - Tracheostomy] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0103_1Click(Sender: TObject);
begin
   pn_NDetail03.Enabled := N_B0103_1.Checked;

   if not pn_NDetail03.Enabled then
   begin
      N_C0103_1.Text := '';   // #
      N_C0103_2.Text := '';   // ��������
      N_C0103_3.Text := '';   // ����
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - ���ȯ��] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0201_1Click(Sender: TObject);
begin
   pn_NDetail04.Enabled := N_B0201_1.Checked;

   if not pn_NDetail04.Enabled then
   begin
      N_B0202_1.Text    := '';      // ��������
      N_B0202_2.Text    := '';      // ��������(#)
      N_B0202_3.Text    := '';      // Vent. Set
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - ����] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0301_1Click(Sender: TObject);
begin
   N_B0302_1.Enabled := N_B0301_1.Checked;

   if not N_B0302_1.Enabled then
   begin
      N_B0302_1.Checked  := False;
      N_B0302_1E.Text    := '';      // ���� �๰ ���
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - ����] Drug �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0302_1Click(Sender: TObject);
begin
   N_B0302_1E.Enabled := N_B0302_1.Checked
end;


//------------------------------------------------------------------------------
// [Ngt - ����������] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0401_1Click(Sender: TObject);
begin

   N_B0401_3E.Enabled := N_B0401_3.Checked;  // NIPS score
   N_B0401_4E.Enabled := N_B0401_4.Checked;  // PIPP score


   if not N_B0401_3E.Enabled then
      N_B0401_3E.Text := '';

   if not N_B0401_4E.Enabled then
      N_B0401_4E.Text := '';


   pn_NDetail06.Enabled := N_B0401_3.Checked or N_B0401_4.Checked;


   if not pn_NDetail06.Enabled then
   begin
      N_C0401_1.Text := '';   // ���߿���
      N_C0403_1.Text := '';   // ������

      // ��
      N_C0404_1.Checked := False;   // ������
      N_C0404_2.Checked := False;   // ������
   end;


end;


//------------------------------------------------------------------------------
// [Evn - ���������� - Drug] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0402_1Click(Sender: TObject);
begin
   E_B0402_1E.Enabled := E_B0402_1.Checked;

   if not E_B0402_1E.Enabled then
      E_B0402_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - ���������� - Drug] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0402_1Click(Sender: TObject);
begin
   N_B0402_1E.Enabled := N_B0402_1.Checked;

   if not N_B0402_1E.Enabled then
      N_B0402_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - �������ư�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0501_1Click(Sender: TObject);
begin
   pn_NDetail07.Enabled := N_B0501_1.Checked;   // �������ư� 1

   if not pn_NDetail07.Enabled then
   begin
      // �����Ͻ�
      N_B0502_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      N_B0502_2.Text := '';   // #

      // ��ġ
      N_B0503_1.Checked := False;   // �����
      N_B0503_2.Checked := False;   // �»���
      N_B0503_3.Checked := False;   // ������
      N_B0503_4.Checked := False;   // ������

      // ���Ժ��� ����
      N_B0504_1.Checked := False;   // ����
      N_B0504_2.Checked := False;   // ������
      N_C0504_1.Checked := False;   // ����
      N_C0504_2.Checked := False;   // ����
      N_C0504_3.Checked := False;   // ����
      N_C0504_4.Checked := False;   // ����
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - �������ư�(II)] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0505_1Click(Sender: TObject);
begin

   pn_NDetail10.Enabled := N_B0505_1.Checked;   // �������ư� 2 �߰�


   if not pn_NDetail10.Enabled then
   begin
      // �����Ͻ�
      N_B0506_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      N_B0506_2.Text := '';   // #

      // ��ġ
      N_B0507_1.Checked := False;   // �����
      N_B0507_2.Checked := False;   // �»���
      N_B0507_3.Checked := False;   // ������
      N_B0507_4.Checked := False;   // ������

      // ���Ժ��� ����
      N_B0508_1.Checked := False;   // ����
      N_B0508_2.Checked := False;   // ������
      N_C0508_1.Checked := False;   // ����
      N_C0508_2.Checked := False;   // ����
      N_C0508_3.Checked := False;   // ����
      N_C0508_4.Checked := False;   // ����
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - �߽����ư�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0601_1Click(Sender: TObject);
begin
   pn_NDetail08.Enabled := N_B0601_1.Checked;

   if not pn_NDetail08.Enabled then
   begin
      // �����Ͻ�
      N_B0602_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      N_B0602_2.Text := '';   // #


      // ����
      N_B0603_1.Checked := False;   // Subclavian
      N_B0603_2.Checked := False;   // Internal Jugular
      N_B0603_3.Checked := False;   // Femoral
      N_B0603_4.Checked := False;   // PICC
      N_B0603_5.Checked := False;   // S-Gnz
      N_B0603_6.Checked := False;   // Left

      // ��ġ
      N_B0607_1.Checked := False;   // �����
      N_B0607_2.Checked := False;   // �»���
      N_B0607_3.Checked := False;   // ������
      N_B0607_4.Checked := False;   // ������

      // cm (Fixed)
      N_B0608_1.Text    := '';

      // �巹�� ����
      N_B0604_1.Checked := False;   // �ʸ��巹��
      N_B0604_2.Checked := False;   // ����巹��

      // �巹�� ����
      N_B0604_3.Checked := False;   // ����
      N_B0604_4.Checked := False;   // ����
      N_B0604_5.Checked := False;   // ������


      // �巹�� ��ȯ
      N_B0606_1.Checked := False;  // ��
      N_B0606_2.Checked := False;  // �ƴϿ�
      N_B0606_3.Text    := '';     // #

      // ���Ժ��� ����
      N_B0605_1.Checked := False;  // ����
      N_B0605_2.Checked := False;  // ����
      N_B0605_3.Checked := False;  // ����
      N_B0605_4.Checked := False;  // ���⹰

   end;

end;


//------------------------------------------------------------------------------
// [Ngt - �߽����ư�(II)] ��/�� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0609_1Click(Sender: TObject);
begin

   pn_NDetail11.Enabled := N_B0609_1.Checked;

   if not pn_NDetail11.Enabled then
   begin

      // �����Ͻ�
      N_B0610_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      N_B0610_2.Text := '';   // #


      // ����
      N_B0611_1.Checked := False;   // Subclavian
      N_B0611_2.Checked := False;   // Internal Jugular
      N_B0611_3.Checked := False;   // Femoral
      N_B0611_4.Checked := False;   // PICC
      N_B0611_5.Checked := False;   // A-Line
      N_B0611_6.Checked := False;   // UAC
      N_B0611_7.Checked := False;   // UVC


      // ��ġ
      N_B0612_1.Checked := False;   // �����
      N_B0612_2.Checked := False;   // �»���
      N_B0612_3.Checked := False;   // ������
      N_B0612_4.Checked := False;   // ������


      // cm (Fixed)
      N_B0613_1.Text    := '';


      // �巹�� ����
      N_B0614_1.Checked := False;   // �ʸ��巹��
      N_B0614_2.Checked := False;   // ����巹��


      // �巹�� ����
      N_B0615_1.Checked := False;   // ����
      N_B0615_2.Checked := False;   // ����
      N_B0615_3.Checked := False;   // ������


      // �巹�� ��ȯ
      N_B0616_1.Checked := False;  // ��
      N_B0616_2.Checked := False;  // �ƴϿ�
      N_B0616_3.Text    := '';     // #


      // ���Ժ��� ����
      N_B0617_1.Checked := False;  // ����
      N_B0617_2.Checked := False;  // ����
      N_B0617_3.Checked := False;  // ����
      N_B0617_4.Checked := False;  // ���⹰
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - ��â�߻�] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0701_1Click(Sender: TObject);
begin
   pn_NDetail09.Enabled := N_B0701_1.Checked;   // ��ġ-�ܰ�/ũ��
   pn_NDetail12.Enabled := N_B0701_1.Checked;   // �Խǽ�, �Խ���


   if not pn_NDetail09.Enabled then
   begin
      N_C0701_1.Checked := False;   // �Խ� ��
      N_C0701_2.Checked := False;   // �Խ� ��
      N_C0701_3.Text    := '';      // ��ġ
      N_C0701_4.Text    := '';      // �ܰ�
      N_C0701_5.Text    := '';      // ũ��
   end;
end;



//------------------------------------------------------------------------------
// [Day - ���󿹹���� - ��Ÿ] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0801_4Click(Sender: TObject);
begin
   D_B0801_4E.Enabled := D_B0801_4.Checked;

   if not D_B0801_4E.Enabled then
      D_B0801_4E.Text := '';

end;


//------------------------------------------------------------------------------
// [Evn - ���󿹹���� - ��Ÿ] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0801_4Click(Sender: TObject);
begin
   E_B0801_4E.Enabled := E_B0801_4.Checked;

   if not E_B0801_4E.Enabled then
      E_B0801_4E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - ���󿹹���� - ��Ÿ] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0801_4Click(Sender: TObject);
begin
   N_B0801_4E.Enabled := N_B0801_4.Checked;

   if not N_B0801_4E.Enabled then
      N_B0801_4E.Text := '';

end;



//------------------------------------------------------------------------------
// [Day - �������ư�(I)] ���Ժ��� ���� �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0504_1Click(Sender: TObject);
begin
   pn_DDetail13.Enabled := D_B0504_2.Checked;   // ������

   if not pn_DDetail13.Enabled then
   begin
      D_C0504_1.Checked := False;   // ����
      D_C0504_2.Checked := False;   // ����
      D_C0504_3.Checked := False;   // ����
      D_C0504_4.Checked := False;   // ����
   end;
end;



//------------------------------------------------------------------------------
// [Evn - �������ư�(I)] ���Ժ��� ���� �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0504_1Click(Sender: TObject);
begin
   pn_EDetail13.Enabled := E_B0504_2.Checked;   // ������

   if not pn_EDetail13.Enabled then
   begin
      E_C0504_1.Checked := False;   // ����
      E_C0504_2.Checked := False;   // ����
      E_C0504_3.Checked := False;   // ����
      E_C0504_4.Checked := False;   // ����
   end;
end;



//------------------------------------------------------------------------------
// [Ngt - �������ư�(I)] ���Ժ��� ���� �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0504_1Click(Sender: TObject);
begin
   pn_NDetail13.Enabled := N_B0504_2.Checked;   // ������

   if not pn_NDetail13.Enabled then
   begin
      N_C0504_1.Checked := False;   // ����
      N_C0504_2.Checked := False;   // ����
      N_C0504_3.Checked := False;   // ����
      N_C0504_4.Checked := False;   // ����
   end;
end;



//------------------------------------------------------------------------------
// [Day - �������ư�(II)] ���Ժ��� ���� �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0508_1Click(Sender: TObject);
begin
   pn_DDetail14.Enabled := D_B0508_2.Checked;   // ������

   if not pn_DDetail14.Enabled then
   begin
      D_C0508_1.Checked := False;   // ����
      D_C0508_2.Checked := False;   // ����
      D_C0508_3.Checked := False;   // ����
      D_C0508_4.Checked := False;   // ����
   end;
end;


//------------------------------------------------------------------------------
// [Evn - �������ư�(II)] ���Ժ��� ���� �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0508_1Click(Sender: TObject);
begin
   pn_EDetail14.Enabled := E_B0508_2.Checked;   // ������

   if not pn_EDetail14.Enabled then
   begin
      E_C0508_1.Checked := False;   // ����
      E_C0508_2.Checked := False;   // ����
      E_C0508_3.Checked := False;   // ����
      E_C0508_4.Checked := False;   // ����
   end;
end;



//------------------------------------------------------------------------------
// [Ngt - �������ư�(II)] ���Ժ��� ���� �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0508_1Click(Sender: TObject);
begin
   pn_NDetail14.Enabled := N_B0508_2.Checked;   // ������

   if not pn_NDetail14.Enabled then
   begin
      N_C0508_1.Checked := False;   // ����
      N_C0508_2.Checked := False;   // ����
      N_C0508_3.Checked := False;   // ����
      N_C0508_4.Checked := False;   // ����
   end;
end;


//------------------------------------------------------------------------------
// [Evn - ��â�������Ȱ�� �� ġ�� - ��Ÿ] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0703_5Click(Sender: TObject);
begin
   E_B0703_5E.Enabled := E_B0703_5.Checked;

   if not E_B0703_5E.Enabled then
      E_B0703_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - ��â�������Ȱ�� �� ġ�� - ��Ÿ] �׸� ����
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0703_5Click(Sender: TObject);
begin
   N_B0703_5E.Enabled := N_B0703_5.Checked;

   if not N_B0703_5E.Enabled then
      N_B0703_5E.Text := '';
end;



//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ�� ��ȸ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FX.bbt_SelectClick(Sender: TObject);
var
   sGubun, sWardNo, sPatNo, sAdmDate, sSetType : string;
begin

   ugd_EmrList.Clear;
   ugd_EmrList.RowCount := 2;


   //-------------------------------------------------------------------
   // ���� Assign
   //-------------------------------------------------------------------
   sGubun   := '6';
   sWardNo  := '';
   sPatNo   := FsPatNo;
   sAdmDate := DelChar(FsAdmDate,'-');

   // NICU �ӻ�����ǥ ������ �߰� -2014.11.27 smpark
   sSetType := 'ICNNQ';


   //-------------------------------------------------------------------
   // EMR ��� ��ȸ
   //-------------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(sGubun, sWardNo, sPatNo, sAdmDate, sSetType, '', '');

end;




procedure TMDN110FX.bbt_ToNrRecordDClick(Sender: TObject);
var
   sFlag      : String; // D/E/N Caller Component Flag
   sNrsRecord : String; // ��ȣ��� ����
   sTime      : String; // ����Ͻ�

   // �ΰ��⵵
   sB0101     : String; // ����
   sB0102     : String; // ET tube
   sB0103     : String; // Tracheostomy
   // ���ȯ��
   sB0201     : String; // ����
   sB0202     : String; // ��������
   sB0203     : String; // Vent.Circuit
   // ����
   sB0301     : String; // ����
   sB0302     : String; // Drug
   // ������
   sB0401     : String; // score
   sC0401     : String; // ���߿���
   sC0403     : String; // ������
   sC0404     : String; // ��
   sB0402     : String; // Drug
   // �������ư� I
   sB0501     : String; // ����
   sB0502     : String; // ��������
   sB0503     : String; // ��ġ
   sB0504     : String; // ���Ժ��� ����
   sC0504     : String; // ���Ժ��� ���� ������
   // �������ư� II
   sB0505     : String; // ����
   sB0506     : String; // �����Ͻ�
   sB0507     : String; // ��ġ
   sB0508     : String; // ���Ժ��� ����
   sC0508     : String; // ���Ժ��� ���� ������
   // �߽����� �� ���ư� I
   sB0601     : String; // ����
   sB0602     : String; // �����Ͻ�
   sB0603     : String; // ����
   sB0607     : String; // ��ġ
   sB0608     : String; // cm (fixed)
   sB0604_a   : String; // �巹�� ����
   sB0604_b   : String; // �巹�� ����
   sB0606     : String; // �巹�� ��ȯ
   sB0605     : String; // ���Ժ��� ����
   // �߽����� �� ���ư� II
   sB0609     : String; // ����
   sB0610     : String; // �����Ͻ�
   sB0611     : String; // ����
   sB0612     : String; // ��ġ
   sB0613     : String; // cm (fixed)
   sB0614     : String; // �巹�� ����
   sB0615     : String; // �巹�� ����
   sB0616     : String; // �巹�� ��ȯ
   sB0617     : String; // ���Ժ��� ����
   // ��â�������
   sB0701     : String; // ����
   sC0701     : String; // ��ġ,�ܰ�,ũ��
   sB0702     : String; // Neonatal Skin Assessment Scale
   sB0704     : String; // WOCN consult
   sB0705     : String; // Dressing
   sB0703     : String; // ���� �� ����Ȱ��
   // ���󿹹�Ȱ��
   sB0801      : String; // ���󿹹�Ȱ��

   sSummary1       : String; // �ΰ��⵵
   sSummary2       : String; // ���ȯ��
   sSummary3       : String; // ����
   sSummary4       : String; // ������
   sSummary5       : String; // �������ư� I
   sSummary6       : String; // �������ư� II
   sSummary7       : String; // �߽����� �� ���ư� I
   sSummary8       : String; // �߽����� �� ���ư� II
   sSummary9       : String; // ��â�������
   sSummary10      : String; // ���󿹹�Ȱ��

   // [EMR����] 2016-07-13 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   aPacket : IPipePacket;
   i : Integer;
   jPatInfo : TJsonObject;
begin
   SendLogViewData('INPUT', 'Ȯ��');
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

      // �ΰ��⵵
      begin
         // �ΰ��⵵ ����
         if      (Self.FindComponent(sFlag + '_B0101_1') as TRadioButton).Checked then
         begin
            sB0101 := '�ΰ��⵵ ��';
         end
         else if (Self.FindComponent(sFlag + '_B0101_2') as TRadioButton).Checked then
         begin
            sB0101 := '�ΰ��⵵ ��';
         end
         else
         begin
            sB0101 := '';
         end;

         // ET tube
         if      (Self.FindComponent(sFlag + '_B0102_1') as TCheckBox).Checked then
         begin
            sB0102 :=  'ET tube '
                     + '(#'
                     + (Self.FindComponent(sFlag + '_C0102_1') as TEdit).Text
                     + ') '
                     + '�������:'
                     + (Self.FindComponent(sFlag + '_C0102_2') as TMaskEdit).Text
                     + ' '
                     + '����:'
                     + (Self.FindComponent(sFlag + '_C0102_3') as TEdit).Text
                     + 'mm'
                     + ' '
                     + '����:'
                     + (Self.FindComponent(sFlag + '_C0102_4') as TEdit).Text
                     + 'cm'
                     ;
         end
         else
         begin
            sB0102 := 'ET tube ��';
         end;

         // Tracheostomy
         if      (Self.FindComponent(sFlag + '_B0103_1') as TCheckBox).Checked then
         begin
            sB0103 :=  'Tracheostomy '
                     + '(#'
                     + (Self.FindComponent(sFlag + '_C0103_1') as TEdit).Text
                     + ') '
                     + '��������:'
                     + (Self.FindComponent(sFlag + '_C0103_2') as TMaskEdit).Text
                     + ' '
                     + '����:'
                     + (Self.FindComponent(sFlag + '_C0103_3') as TEdit).Text
                     + 'mm'
                     ;
         end
         else
         begin
            sB0103 := '';
         end;
      end;

      // ���ȯ��
      begin
         // ���ȯ�� ����
         if      (Self.FindComponent(sFlag + '_B0201_1') as TRadioButton).Checked then
         begin
            sB0201 := '���ȯ�� ��';
         end
         else if (Self.FindComponent(sFlag + '_B0201_2') as TRadioButton).Checked then
         begin
            sB0201 := '���ȯ�� ��';
         end
         else
         begin
            sB0201 := '';
         end;

         // ��������
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0202_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0202_2') as TEdit).Text <> '') then
         begin
            sB0202 :=  '��������:'
                     + (Self.FindComponent(sFlag + '_B0202_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0202_2') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0202 := '';
         end;

         // Vent.Circuit
         if (Self.FindComponent(sFlag + '_B0202_3') as TEdit).Text <> '' then
         begin
            sB0203 := 'Vent.Circuit:'
                    + (Self.FindComponent(sFlag + '_B0202_3') as TEdit).Text
                    + '��°'
                    ;
         end;
      end;

      // ����
      begin
         // ����
         if      (Self.FindComponent(sFlag + '_B0301_1') as TRadioButton).Checked then
         begin
            sB0301 := '���� ��';
         end
         else if (Self.FindComponent(sFlag + '_B0301_2') as TRadioButton).Checked then
         begin
            sB0301 := '���� ��';
         end
         else
         begin
            sB0301 := '';
         end;

         // Drug
         if (Self.FindComponent(sFlag + '_B0302_1') as TCheckBox).Checked then
         begin
            sB0302 :=  'Drug:'
                     + (Self.FindComponent(sFlag + '_B0302_1E') as TEdit).Text
                     ;
         end
         else
         begin
            sB0302 := '';
         end;
      end;

      // ������
      begin
         // score
         if      (Self.FindComponent(sFlag + '_B0401_1') as TRadioButton).Checked then
         begin
            sB0401 := '������ �����Ұ�';
         end
         else if (Self.FindComponent(sFlag + '_B0401_3') as TRadioButton).Checked then
         begin
            sB0401 :=  '������ NIPS:'
                     + (Self.FindComponent(sFlag + '_B0401_3E') as TEdit).Text
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0401_4') as TRadioButton).Checked then
         begin
            sB0401 :=  '������ PIPP:'
                    + (Self.FindComponent(sFlag + '_B0401_4E') as TEdit).Text
                    ;
         end
         else
         begin
            sB0401 := '';
         end;

         // ���߿���
         if (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text <> '' then
         begin
            sC0401 :=  '���߿���:'
                     + (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text
                     ;
         end
         else
         begin
            sC0401 := '';
         end;

         // ������
         if (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text <> '' then
         begin
            sC0403 :=  '������:'
                     + (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text
                     ;
         end
         else
         begin
            sC0403 := '';
         end;

         // ��
         if      (Self.FindComponent(sFlag + '_C0404_1') as TRadioButton).Checked then
         begin
            sC0404 := '��:������';
         end
         else if (Self.FindComponent(sFlag + '_C0404_2') as TRadioButton).Checked then
         begin
            sC0404 := '��:������';
         end
         else
         begin
            sC0404 := '';
         end;

         // Drug
         if (Self.FindComponent(sFlag + '_B0402_1') as TCheckBox).Checked then
         begin
            sB0402 :=  'Drug:'
                     + (Self.FindComponent(sFlag + '_B0402_1E') as TEdit).Text
                     ;
         end
         else
         begin
            sB0402 := '';
         end;
      end;

      // �������ư� I
      begin
         // �������ư� I ����
         if      (Self.FindComponent(sFlag + '_B0501_1') as TRadioButton).Checked then
         begin
            sB0501 := '�������ư� I ��';
         end
         else if (Self.FindComponent(sFlag + '_B0501_2') as TRadioButton).Checked then
         begin
            sB0501 := '�������ư� I ��';
         end
         else
         begin
            sB0501 := '';
         end;

         // ��������
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0502_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0502_2') as TEdit).Text <> '') then
         begin
            sB0502 :=  '��������:'
                     + (Self.FindComponent(sFlag + '_B0502_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0502_2') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0502 := '';
         end;

         // ��ġ
         sB0503 := '';

         if (Self.FindComponent(sFlag + '_B0503_4') as TCheckBox).Checked then
         begin
            sB0503 := '������' + ',' + sB0503;
         end;

         if (Self.FindComponent(sFlag + '_B0503_3') as TCheckBox).Checked then
         begin
            sB0503 := '������' + ',' + sB0503;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_2') as TCheckBox).Checked then
         begin
            sB0503 := '�»���' + ',' + sB0503;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_1') as TCheckBox).Checked then
         begin
            sB0503 := '�����' + ',' + sB0503;;
         end;

         if sB0503 <> '' then
         begin
            sB0503 := Copy(sB0503, 1, Length(sB0503)-1);
            sB0503 := '��ġ:' + sB0503;
         end;

         // ���Ժ��� ����
         if      (Self.FindComponent(sFlag + '_B0504_1') as TRadioButton).Checked then
         begin
            sB0504 := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0504_2') as TRadioButton).Checked then
         begin
            sB0504 := '���Ժ��� ����:������';

            if ((Self.FindComponent(sFlag + '_C0504_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0504_2') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0504_3') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0504_4') as TCheckBox).Checked)    then
            begin
               sC0504 := sC0504 + '(';
            end;

            if      (Self.FindComponent(sFlag + '_C0504_1') as TCheckBox).Checked then
            begin
               if sC0504 <> '(' then
               begin
                  sC0504 := sC0504
                          + ','
                          ;
               end;

               sC0504 := sC0504
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0504_2') as TCheckBox).Checked then
            begin
               if sC0504 <> '(' then
               begin
                  sC0504 := sC0504
                          + ','
                          ;
               end;

               sC0504 := sC0504
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0504_3') as TCheckBox).Checked then
            begin
               if sC0504 <> '(' then
               begin
                  sC0504 := sC0504
                          + ','
                          ;
               end;

               sC0504 := sC0504
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0504_4') as TCheckBox).Checked then
            begin
               if sC0504 <> '(' then
               begin
                  sC0504 := sC0504
                          + ','
                          ;
               end;

               sC0504 := sC0504
                       + '����';
            end;

            if ((Self.FindComponent(sFlag + '_C0504_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0504_2') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0504_3') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0504_4') as TCheckBox).Checked)    then
            begin
               sC0504 := sC0504 + ')';
            end;
         end
         else
         begin
            sB0504 := '';
         end;
      end;

      // �������ư� II
      begin
         // �������ư� II ����
         if      (Self.FindComponent(sFlag + '_B0505_1') as TRadioButton).Checked then
         begin
            sB0505 := '�������ư� II ��';
         end
         else if (Self.FindComponent(sFlag + '_B0505_2') as TRadioButton).Checked then
         begin
            sB0505 := '�������ư� II ��';
         end
         else
         begin
            sB0505 := '';
         end;

         // �����Ͻ�
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0506_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0506_2') as TEdit).Text <> '') then
         begin
            sB0506 :=  '�����Ͻ�:'
                     + (Self.FindComponent(sFlag + '_B0506_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0506_2') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0506 := '';
         end;

         // ��ġ
         sB0507 := '';

         if (Self.FindComponent(sFlag + '_B0507_4') as TCheckBox).Checked then
         begin
            sB0507 := '������' + ',' + sB0507;
         end;

         if (Self.FindComponent(sFlag + '_B0507_3') as TCheckBox).Checked then
         begin
            sB0507 := '������' + ',' + sB0507;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_2') as TCheckBox).Checked then
         begin
            sB0507 := '�»���' + ',' + sB0507;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_1') as TCheckBox).Checked then
         begin
            sB0507 := '�����' + ',' + sB0507;;
         end;

         if sB0507 <> '' then
         begin
            sB0507 := Copy(sB0507, 1, Length(sB0507)-1);
            sB0507 := '��ġ:' + sB0507;
         end;

         // ���Ժ��� ����
         if      (Self.FindComponent(sFlag + '_B0508_1') as TRadioButton).Checked then
         begin
            sB0508 := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0508_2') as TRadioButton).Checked then
         begin
            sB0508 := '���Ժ��� ����:������';

            if ((Self.FindComponent(sFlag + '_C0508_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0508_2') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0508_3') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0508_4') as TCheckBox).Checked)    then
            begin
               sC0508 := sC0508 + '(';
            end;

            if      (Self.FindComponent(sFlag + '_C0508_1') as TCheckBox).Checked then
            begin
               if sC0508 <> '(' then
               begin
                  sC0508 := sC0508
                          + ','
                          ;
               end;

               sC0508 := sC0508
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0508_2') as TCheckBox).Checked then
            begin
               if sC0508 <> '(' then
               begin
                  sC0508 := sC0508
                          + ','
                          ;
               end;

               sC0508 := sC0508
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0508_3') as TCheckBox).Checked then
            begin
               if sC0508 <> '(' then
               begin
                  sC0508 := sC0508
                          + ','
                          ;
               end;

               sC0508 := sC0508
                       + '����';
            end;

            if      (Self.FindComponent(sFlag + '_C0508_4') as TCheckBox).Checked then
            begin
               if sC0508 <> '(' then
               begin
                  sC0508 := sC0508
                          + ','
                          ;
               end;

               sC0508 := sC0508
                       + '����';
            end;

            if ((Self.FindComponent(sFlag + '_C0508_1') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0508_2') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0508_3') as TCheckBox).Checked) or
               ((Self.FindComponent(sFlag + '_C0508_4') as TCheckBox).Checked)    then
            begin
               sC0508 := sC0508 + ')';
            end;
         end
         else
         begin
            sB0508 := '';
         end;
      end;

      // �߽����ơ����ư� I
      begin
         // �߽����ơ����ư� I ����
         if      (Self.FindComponent(sFlag + '_B0601_1') as TRadioButton).Checked then
         begin
            sB0601 := '�߽����ơ����ư� I ��';
         end
         else if (Self.FindComponent(sFlag + '_B0601_2') as TRadioButton).Checked then
         begin
            sB0601 := '';
         end
         else
         begin
            sB0601 := '';
         end;

         // ��������
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0602_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0602_2') as TEdit).Text <> '') then
         begin
            sB0602 :=  '��������:'
                     + (Self.FindComponent(sFlag + '_B0602_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0602_2') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0602 := '';
         end;

         // ����
         sB0603 := '';

         if (Self.FindComponent(sFlag + '_B0603_7') as TCheckBox).Checked then
         begin
            sB0603 := 'UVC' + ',' + sB0603;
         end;

         if (Self.FindComponent(sFlag + '_B0603_6') as TCheckBox).Checked then
         begin
            sB0603 := 'UAC' + ',' + sB0603;
         end;

         if (Self.FindComponent(sFlag + '_B0603_5') as TCheckBox).Checked then
         begin
            sB0603 := 'A-Line' + ',' + sB0603;
         end;

         if (Self.FindComponent(sFlag + '_B0603_4') as TCheckBox).Checked then
         begin
            sB0603 := 'PICC' + ',' + sB0603;
         end;

         if (Self.FindComponent(sFlag + '_B0603_3') as TCheckBox).Checked then
         begin
            sB0603 := 'Femoral' + ',' + sB0603;
         end;

         if (Self.FindComponent(sFlag + '_B0603_2') as TCheckBox).Checked then
         begin
            sB0603 := 'Internal jugular' + ',' + sB0603;
         end;

         if (Self.FindComponent(sFlag + '_B0603_1') as TCheckBox).Checked then
         begin
            sB0603 := 'Subclavian' + ',' + sB0603;
         end;

         if sB0603 <> '' then
         begin
            sB0603 := Copy(sB0603, 1, Length(sB0603)-1);
            sB0603 := '����:' + sB0603;
         end;

         // ��ġ
         sB0607 := '';

         if (Self.FindComponent(sFlag + '_B0607_4') as TCheckBox).Checked then
         begin
            sB0607 := '������' + ',' + sB0607;
         end;

         if (Self.FindComponent(sFlag + '_B0607_3') as TCheckBox).Checked then
         begin
            sB0607 := '������' + ',' + sB0607;;
         end;

         if (Self.FindComponent(sFlag + '_B0607_2') as TCheckBox).Checked then
         begin
            sB0607 := '�»���' + ',' + sB0607;;
         end;

         if (Self.FindComponent(sFlag + '_B0607_1') as TCheckBox).Checked then
         begin
            sB0607 := '�����' + ',' + sB0607;;
         end;

         if sB0607 <> '' then
         begin
            sB0607 := Copy(sB0607, 1, Length(sB0607)-1);
            sB0607 := '��ġ:' + sB0607;
         end;

         // cm (fixed)
         if (Self.FindComponent(sFlag + '_B0608_1') as TEdit).Text <> '' then
         begin
            sB0608 :=  'cm (fixed):'
                     + (Self.FindComponent(sFlag + '_B0608_1') as TEdit).Text
                     ;
         end
         else
         begin
            sB0608 := '';
         end;

         // �巹�� ����
         sB0604_a := '';

         if (Self.FindComponent(sFlag + '_B0604_2') as TCheckBox).Checked then
         begin
            sB0604_a := '����巹��' + ',' + sB0604_a;
         end;

         if (Self.FindComponent(sFlag + '_B0604_1') as TCheckBox).Checked then
         begin
            sB0604_a := '�ʸ��巹��' + ',' + sB0604_a;
         end;

         if sB0604_a <> '' then
         begin
            sB0604_a := Copy(sB0604_a, 1, Length(sB0604_a)-1);
            sB0604_a := '�巹�� ����:' + sB0604_a;
         end;

         // �巹�� ����
         sB0604_b := '';

         if (Self.FindComponent(sFlag + '_B0604_5') as TCheckBox).Checked then
         begin
            sB0604_b := '������' + ',' + sB0604_b;
         end;

         if (Self.FindComponent(sFlag + '_B0604_4') as TCheckBox).Checked then
         begin
            sB0604_b := '����' + ',' + sB0604_b;
         end;

         if (Self.FindComponent(sFlag + '_B0604_3') as TCheckBox).Checked then
         begin
            sB0604_b := '����' + ',' + sB0604_b;
         end;

         if sB0604_b <> '' then
         begin
            sB0604_b := Copy(sB0604_b, 1, Length(sB0604_b)-1);
            sB0604_b := '�巹�� ����:' + sB0604_b;
         end;

         // �巹�� ��ȯ
         if      (Self.FindComponent(sFlag + '_B0606_1') as TRadioButton).Checked then
         begin
            sB0606 :=  '�巹�� ��ȯ:��'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0606_2') as TRadioButton).Checked then
         begin
            sB0606 :=  '�巹�� ��ȯ:�ƴϿ�'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0606 := '';
         end;

         // ���Ժ��� ����
         sB0605 := '';

         if (Self.FindComponent(sFlag + '_B0605_4') as TCheckBox).Checked then
         begin
            sB0605 := '���⹰' + ',' + sB0605;
         end;

         if (Self.FindComponent(sFlag + '_B0605_3') as TCheckBox).Checked then
         begin
            sB0605 := '����' + ',' + sB0605;
         end;

         if (Self.FindComponent(sFlag + '_B0605_2') as TCheckBox).Checked then
         begin
            sB0605 := '����' + ',' + sB0605;
         end;

         if (Self.FindComponent(sFlag + '_B0605_1') as TCheckBox).Checked then
         begin
            sB0605 := '����' + ',' + sB0605;
         end;

         if sB0605 <> '' then
         begin
            sB0605 := Copy(sB0605, 1, Length(sB0605)-1);
            sB0605 := '���Ժ��� ����:' + sB0605;
         end;
      end;

      // �߽����ơ����ư� II
      begin
         // �߽����ơ����ư� II ����
         if      (Self.FindComponent(sFlag + '_B0609_1') as TRadioButton).Checked then
         begin
            sB0609 := '�߽����ơ����ư� II ��';
         end
         else if (Self.FindComponent(sFlag + '_B0609_2') as TRadioButton).Checked then
         begin
            sB0609 := '';
         end
         else
         begin
            sB0609 := '';
         end;

         // ��������
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0610_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0610_2') as TEdit).Text <> '') then
         begin
            sB0610 :=  '��������:'
                     + (Self.FindComponent(sFlag + '_B0610_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0610_2') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0610 := '';
         end;

         // ����
         sB0611 := '';

         if (Self.FindComponent(sFlag + '_B0611_7') as TCheckBox).Checked then
         begin
            sB0611 := 'UVC' + ',' + sB0611;
         end;

         if (Self.FindComponent(sFlag + '_B0611_6') as TCheckBox).Checked then
         begin
            sB0611 := 'UAC' + ',' + sB0611;
         end;

         if (Self.FindComponent(sFlag + '_B0611_5') as TCheckBox).Checked then
         begin
            sB0611 := 'A-Line' + ',' + sB0611;
         end;

         if (Self.FindComponent(sFlag + '_B0611_4') as TCheckBox).Checked then
         begin
            sB0611 := 'PICC' + ',' + sB0611;
         end;

         if (Self.FindComponent(sFlag + '_B0611_3') as TCheckBox).Checked then
         begin
            sB0611 := 'Femoral' + ',' + sB0611;
         end;

         if (Self.FindComponent(sFlag + '_B0611_2') as TCheckBox).Checked then
         begin
            sB0611 := 'Internal jugular' + ',' + sB0611;
         end;

         if (Self.FindComponent(sFlag + '_B0611_1') as TCheckBox).Checked then
         begin
            sB0611 := 'Subclavian' + ',' + sB0611;
         end;

         if sB0611 <> '' then
         begin
            sB0611 := Copy(sB0611, 1, Length(sB0611)-1);
            sB0611 := '����:' + sB0611;
         end;

         // ��ġ
         sB0612 := '';

         if (Self.FindComponent(sFlag + '_B0612_4') as TCheckBox).Checked then
         begin
            sB0612 := '������' + ',' + sB0612;
         end;

         if (Self.FindComponent(sFlag + '_B0612_3') as TCheckBox).Checked then
         begin
            sB0612 := '������' + ',' + sB0612;;
         end;

         if (Self.FindComponent(sFlag + '_B0612_2') as TCheckBox).Checked then
         begin
            sB0612 := '�»���' + ',' + sB0612;;
         end;

         if (Self.FindComponent(sFlag + '_B0612_1') as TCheckBox).Checked then
         begin
            sB0612 := '�����' + ',' + sB0612;;
         end;

         if sB0612 <> '' then
         begin
            sB0612 := Copy(sB0612, 1, Length(sB0612)-1);
            sB0612 := '��ġ:' + sB0612;
         end;

         // cm (fixed)
         if (Self.FindComponent(sFlag + '_B0613_1') as TEdit).Text <> '' then
         begin
            sB0613 :=  'cm (fixed):'
                     + (Self.FindComponent(sFlag + '_B0613_1') as TEdit).Text
                     ;
         end
         else
         begin
            sB0613 := '';
         end;

         // �巹�� ����
         sB0614 := '';

         if (Self.FindComponent(sFlag + '_B0614_2') as TCheckBox).Checked then
         begin
            sB0614 := '����巹��' + ',' + sB0614;
         end;

         if (Self.FindComponent(sFlag + '_B0614_1') as TCheckBox).Checked then
         begin
            sB0614 := '�ʸ��巹��' + ',' + sB0614;
         end;

         if sB0614 <> '' then
         begin
            sB0614 := Copy(sB0614, 1, Length(sB0614)-1);
            sB0614 := '�巹�� ����:' + sB0614;
         end;

         // �巹�� ����
         sB0615 := '';

         if (Self.FindComponent(sFlag + '_B0615_3') as TCheckBox).Checked then
         begin
            sB0615 := '������' + ',' + sB0615;
         end;

         if (Self.FindComponent(sFlag + '_B0615_2') as TCheckBox).Checked then
         begin
            sB0615 := '����' + ',' + sB0615;
         end;

         if (Self.FindComponent(sFlag + '_B0615_1') as TCheckBox).Checked then
         begin
            sB0615 := '����' + ',' + sB0615;
         end;

         if sB0615 <> '' then
         begin
            sB0615 := Copy(sB0615, 1, Length(sB0615)-1);
            sB0615 := '�巹�� ����:' + sB0615;
         end;

         // �巹�� ��ȯ
         if      (Self.FindComponent(sFlag + '_B0616_1') as TRadioButton).Checked then
         begin
            sB0616 :=  '�巹�� ��ȯ:��'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0616_3') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0616_2') as TRadioButton).Checked then
         begin
            sB0616 :=  '�巹�� ��ȯ:�ƴϿ�'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0616_3') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0616 := '';
         end;

         // ���Ժ��� ����
         sB0617 := '';

         if (Self.FindComponent(sFlag + '_B0617_4') as TCheckBox).Checked then
         begin
            sB0617 := '���⹰' + ',' + sB0617;
         end;

         if (Self.FindComponent(sFlag + '_B0617_3') as TCheckBox).Checked then
         begin
            sB0617 := '����' + ',' + sB0617;
         end;

         if (Self.FindComponent(sFlag + '_B0617_2') as TCheckBox).Checked then
         begin
            sB0617 := '����' + ',' + sB0617;
         end;

         if (Self.FindComponent(sFlag + '_B0617_1') as TCheckBox).Checked then
         begin
            sB0617 := '����' + ',' + sB0617;
         end;

         if sB0617 <> '' then
         begin
            sB0617 := Copy(sB0617, 1, Length(sB0617)-1);
            sB0617 := '���Ժ��� ����:' + sB0617;
         end;
      end;

      // ��â�������
      begin
         // ��â�߻�
         if      (Self.FindComponent(sFlag + '_B0701_1') as TRadioButton).Checked then
         begin
            sB0701 :=  '��â������� ��â�߻�:��'
                     + '('
                     ;

            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sB0701 :=  sB0701
                        + '�Խǽ�'
                        ;
            end;

            if ((Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked) and
               ((Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked)     then
            begin
               sB0701 :=  sB0701
                        + ','
                        ;
            end;

            if (Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked then
            begin
               sB0701 :=  sB0701
                        + '�Խ���'
                        ;
            end;

            sB0701 :=  sB0701
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0701_2') as TRadioButton).Checked then
         begin
            sB0701 :=  '��â������� ��â�߻�:��'
                     + '('
                     ;

            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sB0701 :=  sB0701
                        + '�Խǽ�'
                        ;
            end;

            if ((Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked) and
               ((Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked)     then
            begin
               sB0701 :=  sB0701
                        + ','
                        ;
            end;

            if (Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked then
            begin
               sB0701 :=  sB0701
                        + '�Խ���'
                        ;
            end;

            sB0701 :=  sB0701
                     + ')'
                     ;
         end
         else
         begin
            sB0701 := '';
         end;

         // ��ġ,�ܰ�,ũ��
         begin
            sC0701 := '';

            // ��ġ
            if (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text <> '' then
            begin
               sC0701 :=  sC0701
                        + '��ġ:'
                        + (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text
                        + ' '
                        ;
            end;

            // �ܰ�
            if (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text <> '' then
            begin
               sC0701 :=  sC0701
                        + '�ܰ�:'
                        + (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text
                        + ' '
                        ;
            end;

            // ũ��
            if (Self.FindComponent(sFlag + '_C0701_5') as TEdit).Text <> '' then
            begin
               sC0701 :=  sC0701
                        + '��ġ:'
                        + (Self.FindComponent(sFlag + '_C0701_5') as TEdit).Text
                        + ' '
                        ;
            end;
         end;

         // Neonatal Skin Assessment Scale
         if (Self.FindComponent(sFlag + '_B0702_1') as TEdit).Text <> '' then
         begin
            sB0702 :=  'Neonatal Skin Assessment Scale:'
                     + (Self.FindComponent(sFlag + '_B0702_1') as TEdit).Text
                     ;
         end;

         // WOCN consult
         if      (Self.FindComponent(sFlag + '_B0704_1') as TRadioButton).Checked then
         begin
            sB0704 :=  'WOCN consult:��';
         end
         else if (Self.FindComponent(sFlag + '_B0704_2') as TRadioButton).Checked then
         begin
            sB0704 :=  '';
         end
         else
         begin
            sB0704 := '';
         end;

         // Dressing
         if      (Self.FindComponent(sFlag + '_B0705_1') as TRadioButton).Checked then
         begin
            sB0705 :=  'Dressing:��'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0705_3') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0705_2') as TRadioButton).Checked then
         begin
            sB0705 :=  'Dressing:��'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0705_3') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0705 := '';
         end;

         // ���� �� ����Ȱ��
         sB0703 := '';

         if (Self.FindComponent(sFlag + '_B0703_5') as TCheckBox).Checked then
         begin
            sB0703 :=  '��Ÿ'
                     + '('
                     + (Self.FindComponent(sFlag + '_B0703_5E') as TEdit).Text
                     + ')'
                     + ','
                     + sB0703
                     ;
         end;

         if (Self.FindComponent(sFlag + '_B0703_4') as TCheckBox).Checked then
         begin
            sB0703 := '������ ��ȯ' + ',' + sB0703;
         end;

         if (Self.FindComponent(sFlag + '_B0703_3') as TCheckBox).Checked then
         begin
            sB0703 := '����, �Ǻθ� �����ϰ� �Ѵ�' + ',' + sB0703;
         end;

         if (Self.FindComponent(sFlag + '_B0703_2') as TCheckBox).Checked then
         begin
            sB0703 := 'Water glove' + ',' + sB0703;
         end;

         if (Self.FindComponent(sFlag + '_B0703_1') as TCheckBox).Checked then
         begin
            sB0703 := 'ü������ 2�ð� �̳�' + ',' + sB0703;
         end;

         if sB0703 <> '' then
         begin
            sB0703 := Copy(sB0703, 1, Length(sB0703)-1);
            sB0703 := '���� �� ����Ȱ��:' + sB0703;
         end;
      end;

      // ���󿹹�Ȱ��
      begin
         sB0801 := '';

         if (Self.FindComponent(sFlag + '_B0801_4') as TCheckBox).Checked then
         begin
            sB0801 :=  '��Ÿ'
                     + '('
                     + (Self.FindComponent(sFlag + '_B0801_4E') as TEdit).Text
                     + ')'
                     + ','
                     + sB0801
                     ;
         end;

         if (Self.FindComponent(sFlag + '_B0801_3') as TCheckBox).Checked then
         begin
            sB0801 := '�������� ��ƼĿ ����' + ',' + sB0801;
         end;

         if (Self.FindComponent(sFlag + '_B0801_2') as TCheckBox).Checked then
         begin
            sB0801 := '���󿹹汳��' + ',' + sB0801;
         end;

         if (Self.FindComponent(sFlag + '_B0801_1') as TCheckBox).Checked then
         begin
            sB0801 := '������ locking' + ',' + sB0801;
         end;

         if sB0801 <> '' then
         begin
            sB0801 := Copy(sB0801, 1, Length(sB0801)-1);
            sB0801 := '���󿹹�Ȱ��:' + sB0801;
         end;
      end;

      // ��ȣ��� ���� ����
      sSummary1  := '';
      sSummary2  := '';
      sSummary3  := '';
      sSummary4  := '';
      sSummary5  := '';
      sSummary6  := '';
      sSummary7  := '';
      sSummary8  := '';
      sSummary9  := '';
      sSummary10 := '';

      sSummary1  :=        sSummary1
                   +       sB0101     // ����
                   + ' ' + sB0102     // ET tube
                   + ' ' + sB0103     // Tracheostomy
                   ;
      if Trim(sSummary1) <> '' then sSummary1 := Trim(sSummary1) + #13#10
      else                          sSummary1 := '';

      sSummary2  :=        sSummary2
                   +       sB0201     // ����
                   + ' ' + sB0202     // ��������
                   + ' ' + sB0203     // Vent.Circuit
                   ;
      if Trim(sSummary2) <> '' then sSummary2 := Trim(sSummary2) + #13#10
      else                          sSummary2 := '';

      sSummary3  :=        sSummary3
                   +       sB0301     // ����
                   + ' ' + sB0302     // Drug
                   ;
      if Trim(sSummary3) <> '' then sSummary3 := Trim(sSummary3) + #13#10
      else                          sSummary3 := '';

      sSummary4  :=        sSummary4
                   +       sB0401     // score
                   + ' ' + sC0401     // ���߿���
                   + ' ' + sC0403     // ������
                   + ' ' + sC0404     // ��
                   + ' ' + sB0402     // Drug
                   ;
      if Trim(sSummary4) <> '' then sSummary4 := Trim(sSummary4) + #13#10
      else                          sSummary4 := '';

      sSummary5  :=        sSummary5
                   +       sB0501     // ����
                   + ' ' + sB0502     // ��������
                   + ' ' + sB0503     // ��ġ
                   + ' ' + sB0504     // ���Ժ��� ����
                   + ' ' + sC0504     // ���Ժ��� ���� ������
                   ;
      if Trim(sSummary5) <> '' then sSummary5 := Trim(sSummary5) + #13#10
      else                          sSummary5 := '';

      sSummary6  :=        sSummary6
                   +       sB0505     // ����
                   + ' ' + sB0506     // �����Ͻ�
                   + ' ' + sB0507     // ��ġ
                   + ' ' + sB0508     // ���Ժ��� ����
                   + ' ' + sC0508     // ���Ժ��� ���� ������
                   ;
      if Trim(sSummary6) <> '' then sSummary6 := Trim(sSummary6) + #13#10
      else                          sSummary6 := '';

      sSummary7  :=        sSummary7
                   +       sB0601     // ����
                   + ' ' + sB0602     // �����Ͻ�
                   + ' ' + sB0603     // ����
                   + ' ' + sB0607     // ��ġ
                   + ' ' + sB0608     // cm (fixed)
                   + ' ' + sB0604_a   // �巹�� ����
                   + ' ' + sB0604_b   // �巹�� ����
                   + ' ' + sB0606     // �巹�� ��ȯ
                   + ' ' + sB0605     // ���Ժ��� ����

                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';

      sSummary8  :=        sSummary8
                   +       sB0609     // ����
                   + ' ' + sB0610     // �����Ͻ�
                   + ' ' + sB0611     // ����
                   + ' ' + sB0612     // ��ġ
                   + ' ' + sB0613     // cm (fixed)
                   + ' ' + sB0614     // �巹�� ����
                   + ' ' + sB0615     // �巹�� ����
                   + ' ' + sB0616     // �巹�� ��ȯ
                   + ' ' + sB0617     // ���Ժ��� ����
                   ;
      if Trim(sSummary8) <> '' then sSummary8 := Trim(sSummary8) + #13#10
      else                          sSummary8 := '';

      sSummary9  :=        sSummary9
                   +       sB0701     // ����
                   + ' ' + sC0701     // ��ġ,�ܰ�,ũ��
                   + ' ' + sB0702     // Neonatal Skin Assessment Scale
                   + ' ' + sB0704     // WOCN consult
                   + ' ' + sB0705     // Dressing
                   + ' ' + sB0703     // ���� �� ����Ȱ��
                   ;
      if Trim(sSummary9) <> '' then sSummary9 := Trim(sSummary9) + #13#10
      else                          sSummary9 := '';

      sSummary10 :=        sSummary10
                   +       sB0801      // ���󿹹�Ȱ��
                   ;

      sNrsRecord :=  sSummary1
                   + sSummary2
                   + sSummary3
                   + sSummary4
                   + sSummary5
                   + sSummary6
                   + sSummary7
                   + sSummary8
                   + sSummary9
                   + sSummary10
                   ;

      sTime :=  FormatDateTime('yyyymmdd', dtp_ChkDate.Date)
              + StringReplace((Self.FindComponent('med_' + sFlag + '_ChkTime') as TMaskEdit).Text, ':', '', [rfReplaceAll])
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
      jPatInfo.S['CARCPRVCCD']   := 'IQ';                      // IA:ICU��ȣ���� IQ:ICU�ӻ�����ǥ
      jPatInfo.S['RECID']        := G_USERID;

      // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
      if (Assigned(EMR_CallEmrNurseLinker) = True) then
      begin
         // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
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
procedure TMDN110FX.GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);
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
      //   - 2012.01.26 LSH
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
              dtp_ChkDate.Date := StrToDateTime(Cells[2, i]);




              // ȯ�� ����(�Ϸ�) Refresh by ������ @ 2012.04.13 LSH
              LoadPatientInfo(dtp_ChkDate.Date);




              // ���õ� Row�� ������� ��ȸ
              bbt_OkClick(ugd_EmrList);



              // EMR ��� ����
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
procedure TMDN110FX.bbt_OkClick(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // ���ں� �ӻ�����ǥ ���� ��ȸ
   //-----------------------------------------------------------------
   LoadQualityCheck;
end;




//------------------------------------------------------------------------------
// NICU �ӻ�����ǥ �ڵ���ĵ ������� New-verion
// - ���ȯ���� ������ڸ� fetch�Ͽ�, ���ں� �󼼳����� EMR ��ȯ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FX.AutoScanPrint_New;
begin
   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;



   //---------------------------------------------------
   // 1. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);



{
   //---------------------------------------------------
   // 2. Set Patient information
   //---------------------------------------------------
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
      lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
      lb_Sex.Caption     := sSex    [0];                       // ����
      lb_Age.Caption     := Trim(Calc_Age(Now, sBirtDate[0])); // �� ���� ���� ���(���� by ������ ��������, 2011.12.22 LSH)
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����
   end;
}

   //---------------------------------------------------
   // 3. EMR ���ĺ�ȯ ��� ��ȸ
   //---------------------------------------------------
   bbt_SelectClick(ugd_EmrList);





end;


//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_DCopyClick(Sender: TObject);
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
   if LengthByte(Trim(ed_D_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      ed_D_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_D_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      med_D_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_DCopy.Tag = 1 then begin
      MessageBox(Self.Handle, '���� Duty�� �ӻ�����ǥ ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� �ӻ�����ǥ ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Day) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;




   //-----------------------------------------------------------------
   // 2. ����
   //-----------------------------------------------------------------
   CopyLastQualCheckOfDuty(DT_DAY);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;


//------------------------------------------------------------------------------
// [Evening ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_ECopyClick(Sender: TObject);
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
   if LengthByte(Trim(ed_E_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      ed_E_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_E_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      med_E_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_ECopy.Tag = 1 then begin
      MessageBox(Self.Handle, '���� Duty�� �ӻ�����ǥ ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� �ӻ�����ǥ ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Evening) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;




   //-----------------------------------------------------------------
   // 2. ����
   //-----------------------------------------------------------------
   CopyLastQualCheckOfDuty(DT_EVENING);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;


//------------------------------------------------------------------------------
// [Night ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NCopyClick(Sender: TObject);
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
   if LengthByte(Trim(ed_N_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      ed_N_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_N_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      med_N_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_NCopy.Tag = 1 then begin
      MessageBox(Self.Handle, '���� Duty�� �ӻ�����ǥ ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� �ӻ�����ǥ ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Night) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;



   //-----------------------------------------------------------------
   // 2. ����
   //-----------------------------------------------------------------
   CopyLastQualCheckOfDuty(DT_NIGHT);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;




//------------------------------------------------------------------------------
// Duty�� ���� �ӻ�����ǥ ���� ����
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
function TMDN110FX.CopyLastQualCheckOfDuty(AsDuty: String): Boolean;
var
   nrsChk  : HmdIcqcit; // Duty�� �ӻ�����ǥ ����
   iResult : Integer;   // the result of transaction(1:Success, 0:Fail)

   { parameters }
   QcInfo    : HmdIcqcit;  // �ӻ�����ǥ ����
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
      nrsChk := HmdIcqcit.Create;



      //----------------------------------------------
      // 2.1. Set Parameter Value
      //----------------------------------------------
      // ����� ����
      AsSetType := 'ICNNQ';

      // �ӻ�����ǥ ����
      QcInfo := HmdIcqcit.Create;


      with QcInfo do
      begin
         sPatNo   := FsPatNo;                                        // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                      // �Կ�����
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);   // ���� ����
         sDuty    := AsDuty;                                         // Duty
         sChkTime := Trim((GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime' ) as TMaskEdit).Text);  // ���� �ð�
         sChkNurs := Trim((GetComp(Self.Name, 'ed_' + AsDuty + '_ChkNursId') as TEdit).Text);      // ���� ��ȣ��
         sChkDept := Trim((GetComp(Self.Name, 'ed_' + AsDuty + '_ChkDept'  ) as TEdit).Text);      // ���� �μ�
         sWardNo  := FPatient.sWardNo[0];                            // ����
         sRoomNo  := FPatient.sRoomNo[0];                            // ����
         sEditId  := md_UserId;                                      // ������ID
      end;


      //----------------------------------------------
      // 2.2. CopyByte
      //----------------------------------------------
      iResult := nrsChk.CopyByDuty(QcInfo, AsSetType);


      // Show Error Message
      if iResult < 0 then
      begin
         Result := False;

         QcInfo.Free;
         nrsChk.Free;

         ShowErrMsg;
         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         QcInfo.Free;
         nrsChk.Free;

         stb_Message.Panels[0].Text := '�� �� ���簡 �Ϸ���� �ʾҽ��ϴ�.';
         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '�� �� ���簡 ���������� �Ϸ�Ǿ����ϴ�';

   finally
      Screen.Cursor := crDefault;

      QcInfo.Free;
      nrsChk.Free;
   end;

end;


//------------------------------------------------------------------------------
// [NICU ������(MDN920F2) ȣ��] onClick Event Handler
//   - NIPS,PIPP ���� �����α׷� ȣ��
//
// Author : Lee, Se-Ha
// Date   : 2012.06.13
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0401_3EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
   FForm : TForm;
begin
   //----------------------------------------------------
   // �� Duty Sender �޾ƿ���
   //----------------------------------------------------
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Editing ������ Duty ���� (Call-Back ���� ����)
         FsSelDuty := CopyByte((Sender as TEdit).Name,1,1);

         Break;
      end;
   end;


   //----------------------------------------------------
   // ������ �ý��� ����
   //----------------------------------------------------
   FForm := BplFormCreate('MDN920F1');

   SetBplStrProp('MDN920F1', 'Prop_PatNo'       , Trim(lb_PatNo.Caption)   );
   SetBplStrProp('MDN920F1', 'Prop_CallerForm'  , 'MDN110FX'               );
   SetBplStrProp('MDN920F1', 'Prop_CallerMethod', 'AssignPainRslt'         );
   SetBplStrProp('MDN920F1', 'Prop_ParentForm'  , 'MDN110FX'               );
   SetBplStrProp('MDN920F1', 'Prop_ExecDate'    , FormatDatetime('yyyy-mm-dd',dtp_ChkDate.Date));

   McomFormShow(FForm);

end;



//------------------------------------------------------------------------------
// [�ӻ�����ǥ] �������� ���� ��� callback function
//
// Author : Lee, Se-Ha
// Date   : 2012.06.13
//------------------------------------------------------------------------------
procedure TMDN110FX.AssignPainRslt(Sender: TObject);
var
   strType, strPatno, strAdmdate,
   strRecdate, strRecId : String;

   RowNo : integer;
begin

   strType     := '5';                                               // ��ȸ����(5: �ش����� ICU ������ ��ȸ)
   strPatno    := Trim(lb_Patno.Caption);                            // ȯ�ڹ�ȣ
   strAdmdate  := DelChar(FsAdmDate,'-');                            // �Կ�����
   strRecdate  := FormatDateTime('yyyymmdd',dtp_ChkDate.date);       // ������
   strRecId    := md_UserId;                                         // �ش� Duty ������ ��ȣ��ID (���� ���θ� ��� ��ȸ����)


   Screen.Cursor := crHourglass;


   try
      mdPaindt := HmdPaindt.Create;


      // �ӻ�����ǥ ������ ���� ��ȸ
      RowNo    := mdPaindt.OutputVsValue(strType, strPatno, strAdmdate, strRecdate, strRecId);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdpaindt.Free;

         ShowMessage(GetTxMsg);

         Exit;
      end;

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdpaindt.Free;

         stb_Message.Panels[0].Text := '��ȸ�� �����򰡳����� �����ϴ�.';

         Exit;
      end;



      // �򰡵��� �� ����
      if (mdpaindt.sTool[0] = 'NIPS') then
      begin
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_B0401_3')).Checked := True;
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_3E')).Text := mdpaindt.sPoint[0];
      end
      else if (mdpaindt.sTool[0] = 'PIPP') then
      begin
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_B0401_4')).Checked := True;
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := mdpaindt.sPoint[0];
      end;


      // ���߿���
      TEdit(GetComp(Self.Name, FsSelDuty + '_C0401_1')).Text  := mdpaindt.sModality[0];


      // ������ - null


      // �๰����(Drugs)
      if (mdpaindt.sDrugs[0] <> '') then
      begin
         TCheckBox(GetComp(Self.Name, FsSelDuty + '_B0402_1')).Checked := True;
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0402_1E')).Text       := mdpaindt.sDrugs[0];
      end
      else
      begin
         TCheckBox(GetComp(Self.Name, FsSelDuty + '_B0402_1')).Checked := False;
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0402_1E')).Text       := '';
      end;


      mdPaindt.Free;


   finally
      screen.Cursor  :=  crDefault;
   end;

end;

// [EMR����] 2016.04.12 ȫâ�� �߰���(������).
procedure TMDN110FX.bt_printClick(Sender: TObject);
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
   RegisterClass(TMDN110FX);

finalization
   UnRegisterClass(TMDN110FX);

end.
