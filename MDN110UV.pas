{===============================================================================
   Program ID    : MDN110UV
   Program Name  : ICU ���� ��ȣ����� - �ӻ�����ǥ
   Program Desc. :

   Author : ByoungSik, Lee
   Date   : 2011.01.27
===============================================================================}
unit MDN110UV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, ExtCtrls, Buttons, ComCtrls, MDCLASS1, AdvPanel, Grids,
  UltraGrid, Bianco_Panel, Printers, QRPrntr, QuickRpt, Qrctrls, Variants,
  // [EMR����] 2016.04.12 ȫâ�� �߰���(������). SComReport ������ ���� �߰�
  SComFunc,
  // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
  LoadEMRFunc,
  // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
  KUMC.Packet, KUMC.JSON;

type
  TMDN110FV = class(TForm)
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
    Panel10: TPanel;
    Label18: TLabel;
    D_C0102_5: TEdit;
    Bevel10: TBevel;
    pn_DDetail03: TPanel;
    Label19: TLabel;
    Bevel11: TBevel;
    Label23: TLabel;
    Bevel12: TBevel;
    Label26: TLabel;
    Bevel14: TBevel;
    D_C0103_1: TEdit;
    Panel6: TPanel;
    D_C0103_2: TMaskEdit;
    Panel7: TPanel;
    D_C0103_3: TEdit;
    Panel16: TPanel;
    D_C0103_4: TEdit;
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
    Bevel18: TBevel;
    Bevel19: TBevel;
    D_B0203_1: TRadioButton;
    D_B0203_2: TRadioButton;
    Panel24: TPanel;
    pn_DDetail05: TPanel;
    Bevel307: TBevel;
    Bevel310: TBevel;
    Bevel311: TBevel;
    D_C0203_1: TRadioButton;
    D_C0203_2: TRadioButton;
    D_C0203_3: TRadioButton;
    D_C0203_3E: TEdit;
    Bevel20: TBevel;
    Panel25: TPanel;
    Panel26: TPanel;
    Bevel22: TBevel;
    Panel27: TPanel;
    Panel28: TPanel;
    pn_DDetail06: TPanel;
    Bevel26: TBevel;
    Panel30: TPanel;
    Panel31: TPanel;
    D_C0401_1: TEdit;
    Bevel29: TBevel;
    D_C0402_1: TRadioButton;
    Bevel30: TBevel;
    D_C0402_2: TRadioButton;
    Bevel31: TBevel;
    D_C0402_3: TRadioButton;
    Bevel32: TBevel;
    D_C0402_4: TRadioButton;
    Bevel33: TBevel;
    D_C0402_5: TRadioButton;
    Bevel34: TBevel;
    D_C0402_6: TRadioButton;
    D_C0402_6E: TEdit;
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
    Bevel43: TBevel;
    D_B0504_3: TRadioButton;
    Bevel44: TBevel;
    D_B0504_4: TRadioButton;
    Bevel45: TBevel;
    D_B0504_5: TRadioButton;
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
    D_B0603_5: TCheckBox;
    Bevel58: TBevel;
    D_B0603_6: TCheckBox;
    Bevel59: TBevel;
    D_B0603_7: TCheckBox;
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
    Panel53: TPanel;
    Bevel73: TBevel;
    Bevel74: TBevel;
    D_B0701_1: TRadioButton;
    D_B0701_2: TRadioButton;
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
    D_B0801_4: TCheckBox;
    Bevel92: TBevel;
    pn_EDetail01: TPanel;
    Bevel93: TBevel;
    Bevel94: TBevel;
    E_B0102_1: TCheckBox;
    E_B0103_1: TCheckBox;
    pn_EDetail02: TPanel;
    Bevel95: TBevel;
    Bevel96: TBevel;
    Bevel97: TBevel;
    Bevel98: TBevel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    E_C0102_1: TEdit;
    Panel68: TPanel;
    E_C0102_2: TMaskEdit;
    Panel69: TPanel;
    E_C0102_3: TEdit;
    Panel70: TPanel;
    E_C0102_4: TEdit;
    Panel71: TPanel;
    E_C0102_5: TEdit;
    pn_EDetail03: TPanel;
    Bevel99: TBevel;
    Bevel100: TBevel;
    Bevel101: TBevel;
    Label36: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    E_C0103_1: TEdit;
    Panel73: TPanel;
    E_C0103_2: TMaskEdit;
    Panel74: TPanel;
    E_C0103_3: TEdit;
    Panel75: TPanel;
    E_C0103_4: TEdit;
    Panel76: TPanel;
    Bevel102: TBevel;
    Bevel103: TBevel;
    E_B0101_1: TRadioButton;
    E_B0101_2: TRadioButton;
    Panel77: TPanel;
    Panel78: TPanel;
    lb_PatNo: TLabel;
    lb_PatName: TLabel;
    lb_Sex: TLabel;
    lb_Age: TLabel;
    lb_RoomNo: TLabel;
    Bevel104: TBevel;
    Panel1: TPanel;
    Bevel105: TBevel;
    Bevel106: TBevel;
    E_B0201_1: TRadioButton;
    E_B0201_2: TRadioButton;
    Panel4: TPanel;
    Panel14: TPanel;
    pn_EDetail04: TPanel;
    Bevel107: TBevel;
    Label1: TLabel;
    Bevel108: TBevel;
    Panel23: TPanel;
    E_B0202_1: TMaskEdit;
    E_B0202_2: TEdit;
    Panel29: TPanel;
    Panel39: TPanel;
    Bevel109: TBevel;
    Bevel110: TBevel;
    E_B0203_1: TRadioButton;
    E_B0203_2: TRadioButton;
    Panel44: TPanel;
    pn_EDetail05: TPanel;
    Bevel111: TBevel;
    Bevel112: TBevel;
    Bevel113: TBevel;
    E_C0203_1: TRadioButton;
    E_C0203_2: TRadioButton;
    E_C0203_3: TRadioButton;
    E_C0203_3E: TEdit;
    Bevel114: TBevel;
    Panel79: TPanel;
    Panel80: TPanel;
    Bevel117: TBevel;
    Bevel123: TBevel;
    Panel81: TPanel;
    Panel82: TPanel;
    pn_EDetail06: TPanel;
    Bevel124: TBevel;
    Bevel125: TBevel;
    Bevel126: TBevel;
    Bevel127: TBevel;
    Bevel128: TBevel;
    Bevel129: TBevel;
    E_C0401_1: TEdit;
    E_C0402_1: TRadioButton;
    E_C0402_2: TRadioButton;
    E_C0402_3: TRadioButton;
    E_C0402_4: TRadioButton;
    E_C0402_5: TRadioButton;
    E_C0402_6: TRadioButton;
    E_C0402_6E: TEdit;
    E_C0403_1: TEdit;
    Panel84: TPanel;
    Bevel130: TBevel;
    Bevel131: TBevel;
    E_C0404_1: TRadioButton;
    E_C0404_2: TRadioButton;
    Panel85: TPanel;
    Panel86: TPanel;
    Panel87: TPanel;
    Panel88: TPanel;
    E_B0402_1: TCheckBox;
    E_B0402_1E: TEdit;
    Bevel132: TBevel;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    Bevel133: TBevel;
    Bevel134: TBevel;
    E_B0501_1: TRadioButton;
    E_B0501_2: TRadioButton;
    Panel92: TPanel;
    pn_EDetail07: TPanel;
    Bevel135: TBevel;
    Bevel136: TBevel;
    Bevel137: TBevel;
    Bevel138: TBevel;
    Bevel139: TBevel;
    E_B0504_1: TRadioButton;
    E_B0504_2: TRadioButton;
    E_B0504_3: TRadioButton;
    E_B0504_4: TRadioButton;
    E_B0504_5: TRadioButton;
    Bevel140: TBevel;
    Panel94: TPanel;
    Panel95: TPanel;
    Panel96: TPanel;
    Bevel141: TBevel;
    Bevel142: TBevel;
    E_B0601_1: TRadioButton;
    E_B0601_2: TRadioButton;
    Panel97: TPanel;
    pn_EDetail08: TPanel;
    Bevel143: TBevel;
    Label20: TLabel;
    Bevel144: TBevel;
    Bevel145: TBevel;
    Bevel146: TBevel;
    Bevel147: TBevel;
    Bevel148: TBevel;
    Bevel149: TBevel;
    Bevel150: TBevel;
    Bevel151: TBevel;
    Bevel152: TBevel;
    Bevel153: TBevel;
    Bevel154: TBevel;
    Bevel155: TBevel;
    Bevel156: TBevel;
    Bevel157: TBevel;
    Bevel158: TBevel;
    Bevel159: TBevel;
    Bevel160: TBevel;
    E_B0602_1: TMaskEdit;
    E_B0602_2: TEdit;
    E_B0603_1: TCheckBox;
    E_B0603_2: TCheckBox;
    E_B0603_3: TCheckBox;
    E_B0603_4: TCheckBox;
    E_B0603_5: TCheckBox;
    E_B0603_6: TCheckBox;
    E_B0603_7: TCheckBox;
    E_B0604_1: TCheckBox;
    E_B0604_2: TCheckBox;
    E_B0604_3: TCheckBox;
    E_B0604_4: TCheckBox;
    E_B0604_5: TCheckBox;
    E_B0605_1: TCheckBox;
    E_B0605_2: TCheckBox;
    E_B0605_3: TCheckBox;
    E_B0605_4: TCheckBox;
    Panel99: TPanel;
    Bevel161: TBevel;
    Bevel162: TBevel;
    Label37: TLabel;
    Bevel163: TBevel;
    E_B0606_1: TRadioButton;
    E_B0606_2: TRadioButton;
    E_B0606_3: TEdit;
    Panel100: TPanel;
    Panel101: TPanel;
    Panel102: TPanel;
    Panel103: TPanel;
    Bevel164: TBevel;
    Bevel165: TBevel;
    Bevel166: TBevel;
    Bevel167: TBevel;
    Bevel168: TBevel;
    Bevel169: TBevel;
    Panel104: TPanel;
    Panel105: TPanel;
    Panel106: TPanel;
    Panel107: TPanel;
    Bevel170: TBevel;
    Bevel171: TBevel;
    Bevel172: TBevel;
    Label38: TLabel;
    Label40: TLabel;
    E_B0701_1: TRadioButton;
    E_B0701_2: TRadioButton;
    E_C0701_1: TCheckBox;
    E_C0701_2: TCheckBox;
    pn_EDetail09: TPanel;
    Panel109: TPanel;
    E_C0701_3: TEdit;
    Panel110: TPanel;
    E_C0701_4: TEdit;
    Panel111: TPanel;
    E_C0701_5: TEdit;
    Panel112: TPanel;
    E_B0702_1: TEdit;
    Panel113: TPanel;
    E_B0703_1: TCheckBox;
    E_B0703_2: TCheckBox;
    E_B0703_3: TCheckBox;
    E_B0703_4: TCheckBox;
    E_B0703_5: TCheckBox;
    E_B0703_5E: TEdit;
    Panel114: TPanel;
    Panel115: TPanel;
    Bevel173: TBevel;
    Bevel174: TBevel;
    E_B0704_1: TRadioButton;
    E_B0704_2: TRadioButton;
    Panel116: TPanel;
    Panel117: TPanel;
    Bevel175: TBevel;
    Bevel176: TBevel;
    Label42: TLabel;
    Bevel177: TBevel;
    E_B0705_1: TRadioButton;
    E_B0705_2: TRadioButton;
    E_B0705_3: TEdit;
    Bevel178: TBevel;
    Bevel179: TBevel;
    Bevel180: TBevel;
    Bevel181: TBevel;
    Bevel182: TBevel;
    Panel118: TPanel;
    Panel119: TPanel;
    E_B0801_1: TCheckBox;
    E_B0801_2: TCheckBox;
    E_B0801_3: TCheckBox;
    E_B0801_4: TCheckBox;
    Bevel183: TBevel;
    pn_NDetail01: TPanel;
    Bevel184: TBevel;
    Bevel185: TBevel;
    N_B0102_1: TCheckBox;
    N_B0103_1: TCheckBox;
    pn_NDetail02: TPanel;
    Bevel186: TBevel;
    Bevel187: TBevel;
    Bevel188: TBevel;
    Bevel189: TBevel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    N_C0102_1: TEdit;
    Panel66: TPanel;
    N_C0102_2: TMaskEdit;
    Panel67: TPanel;
    N_C0102_3: TEdit;
    Panel72: TPanel;
    N_C0102_4: TEdit;
    Panel83: TPanel;
    N_C0102_5: TEdit;
    pn_NDetail03: TPanel;
    Bevel190: TBevel;
    Bevel191: TBevel;
    Bevel192: TBevel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    N_C0103_1: TEdit;
    Panel98: TPanel;
    N_C0103_2: TMaskEdit;
    Panel108: TPanel;
    N_C0103_3: TEdit;
    Panel120: TPanel;
    N_C0103_4: TEdit;
    Panel121: TPanel;
    Bevel193: TBevel;
    Bevel194: TBevel;
    N_B0101_1: TRadioButton;
    N_B0101_2: TRadioButton;
    Panel122: TPanel;
    Panel123: TPanel;
    Bevel195: TBevel;
    Panel124: TPanel;
    Bevel196: TBevel;
    Bevel197: TBevel;
    N_B0201_1: TRadioButton;
    N_B0201_2: TRadioButton;
    Panel125: TPanel;
    Panel126: TPanel;
    pn_NDetail04: TPanel;
    Bevel198: TBevel;
    Label50: TLabel;
    Bevel199: TBevel;
    Panel128: TPanel;
    N_B0202_1: TMaskEdit;
    N_B0202_2: TEdit;
    Panel129: TPanel;
    Panel130: TPanel;
    Bevel200: TBevel;
    Bevel201: TBevel;
    N_B0203_1: TRadioButton;
    N_B0203_2: TRadioButton;
    Panel131: TPanel;
    pn_NDetail05: TPanel;
    Bevel202: TBevel;
    Bevel203: TBevel;
    Bevel204: TBevel;
    N_C0203_1: TRadioButton;
    N_C0203_2: TRadioButton;
    N_C0203_3: TRadioButton;
    N_C0203_3E: TEdit;
    Bevel205: TBevel;
    Panel133: TPanel;
    Panel134: TPanel;
    Bevel208: TBevel;
    Bevel215: TBevel;
    Panel135: TPanel;
    Panel136: TPanel;
    pn_NDetail06: TPanel;
    Bevel216: TBevel;
    Bevel217: TBevel;
    Bevel218: TBevel;
    Bevel219: TBevel;
    Bevel221: TBevel;
    Bevel222: TBevel;
    N_C0401_1: TEdit;
    N_C0402_1: TRadioButton;
    N_C0402_2: TRadioButton;
    N_C0402_3: TRadioButton;
    N_C0402_4: TRadioButton;
    N_C0402_5: TRadioButton;
    N_C0402_6: TRadioButton;
    N_C0402_6E: TEdit;
    N_C0403_1: TEdit;
    Panel138: TPanel;
    Bevel223: TBevel;
    Bevel224: TBevel;
    N_C0404_1: TRadioButton;
    N_C0404_2: TRadioButton;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel141: TPanel;
    Panel142: TPanel;
    N_B0402_1: TCheckBox;
    N_B0402_1E: TEdit;
    Bevel225: TBevel;
    Panel143: TPanel;
    Panel144: TPanel;
    Panel145: TPanel;
    Bevel226: TBevel;
    Bevel227: TBevel;
    N_B0501_1: TRadioButton;
    N_B0501_2: TRadioButton;
    Panel146: TPanel;
    pn_NDetail07: TPanel;
    Bevel228: TBevel;
    Bevel229: TBevel;
    Bevel230: TBevel;
    Bevel231: TBevel;
    Bevel232: TBevel;
    N_B0504_1: TRadioButton;
    N_B0504_2: TRadioButton;
    N_B0504_3: TRadioButton;
    N_B0504_4: TRadioButton;
    N_B0504_5: TRadioButton;
    Bevel233: TBevel;
    Panel148: TPanel;
    Panel149: TPanel;
    Panel150: TPanel;
    Bevel234: TBevel;
    Bevel235: TBevel;
    N_B0601_1: TRadioButton;
    N_B0601_2: TRadioButton;
    Panel151: TPanel;
    pn_NDetail08: TPanel;
    Bevel236: TBevel;
    Label51: TLabel;
    Bevel237: TBevel;
    Bevel239: TBevel;
    Bevel240: TBevel;
    Bevel241: TBevel;
    Bevel242: TBevel;
    Bevel243: TBevel;
    Bevel244: TBevel;
    Bevel245: TBevel;
    Bevel246: TBevel;
    Bevel247: TBevel;
    Bevel248: TBevel;
    Bevel249: TBevel;
    Bevel250: TBevel;
    Bevel251: TBevel;
    Bevel252: TBevel;
    Bevel253: TBevel;
    Bevel254: TBevel;
    N_B0602_1: TMaskEdit;
    N_B0602_2: TEdit;
    N_B0603_1: TCheckBox;
    N_B0603_2: TCheckBox;
    N_B0603_3: TCheckBox;
    N_B0603_4: TCheckBox;
    N_B0603_5: TCheckBox;
    N_B0603_6: TCheckBox;
    N_B0603_7: TCheckBox;
    N_B0604_1: TCheckBox;
    N_B0604_2: TCheckBox;
    N_B0604_3: TCheckBox;
    N_B0604_4: TCheckBox;
    N_B0604_5: TCheckBox;
    N_B0605_1: TCheckBox;
    N_B0605_2: TCheckBox;
    N_B0605_3: TCheckBox;
    N_B0605_4: TCheckBox;
    Panel153: TPanel;
    Bevel255: TBevel;
    Bevel256: TBevel;
    Label52: TLabel;
    Bevel257: TBevel;
    N_B0606_1: TRadioButton;
    N_B0606_2: TRadioButton;
    N_B0606_3: TEdit;
    Panel154: TPanel;
    Panel155: TPanel;
    Panel156: TPanel;
    Panel157: TPanel;
    Bevel258: TBevel;
    Bevel259: TBevel;
    Bevel260: TBevel;
    Bevel261: TBevel;
    Bevel262: TBevel;
    Bevel263: TBevel;
    Panel158: TPanel;
    Panel159: TPanel;
    Panel160: TPanel;
    Panel161: TPanel;
    Bevel264: TBevel;
    Bevel265: TBevel;
    Bevel266: TBevel;
    Label53: TLabel;
    Label54: TLabel;
    N_B0701_1: TRadioButton;
    N_B0701_2: TRadioButton;
    N_C0701_1: TCheckBox;
    N_C0701_2: TCheckBox;
    pn_NDetail09: TPanel;
    Panel163: TPanel;
    N_C0701_3: TEdit;
    Panel164: TPanel;
    N_C0701_4: TEdit;
    Panel165: TPanel;
    N_C0701_5: TEdit;
    Panel166: TPanel;
    N_B0702_1: TEdit;
    Panel167: TPanel;
    N_B0703_1: TCheckBox;
    N_B0703_2: TCheckBox;
    N_B0703_3: TCheckBox;
    N_B0703_4: TCheckBox;
    N_B0703_5: TCheckBox;
    N_B0703_5E: TEdit;
    Panel168: TPanel;
    Panel169: TPanel;
    Bevel267: TBevel;
    Bevel268: TBevel;
    N_B0704_1: TRadioButton;
    N_B0704_2: TRadioButton;
    Panel170: TPanel;
    Panel171: TPanel;
    Bevel269: TBevel;
    Bevel270: TBevel;
    Label55: TLabel;
    Bevel271: TBevel;
    N_B0705_1: TRadioButton;
    N_B0705_2: TRadioButton;
    N_B0705_3: TEdit;
    Bevel272: TBevel;
    Bevel273: TBevel;
    Bevel274: TBevel;
    Bevel275: TBevel;
    Bevel276: TBevel;
    Panel172: TPanel;
    Panel173: TPanel;
    N_B0801_1: TCheckBox;
    N_B0801_2: TCheckBox;
    N_B0801_3: TCheckBox;
    N_B0801_4: TCheckBox;
    AdvPanel1: TAdvPanel;
    Memo1: TMemo;
    Panel174: TPanel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    D_B0401_1: TRadioButton;
    D_B0401_3: TRadioButton;
    D_B0401_2: TRadioButton;
    D_B0401_2E: TEdit;
    D_B0401_3E: TEdit;
    D_B0401_4: TRadioButton;
    D_B0401_4E: TEdit;
    Panel175: TPanel;
    Bevel118: TBevel;
    Bevel119: TBevel;
    Bevel120: TBevel;
    Bevel121: TBevel;
    Bevel122: TBevel;
    E_B0401_1: TRadioButton;
    E_B0401_3: TRadioButton;
    E_B0401_2: TRadioButton;
    E_B0401_2E: TEdit;
    E_B0401_3E: TEdit;
    E_B0401_4: TRadioButton;
    E_B0401_4E: TEdit;
    Panel176: TPanel;
    Bevel209: TBevel;
    Bevel210: TBevel;
    Bevel211: TBevel;
    Bevel212: TBevel;
    Bevel214: TBevel;
    N_B0401_1: TRadioButton;
    N_B0401_3: TRadioButton;
    N_B0401_2: TRadioButton;
    N_B0401_2E: TEdit;
    N_B0401_3E: TEdit;
    N_B0401_4: TRadioButton;
    N_B0401_4E: TEdit;
    sbt_CalcIntube: TSpeedButton;
    Panel20: TPanel;
    Panel93: TPanel;
    Panel132: TPanel;
    Panel137: TPanel;
    Panel147: TPanel;
    Panel152: TPanel;
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
    Bevel283: TBevel;
    Label57: TLabel;
    Bevel284: TBevel;
    Bevel285: TBevel;
    Bevel286: TBevel;
    Bevel287: TBevel;
    Bevel288: TBevel;
    E_B0502_1: TMaskEdit;
    E_B0502_2: TEdit;
    E_B0503_1: TCheckBox;
    E_B0503_2: TCheckBox;
    E_B0503_3: TCheckBox;
    E_B0503_4: TCheckBox;
    Bevel289: TBevel;
    Label58: TLabel;
    Bevel290: TBevel;
    Bevel291: TBevel;
    Bevel292: TBevel;
    Bevel293: TBevel;
    Bevel294: TBevel;
    N_B0502_1: TMaskEdit;
    N_B0502_2: TEdit;
    N_B0503_1: TCheckBox;
    N_B0503_2: TCheckBox;
    N_B0503_3: TCheckBox;
    N_B0503_4: TCheckBox;
    Bevel295: TBevel;
    Bevel296: TBevel;
    Bevel297: TBevel;
    Panel54: TPanel;
    Panel127: TPanel;
    Panel162: TPanel;
    Bevel298: TBevel;
    Bevel299: TBevel;
    D_B0505_1: TRadioButton;
    D_B0505_2: TRadioButton;
    Panel177: TPanel;
    pn_DDetail10: TPanel;
    Bevel300: TBevel;
    Bevel301: TBevel;
    Bevel302: TBevel;
    Bevel303: TBevel;
    Bevel304: TBevel;
    Bevel305: TBevel;
    Label60: TLabel;
    Bevel306: TBevel;
    Bevel308: TBevel;
    Bevel309: TBevel;
    Bevel312: TBevel;
    Bevel313: TBevel;
    D_B0508_1: TRadioButton;
    D_B0508_2: TRadioButton;
    D_B0508_3: TRadioButton;
    D_B0508_4: TRadioButton;
    D_B0508_5: TRadioButton;
    D_B0506_1: TMaskEdit;
    D_B0506_2: TEdit;
    D_B0507_1: TCheckBox;
    D_B0507_2: TCheckBox;
    D_B0507_3: TCheckBox;
    D_B0507_4: TCheckBox;
    Panel179: TPanel;
    Panel180: TPanel;
    Panel181: TPanel;
    Bevel314: TBevel;
    Bevel315: TBevel;
    E_B0505_1: TRadioButton;
    E_B0505_2: TRadioButton;
    Panel182: TPanel;
    pn_EDetail10: TPanel;
    Bevel316: TBevel;
    Bevel317: TBevel;
    Bevel318: TBevel;
    Bevel319: TBevel;
    Bevel320: TBevel;
    Bevel321: TBevel;
    Label61: TLabel;
    Bevel322: TBevel;
    Bevel323: TBevel;
    Bevel324: TBevel;
    Bevel325: TBevel;
    Bevel326: TBevel;
    E_B0508_1: TRadioButton;
    E_B0508_2: TRadioButton;
    E_B0508_3: TRadioButton;
    E_B0508_4: TRadioButton;
    E_B0508_5: TRadioButton;
    E_B0506_1: TMaskEdit;
    E_B0506_2: TEdit;
    E_B0507_1: TCheckBox;
    E_B0507_2: TCheckBox;
    E_B0507_3: TCheckBox;
    E_B0507_4: TCheckBox;
    Panel184: TPanel;
    Panel185: TPanel;
    Panel186: TPanel;
    Bevel327: TBevel;
    Bevel328: TBevel;
    N_B0505_1: TRadioButton;
    N_B0505_2: TRadioButton;
    Panel187: TPanel;
    pn_NDetail10: TPanel;
    Bevel329: TBevel;
    Bevel330: TBevel;
    Bevel331: TBevel;
    Bevel332: TBevel;
    Bevel333: TBevel;
    Bevel334: TBevel;
    Label62: TLabel;
    Bevel335: TBevel;
    Bevel336: TBevel;
    Bevel337: TBevel;
    Bevel338: TBevel;
    Bevel339: TBevel;
    N_B0508_1: TRadioButton;
    N_B0508_2: TRadioButton;
    N_B0508_3: TRadioButton;
    N_B0508_4: TRadioButton;
    N_B0508_5: TRadioButton;
    N_B0506_1: TMaskEdit;
    N_B0506_2: TEdit;
    N_B0507_1: TCheckBox;
    N_B0507_2: TCheckBox;
    N_B0507_3: TCheckBox;
    N_B0507_4: TCheckBox;
    Panel189: TPanel;
    Panel190: TPanel;
    Panel191: TPanel;
    Panel192: TPanel;
    Panel193: TPanel;
    Panel194: TPanel;
    Bevel340: TBevel;
    Bevel341: TBevel;
    Bevel342: TBevel;
    Panel195: TPanel;
    Panel196: TPanel;
    Panel197: TPanel;
    Bevel343: TBevel;
    Bevel344: TBevel;
    D_B0607_1: TRadioButton;
    D_B0607_2: TRadioButton;
    Panel198: TPanel;
    pn_DDetail11: TPanel;
    Bevel345: TBevel;
    Label63: TLabel;
    Bevel346: TBevel;
    Bevel347: TBevel;
    Bevel348: TBevel;
    Bevel349: TBevel;
    Bevel350: TBevel;
    Bevel351: TBevel;
    Bevel352: TBevel;
    Bevel353: TBevel;
    Bevel354: TBevel;
    Bevel355: TBevel;
    Bevel356: TBevel;
    Bevel357: TBevel;
    Bevel358: TBevel;
    Bevel359: TBevel;
    Bevel360: TBevel;
    Bevel361: TBevel;
    Bevel362: TBevel;
    D_B0608_1: TMaskEdit;
    D_B0608_2: TEdit;
    D_B0609_1: TCheckBox;
    D_B0609_2: TCheckBox;
    D_B0609_3: TCheckBox;
    D_B0609_4: TCheckBox;
    D_B0609_5: TCheckBox;
    D_B0609_6: TCheckBox;
    D_B0609_7: TCheckBox;
    D_B0610_1: TCheckBox;
    D_B0610_2: TCheckBox;
    D_B0610_3: TCheckBox;
    D_B0610_4: TCheckBox;
    D_B0610_5: TCheckBox;
    D_B0611_1: TCheckBox;
    D_B0611_2: TCheckBox;
    D_B0611_3: TCheckBox;
    D_B0611_4: TCheckBox;
    Panel200: TPanel;
    Bevel363: TBevel;
    Bevel364: TBevel;
    Label64: TLabel;
    Bevel365: TBevel;
    D_B0612_1: TRadioButton;
    D_B0612_2: TRadioButton;
    D_B0612_3: TEdit;
    Panel201: TPanel;
    Panel202: TPanel;
    Panel203: TPanel;
    Panel204: TPanel;
    Panel205: TPanel;
    Panel206: TPanel;
    Panel207: TPanel;
    Bevel366: TBevel;
    Bevel367: TBevel;
    E_B0607_1: TRadioButton;
    E_B0607_2: TRadioButton;
    Panel208: TPanel;
    pn_EDetail11: TPanel;
    Bevel368: TBevel;
    Label65: TLabel;
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
    Bevel381: TBevel;
    Bevel382: TBevel;
    Bevel383: TBevel;
    Bevel384: TBevel;
    Bevel385: TBevel;
    E_B0608_1: TMaskEdit;
    E_B0608_2: TEdit;
    E_B0609_1: TCheckBox;
    E_B0609_2: TCheckBox;
    E_B0609_3: TCheckBox;
    E_B0609_4: TCheckBox;
    E_B0609_5: TCheckBox;
    E_B0609_6: TCheckBox;
    E_B0609_7: TCheckBox;
    E_B0610_1: TCheckBox;
    E_B0610_2: TCheckBox;
    E_B0610_3: TCheckBox;
    E_B0610_4: TCheckBox;
    E_B0610_5: TCheckBox;
    E_B0611_1: TCheckBox;
    E_B0611_2: TCheckBox;
    E_B0611_3: TCheckBox;
    E_B0611_4: TCheckBox;
    Panel210: TPanel;
    Bevel386: TBevel;
    Bevel387: TBevel;
    Label66: TLabel;
    Bevel388: TBevel;
    E_B0612_1: TRadioButton;
    E_B0612_2: TRadioButton;
    E_B0612_3: TEdit;
    Panel211: TPanel;
    Panel212: TPanel;
    Panel213: TPanel;
    Panel214: TPanel;
    Panel215: TPanel;
    Panel216: TPanel;
    Panel217: TPanel;
    Bevel389: TBevel;
    Bevel390: TBevel;
    N_B0607_1: TRadioButton;
    N_B0607_2: TRadioButton;
    Panel218: TPanel;
    pn_NDetail11: TPanel;
    Bevel391: TBevel;
    Label67: TLabel;
    Bevel392: TBevel;
    Bevel393: TBevel;
    Bevel394: TBevel;
    Bevel395: TBevel;
    Bevel396: TBevel;
    Bevel397: TBevel;
    Bevel398: TBevel;
    Bevel399: TBevel;
    Bevel400: TBevel;
    Bevel401: TBevel;
    Bevel402: TBevel;
    Bevel403: TBevel;
    Bevel404: TBevel;
    Bevel405: TBevel;
    Bevel406: TBevel;
    Bevel407: TBevel;
    Bevel408: TBevel;
    N_B0608_1: TMaskEdit;
    N_B0608_2: TEdit;
    N_B0609_1: TCheckBox;
    N_B0609_2: TCheckBox;
    N_B0609_3: TCheckBox;
    N_B0609_4: TCheckBox;
    N_B0609_5: TCheckBox;
    N_B0609_6: TCheckBox;
    N_B0609_7: TCheckBox;
    N_B0610_1: TCheckBox;
    N_B0610_2: TCheckBox;
    N_B0610_3: TCheckBox;
    N_B0610_4: TCheckBox;
    N_B0610_5: TCheckBox;
    N_B0611_1: TCheckBox;
    N_B0611_2: TCheckBox;
    N_B0611_3: TCheckBox;
    N_B0611_4: TCheckBox;
    Panel220: TPanel;
    Bevel409: TBevel;
    Bevel410: TBevel;
    Label68: TLabel;
    Bevel411: TBevel;
    N_B0612_1: TRadioButton;
    N_B0612_2: TRadioButton;
    N_B0612_3: TEdit;
    Panel221: TPanel;
    Panel222: TPanel;
    Panel223: TPanel;
    Panel224: TPanel;
    bbt_Print: TBitBtn;
    pn_EmrList: TPanel;
    Panel178: TPanel;
    Panel183: TPanel;
    bbt_Ok: TBitBtn;
    bbt_ListExit: TBitBtn;
    bbt_Select: TBitBtn;
    Panel188: TPanel;
    ugd_EmrList: TUltraGrid;
    sbt_DCopy: TSpeedButton;
    sbt_ECopy: TSpeedButton;
    sbt_NCopy: TSpeedButton;
    Panel199: TPanel;
    Bevel412: TBevel;
    Bevel413: TBevel;
    D_B0303_1: TRadioButton;
    D_B0303_2: TRadioButton;
    pn_DDetail12: TPanel;
    Bevel91: TBevel;
    Bevel21: TBevel;
    D_B0301_1: TCheckBox;
    D_B0301_1E: TEdit;
    D_B0302_1: TCheckBox;
    D_B0302_1E: TEdit;
    Panel209: TPanel;
    Bevel414: TBevel;
    Bevel415: TBevel;
    E_B0303_1: TRadioButton;
    E_B0303_2: TRadioButton;
    pn_EDetail12: TPanel;
    Bevel416: TBevel;
    Bevel417: TBevel;
    E_B0301_1: TCheckBox;
    E_B0302_1: TCheckBox;
    E_B0301_1E: TEdit;
    E_B0302_1E: TEdit;
    Panel219: TPanel;
    Bevel115: TBevel;
    Bevel116: TBevel;
    N_B0303_1: TRadioButton;
    N_B0303_2: TRadioButton;
    pn_NDetail12: TPanel;
    Bevel418: TBevel;
    Bevel419: TBevel;
    N_B0302_1E: TEdit;
    N_B0301_1: TCheckBox;
    N_B0302_1: TCheckBox;
    bpn_Add: TBiancoPanel;
    Shape8: TShape;
    Label59: TLabel;
    bbt_Cancel: TBitBtn;
    ugd_AddList: TUltraGrid;
    dtp_Fromadd: TDateTimePicker;
    bbt_Add: TBitBtn;
    Panel225: TPanel;
    Panel226: TPanel;
    Bevel206: TBevel;
    Bevel207: TBevel;
    D_B0204_1: TRadioButton;
    D_B0204_2: TRadioButton;
    Panel227: TPanel;
    Panel228: TPanel;
    Bevel420: TBevel;
    Bevel421: TBevel;
    E_B0204_1: TRadioButton;
    E_B0204_2: TRadioButton;
    Panel229: TPanel;
    Panel230: TPanel;
    Bevel422: TBevel;
    Bevel423: TBevel;
    N_B0204_1: TRadioButton;
    N_B0204_2: TRadioButton;
    N_B0301_1E: TEdit;
    pn_01: TPanel;
    pn_E01: TPanel;
    pn_N01: TPanel;
    pn_D02: TPanel;
    Bevel424: TBevel;
    D_B0104_1: TRadioButton;
    D_B0104_2: TRadioButton;
    Bevel425: TBevel;
    pn_E02: TPanel;
    pn_N02: TPanel;
    Bevel432: TBevel;
    Bevel433: TBevel;
    Bevel427: TBevel;
    Bevel426: TBevel;
    E_B0104_1: TRadioButton;
    E_B0104_2: TRadioButton;
    N_B0104_1: TRadioButton;
    N_B0104_2: TRadioButton;
    pn_D09: TPanel;
    bvl_D09: TBevel;
    pn_D09_rbt: TPanel;
    Bevel429: TBevel;
    Bevel430: TBevel;
    D_B0901_1: TRadioButton;
    D_B0901_2: TRadioButton;
    pn_D10: TPanel;
    bvl_D10: TBevel;
    pn_D10_rbt: TPanel;
    Bevel434: TBevel;
    Bevel435: TBevel;
    D_B1001_1: TRadioButton;
    D_B1001_2: TRadioButton;
    bvl_E09: TBevel;
    bvl_E10: TBevel;
    pn_E09: TPanel;
    pn_E09_rbt: TPanel;
    Bevel438: TBevel;
    Bevel439: TBevel;
    E_B0901_1: TRadioButton;
    E_B0901_2: TRadioButton;
    pn_E10: TPanel;
    pn_E10_rbt: TPanel;
    Bevel440: TBevel;
    Bevel441: TBevel;
    E_B1001_1: TRadioButton;
    E_B1001_2: TRadioButton;
    bvl_N09: TBevel;
    bvl_N10: TBevel;
    pn_N09: TPanel;
    pn_N09_rbt: TPanel;
    Bevel444: TBevel;
    Bevel445: TBevel;
    N_B0901_1: TRadioButton;
    N_B0901_2: TRadioButton;
    pn_N10: TPanel;
    pn_N10_rbt: TPanel;
    Bevel446: TBevel;
    Bevel447: TBevel;
    N_B1001_1: TRadioButton;
    N_B1001_2: TRadioButton;
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
    procedure E_B0101_1Click(Sender: TObject);
    procedure N_B0101_1Click(Sender: TObject);
    procedure D_B0102_1Click(Sender: TObject);
    procedure E_B0102_1Click(Sender: TObject);
    procedure N_B0102_1Click(Sender: TObject);
    procedure D_B0103_1Click(Sender: TObject);
    procedure E_B0103_1Click(Sender: TObject);
    procedure N_B0103_1Click(Sender: TObject);
    procedure D_B0201_1Click(Sender: TObject);
    procedure E_B0201_1Click(Sender: TObject);
    procedure N_B0201_1Click(Sender: TObject);
    procedure D_B0203_1Click(Sender: TObject);
    procedure E_B0203_1Click(Sender: TObject);
    procedure N_B0203_1Click(Sender: TObject);
    procedure D_C0203_3Click(Sender: TObject);
    procedure E_C0203_3Click(Sender: TObject);
    procedure N_C0203_3Click(Sender: TObject);
    procedure D_B0301_1Click(Sender: TObject);
    procedure E_B0301_1Click(Sender: TObject);
    procedure N_B0301_1Click(Sender: TObject);
    procedure D_B0302_1Click(Sender: TObject);
    procedure E_B0302_1Click(Sender: TObject);
    procedure N_B0302_1Click(Sender: TObject);
    procedure D_B0401_1Click(Sender: TObject);
    procedure E_B0401_1Click(Sender: TObject);
    procedure N_B0401_1Click(Sender: TObject);
    procedure D_C0402_6Click(Sender: TObject);
    procedure E_C0402_6Click(Sender: TObject);
    procedure N_C0402_6Click(Sender: TObject);
    procedure D_B0402_1Click(Sender: TObject);
    procedure E_B0402_1Click(Sender: TObject);
    procedure N_B0402_1Click(Sender: TObject);
    procedure D_B0501_1Click(Sender: TObject);
    procedure E_B0501_1Click(Sender: TObject);
    procedure N_B0501_1Click(Sender: TObject);
    procedure D_B0601_1Click(Sender: TObject);
    procedure E_B0601_1Click(Sender: TObject);
    procedure N_B0601_1Click(Sender: TObject);
    procedure D_B0701_1Click(Sender: TObject);
    procedure E_B0701_1Click(Sender: TObject);
    procedure N_B0701_1Click(Sender: TObject);
    procedure D_B0703_5Click(Sender: TObject);
    procedure E_B0703_5Click(Sender: TObject);
    procedure N_B0703_5Click(Sender: TObject);
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
    procedure E_B0505_1Click(Sender: TObject);
    procedure N_B0505_1Click(Sender: TObject);
    procedure D_B0607_1Click(Sender: TObject);
    procedure E_B0607_1Click(Sender: TObject);
    procedure N_B0607_1Click(Sender: TObject);
    procedure D_B0401_4EClick(Sender: TObject);
    procedure bbt_PrintClick(Sender: TObject);
    procedure bbt_SelectClick(Sender: TObject);
    procedure bbt_OkClick(Sender: TObject);
    procedure sbt_DCopyClick(Sender: TObject);
    procedure sbt_ECopyClick(Sender: TObject);
    procedure sbt_NCopyClick(Sender: TObject);
    procedure D_B0303_1Click(Sender: TObject);
    procedure E_B0303_1Click(Sender: TObject);
    procedure N_B0303_1Click(Sender: TObject);
    procedure bt_printClick(Sender: TObject);
    procedure bbt_ToNrRecordDClick(Sender: TObject);  // �ڵ������ ���, 2011.08.08 LSH
    //--------------------------------------------------------------------------

  private
    { Private declarations }
    FsPatNo   : string;    // ȯ�ڹ�ȣ
    FsAdmDate : String;    // �Կ�����

    FsCurDuty : String;    // Current Duty
    FPatient  : HmdPatinf; // ȯ������
    FSysDate  : TDateTime; // current system date
    FIsRoot   : Boolean;   // root authority
    FsSelDuty : String;    // ���� Editing�ϱ����� ������ Duty, 2011.08.24 LSH

    // [EMR����] 2016.04.12 ȫâ�� �߰���(������). EMR���� ���� ����
    pv_SComReport  : HSComReport;
    pv_Patsect     : String;
    pv_Patno       : String;
    pv_Meddate     : String;
    pv_Reptid      : String;
    // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    FsAge          : String;
    FsSex          : String;
    FsBirthymd     : String;
    FsAcptNo       : String;
    FsCodvCd       : String;
    FsMedTime      : String;
    FsPatName      : String;

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
    procedure LoadPatientInfo;

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

    // �� ó�泻�� ��ȸ Call Procedure, 2011.08.08 LSH
    procedure SelOrderList;

    // Grid �ʱ�ȭ (Title Row ����), 2011.08.08 LSH
    procedure GridClear(in_Grid : TUltraGrid);

    // [���ĺ�ȯ ���ȯ��] ��ȸ Event Handler, 2012.01.27 LSH
    // sType5, sType6 �߰� -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // Duty�� ���� �ӻ�����ǥ ���� ����, 2012.03.19 LSH
    function CopyLastQualCheckOfDuty(AsDuty: String): Boolean;

    // 9,10 �׸� �߰� -2015.03.05 smpark
    procedure Set_AA_20150306;

    // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
    //// [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    //procedure LoadEMRComPack;

    //--------------------------------------------------------------------------

  public
    { Public declarations }
     P_DschDate    : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �������, 2011.09.22 LSH
     P_PreviewYn   : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �̸�����, 2011.09.22 LSH
     P_EMRPrintYn  : String;   // [�ǹ���� �ڵ����Ľ�ĵ] ��¿���, 2011.09.22 LSH
     P_EMRTitle    : String;   // [�ǹ���� �ڵ����Ľ�ĵ] Report Title, 2011.09.22 LSH
     P_PatFlag     : String;   // [��������� ���] ȣ��� �Ѱ��� ȯ����ġ, 2011.10.24 LSH
     P_RgtDate     : String;   // [��������� ���] ȣ��� �Ѱ��� �������, 2011.10.24 LSH

     G_EmrYn       : String;   // [�ǹ���� �ڵ����Ľ�ĵ] �����ȿ�� ���� (Y/N), 2011.09.22 LSH
     G_EmrPrtIdx   : Integer;  // [�ǹ���� �ڵ����Ľ�ĵ] ���Index, 2011.09.22 LSH
     G_LastEmrDateYn : String; // [�ǹ���� �ڵ����Ľ�ĵ] ������ ������� @ 2012.10.31 LSH
     G_LastPageIdx   : Integer;// [�ǹ���� �ڵ����Ľ�ĵ] ������ Page �ε��� @ 2012.10.31 LSH

     P_EMRFromDt   : String;   // ������ȯ�� �˻� �������� -2015.05.27 smpark
     P_EMRToDt     : String;   // ������ȯ�� �˻� �������� -2015.05.27 smpark

  published
    property propPatNo      : String read FsPatNo      write FsPatNo;
    property propAdmDate    : String read FsAdmDate    write FsAdmDate;
    property propDschDate   : String read P_DschDate   write P_DschDate  ;    // �ǹ���� �ڵ����Ľ�ĵ ���� �������, 2011.09.22 LSH
    property propPreviewYn  : String read P_PreviewYn  write P_PreviewYn ;    // �ǹ���� �ڵ����Ľ�ĵ ���� �̸�����, 2011.09.22 LSH
    property propEMRPrintYn : String read P_EMRPrintYn write P_EMRPrintYn;    // �ǹ���� �ڵ����Ľ�ĵ ����,          2011.09.22 LSH
    property propEMRTitle   : String read P_EMRTitle   write P_EMRTitle  ;    // �ǹ���� �ڵ����Ľ�ĵ Report Title,  2011.09.22 LSH
    property propPatFlag    : String read P_PatFlag    write P_PatFlag   ;    // ȣ��ɼ� ('D': ��������� ���, 'MDP110F2': �ǻ���ȸ), 2011.10.24 LSH
    property propRgtDate    : String read P_RgtDate    write P_RgtDate   ;    // ���ȯ�� ��������� ������� ����,   2011.10.24 LSH

    property propEMRFromDt  : String read P_EMRFromDt  write P_EMRFromDt ;    // ������ȯ�� �˻� �������� -2015.05.27 smpark
    property propEMRToDt    : String read P_EMRToDt    write P_EMRToDt   ;    // ������ȯ�� �˻� �������� -2015.05.27 smpark

    // [EMR����] 2016.04.12 ȫâ�� �߰���(������). EMR���� ���� ����
    property prop_SComReport  : HSComReport write pv_SComReport;
    property prop_Patsect     : String      write pv_Patsect   ;
    property prop_Patno       : String      write pv_Patno     ;
    property prop_Meddate     : String      write pv_Meddate   ;
    property prop_Reptid      : String      write pv_Reptid    ;
    // 2016-06-03 ������ , �Կ������ Fromdate - Todate ���� �߰� START
    property prop_Fromdate    : String      write P_EMRFromDt  ;
    property prop_Todate      : String      write P_EMRToDt    ;
    // 2016-06-03 ������ , �Կ������ Fromdate - Todate ���� �߰� END
    // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    property propAge          : String read FsAge        write FsAge      ;
    property propSex          : String read FsSex        write FsSex      ;
    property propBirthymd     : String read FsBirthymd   write FsBirthymd ;
    property propAcptNo       : String read FsAcptNo     write FsAcptNo   ;
    property propCodvCd       : String read FsCodvCd     write FsCodvCd   ;
    property propMedTime      : String read FsMedTime    write FsMedTime  ;
    property propPatName      : String read FsPatName    write FsPatName  ;

    // ICU �ӻ�����ǥ �ǹ���� �ڵ����Ľ�ĵ, 2011.09.22 LSH
    procedure AutoScanPrint;


    // ��â���赵��(MDN470F1)���� callback�� ����, 2011.08.08 LSH
    procedure AssignBdScore(Sender: TObject);


    // ICU �ӻ�����ǥ �ڵ���ĵ ������� New-ver, 2012.01.27 LSH
    procedure AutoScanPrint_New;


    // ����������(MDN920F1)���� callback�� ���� @ 2012.06.13 LSH
    procedure AssignPainRslt(Sender: TObject);

  end;




var
  MDN110FV: TMDN110FV;
  // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
  //// [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
  //CallEmrNurseLinker : procedure (APacket: IPipePacket); stdcall;



implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDN110UU, MDN110UV_P01,
   // [EMR����] 2016.04.12 ȫâ�� �߰���(������). TpSvc �߰�
   TpSvc;

{$R *.DFM}


//------------------------------------------------------------------------------
// Form onClose Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2011.01.27
//------------------------------------------------------------------------------
procedure TMDN110FV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


//------------------------------------------------------------------------------
// Form onDestroy Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2011.01.27
//------------------------------------------------------------------------------
procedure TMDN110FV.FormDestroy(Sender: TObject);
begin
   MDN110FV := Nil;
end;


//------------------------------------------------------------------------------
// [����] Button onClick Event Handler
// - Close Form
//
// Author : ByoungSik, Lee
// Date   : 2011.01.27
//------------------------------------------------------------------------------
procedure TMDN110FV.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;




//------------------------------------------------------------------------------
// Form onCreate Event Handler
// - initialize member variables
//
// Author : ByoungSik, Lee
// Date   : 2011.02.14
//------------------------------------------------------------------------------
procedure TMDN110FV.FormCreate(Sender: TObject);
begin
   // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   if (Application.MainForm.Name = 'SMCMainForm') then
   begin
      LoadEMRComPack;
   end;

   FsPatNo   := '';
   FsAdmDate := '';
   FsCurDuty := '';
   FPatient  := Nil;
   FSysDate  := Now;
   FIsRoot   := False;

   FsSelDuty := '';   // 2011.08.24 LSH
end;





//------------------------------------------------------------------------------
// �ʱ�ȭ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//------------------------------------------------------------------------------
procedure TMDN110FV.Initialize;
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
   if not ((P_PatFlag = 'W') or
           (P_PatFlag = 'D')) then  // [���� ����� ���/ȯ�ڱ�� ������ȸ]��, Invisible SetFocus �Ұ�, 2011.10.24 LSH
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


   // --------------------------------------------------------------
   // [�Ⱦ�] ��ȯ�ڽ� ��� ���� ���� ���� ���� �׸� �߰�
   // 2015.03.02 smpark
   // 2015�� 3�� 6�� ���� �����.
   // --------------------------------------------------------------
   if (G_Locate = 'AA') and
      (FormatDateTime('YYYYMMDD',Date) >= '20150306') then
   begin
      pn_D09.Visible     := True;
      bvl_D09.Visible    := True;
      pn_D09_rbt.Visible := True;
      pn_D10.Visible     := True;
      bvl_D10.Visible    := True;
      pn_D10_rbt.Visible := True;

      pn_E09.Visible     := True;
      bvl_E09.Visible    := True;
      pn_E09_rbt.Visible := True;
      pn_E10.Visible     := True;
      bvl_E10.Visible    := True;
      pn_E10_rbt.Visible := True;

      pn_N09.Visible     := True;
      bvl_N09.Visible    := True;
      pn_N09_rbt.Visible := True;
      pn_N10.Visible     := True;
      bvl_N10.Visible    := True;
      pn_N10_rbt.Visible := True;
   end
   else
   begin
      pn_D09.Visible     := False;
      bvl_D09.Visible    := False;
      pn_D09_rbt.Visible := False;
      pn_D10.Visible     := False;
      bvl_D10.Visible    := False;
      pn_D10_rbt.Visible := False;

      pn_E09.Visible     := False;
      bvl_E09.Visible    := False;
      pn_E09_rbt.Visible := False;
      pn_E10.Visible     := False;
      bvl_E10.Visible    := False;
      pn_E10_rbt.Visible := False;

      pn_N09.Visible     := False;
      bvl_N09.Visible    := False;
      pn_N09_rbt.Visible := False;
      pn_N10.Visible     := False;
      bvl_N10.Visible    := False;
      pn_N10_rbt.Visible := False;
   end;



   //---------------------------------------------------------------
   // 2. Set Default Value
   //---------------------------------------------------------------
   // 2.1. load Patient Information
   LoadPatientInfo;



   // 2.1.1. Set Patient information
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
      lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
      lb_Sex.Caption     := sSex    [0];                       // ����
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // ����
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����

      // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark
      lb_Deptnm.Caption   := sDeptNm[0];
      lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
   end;


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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//------------------------------------------------------------------------------
procedure TMDN110FV.FormShow(Sender: TObject);
begin
   // 2016-09-24 ������ , EMR���� ó���ϴ� ��� ����Ǿ� ����.
   //// [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   //if (Application.MainForm.Name = 'SMCMainForm') then
   //begin
   //   Self.FormStyle := fsNormal;
   //end;

   //---------------------------------------------------------------------------
   //���κ����� �׸����(��â�������)  yhi 2014.07.15
   //---------------------------------------------------------------------------
   if G_Locate = 'GR' then
   Begin
      D_B0703_2.Caption := '����ħ�� ����';
      E_B0703_2.Caption := '����ħ�� ����';
      N_B0703_2.Caption := '����ħ�� ����';
      D_B0703_4.Caption := '�з¿�ȭ �����������';
      E_B0703_4.Caption := '�з¿�ȭ �����������';
      N_B0703_4.Caption := '�з¿�ȭ �����������';
      D_B0703_5.Caption := '�Ǻ�û�����(�Ǳݵ�)';
      E_B0703_5.Caption := '�Ǻ�û�����(�Ǳݵ�)';
      N_B0703_5.Caption := '�Ǻ�û�����(�Ǳݵ�)';
      D_B0703_5E.Visible := false;
      E_B0703_5E.Visible := false;
      N_B0703_5E.Visible := false;
   end;
   if G_Locate = 'AA' then
   begin
      //LEAKAGE �׸� �ȾϺ��� �Ⱥ�����.
      pn_01.Visible := false;
      pn_D02.Visible := false;
      pn_E01.Visible := false;
      pn_E02.Visible := false;
      pn_N01.Visible := false;
      pn_N02.Visible := false;
      //�ΰ��⵵ �׸� ũ������
      pn_DDetail01.Height := 113;
      Bevel48.Height      := 156;
      pn_EDetail01.Height := 113;
      Bevel92.Height      := 156;
      pn_NDetail01.Height := 113;
      Bevel183.Height     := 156;
   end;

   // 2016-10-07 ������ , ���������� RSS Score -> RASS Score ���� ��û
   //                     �Ȼ꺴���� ���� ��û (3������ ���� ���� ���� �ִٰ� ��)
   //                     SICU ��û����. [�̰��� �� ���� ����.]
   if G_LOCATE = 'AS' then
   begin
      D_B0301_1.Caption := 'RASS score';
      E_B0301_1.Caption := 'RASS score';
      N_B0301_1.Caption := 'RASS score';

      // 2016-10-11 ������ , RASS score�� ���� �� Hint ����. [AS-�ڵ� �̰���]
      //                     ���� ȭ�鿡 ǥ���� �� �� ���� ������ �Ϻη� �̷��� �Ѱ̴ϴ�.
      D_B0301_1E.Hint := 'Combative            +4  Overtly combative or violet; immediate danger to staff                                          '
                       + #13#10
                       + 'Very agitation        +3  Pulls on or removes tube(s) or catheter(s) or has ahressive behavior toward staff               '
                       + #13#10
                       + 'Agitated               +2  Frequent nonpurposeful movement or patient-ventilator dyssynchrony                              '
                       + #13#10
                       + 'Restless                +1  Anxious or apprehensive but movements not aggressive or vigorous                                '
                       + #13#10
                       + 'Alert and calm        0                                                                                                  '
                       + #13#10
                       + 'Drowsy                 -1  Not fully alert, but has sustained (more than 10 seconds) awakening, with eye contact, to voice '
                       + #13#10
                       + 'Light sedation        -2  Briefly(less than 10 seconds) awakens with eye contact to voice                                 '
                       + #13#10
                       + 'Moderate sedation  -3  Anymovement (but no eye contact) to voice                                                       '
                       + #13#10
                       + 'Deep sedation        -4  No response to voice, but any movement to physical stimulation                                  '
                       + #13#10
                       + 'Unarousable           -5  No response to voice or physical stimulation                                                    '
                       ;

      E_B0301_1E.Hint := D_B0301_1E.Hint;
      N_B0301_1E.Hint := D_B0301_1E.Hint;
   end;

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
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//
// param : AdtSysDate - Current System Date and Time
//------------------------------------------------------------------------------
procedure TMDN110FV.SetAssessDateAndCurrentDuty(AdtSysDateTime: TDateTime);
var
   sCurTime : String;      // ���� �ð�

begin

   // get current time
   sCurTime := FormatDateTime('HHNNSS', AdtSysDateTime);


   // get assessment date and duty
   if (StrToFloat(sCurTime) >= StrToFloat('000000')) and (StrToFloat(sCurTime) < StrToFloat('070000')) then begin
      // Night of the day before (00:00 ~ 06:59)
      dtp_ChkDate.Date := AdtSysDateTime - 1;
      FsCurDuty := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('070000')) and (StrToFloat(sCurTime) < StrToFloat('150000')) then begin
      // Day (07:00 ~ 14:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty := DT_DAY;

      // Duty ǥ��
      DisplayCurrentDuty(DT_DAY);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('150000')) and (StrToFloat(sCurTime) < StrToFloat('220000')) then begin
      // Evening (15:00 ~ 21:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty := DT_EVENING;

      // Duty ǥ��
      DisplayCurrentDuty(DT_EVENING);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('220000')) and (StrToFloat(sCurTime) <= StrToFloat('235959')) then begin
      // Night (22:00 ~ 06:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end;

   //---------------------------------------------------------
   // [���� ����� ���/ȯ�ڱ�� ������ȸ]�� ������� ����
   //   - 2011.10.24 LSH
   //---------------------------------------------------------
   if (P_RgtDate <> '') then
   begin
      dtp_ChkDate.Date := StrToDate(P_RgtDate);

      // ������� �����, P_RgtDate�� ��ȸ�ϴ� �κ� Skip���� Clear, 2012.03.07 LSH
      P_PatFlag := '';
   end;

end;



//------------------------------------------------------------------------------
// ���� Duty ǥ��
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//------------------------------------------------------------------------------
procedure TMDN110FV.DisplayCurrentDuty(AsDuty: string);
begin

   // Day
   if AsDuty = DT_DAY then
      shp_Alert_D.Brush.Color := clLime
   else
      shp_Alert_D.Brush.Color := clBtnFace;

   // Evening
   if AsDuty = DT_EVENING then
      shp_Alert_E.Brush.Color := clLime
   else
      shp_Alert_E.Brush.Color := clBtnFace;

   // Night
   if AsDuty = DT_NIGHT then
      shp_Alert_N.Brush.Color := clLime
   else
      shp_Alert_N.Brush.Color := clBtnFace;

end;





//------------------------------------------------------------------------------
// �� �׸� �� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FV.ClearValueOf(AsDuty: String);
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

   (GetComp(Self.Name, 'sbt_' + AsDuty + 'Delete') as TSpeedButton).Tag := 0; // ����


   //--------------------------------------------------------------
   // 2. ���� ����
   //--------------------------------------------------------------
   for i := 0 to Self.ComponentCount - 1 do begin
      oCurComp := Self.Components[i];

      sCurCompName := Self.Components[i].Name;

      if CopyByte(sCurCompName, 1, 2) = ( AsDuty + '_' ) then
      begin

         if oCurComp is TEdit then (oCurComp as TEdit).Text := ''
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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//------------------------------------------------------------------------------
procedure TMDN110FV.scrlbx_QualityCheckMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin

   with scrlbx_QualityCheck.VertScrollBar do begin
      Position := Position + Increment;
   end;

end;


//------------------------------------------------------------------------------
// ScrollBox onMouseWheelUp Event Handler
// - scroll Up
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//------------------------------------------------------------------------------
procedure TMDN110FV.scrlbx_QualityCheckMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin

   with scrlbx_QualityCheck.VertScrollBar do begin
      Position := Position - Increment;
   end;

end;




//------------------------------------------------------------------------------
// ȯ������ ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.09
//------------------------------------------------------------------------------
// 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
//procedure TMDN110FV.LoadEMRComPack;
//var
//   sFileName: string;
//   hPackage: UINT;
//begin
//   sFileName := G_HOMEDIR + 'LIB\EMRCOMPACK.bpl';
//
//   if FileExists(sFileName) then
//   begin
//      try hPackage := SysUtils.LoadPackage(sFileName); except ; end;
//
//      if hPackage > 0 then
//      begin
//         try
//            // @ExecuteEMR := GetProcAddress(hPackage, 'ExecuteEMR');
//            // @CloseEMR := GetProcAddress(hPackage, 'CloseEMR');
//            // @RemoveHandler := GetProcAddress(hPackage, 'RemoveHandler');
//            // @AddHandler := GetProcAddress(hPackage, 'AddHandler');
//
//            // [EMR����] 2016.04.15 ȫâ�� ������. �ű��߰� �� ����(ShowForm => ShowEMRForm).
//            // @ShowEMRForm := GetProcAddress(hPackage, 'ShowForm');
//            // @ShowEMRForm := GetProcAddress(hPackage, 'ShowEMRForm');
//
//            // @SetPatient  := GetProcAddress(hPackage, 'SetPatient');  // ȯ�ڼ��� �� ȯ�ں���
//            // @CertifyEMR  := GetProcAddress(hPackage, 'CertifyEMR');  // ��������
//
//            // [EMR����] ����� ���� �� EMR ���� ������.
//            // @TerminateEMR := GetProcAddress(hPackage, 'TerminateEMR');
//
//            // [EMR����] V/S ���� �� ���� EMR����
//            // @CallEMRSync := GetProcAddress(hPackage, 'CallEMRSync'); // ��������
//
//            // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
//            @CallEmrNurseLinker := GetProcAddress(hPackage, 'CallEmrNurseLinker');
//         except
//            // Error ó��
//         end;
//      end;
//   end;
//end;

procedure TMDN110FV.LoadPatientInfo;
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

      // 2016-06-03 ������ , QRP ���� ���� ��ȿ�� CHECK ���� �߰� START
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := iRowCnt;   //�����, ����:����, 0:�Ǽ�����, ���: ����
         pv_SComReport.RsltMsg  := GetTxMsg;  //��� �޽���
      end;
      // 2016-06-03 ������ , QRP ���� ���� ��ȿ�� CHECK ���� �߰� END

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
      FPatient := patient;


      // Show Message
      stb_Message.Panels[0].Text := 'ȯ������ Loading�� �Ϸ�Ǿ����ϴ�.';

   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// �ӻ� �� ��ǥ ��� ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.LoadQualityCheck;
begin

   //-----------------------------------------------------------------
   // 1. Clear Value
   //-----------------------------------------------------------------
   ClearValueOf(DT_DAY    );
   ClearValueOf(DT_EVENING);
   ClearValueOf(DT_NIGHT  );

   // [�Ⱦ�] 9,10�� �׸� �߰� ����, 2015�� 3�� 6�� ���� -2015.03.05 smpark
   Set_AA_20150306;

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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.LoadQualityCheckInfo;
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

      // [���� ����� ���/���ձ�� ��ȸ]�� ���õ� �������, 2011.10.24 LSH
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
         ShowErrMsg;

         // Free �߰�
         QcInfo.Free;

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '��ȸ�� �ڷᰡ �����ϴ�.';
      end;




      //---------------------------------------------
      // 2.3. Display Data
      //---------------------------------------------
      with QcInfo do begin
         for i := 0 to iRowCnt - 1 do begin
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursName') as TEdit).Text     := sChkNursNm[i]; // ���� ��ȣ�� ��
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursId'  ) as TEdit).Text     := sChkNurs  [i]; // ���� ��ȣ�� ID
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkDept'    ) as TEdit).Text     := sChkDept  [i]; // ���� �μ�
            (GetComp(Self.Name, 'med_' + String(sDuty[i]) + '_ChkTime'    ) as TMaskEdit).Text := sChkTime  [i]; // ���� �ð�

            // ���� ���� ���� Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Delete') as TSpeedButton).Tag := 1; // 1:���� ����(������ ������ ����)
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
      (P_PreViewYn <> 'Y')  then
   begin
      if Trim((GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursId'  ) as TEdit).Text) = '' then begin
         // get current system date
         GetSysDate(systime);

         // 2013.03.15 khs ���� Duty���� ��츸 �α����� ���� �� �ð��� ǥ�����ֵ��� ����
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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.LoadQualityCheckResult;
var
   check  : HmdIcuinf; // ��ȣ���� ���� ����
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
      AsSetType := 'ICQCK';
      AsPatNo   := FsPatNo;
      AsAdmDate := DelChar(FsAdmDate,'-');

      // [���� ����� ���]�� ���õ� �������, 2011.10.24 LSH
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
         ShowErrMsg;

         // �ڵ����ĺ�ȯ ��� flag, 2011.09.22 LSH
         G_EmrYn := 'N';

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         // �ڵ����ĺ�ȯ ��� flag, 2011.09.22 LSH
         G_EmrYn := 'N';

         Exit;
      end;



      // �ڵ����ĺ�ȯ ��� flag, 2011.09.22 LSH
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
               if sItemType[i] = 'E1' then (FindComponent(sCompName) as TEdit).Text                := sItem2[i]
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
                             'ICU �ӻ�����ǥ �׸���ȸ�� ����ó��',
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
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FV.SaveQualityCheckOfDuty(AsDuty: string): Boolean;
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




      with QcInfo do begin
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
      for i := 0 to Self.ComponentCount - 1 do begin
         oCurComp     := Self.Components[i];
         sCurCompName := oCurComp.Name;



         // �ش� Duty�� ���븸 ����
         if CopyByte(sCurCompName, 1, 2) = (AsDuty + '_') then begin



            if Self.Components[i] is TEdit then begin
               //-----------------------------------------
               // Edit Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 2) <> 'ed') and (LengthByte((oCurComp as TEdit).Text) > 0) then begin
                  curChk := HmdIcuinf.Create;

                  with curChk do begin
                     sSettype := 'ICQCK';
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
            else if Self.Components[i] is TMaskEdit then begin
               //-----------------------------------------
               // MaskEdit Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'med') and (Trim((oCurComp as TMaskEdit).Text) <> '-  -') then begin
                  curChk := HmdIcuinf.Create;

                  with curChk do begin
                     sSettype := 'ICQCK';
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
            else if Self.Components[i] is TCheckBox then begin
               //-----------------------------------------
               // CheckBox Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'chx') and (oCurComp as TCheckBox).Checked then begin
                  curChk := HmdIcuinf.Create;

                  with curChk do begin
                     sSettype := 'ICQCK';
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
            else if Self.Components[i] is TRadioButton then begin
               //-----------------------------------------
               // RadioButton Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'rbt') and (oCurComp as TRadioButton).Checked then begin
                  curChk := HmdIcuinf.Create;

                  with curChk do begin
                     sSettype := 'ICQCK';
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
            else if Self.Components[i] is TMemo then begin
               //-----------------------------------------
               // Memo Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 2) <> 'me') and (LengthByte(Trim((oCurComp as TMemo).Text)) > 0) then begin
                  curChk := HmdIcuinf.Create;

                  with curChk do begin
                     sSettype := 'ICQCK';
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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_DSaveClick(Sender: TObject);
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

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_DAY) then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '������ Day Duty �ӻ�����ǥ ������ ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Day) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;



   //---------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ����
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_DAY);

end;




//------------------------------------------------------------------------------
// ���� ���� ���� ���� üũ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//
// param : AsDuty - Duty
//------------------------------------------------------------------------------
function TMDN110FV.IsNoData(AsDuty: string): Boolean;
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
   for i := 0 to Self.ComponentCount - 1 do begin
      oCurComp     := Self.Components[i];
      sCurCompName := oCurComp.Name;

      // �ش� Duty�� ���븸 ����
      if CopyByte(sCurCompName, 1, 2) = (AsDuty + '_') then begin

         if Self.Components[i] is TEdit then begin
            //-----------------------------------------
            // Edit Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 2) <> 'ed') and (LengthByte((oCurComp as TEdit).Text) > 0) then Inc(iChkCnt);
         end
         else if Self.Components[i] is TMaskEdit then begin
            //-----------------------------------------
            // MaskEdit Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 3) <> 'med') and (Trim((oCurComp as TMaskEdit).Text) <> '-  -') then Inc(iChkCnt);
         end
         else if Self.Components[i] is TCheckBox then begin
            //-----------------------------------------
            // CheckBox Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 3) <> 'chx') and (oCurComp as TCheckBox).Checked then Inc(iChkCnt);
         end
         else if Self.Components[i] is TRadioButton then begin
            //-----------------------------------------
            // RadioButton Component
            //-----------------------------------------
            if (CopyByte(sCurCompName, 1, 3) <> 'rbt') and (oCurComp as TRadioButton).Checked then Inc(iChkCnt);
         end
         else if Self.Components[i] is TMemo then begin
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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_ESaveClick(Sender: TObject);
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

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_EVENING) then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '������ Evening Duty �ӻ�����ǥ ������ ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Evening) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;


   //---------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ����
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_EVENING);

end;



//------------------------------------------------------------------------------
// [Night ����] Button onClick Event Handler
// - Night Duty �ӻ� ����ǥ ��� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_NSaveClick(Sender: TObject);
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

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_NIGHT) then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '������ Night Duty �ӻ�����ǥ ������ ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Night) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;


   //---------------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ����
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_NIGHT);

end;




//------------------------------------------------------------------------------
// [Day ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.ed_D_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      SearchUser('N', ed_D_ChkNursName, ed_D_ChkNursId, ed_D_ChkNursName, ed_D_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Evening ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.ed_E_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      SearchUser('N', ed_E_ChkNursName, ed_E_ChkNursId, ed_E_ChkNursName, ed_E_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Night ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.ed_N_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      SearchUser('N', ed_N_ChkNursName, ed_N_ChkNursId, ed_N_ChkNursName, ed_N_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - ���� ���� �ӻ� �� ��ǥ ��� ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_PreviousClick(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Set Check Date
   //---------------------------------------------------------------
   dtp_ChkDate.Date := dtp_ChkDate.Date - 1;


   //---------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ��ȸ
   //---------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 3. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - ���� ���� �ӻ� �� ��ǥ ��� ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_NextClick(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Set Check Date
   //---------------------------------------------------------------
   dtp_ChkDate.Date := dtp_ChkDate.Date + 1;


   //---------------------------------------------------------------
   // 2. �ӻ� �� ��ǥ ��� ���� ��ȸ
   //---------------------------------------------------------------
   LoadQualityCheck;


   //------------------------------------------------------------------
   // 3. �ڵ����ĺ�ȯ�� ��� ��¸��, 2011.09.22 LSH
   //------------------------------------------------------------------
   if (P_EMRPrintYn = 'Y') then
   begin
      // ���
      bbt_PrintClick(Sender);

      Exit;
   end;


   //-----------------------------------------------------------------
   // 4. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty�� �۾���ư ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FV.SetControlStatusOfDuty(AsDuty: string);
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
   if (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) then begin
      DisplayCurrentDuty(AsDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;




//------------------------------------------------------------------------------
// [Check ����] DateTimePicker onCloseUp Event Handler
// - �������� �ӻ� �� ��ǥ ��� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.dtp_ChkDateCloseUp(Sender: TObject);
begin

   //-----------------------------------------------------------------
   // 1. �ӻ� �� ��ǥ ��� ��ȸ
   //-----------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 2. �۾� ��ư ���� ����
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty�� �ӻ� �� ��ǥ ��� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FV.DeleteQualityCheckOfDuty(AsDuty: String): Boolean;
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
      AsSetType := 'ICQCK';

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
      stb_Message.Panels[0].Text := '��ȣ���� ���� ���� ó���� ���������� �Ϸ�Ǿ����ϴ�.';


   finally
      Screen.Cursor := crDefault;

      AQcInfo.Free;
      qltChk.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - Day Duty �ӻ�����ǥ ��� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_DDeleteClick(Sender: TObject);
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

   if iChoice = IDNO then Exit;




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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_EDeleteClick(Sender: TObject);
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
   if sbt_EDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sChkDate + '������ Evening Duty �ӻ�����ǥ ����� �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Evening) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;




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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_NDeleteClick(Sender: TObject);
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
   if sbt_EDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '�ӻ�����ǥ(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sChkDate + '������ Night Duty �ӻ�����ǥ ����� �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '�ӻ�����ǥ(Night) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;




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
//
// Author : ByoungSik, Lee
// Date   : 2011.02.14
//------------------------------------------------------------------------------
procedure TMDN110FV.SetAuthority;
begin
   FIsRoot := (md_JikGup = 'N51') or (md_JikGup = 'N52') or (md_UserId = '99995');
end;



//------------------------------------------------------------------------------
// [Day - �ΰ��⵵] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0101_1Click(Sender: TObject);
begin

   pn_DDetail01.Enabled := D_B0101_1.Checked;

   if not pn_DDetail01.Enabled then begin
      D_B0102_1.Checked := False;   // ET Tube
      D_B0103_1.Checked := False;   // Tracheostomy
      D_B0104_1.Checked := False;   //LEAKAGE(��)
      D_B0104_2.Checked := False;   //LEAKAGE(��)
   end;

end;


//------------------------------------------------------------------------------
// [Evening - �ΰ��⵵] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0101_1Click(Sender: TObject);
begin

   pn_EDetail01.Enabled := E_B0101_1.Checked;

   if not pn_EDetail01.Enabled then begin
      E_B0102_1.Checked := False;   // ET Tube
      E_B0103_1.Checked := False;   // Tracheostomy
      E_B0104_1.Checked := False;   //LEAKAGE(��)
      E_B0104_2.Checked := False;   //LEAKAGE(��)
   end;

end;


//------------------------------------------------------------------------------
// [Night - �ΰ��⵵] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0101_1Click(Sender: TObject);
begin

   pn_NDetail01.Enabled := N_B0101_1.Checked;

   if not pn_NDetail01.Enabled then begin
      N_B0102_1.Checked := False;   // ET Tube
      N_B0103_1.Checked := False;   // Tracheostomy
      N_B0104_1.Checked := False;   //LEAKAGE(��)
      N_B0104_2.Checked := False;   //LEAKAGE(��)
   end;

end;


//------------------------------------------------------------------------------
// [Day - ET Tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0102_1Click(Sender: TObject);
begin
   pn_DDetail02.Enabled := D_B0102_1.Checked;

   if not pn_DDetail02.Enabled then begin
      D_C0102_1.Text := '';   // #
      D_C0102_2.Text := '';   // �������
      D_C0102_3.Text := '';   // ����
      D_C0102_4.Text := '';   // ����
      D_C0102_5.Text := '';   // Ŀ����
   end;

   // ���θ� �ϳ��� ���� �����ϰ�. GR ICU1 �迵�� Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if D_B0102_1.Checked then
      begin
         D_B0103_1.Checked := False;
      end
      else
      begin
         // �ΰ��⵵ (��) �̸� üũ�� �ȵǰ�
         if not D_B0101_2.Checked then
            D_B0103_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Evening - ET Tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0102_1Click(Sender: TObject);
begin

   pn_EDetail02.Enabled := E_B0102_1.Checked;

   if not pn_EDetail02.Enabled then begin
      E_C0102_1.Text := '';   // #
      E_C0102_2.Text := '';   // �������
      E_C0102_3.Text := '';   // ����
      E_C0102_4.Text := '';   // ����
      E_C0102_5.Text := '';   // Ŀ����
   end;

   // ���θ� �ϳ��� ���� �����ϰ�. GR ICU1 �迵�� Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if E_B0102_1.Checked then
         E_B0103_1.Checked := False
      else
      begin
         // �ΰ��⵵ (��) �̸� üũ�� �ȵǰ�
         if not E_B0101_2.Checked then
            E_B0103_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Night - ET Tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0102_1Click(Sender: TObject);
begin

   pn_NDetail02.Enabled := N_B0102_1.Checked;

   if not pn_NDetail02.Enabled then begin
      N_C0102_1.Text := '';   // #
      N_C0102_2.Text := '';   // �������
      N_C0102_3.Text := '';   // ����
      N_C0102_4.Text := '';   // ����
      N_C0102_5.Text := '';   // Ŀ����
   end;

   // ���θ� �ϳ��� ���� �����ϰ�. GR ICU1 �迵�� Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if N_B0102_1.Checked then
         N_B0103_1.Checked := False
      else
      begin
         // �ΰ��⵵ (��) �̸� üũ�� �ȵǰ�
         if not N_B0101_2.Checked then
            N_B0103_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Day - Tracheostomy] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0103_1Click(Sender: TObject);
begin

   pn_DDetail03.Enabled := D_B0103_1.Checked;

   if not pn_DDetail03.Enabled then begin
      D_C0103_1.Text := '';   // #
      D_C0103_2.Text := '';   // ��������
      D_C0103_3.Text := '';   // ����
      D_C0103_4.Text := '';   // Ŀ����
   end;

   // ���θ� �ϳ��� ���� �����ϰ�. GR ICU1 �迵�� Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if D_B0103_1.Checked then
         D_B0102_1.Checked := False
      else
      begin
         // �ΰ��⵵ (��) �̸� üũ�� �ȵǰ�
         if not D_B0101_2.Checked then
            D_B0102_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Evening - Tracheostomy] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0103_1Click(Sender: TObject);
begin

   pn_EDetail03.Enabled := E_B0103_1.Checked;

   if not pn_EDetail03.Enabled then begin
      E_C0103_1.Text := '';   // #
      E_C0103_2.Text := '';   // ��������
      E_C0103_3.Text := '';   // ����
      E_C0103_4.Text := '';   // Ŀ����
   end;

   // ���θ� �ϳ��� ���� �����ϰ�. GR ICU1 �迵�� Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if E_B0103_1.Checked then
         E_B0102_1.Checked := False
      else
      begin
         // �ΰ��⵵ (��) �̸� üũ�� �ȵǰ�
         if not E_B0101_2.Checked then
            E_B0102_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Night - Tracheostomy] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0103_1Click(Sender: TObject);
begin

   pn_NDetail03.Enabled := N_B0103_1.Checked;

   if not pn_NDetail03.Enabled then begin
      N_C0103_1.Text := '';   // #
      N_C0103_2.Text := '';   // ��������
      N_C0103_3.Text := '';   // ����
      N_C0103_4.Text := '';   // Ŀ����
   end;

   // ���θ� �ϳ��� ���� �����ϰ�. GR ICU1 �迵�� Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if N_B0103_1.Checked then
         N_B0102_1.Checked := False
      else
      begin
         // �ΰ��⵵ (��) �̸� üũ�� �ȵǰ�
         if not N_B0101_2.Checked then
            N_B0102_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Day - ���ȯ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0201_1Click(Sender: TObject);
begin

   pn_DDetail04.Enabled := D_B0201_1.Checked;

   if not pn_DDetail04.Enabled then
   begin
      D_B0202_1.Text    := '';      // ��������
      D_B0202_2.Text    := '';      // ��������(#)

      D_B0203_1.Checked := True;    // clear
      D_B0203_1.Checked := False;   // ��ü�Ż�30��(��)
      D_B0203_2.Checked := False;   // ��ü�Ż�30��(�ݱ�)

      // DVT �������� �߰� @ 2012.10.29 LSH (���� ����� ��û)
      D_B0204_1.Checked := False;   // DVT���� "��"
      D_B0204_2.Checked := False;   // DVT���� "��"
   end;

end;


//------------------------------------------------------------------------------
// [Evening - ���ȯ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0201_1Click(Sender: TObject);
begin

   pn_EDetail04.Enabled := E_B0201_1.Checked;

   if not pn_EDetail04.Enabled then begin
      E_B0202_1.Text    := '';      // ��������
      E_B0202_2.Text    := '';      // ��������(#)

      E_B0203_1.Checked := True;    // clear
      E_B0203_1.Checked := False;   // ��ü�Ż�30��(��)
      E_B0203_2.Checked := False;   // ��ü�Ż�30��(�ݱ�)

      // DVT �������� �߰� @ 2012.10.29 LSH (���� ����� ��û)
      E_B0204_1.Checked := False;   // DVT���� "��"
      E_B0204_2.Checked := False;   // DVT���� "��"
   end;

end;


//------------------------------------------------------------------------------
// [Night - ���ȯ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0201_1Click(Sender: TObject);
begin

   pn_NDetail04.Enabled := N_B0201_1.Checked;

   if not pn_NDetail04.Enabled then begin
      N_B0202_1.Text    := '';      // ��������
      N_B0202_2.Text    := '';      // ��������(#)

      N_B0203_1.Checked := True;    // clear
      N_B0203_1.Checked := False;   // ��ü�Ż�30��(��)
      N_B0203_2.Checked := False;   // ��ü�Ż�30��(�ݱ�)

      // DVT �������� �߰� @ 2012.10.29 LSH (���� ����� ��û)
      N_B0204_1.Checked := False;   // DVT���� "��"
      N_B0204_2.Checked := False;   // DVT���� "��"
   end;

end;


//------------------------------------------------------------------------------
// [Day - ��ü�Ż�30��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0203_1Click(Sender: TObject);
begin

   pn_DDetail05.Enabled := D_B0203_2.Checked;

   if not pn_DDetail05.Enabled then begin
      D_C0203_1.Checked := False;   // shock ������ �������
      D_C0203_2.Checked := False;   // ȯ�ڻ��°� ü������ �Ұ�
      D_C0203_3.Checked := False;   // ��Ÿ
      D_C0203_3E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - ��ü�Ż�30��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0203_1Click(Sender: TObject);
begin

   pn_EDetail05.Enabled := E_B0203_2.Checked;

   if not pn_EDetail05.Enabled then begin
      E_C0203_1.Checked := False;   // shock ������ �������
      E_C0203_2.Checked := False;   // ȯ�ڻ��°� ü������ �Ұ�
      E_C0203_3.Checked := False;   // ��Ÿ
      E_C0203_3E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - ��ü�Ż�30��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0203_1Click(Sender: TObject);
begin

   pn_NDetail05.Enabled := N_B0203_2.Checked;

   if not pn_NDetail05.Enabled then begin
      N_C0203_1.Checked := False;   // shock ������ �������
      N_C0203_2.Checked := False;   // ȯ�ڻ��°� ü������ �Ұ�
      N_C0203_3.Checked := False;   // ��Ÿ
      N_C0203_3E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - ��ü�Ż�30��- ��Ÿ] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_C0203_3Click(Sender: TObject);
begin
   D_C0203_3E.Enabled := D_C0203_3.Checked;

   if not D_C0203_3E.Enabled then D_C0203_3E.Text := '';
end;

//------------------------------------------------------------------------------
// [Evening - ��ü�Ż�30��- ��Ÿ] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_C0203_3Click(Sender: TObject);
begin
   E_C0203_3E.Enabled := E_C0203_3.Checked;

   if not E_C0203_3E.Enabled then E_C0203_3E.Text := '';
end;

//------------------------------------------------------------------------------
// [Night - ��ü�Ż�30��- ��Ÿ] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_C0203_3Click(Sender: TObject);
begin
   N_C0203_3E.Enabled := N_C0203_3.Checked;

   if not N_C0203_3E.Enabled then N_C0203_3E.Text := '';
end;



//------------------------------------------------------------------------------
// [Day - ���������� - RSS Score] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0301_1Click(Sender: TObject);
begin
   D_B0301_1E.Enabled := D_B0301_1.Checked;

   if not D_B0301_1E.Enabled then D_B0301_1E.Text := '';
end;

//------------------------------------------------------------------------------
// [Evening - ���������� - RSS Score] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0301_1Click(Sender: TObject);
begin
   E_B0301_1E.Enabled := E_B0301_1.Checked;

   if not E_B0301_1E.Enabled then E_B0301_1E.Text := '';
end;

//------------------------------------------------------------------------------
// [Night - ���������� - RSS Score] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0301_1Click(Sender: TObject);
begin
   N_B0301_1E.Enabled := N_B0301_1.Checked;

   if not N_B0301_1E.Enabled then N_B0301_1E.Text := '';
end;



//------------------------------------------------------------------------------
// [Day - ���������� - Drug] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0302_1Click(Sender: TObject);
begin
   D_B0302_1E.Enabled := D_B0302_1.Checked;

   if not D_B0302_1E.Enabled then D_B0302_1E.Text := '';
end;

//------------------------------------------------------------------------------
// [Evening - ���������� - Drug] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0302_1Click(Sender: TObject);
begin
   E_B0302_1E.Enabled := E_B0302_1.Checked;

   if not E_B0302_1E.Enabled then E_B0302_1E.Text := '';
end;

//------------------------------------------------------------------------------
// [Night - ���������� - Drug] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0302_1Click(Sender: TObject);
begin
   N_B0302_1E.Enabled := N_B0302_1.Checked;

   if not N_B0302_1E.Enabled then N_B0302_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - ����������] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0401_1Click(Sender: TObject);
begin

   D_B0401_2E.Enabled := D_B0401_2.Checked;  // FPS score
   D_B0401_3E.Enabled := D_B0401_3.Checked;  // NRS score
   D_B0401_4E.Enabled := D_B0401_4.Checked;  // BPS score

   if not D_B0401_2E.Enabled then D_B0401_2E.Text := '';
   if not D_B0401_3E.Enabled then D_B0401_3E.Text := '';
   if not D_B0401_4E.Enabled then D_B0401_4E.Text := '';


   pn_DDetail06.Enabled := D_B0401_2.Checked or D_B0401_3.Checked or D_B0401_4.Checked;


   if not pn_DDetail06.Enabled then begin
      D_C0401_1.Text := '';   // ����

      // ���
      D_C0402_1.Checked := False;   // ��ȭ
      D_C0402_2.Checked := False;   // ����
      D_C0402_3.Checked := False;   // ����
      D_C0402_4.Checked := False;   // ������
      D_C0402_5.Checked := False;   // ��µ�
      D_C0402_6.Checked := False;   // ��Ÿ
      D_C0402_6E.Text   := '';

      D_C0403_1.Text := '';         // �Ⱓ

      // ��
      D_C0404_1.Checked := False;   // ������
      D_C0404_2.Checked := False;   // ������
   end;
end;


//------------------------------------------------------------------------------
// [Evening - ����������] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0401_1Click(Sender: TObject);
begin

   E_B0401_2E.Enabled := E_B0401_2.Checked;  // FPS score
   E_B0401_3E.Enabled := E_B0401_3.Checked;  // NRS score
   E_B0401_4E.Enabled := E_B0401_4.Checked;  // BPS score

   if not E_B0401_2E.Enabled then E_B0401_2E.Text := '';
   if not E_B0401_3E.Enabled then E_B0401_3E.Text := '';
   if not E_B0401_4E.Enabled then E_B0401_4E.Text := '';


   pn_EDetail06.Enabled := E_B0401_2.Checked or E_B0401_3.Checked or E_B0401_4.Checked;

   if not pn_EDetail06.Enabled then begin
      E_C0401_1.Text := '';   // ����

      // ���
      E_C0402_1.Checked := False;   // ��ȭ
      E_C0402_2.Checked := False;   // ����
      E_C0402_3.Checked := False;   // ����
      E_C0402_4.Checked := False;   // ������
      E_C0402_5.Checked := False;   // ��µ�
      E_C0402_6.Checked := False;   // ��Ÿ
      E_C0402_6E.Text   := '';

      E_C0403_1.Text := '';   // �Ⱓ

      // ��
      E_C0404_1.Checked := False;   // ������
      E_C0404_2.Checked := False;   // ������
   end;

end;


//------------------------------------------------------------------------------
// [Night - ����������] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0401_1Click(Sender: TObject);
begin

   N_B0401_2E.Enabled := N_B0401_2.Checked;  // FPS score
   N_B0401_3E.Enabled := N_B0401_3.Checked;  // NRS score
   N_B0401_4E.Enabled := N_B0401_4.Checked;  // BPS score

   if not N_B0401_2E.Enabled then N_B0401_2E.Text := '';
   if not N_B0401_3E.Enabled then N_B0401_3E.Text := '';
   if not N_B0401_4E.Enabled then N_B0401_4E.Text := '';


   pn_NDetail06.Enabled := N_B0401_2.Checked or N_B0401_3.Checked or N_B0401_4.Checked;

   if not pn_NDetail06.Enabled then begin
      N_C0401_1.Text := '';   // ����

      // ���
      N_C0402_1.Checked := False;   // ��ȭ
      N_C0402_2.Checked := False;   // ����
      N_C0402_3.Checked := False;   // ����
      N_C0402_4.Checked := False;   // ������
      N_C0402_5.Checked := False;   // ��µ�
      N_C0402_6.Checked := False;   // ��Ÿ
      N_C0402_6E.Text   := '';

      N_C0403_1.Text := '';   // �Ⱓ

      // ��
      N_C0404_1.Checked := False;   // ������
      N_C0404_2.Checked := False;   // ������
   end;

end;


//------------------------------------------------------------------------------
// [Day - ��������� - ��� - ��Ÿ] �׸� üũ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_C0402_6Click(Sender: TObject);
begin
   D_C0402_6E.Enabled := D_C0402_6.Checked;

   if not D_C0402_6E.Enabled then D_C0402_6E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - ��������� - ��� - ��Ÿ] �׸� üũ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_C0402_6Click(Sender: TObject);
begin
   E_C0402_6E.Enabled := E_C0402_6.Checked;

   if not E_C0402_6E.Enabled then E_C0402_6E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - ��������� - ��� - ��Ÿ] �׸� üũ
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_C0402_6Click(Sender: TObject);
begin
   N_C0402_6E.Enabled := N_C0402_6.Checked;

   if not N_C0402_6E.Enabled then N_C0402_6E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - ���������� - Drug] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0402_1Click(Sender: TObject);
begin
   D_B0402_1E.Enabled := D_B0402_1.Checked;

   if not D_B0402_1E.Enabled then D_B0402_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - ���������� - Drug] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0402_1Click(Sender: TObject);
begin
   E_B0402_1E.Enabled := E_B0402_1.Checked;

   if not E_B0402_1E.Enabled then
      E_B0402_1E.Text := '';

end;


//------------------------------------------------------------------------------
// [Night - ���������� - Drug] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0402_1Click(Sender: TObject);
begin
   N_B0402_1E.Enabled := N_B0402_1.Checked;

   if not N_B0402_1E.Enabled then N_B0402_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - �������ư�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0501_1Click(Sender: TObject);
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
      D_B0504_2.Checked := False;   // ����
      D_B0504_3.Checked := False;   // ����
      D_B0504_4.Checked := False;   // ����
      D_B0504_5.Checked := False;   // ����
   end;


end;


//------------------------------------------------------------------------------
// [Evening - �������ư�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0501_1Click(Sender: TObject);
begin

   pn_EDetail07.Enabled := E_B0501_1.Checked;

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
      E_B0504_2.Checked := False;   // ����
      E_B0504_3.Checked := False;   // ����
      E_B0504_4.Checked := False;   // ����
      E_B0504_5.Checked := False;   // ����
   end;


end;


//------------------------------------------------------------------------------
// [Night - �������ư�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0501_1Click(Sender: TObject);
begin

   pn_NDetail07.Enabled := N_B0501_1.Checked;

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
      N_B0504_2.Checked := False;   // ����
      N_B0504_3.Checked := False;   // ����
      N_B0504_4.Checked := False;   // ����
      N_B0504_5.Checked := False;   // ����
   end;


end;


//------------------------------------------------------------------------------
// [Day - �߽����ư�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0601_1Click(Sender: TObject);
begin

   pn_DDetail08.Enabled := D_B0601_1.Checked;

   if not pn_DDetail08.Enabled then begin
      // �����Ͻ�
      D_B0602_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      D_B0602_2.Text := '';   // #

      // ��ġ(����)
      D_B0603_1.Checked := False;   // Subclavian
      D_B0603_2.Checked := False;   // Internal Jugular
      D_B0603_3.Checked := False;   // Femoral
      D_B0603_4.Checked := False;   // PICC
      D_B0603_5.Checked := False;   // S-Gnz
      D_B0603_6.Checked := False;   // Left
      D_B0603_7.Checked := False;   // Right

      // �巹�� ����
      D_B0604_1.Checked := False;   // �ʸ��巹��
      D_B0604_2.Checked := False;   // ����巹��
      D_B0604_3.Checked := False;   // ����
      D_B0604_4.Checked := False;   // ����
      D_B0604_5.Checked := False;   // ������

      // ���Ժ��� ����
      D_B0605_1.Checked := False;  // ����
      D_B0605_2.Checked := False;  // ����
      D_B0605_3.Checked := False;  // ����
      D_B0605_4.Checked := False;  // ���⹰

      // �巹�� ��ȯ
      D_B0606_1.Checked := False;  // ��
      D_B0606_2.Checked := False;  // �ƴϿ�
      D_B0606_3.Text    := '';     // #
   end;

end;


//------------------------------------------------------------------------------
// [Evening - �߽����ư�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0601_1Click(Sender: TObject);
begin

   pn_EDetail08.Enabled := E_B0601_1.Checked;

   if not pn_EDetail08.Enabled then begin
      // �����Ͻ�
      E_B0602_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      E_B0602_2.Text := '';   // #

      // ��ġ(����)
      E_B0603_1.Checked := False;   // Subclavian
      E_B0603_2.Checked := False;   // Internal Jugular
      E_B0603_3.Checked := False;   // Femoral
      E_B0603_4.Checked := False;   // PICC
      E_B0603_5.Checked := False;   // S-Gnz
      E_B0603_6.Checked := False;   // Left
      E_B0603_7.Checked := False;   // Right

      // �巹�� ����
      E_B0604_1.Checked := False;   // �ʸ��巹��
      E_B0604_2.Checked := False;   // ����巹��
      E_B0604_3.Checked := False;   // ����
      E_B0604_4.Checked := False;   // ����
      E_B0604_5.Checked := False;   // ������

      // ���Ժ��� ����
      E_B0605_1.Checked := False;  // ����
      E_B0605_2.Checked := False;  // ����
      E_B0605_3.Checked := False;  // ����
      E_B0605_4.Checked := False;  // ���⹰

      // �巹�� ��ȯ
      E_B0606_1.Checked := False;  // ��
      E_B0606_2.Checked := False;  // �ƴϿ�
      E_B0606_3.Text    := '';     // #
   end;

end;


//------------------------------------------------------------------------------
// [Night - �߽����ư�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0601_1Click(Sender: TObject);
begin

   pn_NDetail08.Enabled := N_B0601_1.Checked;

   if not pn_NDetail08.Enabled then begin
      // �����Ͻ�
      N_B0602_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      N_B0602_2.Text := '';   // #

      // ��ġ(����)
      N_B0603_1.Checked := False;   // Subclavian
      N_B0603_2.Checked := False;   // Internal Jugular
      N_B0603_3.Checked := False;   // Femoral
      N_B0603_4.Checked := False;   // PICC
      N_B0603_5.Checked := False;   // S-Gnz
      N_B0603_6.Checked := False;   // Left
      N_B0603_7.Checked := False;   // Right

      // �巹�� ����
      N_B0604_1.Checked := False;   // �ʸ��巹��
      N_B0604_2.Checked := False;   // ����巹��
      N_B0604_3.Checked := False;   // ����
      N_B0604_4.Checked := False;   // ����
      N_B0604_5.Checked := False;   // ������

      // ���Ժ��� ����
      N_B0605_1.Checked := False;  // ����
      N_B0605_2.Checked := False;  // ����
      N_B0605_3.Checked := False;  // ����
      N_B0605_4.Checked := False;  // ���⹰

      // �巹�� ��ȯ
      N_B0606_1.Checked := False;  // ��
      N_B0606_2.Checked := False;  // �ƴϿ�
      N_B0606_3.Text    := '';     // #
   end;

end;


//------------------------------------------------------------------------------
// [Day - ��â�߻�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0701_1Click(Sender: TObject);
begin

   pn_DDetail09.Enabled := D_B0701_1.Checked;

   if not pn_DDetail09.Enabled then begin
      D_C0701_1.Checked := False;   // �Խ� ��
      D_C0701_2.Checked := False;   // �Խ� ��
      D_C0701_3.Text    := '';      // ��ġ
      D_C0701_4.Text    := '';      // �ܰ�
      D_C0701_5.Text    := '';      // ũ��
   end;

end;


//------------------------------------------------------------------------------
// [Evening - ��â�߻�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0701_1Click(Sender: TObject);
begin

   pn_EDetail09.Enabled := E_B0701_1.Checked;

   if not pn_EDetail09.Enabled then begin
      E_C0701_1.Checked := False;   // �Խ� ��
      E_C0701_2.Checked := False;   // �Խ� ��
      E_C0701_3.Text    := '';      // ��ġ
      E_C0701_4.Text    := '';      // �ܰ�
      E_C0701_5.Text    := '';      // ũ��
   end;

end;


//------------------------------------------------------------------------------
// [Night - ��â�߻�] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0701_1Click(Sender: TObject);
begin

   pn_NDetail09.Enabled := N_B0701_1.Checked;

   if not pn_NDetail09.Enabled then begin
      N_C0701_1.Checked := False;   // �Խ� ��
      N_C0701_2.Checked := False;   // �Խ� ��
      N_C0701_3.Text    := '';      // ��ġ
      N_C0701_4.Text    := '';      // �ܰ�
      N_C0701_5.Text    := '';      // ũ��
   end;

end;


//------------------------------------------------------------------------------
// [Day - ��â�������Ȱ�� �� ġ�� - ��Ÿ] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0703_5Click(Sender: TObject);
begin
   D_B0703_5E.Enabled := D_B0703_5.Checked;

   if not D_B0703_5E.Enabled then D_B0703_5E.Text := '';
end;

//------------------------------------------------------------------------------
// [Evening - ��â�������Ȱ�� �� ġ�� - ��Ÿ] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0703_5Click(Sender: TObject);
begin
   E_B0703_5E.Enabled := E_B0703_5.Checked;

   if not E_B0703_5E.Enabled then E_B0703_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - ��â�������Ȱ�� �� ġ�� - ��Ÿ] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0703_5Click(Sender: TObject);
begin
   N_B0703_5E.Enabled := N_B0703_5.Checked;

   if not N_B0703_5E.Enabled then N_B0703_5E.Text := '';
end;



//------------------------------------------------------------------------------
// [����Ͻ� �Է�] OnExit Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.D_C0102_2Exit(Sender: TObject);
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
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_CalcIntubeClick(Sender: TObject);
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
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0702_1Click(Sender: TObject);
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
   SetBplStrProp(FForm.Name, 'Prop_CallerForm'  , 'MDN110FV'              );
   SetBplStrProp(FForm.Name, 'Prop_CallerMethod', 'AssignBdScore'         );
   SetBplStrProp(FForm.Name, 'Prop_ParentForm'  , 'MDN110FV'              );
   SetBplStrProp(FForm.Name, 'Prop_ExecDate'    , FormatDatetime('yyyymmdd',dtp_ChkDate.Date));

   McomFormShow(FForm);
end;




//------------------------------------------------------------------------------
// [��â���赵 �򰡰�� ��ȸ] CallBack Event Procedure
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.AssignBdScore(Sender: TObject);
var
   sFlag, sPatNo, sAdmDate, sEstiDate : string;
   RowNo         : Integer;
   bdsEstiInfo   : HmdBdspmt;   // ������
begin
   sFlag     := '';                                                // '' �̸�, �Ϲݼ���/��ȯ�� �򰡵���, 'B'�� �Ż��� �򰡵���
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
      TEdit(GetComp(Self.Name, FsSelDuty + '_B0702_1')).Text := bdsEstiInfo.iTotScore[0] + ' (' + bdsEstiInfo.sEstiRslt[0] + ')';


   finally
      screen.Cursor  :=  crDefault;
      FreeAndNil(bdsEstiInfo);
   end;

end;


//------------------------------------------------------------------------------
// [���� �ڵ��Է�] OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.D_C0102_2Click(Sender: TObject);
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
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.SelOrderList;
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


      sType1 := '4';
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



procedure TMDN110FV.bbt_CancelClick(Sender: TObject);
begin
   bpn_Add.Visible := False;

   ugd_AddList.Clear;

   ugd_AddList.RowCount := 2;
end;


procedure TMDN110FV.dtp_FromaddChange(Sender: TObject);
begin
   SelOrderList;
end;


procedure TMDN110FV.dtp_FromaddCloseUp(Sender: TObject);
begin
   dtp_FromaddChange(Sender);
end;


// ó�泻�� �ش� duty Editâ�� ����
procedure TMDN110FV.bbt_AddClick(Sender: TObject);
var
   sTemp : String;
begin
   sTemp := TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text;

   TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text := sTemp + ' ' + ugd_AddList.Cells[1, ugd_AddList.Row];
end;


// ó�泻�� �ش� duty Editâ�� ����
procedure TMDN110FV.E_B0302_1EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // ó����ȸ ����
   dtp_Fromadd.Date := dtp_ChkDate.Date;

   bpn_Add.Visible := True;
   bpn_Add.Left    := TPanel(GetComp(Self.Name, 'pn_' + FsCurDuty + 'Detail12')).Left;
   bpn_Add.Top     := TPanel(GetComp(Self.Name, 'pn_' + FsCurDuty + 'Detail12')).Top + 40;


   // ó�泻�� ��ȸ
   SelOrderList;

end;


procedure TMDN110FV.ugd_AddListDblClick(Sender: TObject);
begin
   bbt_AddClick(Sender);
end;


// Grid �ʱ�ȭ (Title Row ����)
procedure TMDN110FV.GridClear(in_Grid : TUltraGrid);
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


procedure TMDN110FV.D_B0505_1Click(Sender: TObject);
begin
   pn_DDetail10.Enabled := D_B0505_1.Checked;   // �������ư� 2 �߰�, 2011.08.17 LSH

   // 2011.08.17 LSH, �߰�
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
      D_B0508_2.Checked := False;   // ����
      D_B0508_3.Checked := False;   // ����
      D_B0508_4.Checked := False;   // ����
      D_B0508_5.Checked := False;   // ����
   end;

end;

procedure TMDN110FV.E_B0505_1Click(Sender: TObject);
begin
   pn_EDetail10.Enabled := E_B0505_1.Checked;

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
      E_B0508_2.Checked := False;   // ����
      E_B0508_3.Checked := False;   // ����
      E_B0508_4.Checked := False;   // ����
      E_B0508_5.Checked := False;   // ����
   end;

end;

procedure TMDN110FV.N_B0505_1Click(Sender: TObject);
begin
   pn_NDetail10.Enabled := N_B0505_1.Checked;

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
      N_B0508_2.Checked := False;   // ����
      N_B0508_3.Checked := False;   // ����
      N_B0508_4.Checked := False;   // ����
      N_B0508_5.Checked := False;   // ����
   end;
end;

procedure TMDN110FV.D_B0607_1Click(Sender: TObject);
begin
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
end;

procedure TMDN110FV.E_B0607_1Click(Sender: TObject);
begin
   pn_EDetail11.Enabled := E_B0607_1.Checked;

   if not pn_EDetail11.Enabled then
   begin
      // �����Ͻ�
      E_B0608_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      E_B0608_2.Text := '';   // #

      // ��ġ(����)
      E_B0609_1.Checked := False;   // Subclavian
      E_B0609_2.Checked := False;   // Internal Jugular
      E_B0609_3.Checked := False;   // Femoral
      E_B0609_4.Checked := False;   // PICC
      E_B0609_5.Checked := False;   // S-Gnz
      E_B0609_6.Checked := False;   // Left
      E_B0609_7.Checked := False;   // Right

      // �巹�� ����
      E_B0610_1.Checked := False;   // �ʸ��巹��
      E_B0610_2.Checked := False;   // ����巹��
      E_B0610_3.Checked := False;   // ����
      E_B0610_4.Checked := False;   // ����
      E_B0610_5.Checked := False;   // ������

      // ���Ժ��� ����
      E_B0611_1.Checked := False;  // ����
      E_B0611_2.Checked := False;  // ����
      E_B0611_3.Checked := False;  // ����
      E_B0611_4.Checked := False;  // ���⹰

      // �巹�� ��ȯ
      E_B0612_1.Checked := False;  // ��
      E_B0612_2.Checked := False;  // �ƴϿ�
      E_B0612_3.Text    := '';     // #
   end;
end;

procedure TMDN110FV.N_B0607_1Click(Sender: TObject);
begin
   pn_NDetail11.Enabled := N_B0607_1.Checked;

   if not pn_NDetail11.Enabled then
   begin
      // �����Ͻ�
      N_B0608_1.Text := '';   // �����Ͻ�(YYYY-MM-DD)
      N_B0608_2.Text := '';   // #

      // ��ġ(����)
      N_B0609_1.Checked := False;   // Subclavian
      N_B0609_2.Checked := False;   // Internal Jugular
      N_B0609_3.Checked := False;   // Femoral
      N_B0609_4.Checked := False;   // PICC
      N_B0609_5.Checked := False;   // S-Gnz
      N_B0609_6.Checked := False;   // Left
      N_B0609_7.Checked := False;   // Right

      // �巹�� ����
      N_B0610_1.Checked := False;   // �ʸ��巹��
      N_B0610_2.Checked := False;   // ����巹��
      N_B0610_3.Checked := False;   // ����
      N_B0610_4.Checked := False;   // ����
      N_B0610_5.Checked := False;   // ������

      // ���Ժ��� ����
      N_B0611_1.Checked := False;  // ����
      N_B0611_2.Checked := False;  // ����
      N_B0611_3.Checked := False;  // ����
      N_B0611_4.Checked := False;  // ���⹰

      // �巹�� ��ȯ
      N_B0612_1.Checked := False;  // ��
      N_B0612_2.Checked := False;  // �ƴϿ�
      N_B0612_3.Text    := '';     // #
   end;
end;


//------------------------------------------------------------------------------
// [��ȯ�� ������(MDN920F2) ȣ��] onClick Event Handler
//   - BPS ������ �����α׷� ȣ��
//
// Author : Lee, Se-Ha
// Date   : 2012.06.13
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0401_4EClick(Sender: TObject);
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
   // ������ �ý��� ���� @ 2012.06.13 LSH
   //----------------------------------------------------
   FForm := BplFormCreate('MDN920F1');

   SetBplStrProp('MDN920F1', 'Prop_PatNo'       , Trim(lb_PatNo.Caption)   );
   SetBplStrProp('MDN920F1', 'Prop_CallerForm'  , 'MDN110FV'               );
   SetBplStrProp('MDN920F1', 'Prop_CallerMethod', 'AssignPainRslt'         );
   SetBplStrProp('MDN920F1', 'Prop_ParentForm'  , 'MDN110FV'               );
   SetBplStrProp('MDN920F1', 'Prop_ExecDate'    , FormatDatetime('yyyy-mm-dd',dtp_ChkDate.Date));

   McomFormShow(FForm);


end;


{
//------------------------------------------------------------------------------
// [��ȯ�� �����򰡰�� ��ȸ] CallBack Event Procedure
//
// Author : Lee, Se-Ha
// Date   : 2011.08.24
//------------------------------------------------------------------------------
procedure TMDN110FV.AssignPainScore(Sender: TObject);
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
//
// Author : Lee, Se-Ha
// Date   : 2011.09.21
//------------------------------------------------------------------------------
procedure TMDN110FV.bbt_PrintClick(Sender: TObject);
var
   srcPrt                 : TMDN110FV_P01;
   srcForm                : TMDN110FV;
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
   // 2016-06-03 ������ , QRP ��� ��ȸ �� ������ ���� üũ ���� START
   // �ϴ� ���� ����
//   if (IsNotPrinterReady) then exit;
   // �ϴ� ���� ����
   if pv_SComReport = nil then
   begin
      if (IsNotPrinterReady) then exit;
   end;
   // 2016-06-03 ������ , QRP ��� ��ȸ �� ������ ���� üũ ���� END


   // ������ Page Index �ʱ�ȭ @ 2012.10.31 LSH
   G_LastPageIdx := 0;


   if MDN110FV_P01 <> nil  then
      MDN110FV_P01 := nil;

   if MDN110FV <> nil  then
      MDN110FV := nil;



   srcPrt  := TMDN110FV_P01.Create(Application);
   srcForm := TMDN110FV.Create(Application);



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
   srcPrt.IsLastPage           := G_LastPageIdx;                // EndMark ������� Page �ε��� @ 2012.10.31 LSH
   srcPrt.LastDateYn           := G_LastEmrDateYn;              // EndMark ������� ������ ������� @ 2012.10.31 LSH

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



   //���κ����� ����׸�� ���� 2014.07.25 yhi �߰�
   if G_Locate = 'GR' then
   begin
      srcPrt.QRLabel281.Caption := '����ħ������';
      srcPrt.QRLabel285.Caption := '�з¿�ȭ �������� ���';
      srcPrt.QRLabel287.Caption := '�Ǻ�û�����(�Ǳݵ�)';
      srcPrt.QRLabel462.Caption := '����ħ������';
      srcPrt.QRLabel466.Caption := '�з¿�ȭ �������� ���';
      srcPrt.QRLabel468.Caption := '�Ǻ�û�����(�Ǳݵ�)';
      srcPrt.QRLabel772.Caption := '����ħ������';
      srcPrt.QRLabel776.Caption := '�з¿�ȭ �������� ���';
      srcPrt.QRLabel778.Caption := '�Ǻ�û�����(�Ǳݵ�)';
      srcPrt.D_B0703_5E.Enabled  := false;
      srcPrt.E_B0703_5E.Enabled := false;
      srcPrt.N_B0703_5E.Enabled := false;
   end;
   if G_Locate = 'AA' then
   begin
      srcPrt.QRLabel240.Enabled := false;
      srcPrt.D_B0104_1.Enabled := false;
      srcPrt.QRLabel236.Enabled := false;
      srcPrt.QRLabel221.Enabled := false;
      srcPrt.D_B0104_2.Enabled := false;

      srcPrt.QRLabel242.Enabled := false;
      srcPrt.E_B0104_1.Enabled := false;
      srcPrt.QRLabel246.Enabled := false;
      srcPrt.E_B0104_2.Enabled := false;
      srcPrt.QRLabel250.Enabled := false;

      srcPrt.QRLabel263.Enabled := false;
      srcPrt.N_B0104_1.Enabled := false;
      srcPrt.QRLabel270.Enabled := false;
      srcPrt.N_B0104_2.Enabled := false;
      srcPrt.QRLabel277.Enabled := false;

   end;

   // 2016-10-07 ������ , ���������� RSS Score -> RASS Score ���� ��û
   //                     �Ȼ꺴���� ���� ��û (3������ ���� ���� ���� �ִٰ� ��)
   //                     SICU ��û����. [�̰��� �� ���� ����.]
   if G_LOCATE = 'AS' then
   begin
      srcPrt.QRLabel18.AutoSize  := True;
      srcPrt.QRLabel18.Caption   := 'RASS score';
      srcPrt.QRLabel99.AutoSize  := True;
      srcPrt.QRLabel99.Caption   := 'RASS score';
      srcPrt.QRLabel495.AutoSize := True;
      srcPrt.QRLabel495.Caption  := 'RASS score';
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

         {
         sEdit     := FindComponent(srcForm.Components[i].Name) as TEdit;
         sMaskEdit := FindComponent(srcForm.Components[i].Name) as TMaskEdit;
         sMemo     := FindComponent(srcForm.Components[i].Name) as TMemo;
          }


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
   // 3. Print Mode Set, 2011.09.22 LSH
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
   // 3-1. ICU �ӻ�����ǥ  �ڵ����ĺ�ȯ, 2011.09.22 LSH
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

         // ����� Free
         srcPrt.Close;

      end;



      { �ڵ����ĺ�ȯ Ʃ���ϸ鼭, �������. 2012.01.31 LSH
      // ������� ������ ������� + 1�Ͼ� ��ȸ�ϸ� ���.
      if (DateToStr(dtp_ChkDate.Date) < P_DschDate) then
      begin
         // ������� + 1�� ��ȸ
         sbt_NextClick(Sender);
      end
      else
      begin
         Close;
      end;
      }

   end
   else
   // �Ϲ� ���
   begin
      //-------------------------------------------------------
      // ����������ȣ ��¹�����, 2011.11.25 LSH
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

      // ����� Free
      srcPrt.Close;
   end;

end;






//------------------------------------------------------------------------------
// ICU �ӻ�����ǥ �ڵ���ĵ �������
// - ȯ�ں� ���
//
// Author : Lee, Se-Ha
// Date   : 2011.09.23 ~ 2012.01.30 (CPU ������ ��ƸԴ� ������ �������)
//------------------------------------------------------------------------------
procedure TMDN110FV.AutoScanPrint;
begin

   // ����� ��������(�Կ���) �޾ƿ���
   dtp_ChkDate.Date := StrToDate(FsAdmDate);




   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;



   //---------------------------------------------------
   // 2. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo;



   // 2.1.1. Set Patient information
   with FPatient do begin
      lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
      lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
      lb_Sex.Caption     := sSex    [0];                       // ����
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // ����
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����

      // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark, ���� �߰� -2016.02.23 smpark
      lb_Deptnm.Caption   := sDeptNm[0];
      lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
   end;



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
// ICU �ӻ�����ǥ �ڵ���ĵ ������� New-verion
// - ȯ�ں� ���
//
// Author : Lee, Se-Ha
// Date   : 2012.01.27
//------------------------------------------------------------------------------
procedure TMDN110FV.AutoScanPrint_New;
begin
   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;


   //---------------------------------------------------
   // 1. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo;


   //---------------------------------------------------
   // 2. Set Patient information
   //---------------------------------------------------
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
      lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
      lb_Sex.Caption     := sSex    [0];                       // ����
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // ����
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����

      // �������, ��, ����, ���� ���� �߰� -2015.08.03 smpark, ���� �߰� -2016.02.23 smpark
      lb_Deptnm.Caption   := sDeptNm[0];
      lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
   end;



   //---------------------------------------------------
   // 3. EMR ���ĺ�ȯ ��� ��ȸ
   //---------------------------------------------------
   bbt_SelectClick(ugd_EmrList);

end;




//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ�� ��ȸ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FV.bbt_SelectClick(Sender: TObject);
var
   sGubun, sWardNo, sPatNo, sAdmDate, sFromdate, sTodate, sSetType : string;
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

   // ICU �ӻ�����ǥ ������ �߰� -2014.11.27 smpark
   sSetType := 'ICQCK';

   // 2015.05.27 smpark
   sFromdate := DelChar(P_EMRFromDt,'-');
   sTodate   := DelChar(P_EMRToDt,'-');

   //-------------------------------------------------------------------
   // EMR ��� ��ȸ
   //-------------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(sGubun, sWardNo, sPatNo, sAdmDate, sSetType, sFromdate, sTodate);

end;




procedure TMDN110FV.bbt_ToNrRecordDClick(Sender: TObject);
var
   sFlag      : String; // D/E/N Caller Component Flag
   sNrsRecord : String; // ��ȣ��� ����
   sTime      : String; // ����Ͻ�

   // �ΰ��⵵
   sArtificialYN  : String; // ����
   sETTube        : String; // ET tube
   sTracheostomy  : String; // Tracheostomy
   sLeakage       : String; // LEAKAGE
   // ���ȯ��
   sMechanicalYN  : String; // ����
   sAdaptDVT      : String; // DVT ����
   sAdaptDate     : String; // ��������
   sPhysical30    : String; // ��ü�Ż� 30��
   sTabooReason   : String; // �ݱ����
   // ����������
   sRelaxYN       : String; // ����
   sRssScore      : String; // RSS score
   sRelaxDrug     : String; // Drug
   // ����������
   sPainScore     : String; // score
   sPainPart      : String; // ����
   sPainCond      : String; // ���
   sPainTerm      : String; // �Ⱓ
   sPainFreq      : String; // ��
   sPainDrug      : String; // Drug
   // �������ư� I
   sEndVeinPipe1  : String; // ����
   sEVP1EntDate   : String; // �����Ͻ�
   sEVP1Location  : String; // ��ġ
   sEVP1State     : String; // ���Ժ��� ����
   // �������ư� II
   sEndVeinPipe2  : String; // ����
   sEVP2EntDate   : String; // �����Ͻ�
   sEVP2Location  : String; // ��ġ
   sEVP2State     : String; // ���Ժ��� ����
   // �߽����ư� I
   sCentVeinPipe1 : String; // ����
   sCVP1EntDate   : String; // �����Ͻ�
   sCVP1Location  : String; // ��ġ(����)
   sCVP1Dressing  : String; // �巹�� ����
   sCVP1State     : String; // ���Ժ��� ����
   sCVP1DresChnge : String; // �巹�� ��ȯ
   // �߽����ư� II
   sCentVeinPipe2 : String; // ����
   sCVP2EntDate   : String; // �����Ͻ�
   sCVP2Location  : String; // ��ġ(����)
   sCVP2Dressing  : String; // �巹�� ����
   sCVP2State     : String; // ���Ժ��� ����
   sCVP2DresChnge : String; // �巹�� ��ȯ
   // ��â�������
   sBedSoreYN     : String; // ����
   sBedLocation   : String; // ��ġ
   sBedLevel      : String; // �ܰ�
   sBedSize       : String; // ũ��
   sBradenScale   : String; // Braden scale : score
   sBedCare       : String; // ��â���� ����Ȱ�� �� ġ��
   sWOCNConsult   : String; // WOCN consult
   sSoreDressing  : String; // Sore dressing
   // ���󿹹�Ȱ��
   sFallHurt      : String; // ���󿹹�Ȱ��
   // ������ �������(����, �Ҹ� ��)
   sMental        : String; // ����
   // Ȱ���� ����
   sActive        : String; // ����

   sSummary1       : String; // �ΰ��⵵
   sSummary2       : String; // ���ȯ��
   sSummary3       : String; // ����������
   sSummary4       : String; // ����������
   sSummary5       : String; // �������ư� I
   sSummary6       : String; // �������ư� II
   sSummary7       : String; // �߽����ư� I
   sSummary8       : String; // �߽����ư� II
   sSummary9       : String; // ��â�������
   sSummary10      : String; // ���󿹹�Ȱ��
   sSummary11      : String; // ������ �������(����, �Ҹ� ��)
   sSummary12      : String; // Ȱ���� ����

   // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   aPacket : IPipePacket;
   i : Integer;
   jPatInfo : TJsonObject;
begin
   // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
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
            sArtificialYN := '�ΰ��⵵ ��';
         end
         else if (Self.FindComponent(sFlag + '_B0101_2') as TRadioButton).Checked then
         begin
            sArtificialYN := '';
         end
         else
         begin
            sArtificialYN := '';
         end;

         // ET tube
         if      (Self.FindComponent(sFlag + '_B0102_1') as TCheckBox).Checked then
         begin
            sETTube :=  'ET tube '
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
                      + ' '
                      + 'Ŀ����:'
                      + (Self.FindComponent(sFlag + '_C0102_5') as TEdit).Text
                      + 'cmH��O'
                      ;
         end
         else
         begin
            sETTube := '';
         end;

         // Tracheostomy
         if      (Self.FindComponent(sFlag + '_B0103_1') as TCheckBox).Checked then
         begin
            sTracheostomy :=  'Tracheostomy '
                            + '(#'
                            + (Self.FindComponent(sFlag + '_C0103_1') as TEdit).Text
                            + ') '
                            + '��������:'
                            + (Self.FindComponent(sFlag + '_C0103_2') as TMaskEdit).Text
                            + ' '
                            + '����:'
                            + (Self.FindComponent(sFlag + '_C0103_3') as TEdit).Text
                            + 'mm'
                            + ' '
                            + 'Ŀ����:'
                            + (Self.FindComponent(sFlag + '_C0103_4') as TEdit).Text
                            + 'cmH��O'
                            ;
         end
         else
         begin
            sTracheostomy := '';
         end;

         // LEAKAGE
         if      (Self.FindComponent(sFlag + '_B0104_1') as TRadioButton).Checked then
         begin
            sLeakage := 'LEAKAGE:��';
         end
         else if (Self.FindComponent(sFlag + '_B0104_1') as TRadioButton).Checked then
         begin
            sLeakage := 'LEAKAGE:��';
         end
         else
         begin
            sLeakage := '';
         end;
      end;

      // ���ȯ��
      begin
         // ���ȯ�� ����
         if      (Self.FindComponent(sFlag + '_B0201_1') as TRadioButton).Checked then
         begin
            sMechanicalYN := '���ȯ�� ��';
         end
         else if (Self.FindComponent(sFlag + '_B0201_2') as TRadioButton).Checked then
         begin
            sMechanicalYN := '';
         end
         else
         begin
            sMechanicalYN := '';
         end;

         // DVT ����
         if      (Self.FindComponent(sFlag + '_B0204_1') as TRadioButton).Checked then
         begin
            sAdaptDVT := 'DVT ����:��';
         end
         else if (Self.FindComponent(sFlag + '_B0204_2') as TRadioButton).Checked then
         begin
            sAdaptDVT := 'DVT ����:��';
         end
         else
         begin
            sAdaptDVT := '';
         end;

         // ��������
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0202_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0202_2') as TEdit).Text <> '') then
         begin
            sAdaptDate :=  '��������:'
                         + (Self.FindComponent(sFlag + '_B0202_1') as TMaskEdit).Text
                         + '(#'
                         + (Self.FindComponent(sFlag + '_B0202_2') as TEdit).Text
                         + ')'
                         ;
         end
         else
         begin
            sAdaptDate := '';
         end;

         // ��ü�Ż� 30��
         if      (Self.FindComponent(sFlag + '_B0203_1') as TRadioButton).Checked then
         begin
            sPhysical30 := '��ü�Ż� 30��:��';

            // �ݱ����
            sTabooReason := '';
         end
         else if (Self.FindComponent(sFlag + '_B0203_2') as TRadioButton).Checked then
         begin
            sPhysical30 := '��ü�Ż� 30��:�ݱ�';

            // �ݱ����
            if      (Self.FindComponent(sFlag + '_C0203_1') as TRadioButton).Checked then
            begin
               sTabooReason := '�ݱ����:shock�� ������ ���� ���';
            end
            else if (Self.FindComponent(sFlag + '_C0203_2') as TRadioButton).Checked then
            begin
               sTabooReason := '�ݱ����:ȯ�ڻ��°� ü������ �Ұ���';
            end
            else if (Self.FindComponent(sFlag + '_C0203_3') as TRadioButton).Checked then
            begin
               sTabooReason :=  '�ݱ����:��Ÿ'
                              + '('
                              + (Self.FindComponent(sFlag + '_C0203_3E') as TEdit).Text
                              + ')'
                              ;
            end
            else
            begin
               sTabooReason := '';
            end;
         end
         else
         begin
            sPhysical30 := '';

            // �ݱ����
            sTabooReason := '';
         end;
      end;

      // ����������
      begin
         // ���������� ����
         if      (Self.FindComponent(sFlag + '_B0303_1') as TRadioButton).Checked then
         begin
            sRelaxYN := '���������� ��';
         end
         else if (Self.FindComponent(sFlag + '_B0303_2') as TRadioButton).Checked then
         begin
            sRelaxYN := '';
         end
         else
         begin
            sRelaxYN := '';
         end;

         // RSS score
         if (Self.FindComponent(sFlag + '_B0301_1') as TCheckBox).Checked then
         begin
            // 2016-10-14 ������ , EMR ��ȣ������� ���� �� �Ȼ꺴�� RASS score�� ����
            (* start *)
            //sRssScore :=  'RSS score:'
            //            + (Self.FindComponent(sFlag + '_B0301_1E') as TEdit).Text
            //            ;
            if G_LOCATE = 'AS' then
            begin
               sRssScore :=  'RASS score:'
                          + (Self.FindComponent(sFlag + '_B0301_1E') as TEdit).Text
                          ;
            end
            else
            begin
               sRssScore :=  'RSS score:'
                          + (Self.FindComponent(sFlag + '_B0301_1E') as TEdit).Text
                          ;
            end;
            (* end *)
         end
         else
         begin
            sRssScore := '';
         end;

         // Drug
         if (Self.FindComponent(sFlag + '_B0302_1') as TCheckBox).Checked then
         begin
            sRelaxDrug :=  'Drug:'
                         + (Self.FindComponent(sFlag + '_B0302_1E') as TEdit).Text
                         ;
         end
         else
         begin
            sRelaxDrug := '';
         end;
      end;

      // ����������
      begin
         // score
         if      (Self.FindComponent(sFlag + '_B0401_1') as TRadioButton).Checked then
         begin
            sPainScore := '���������� �����Ұ�';
         end
         else if (Self.FindComponent(sFlag + '_B0401_2') as TRadioButton).Checked then
         begin
            sPainScore :=  '���������� FPS score:'
                         + (Self.FindComponent(sFlag + '_B0401_2E') as TEdit).Text
                         ;
         end
         else if (Self.FindComponent(sFlag + '_B0401_3') as TRadioButton).Checked then
         begin
            sPainScore :=  '���������� NRS score:'
                         + (Self.FindComponent(sFlag + '_B0401_3E') as TEdit).Text
                         ;
         end
         else if (Self.FindComponent(sFlag + '_B0401_4') as TRadioButton).Checked then
         begin
            sPainScore :=  '���������� BPS score:'
                         + (Self.FindComponent(sFlag + '_B0401_4E') as TEdit).Text
                         ;
         end
         else
         begin
            sPainScore := '';
         end;

         // ����
         if (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text <> '' then
         begin
            sPainPart :=  '����:'
                        + (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text
                        ;
         end
         else
         begin
            sPainPart := '';
         end;

         // ���
         if      (Self.FindComponent(sFlag + '_C0402_1') as TRadioButton).Checked then
         begin
            sPainCond := '���:��ȭ';
         end
         else if (Self.FindComponent(sFlag + '_C0402_2') as TRadioButton).Checked then
         begin
            sPainCond := '���:����';
         end
         else if (Self.FindComponent(sFlag + '_C0402_3') as TRadioButton).Checked then
         begin
            sPainCond := '���:����';
         end
         else if (Self.FindComponent(sFlag + '_C0402_4') as TRadioButton).Checked then
         begin
            sPainCond := '���:������';
         end
         else if (Self.FindComponent(sFlag + '_C0402_5') as TRadioButton).Checked then
         begin
            sPainCond := '���:��µ���';
         end
         else if (Self.FindComponent(sFlag + '_C0402_6') as TRadioButton).Checked then
         begin
            sPainCond :=  '���:��Ÿ'
                        + '('
                        + (Self.FindComponent(sFlag + '_C0402_6E') as TEdit).Text
                        + ')'
                        ;
         end
         else
         begin
            sPainCond := '';
         end;

         // �Ⱓ
         if (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text <> '' then
         begin
            sPainTerm :=  '�Ⱓ:'
                        + (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text
                        ;
         end
         else
         begin
            sPainTerm := '';
         end;

         // ��
         if      (Self.FindComponent(sFlag + '_C0404_1') as TRadioButton).Checked then
         begin
            sPainFreq := '��:������';
         end
         else if (Self.FindComponent(sFlag + '_C0404_2') as TRadioButton).Checked then
         begin
            sPainFreq := '��:������';
         end
         else
         begin
            sPainFreq := '';
         end;

         // Drug
         if (Self.FindComponent(sFlag + '_B0402_1') as TCheckBox).Checked then
         begin
            sPainDrug :=  'Drug:'
                        + (Self.FindComponent(sFlag + '_B0402_1E') as TEdit).Text
                        ;
         end
         else
         begin
            sPainDrug := '';
         end;
      end;

      // �������ư� I
      begin
         // �������ư� I ����
         if      (Self.FindComponent(sFlag + '_B0501_1') as TRadioButton).Checked then
         begin
            sEndVeinPipe1 := '�������ư� I ��';
         end
         else if (Self.FindComponent(sFlag + '_B0501_2') as TRadioButton).Checked then
         begin
            sEndVeinPipe1 := '';
         end
         else
         begin
            sEndVeinPipe1 := '';
         end;

         // �����Ͻ�
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0502_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0502_2') as TEdit).Text <> '') then
         begin
            sEVP1EntDate :=  '�����Ͻ�:'
                           + (Self.FindComponent(sFlag + '_B0502_1') as TMaskEdit).Text
                           + '(#'
                           + (Self.FindComponent(sFlag + '_B0502_2') as TEdit).Text
                           + ')'
                           ;
         end
         else
         begin
            sEVP1EntDate := '';
         end;

         // ��ġ
         sEVP1Location := '';

         if (Self.FindComponent(sFlag + '_B0503_4') as TCheckBox).Checked then
         begin
            sEVP1Location := '������' + ',' + sEVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0503_3') as TCheckBox).Checked then
         begin
            sEVP1Location := '������' + ',' + sEVP1Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_2') as TCheckBox).Checked then
         begin
            sEVP1Location := '�»���' + ',' + sEVP1Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_1') as TCheckBox).Checked then
         begin
            sEVP1Location := '�����' + ',' + sEVP1Location;;
         end;

         if sEVP1Location <> '' then
         begin
            sEVP1Location := Copy(sEVP1Location, 1, Length(sEVP1Location)-1);
            sEVP1Location := '��ġ:' + sEVP1Location;
         end;

         // ���Ժ��� ����
         if      (Self.FindComponent(sFlag + '_B0504_1') as TRadioButton).Checked then
         begin
            sEVP1State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0504_2') as TRadioButton).Checked then
         begin
            sEVP1State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0504_3') as TRadioButton).Checked then
         begin
            sEVP1State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0504_4') as TRadioButton).Checked then
         begin
            sEVP1State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0504_5') as TRadioButton).Checked then
         begin
            sEVP1State := '���Ժ��� ����:����';
         end
         else
         begin
            sEVP1State := '';
         end;
      end;

      // �������ư� II
      begin
         // �������ư� II ����
         if      (Self.FindComponent(sFlag + '_B0505_1') as TRadioButton).Checked then
         begin
            sEndVeinPipe2 := '�������ư� II ��';
         end
         else if (Self.FindComponent(sFlag + '_B0505_2') as TRadioButton).Checked then
         begin
            sEndVeinPipe2 := '';
         end
         else
         begin
            sEndVeinPipe2 := '';
         end;

         // �����Ͻ�
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0506_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0506_2') as TEdit).Text <> '') then
         begin
            sEVP2EntDate :=  '�����Ͻ�:'
                           + (Self.FindComponent(sFlag + '_B0506_1') as TMaskEdit).Text
                           + '(#'
                           + (Self.FindComponent(sFlag + '_B0506_2') as TEdit).Text
                           + ')'
                           ;
         end
         else
         begin
            sEVP2EntDate := '';
         end;

         // ��ġ
         sEVP2Location := '';

         if (Self.FindComponent(sFlag + '_B0507_4') as TCheckBox).Checked then
         begin
            sEVP2Location := '������' + ',' + sEVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0507_3') as TCheckBox).Checked then
         begin
            sEVP2Location := '������' + ',' + sEVP2Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_2') as TCheckBox).Checked then
         begin
            sEVP2Location := '�»���' + ',' + sEVP2Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_1') as TCheckBox).Checked then
         begin
            sEVP2Location := '�����' + ',' + sEVP2Location;;
         end;

         if sEVP2Location <> '' then
         begin
            sEVP2Location := Copy(sEVP2Location, 1, Length(sEVP2Location)-1);
            sEVP2Location := '��ġ:' + sEVP2Location;
         end;

         // ���Ժ��� ����
         if      (Self.FindComponent(sFlag + '_B0508_1') as TRadioButton).Checked then
         begin
            sEVP2State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0508_2') as TRadioButton).Checked then
         begin
            sEVP2State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0508_3') as TRadioButton).Checked then
         begin
            sEVP2State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0508_4') as TRadioButton).Checked then
         begin
            sEVP2State := '���Ժ��� ����:����';
         end
         else if (Self.FindComponent(sFlag + '_B0508_5') as TRadioButton).Checked then
         begin
            sEVP2State := '���Ժ��� ����:����';
         end
         else
         begin
            sEVP2State := '';
         end;
      end;

      // �߽����ư� I
      begin
         // �߽����ư� I ����
         if      (Self.FindComponent(sFlag + '_B0601_1') as TRadioButton).Checked then
         begin
            sCentVeinPipe1 := '�߽����ư� I ��';
         end
         else if (Self.FindComponent(sFlag + '_B0601_2') as TRadioButton).Checked then
         begin
            sCentVeinPipe1 := '';
         end
         else
         begin
            sCentVeinPipe1 := '';
         end;

         // �����Ͻ�
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0602_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0602_2') as TEdit).Text <> '') then
         begin
            sCVP1EntDate :=  '�����Ͻ�:'
                           + (Self.FindComponent(sFlag + '_B0602_1') as TMaskEdit).Text
                           + '(#'
                           + (Self.FindComponent(sFlag + '_B0602_2') as TEdit).Text
                           + ')'
                           ;
         end
         else
         begin
            sCVP1EntDate := '';
         end;

         // ��ġ(����)
         sCVP1Location := '';

         if (Self.FindComponent(sFlag + '_B0603_7') as TCheckBox).Checked then
         begin
            sCVP1Location := 'Right' + ',' + sCVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0603_6') as TCheckBox).Checked then
         begin
            sCVP1Location := 'Left' + ',' + sCVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0603_5') as TCheckBox).Checked then
         begin
            sCVP1Location := 'S-Ganz' + ',' + sCVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0603_4') as TCheckBox).Checked then
         begin
            sCVP1Location := 'PICC' + ',' + sCVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0603_3') as TCheckBox).Checked then
         begin
            sCVP1Location := 'Femoral' + ',' + sCVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0603_2') as TCheckBox).Checked then
         begin
            sCVP1Location := 'Internal jugular' + ',' + sCVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0603_1') as TCheckBox).Checked then
         begin
            sCVP1Location := 'Subclavian' + ',' + sCVP1Location;
         end;

         if sCVP1Location <> '' then
         begin
            sCVP1Location := Copy(sCVP1Location, 1, Length(sCVP1Location)-1);
            sCVP1Location := '��ġ(����):' + sCVP1Location;
         end;

         // �巹�� ����
         sCVP1Dressing := '';

         if (Self.FindComponent(sFlag + '_B0604_5') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '������' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_4') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '����' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_3') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '����' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_2') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '����巹��' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_1') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '�ʸ��巹��' + ',' + sCVP1Dressing;
         end;

         if sCVP1Dressing <> '' then
         begin
            sCVP1Dressing := Copy(sCVP1Dressing, 1, Length(sCVP1Dressing)-1);
            sCVP1Dressing := '�巹�� ����:' + sCVP1Dressing;
         end;

         // ���Ժ��� ����
         sCVP1State := '';

         if (Self.FindComponent(sFlag + '_B0605_4') as TCheckBox).Checked then
         begin
            sCVP1State := '���⹰' + ',' + sCVP1State;
         end;

         if (Self.FindComponent(sFlag + '_B0605_3') as TCheckBox).Checked then
         begin
            sCVP1State := '����' + ',' + sCVP1State;
         end;

         if (Self.FindComponent(sFlag + '_B0605_2') as TCheckBox).Checked then
         begin
            sCVP1State := '����' + ',' + sCVP1State;
         end;

         if (Self.FindComponent(sFlag + '_B0605_1') as TCheckBox).Checked then
         begin
            sCVP1State := '����' + ',' + sCVP1State;
         end;

         if sCVP1State <> '' then
         begin
            sCVP1State := Copy(sCVP1State, 1, Length(sCVP1State)-1);
            sCVP1State := '���Ժ��� ����:' + sCVP1State;
         end;

         // �巹�� ��ȯ
         if      (Self.FindComponent(sFlag + '_B0606_1') as TRadioButton).Checked then
         begin
            sCVP1DresChnge :=  '�巹�� ��ȯ:��'
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                             + ')'
                             ;
         end
         else if (Self.FindComponent(sFlag + '_B0606_2') as TRadioButton).Checked then
         begin
            sCVP1DresChnge :=  '�巹�� ��ȯ:�ƴϿ�'
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                             + ')'
                             ;
         end
         else
         begin
            sCVP1DresChnge := '';
         end;
      end;

      // �߽����ư� II
      begin
         // �߽����ư� II ����
         if      (Self.FindComponent(sFlag + '_B0607_1') as TRadioButton).Checked then
         begin
            sCentVeinPipe2 := '�߽����ư� II ��';
         end
         else if (Self.FindComponent(sFlag + '_B0607_2') as TRadioButton).Checked then
         begin
            sCentVeinPipe2 := '';
         end
         else
         begin
            sCentVeinPipe2 := '';
         end;

         // �����Ͻ�
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0608_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0608_2') as TEdit).Text <> '') then
         begin
            sCVP2EntDate :=  '�����Ͻ�:'
                           + (Self.FindComponent(sFlag + '_B0608_1') as TMaskEdit).Text
                           + '(#'
                           + (Self.FindComponent(sFlag + '_B0608_2') as TEdit).Text
                           + ')'
                           ;
         end
         else
         begin
            sCVP2EntDate := '';
         end;

         // ��ġ(����)
         sCVP2Location := '';

         if (Self.FindComponent(sFlag + '_B0609_7') as TCheckBox).Checked then
         begin
            sCVP2Location := 'Right' + ',' + sCVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0609_6') as TCheckBox).Checked then
         begin
            sCVP2Location := 'Left' + ',' + sCVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0609_5') as TCheckBox).Checked then
         begin
            sCVP2Location := 'S-Ganz' + ',' + sCVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0609_4') as TCheckBox).Checked then
         begin
            sCVP2Location := 'PICC' + ',' + sCVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0609_3') as TCheckBox).Checked then
         begin
            sCVP2Location := 'Femoral' + ',' + sCVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0609_2') as TCheckBox).Checked then
         begin
            sCVP2Location := 'Internal jugular' + ',' + sCVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0609_1') as TCheckBox).Checked then
         begin
            sCVP2Location := 'Subclavian' + ',' + sCVP2Location;
         end;

         if sCVP2Location <> '' then
         begin
            sCVP2Location := Copy(sCVP2Location, 1, Length(sCVP2Location)-1);
            sCVP2Location := '��ġ(����):' + sCVP2Location;
         end;

         // �巹�� ����
         sCVP2Dressing := '';

         if (Self.FindComponent(sFlag + '_B0610_5') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '������' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_4') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '����' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_3') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '����' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_2') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '����巹��' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_1') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '�ʸ��巹��' + ',' + sCVP2Dressing;
         end;

         if sCVP2Dressing <> '' then
         begin
            sCVP2Dressing := Copy(sCVP2Dressing, 1, Length(sCVP2Dressing)-1);
            sCVP2Dressing := '�巹�� ����:' + sCVP2Dressing;
         end;

         // ���Ժ��� ����
         sCVP2State := '';

         if (Self.FindComponent(sFlag + '_B0611_4') as TCheckBox).Checked then
         begin
            sCVP2State := '���⹰' + ',' + sCVP2State;
         end;

         if (Self.FindComponent(sFlag + '_B0611_3') as TCheckBox).Checked then
         begin
            sCVP2State := '����' + ',' + sCVP2State;
         end;

         if (Self.FindComponent(sFlag + '_B0611_2') as TCheckBox).Checked then
         begin
            sCVP2State := '����' + ',' + sCVP2State;
         end;

         if (Self.FindComponent(sFlag + '_B0611_1') as TCheckBox).Checked then
         begin
            sCVP2State := '����' + ',' + sCVP2State;
         end;

         if sCVP2State <> '' then
         begin
            sCVP2State := Copy(sCVP2State, 1, Length(sCVP2State)-1);
            sCVP2State := '���Ժ��� ����:' + sCVP2State;
         end;

         // �巹�� ��ȯ
         if      (Self.FindComponent(sFlag + '_B0612_1') as TRadioButton).Checked then
         begin
            sCVP2DresChnge :=  '�巹�� ��ȯ:��'
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0612_3') as TEdit).Text
                             + ')'
                             ;
         end
         else if (Self.FindComponent(sFlag + '_B0612_2') as TRadioButton).Checked then
         begin
            sCVP2DresChnge :=  '�巹�� ��ȯ:�ƴϿ�'
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0612_3') as TEdit).Text
                             + ')'
                             ;
         end
         else
         begin
            sCVP2DresChnge := '';
         end;
      end;

      // ��â�������
      begin
         // ��â�߻�
         if      (Self.FindComponent(sFlag + '_B0701_1') as TRadioButton).Checked then
         begin
            sBedSoreYN :=  '��â������� ��â�߻�:��'
                         + '('
                         ;
            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + '�Խǽ�'
                            ;
            end;

            if ((Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked) and
               ((Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked)     then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + ','
                            ;
            end;

            if (Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + '�Խ���'
                            ;
            end;

            sBedSoreYN :=  sBedSoreYN
                         + ')'
                         ;
         end
         else if (Self.FindComponent(sFlag + '_B0701_2') as TRadioButton).Checked then
         begin
            sBedSoreYN :=  '��â������� ��â�߻�:��'
                         + '('
                         ;
            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + '�Խǽ�'
                            ;
            end;

            if ((Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked) and
               ((Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked)     then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + ','
                            ;
            end;

            if (Self.FindComponent(sFlag + '_C0701_2') as TCheckBox).Checked then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + '�Խ���'
                            ;
            end;

            sBedSoreYN :=  sBedSoreYN
                         + ')'
                         ;
         end
         else
         begin
            sBedSoreYN := '';
         end;

         // ��ġ
         if (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text <> '' then
         begin
            sBedLocation :=  '��ġ:'
                           + (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text
                           ;
         end;

         // �ܰ�
         if (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text <> '' then
         begin
            sBedLevel :=  '�ܰ�:'
                        + (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text
                        ;
         end;

         // ũ��
         if (Self.FindComponent(sFlag + '_C0701_5') as TEdit).Text <> '' then
         begin
            sBedSize :=  'ũ��:'
                       + (Self.FindComponent(sFlag + '_C0701_5') as TEdit).Text
                       ;
         end;

         // Braden scale : score
         if (Self.FindComponent(sFlag + '_B0702_1') as TEdit).Text <> '' then
         begin
            sBradenScale :=  'Braden scale : score '
                           + (Self.FindComponent(sFlag + '_B0702_1') as TEdit).Text
                           ;
         end;

         // ��â���� ����Ȱ�� �� ġ��
         sBedCare := '';

         if (Self.FindComponent(sFlag + '_B0703_5') as TCheckBox).Checked then
         begin
            sBedCare :=  '��Ÿ'
                        + '('
                        + (Self.FindComponent(sFlag + '_B0703_5E') as TEdit).Text
                        + ')'
                        + ','
                        + sBedCare
                        ;
         end;

         if (Self.FindComponent(sFlag + '_B0703_4') as TCheckBox).Checked then
         begin
            sBedCare := '�ߵڲ�ġ��ȣ' + ',' + sBedCare;
         end;

         if (Self.FindComponent(sFlag + '_B0703_3') as TCheckBox).Checked then
         begin
            sBedCare := '����, �̲����� ����' + ',' + sBedCare;
         end;

         if (Self.FindComponent(sFlag + '_B0703_2') as TCheckBox).Checked then
         begin
            sBedCare := '����ħ��' + ',' + sBedCare;
         end;

         if (Self.FindComponent(sFlag + '_B0703_1') as TCheckBox).Checked then
         begin
            sBedCare := '�ڼ���ȯ 2�ð� �̳�' + ',' + sBedCare;
         end;

         if sBedCare <> '' then
         begin
            sBedCare := Copy(sBedCare, 1, Length(sBedCare)-1);
            sBedCare := '��â���� ����Ȱ�� �� ġ��:' + sBedCare;
         end;

         // WOCN consult
         if      (Self.FindComponent(sFlag + '_B0704_1') as TRadioButton).Checked then
         begin
            sWOCNConsult :=  'WOCN consult:��';
         end
         else if (Self.FindComponent(sFlag + '_B0704_2') as TRadioButton).Checked then
         begin
            sWOCNConsult :=  '';
         end
         else
         begin
            sWOCNConsult := '';
         end;

         // Sore dressing
         if      (Self.FindComponent(sFlag + '_B0705_1') as TRadioButton).Checked then
         begin
            sSoreDressing :=  'Sore dressing:��'
                            + '(#'
                            + (Self.FindComponent(sFlag + '_B0705_3') as TEdit).Text
                            + ')'
                            ;
         end
         else if (Self.FindComponent(sFlag + '_B0705_2') as TRadioButton).Checked then
         begin
            sSoreDressing := '';
         end
         else
         begin
            sSoreDressing := '';
         end;
      end;

      // ���󿹹�Ȱ��
      begin
         sFallHurt := '';

         if (Self.FindComponent(sFlag + '_B0801_4') as TCheckBox).Checked then
         begin
            sFallHurt := '�������� ��ƼĿ ����' + ',' + sFallHurt;
         end;

         if (Self.FindComponent(sFlag + '_B0801_3') as TCheckBox).Checked then
         begin
            sFallHurt := '��������ǥ���� ����' + ',' + sFallHurt;
         end;

         if (Self.FindComponent(sFlag + '_B0801_2') as TCheckBox).Checked then
         begin
            sFallHurt := '���󿹹汳��' + ',' + sFallHurt;
         end;

         if (Self.FindComponent(sFlag + '_B0801_1') as TCheckBox).Checked then
         begin
            sFallHurt := 'ħ�󳭰� �ø���' + ',' + sFallHurt;
         end;

         if sFallHurt <> '' then
         begin
            sFallHurt := Copy(sFallHurt, 1, Length(sFallHurt)-1);
            sFallHurt := '���󿹹�Ȱ��:' + sFallHurt;
         end;
      end;

      // ������ �������(����, �Ҹ� ��)
      begin
         if      (Self.FindComponent(sFlag + '_B0901_1') as TRadioButton).Checked then
         begin
            sMental := '������ �������(����, �Ҹ� ��):��';
         end
         else if (Self.FindComponent(sFlag + '_B0901_2') as TRadioButton).Checked then
         begin
            sMental := '������ �������(����, �Ҹ� ��):��';
         end
         else
         begin
            sMental := '';
         end;
      end;

      // Ȱ���� ����
      begin
         if      (Self.FindComponent(sFlag + '_B1001_1') as TRadioButton).Checked then
         begin
            sActive := 'Ȱ���� ����:��';
         end
         else if (Self.FindComponent(sFlag + '_B1001_2') as TRadioButton).Checked then
         begin
            sActive := 'Ȱ���� ����:��';
         end
         else
         begin
            sActive := '';
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
      sSummary11 := '';
      sSummary12 := '';

      sSummary1  :=        sSummary1
                   +       sArtificialYN  // ����
                   + ' ' + sETTube        // ET tube
                   + ' ' + sTracheostomy  // Tracheostomy
                   + ' ' + sLeakage       // LEAKAGE
                   ;
      if Trim(sSummary1) <> '' then sSummary1 := Trim(sSummary1) + #13#10
      else                          sSummary1 := '';

      sSummary2  :=        sSummary2
                   +       sMechanicalYN  // ����
                   + ' ' + sAdaptDVT      // DVT ����
                   + ' ' + sAdaptDate     // ��������
                   + ' ' + sPhysical30    // ��ü�Ż� 30��
                   + ' ' + sTabooReason   // �ݱ����
                   ;
      if Trim(sSummary2) <> '' then sSummary2 := Trim(sSummary2) + #13#10
      else                          sSummary2 := '';

      sSummary3  :=        sSummary3
                   +       sRelaxYN       // ����
                   + ' ' + sRssScore      // RSS score
                   + ' ' + sRelaxDrug     // Drug
                   ;
      if Trim(sSummary3) <> '' then sSummary3 := Trim(sSummary3) + #13#10
      else                          sSummary3 := '';

      sSummary4  :=        sSummary4
                   +       sPainScore     // score
                   + ' ' + sPainPart      // ����
                   + ' ' + sPainCond      // ���
                   + ' ' + sPainTerm      // �Ⱓ
                   + ' ' + sPainFreq      // ��
                   + ' ' + sPainDrug      // Drug
                   ;
      if Trim(sSummary4) <> '' then sSummary4 := Trim(sSummary4) + #13#10
      else                          sSummary4 := '';

      sSummary5  :=        sSummary5
                   +       sEndVeinPipe1  // ����
                   + ' ' + sEVP1EntDate   // �����Ͻ�
                   + ' ' + sEVP1Location  // ��ġ
                   + ' ' + sEVP1State     // ���Ժ��� ����
                   ;
      if Trim(sSummary5) <> '' then sSummary5 := Trim(sSummary5) + #13#10
      else                          sSummary5 := '';

      sSummary6  :=        sSummary6
                   +       sEndVeinPipe2  // ����
                   + ' ' + sEVP2EntDate   // �����Ͻ�
                   + ' ' + sEVP2Location  // ��ġ
                   + ' ' + sEVP2State     // ���Ժ��� ����
                   ;
      if Trim(sSummary6) <> '' then sSummary6 := Trim(sSummary6) + #13#10
      else                          sSummary6 := '';

      sSummary7  :=        sSummary7
                   +       sCentVeinPipe1 // ����
                   + ' ' + sCVP1EntDate   // �����Ͻ�
                   + ' ' + sCVP1Location  // ��ġ(����)
                   + ' ' + sCVP1Dressing  // �巹�� ����
                   + ' ' + sCVP1State     // ���Ժ��� ����
                   + ' ' + sCVP1DresChnge // �巹�� ��ȯ
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';

      sSummary8  :=        sSummary8
                   +       sCentVeinPipe2 // ����
                   + ' ' + sCVP2EntDate   // �����Ͻ�
                   + ' ' + sCVP2Location  // ��ġ(����)
                   + ' ' + sCVP2Dressing  // �巹�� ����
                   + ' ' + sCVP2State     // ���Ժ��� ����
                   + ' ' + sCVP2DresChnge // �巹�� ��ȯ
                   ;
      if Trim(sSummary8) <> '' then sSummary8 := Trim(sSummary8) + #13#10
      else                          sSummary8 := '';

      sSummary9  :=        sSummary9
                   +       sBedSoreYN     // ����
                   + ' ' + sBedLocation   // ��ġ
                   + ' ' + sBedLevel      // �ܰ�
                   + ' ' + sBedSize       // ũ��
                   + ' ' + sBradenScale   // Braden scale : score
                   + ' ' + sBedCare       // ��â���� ����Ȱ�� �� ġ��
                   + ' ' + sWOCNConsult   // WOCN consult
                   + ' ' + sSoreDressing  // Sore dressing
                   ;
      if Trim(sSummary9) <> '' then sSummary9 := Trim(sSummary9) + #13#10
      else                          sSummary9 := '';

      sSummary10 :=        sSummary10
                   +       sFallHurt      // ���󿹹�Ȱ��
                   ;
      if Trim(sSummary10) <> '' then sSummary10 := Trim(sSummary10) + #13#10
      else                           sSummary10 := '';

      sSummary11 :=        sSummary11
                   +       sMental        // ����
                   ;
      if Trim(sSummary11) <> '' then sSummary11 := Trim(sSummary11) + #13#10
      else                           sSummary11 := '';

      sSummary12 :=        sSummary12
                   +       sActive        // ����
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
                   + sSummary11
                   + sSummary12
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
// [���ĺ�ȯ ���ȯ��] ��ȸ Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2012.01.27
//------------------------------------------------------------------------------
// sType5, sType6 �߰� -2015.05.27 smpark
procedure TMDN110FV.GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);
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
               // ���ȯ�� ������ ������� ���� @ 2012.10.31 LSH
               if i = RowCount -1 then
               begin
                  G_LastEmrDateYn := 'Y';
               end
               else
               begin
                  G_LastEmrDateYn := 'N';
               end;

               Row := i;

               // ������� Set
               dtp_ChkDate.Date := StrToDateTime(Cells[2, i]);

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
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FV.bbt_OkClick(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // ���ں� �ӻ�����ǥ ���� ��ȸ
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;



//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - ���� ���� ��ȣ���� ���� ����
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_DCopyClick(Sender: TObject);
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
procedure TMDN110FV.sbt_ECopyClick(Sender: TObject);
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
procedure TMDN110FV.sbt_NCopyClick(Sender: TObject);
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
function TMDN110FV.CopyLastQualCheckOfDuty(AsDuty: String): Boolean;
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
      AsSetType := 'ICQCK';

      // �ӻ�����ǥ ����
      QcInfo := HmdIcqcit.Create;


      with QcInfo do
      begin
         sPatNo   := FsPatNo;                                        // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                      // �Կ�����
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);   // ���� ����
         sDuty    := AsDuty;                                         // Duty
         sChkTime := Trim((GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime' )  as TMaskEdit).Text);  // ���� �ð�
         sChkNurs := Trim((GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursId') as TEdit).Text);      // ���� ��ȣ��
         sChkDept := Trim((GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkDept'  ) as TEdit).Text);      // ���� �μ�
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
// [�ӻ�����ǥ] �������� ���� ��� callback function
//
// Author : Lee, Se-Ha
// Date   : 2012.06.13
//------------------------------------------------------------------------------
procedure TMDN110FV.AssignPainRslt(Sender: TObject);
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




      // ����
      TEdit(GetComp(Self.Name, FsSelDuty + '_C0401_1')).Text     := mdpaindt.sArea[0];


      // ����(����)
      if (mdpaindt.sPoint[0] <> '') then
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := mdpaindt.sPoint[0]
      else
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := '';


      // ���
      if (mdpaindt.sModality[0] = '��ȭ') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_1')).Checked := True
      else if (mdpaindt.sModality[0] = '����') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_2')).Checked := True
      else if (mdpaindt.sModality[0] = '����') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_3')).Checked := True
      else if (mdpaindt.sModality[0] = '������') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_4')).Checked := True
      else if (mdpaindt.sModality[0] = '��µ���') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_5')).Checked := True
      else
      begin
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_6')).Checked := True;
         TEdit(GetComp(Self.Name, FsSelDuty + '_C0402_6E')).Text          := mdpaindt.sModality[0];
      end;



      // �Ⱓ
      if (mdpaindt.sTph[0] <> '') then
         TEdit(GetComp(Self.Name, FsSelDuty + '_C0403_1')).Text := mdpaindt.sTph[0]
      else
         TEdit(GetComp(Self.Name, FsSelDuty + '_C0403_1')).Text := '';



      // ��
      if (mdpaindt.sFreq[0] = '������') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0404_1')).Checked := True
      else if (mdpaindt.sFreq[0] = '������') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0404_2')).Checked := True;


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


//------------------------------------------------------
// [Day - �������� �� ��/��] @ 2012.07.12 LSH
//  - CCU �迬�� ��û
//------------------------------------------------------
procedure TMDN110FV.D_B0303_1Click(Sender: TObject);
begin
   pn_DDetail12.Enabled := D_B0303_1.Checked;

   if not pn_DDetail12.Enabled then
   begin
      D_B0301_1.Checked := False;      // RSS Score
      D_B0302_1.Checked := False;      // Drug

      D_B0301_1E.Text   := '';
      D_B0302_1E.Text   := '';
   end;
end;


//------------------------------------------------------
// [Evening - �������� �� ��/��] @ 2012.07.12 LSH
//  - CCU �迬�� ��û
//------------------------------------------------------
procedure TMDN110FV.E_B0303_1Click(Sender: TObject);
begin
   pn_EDetail12.Enabled := E_B0303_1.Checked;

   if not pn_EDetail12.Enabled then
   begin
      E_B0301_1.Checked := False;      // RSS Score
      E_B0302_1.Checked := False;      // Drug

      E_B0301_1E.Text   := '';
      E_B0302_1E.Text   := '';
   end;
end;

//------------------------------------------------------
// [Night - �������� �� ��/��] @ 2012.07.12 LSH
//  - CCU �迬�� ��û
//------------------------------------------------------
procedure TMDN110FV.N_B0303_1Click(Sender: TObject);
begin
   pn_NDetail12.Enabled := N_B0303_1.Checked;

   if not pn_NDetail12.Enabled then
   begin
      N_B0301_1.Checked := False;      // RSS Score
      N_B0302_1.Checked := False;      // Drug

      N_B0301_1E.Text   := '';
      N_B0302_1E.Text   := '';
   end;
end;

// 9,10 �׸� �߰� -2015.03.05 smpark
procedure TMDN110FV.Set_AA_20150306;
begin
   // --------------------------------------------------------------
   // [�Ⱦ�] ��ȯ�ڽ� ��� ���� ���� ���� ���� �׸� �߰�
   // 2015.03.02 smpark
   // --------------------------------------------------------------
   if (G_Locate = 'AA') and
      (FormatDateTime('YYYYMMDD', dtp_ChkDate.Date) >= '20150306') then
   begin
      pn_D09.Visible     := True;
      bvl_D09.Visible    := True;
      pn_D09_rbt.Visible := True;
      pn_D10.Visible     := True;
      bvl_D10.Visible    := True;
      pn_D10_rbt.Visible := True;

      pn_E09.Visible     := True;
      bvl_E09.Visible    := True;
      pn_E09_rbt.Visible := True;
      pn_E10.Visible     := True;
      bvl_E10.Visible    := True;
      pn_E10_rbt.Visible := True;

      pn_N09.Visible     := True;
      bvl_N09.Visible    := True;
      pn_N09_rbt.Visible := True;
      pn_N10.Visible     := True;
      bvl_N10.Visible    := True;
      pn_N10_rbt.Visible := True;
   end
   else
   begin
      pn_D09.Visible     := False;
      bvl_D09.Visible    := False;
      pn_D09_rbt.Visible := False;
      pn_D10.Visible     := False;
      bvl_D10.Visible    := False;
      pn_D10_rbt.Visible := False;

      pn_E09.Visible     := False;
      bvl_E09.Visible    := False;
      pn_E09_rbt.Visible := False;
      pn_E10.Visible     := False;
      bvl_E10.Visible    := False;
      pn_E10_rbt.Visible := False;

      pn_N09.Visible     := False;
      bvl_N09.Visible    := False;
      pn_N09_rbt.Visible := False;
      pn_N10.Visible     := False;
      bvl_N10.Visible    := False;
      pn_N10_rbt.Visible := False;
   end;
end;

// [EMR����] 2016.04.12 ȫâ�� �߰���(������).
procedure TMDN110FV.bt_printClick(Sender: TObject);
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
   RegisterClass(TMDN110FV);

finalization
   UnRegisterClass(TMDN110FV);

end.
