{===============================================================================
   Program ID    : MDN110UV
   Program Name  : ICU 통합 간호기록지 - 임상질지표
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
  // [EMR연계] 2016.04.12 홍창한 추가함(장은석). SComReport 연결을 위한 추가
  SComFunc,
  // 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
  LoadEMRFunc,
  // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
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
    procedure bbt_ToNrRecordDClick(Sender: TObject);  // 자동삽관일 계산, 2011.08.08 LSH
    //--------------------------------------------------------------------------

  private
    { Private declarations }
    FsPatNo   : string;    // 환자번호
    FsAdmDate : String;    // 입원일자

    FsCurDuty : String;    // Current Duty
    FPatient  : HmdPatinf; // 환자정보
    FSysDate  : TDateTime; // current system date
    FIsRoot   : Boolean;   // root authority
    FsSelDuty : String;    // 현재 Editing하기위해 선택한 Duty, 2011.08.24 LSH

    // [EMR연계] 2016.04.12 홍창한 추가함(장은석). EMR연동 변수 선언
    pv_SComReport  : HSComReport;
    pv_Patsect     : String;
    pv_Patno       : String;
    pv_Meddate     : String;
    pv_Reptid      : String;
    // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
    FsAge          : String;
    FsSex          : String;
    FsBirthymd     : String;
    FsAcptNo       : String;
    FsCodvCd       : String;
    FsMedTime      : String;
    FsPatName      : String;

    // User-defined Function --------------------------------------------------
    // 초기화
    procedure Initialize;

    // 현재 Duty 설정
    procedure SetAssessDateAndCurrentDuty(AdtSysDateTime : TDateTime);

    // 작업 버튼 상태 설정
    procedure SetControlStatusOfDuty(AsDuty : string);

    // 현재 Duty 표시
    procedure DisplayCurrentDuty(AsDuty : string);

    // Clear Control Value
    procedure ClearValueOf(AsDuty : String);

    // 환자정보 조회
    procedure LoadPatientInfo;

    // 임상 질 지표 기록 내역 조회
    procedure LoadQualityCheck;

    // 임상 질 지표 기록 정보 조회
    procedure LoadQualityCheckInfo;

    // 임상 질 지표 기록 상세 조회(All Duty)
    procedure LoadQualityCheckResult;

    // Duty별 임상 질 지표 기록 저장
    function SaveQualityCheckOfDuty(AsDuty : string) : Boolean;

    // 저장 내역 존재 여부 체크
    function IsNoData(AsDuty : string) : Boolean;

    // Duty별 임상 질 지표 기록 삭제
    function DeleteQualityCheckOfDuty(AsDuty : String) : Boolean;

    // 작업 권한 설정
    procedure SetAuthority;

    // 약 처방내역 조회 Call Procedure, 2011.08.08 LSH
    procedure SelOrderList;

    // Grid 초기화 (Title Row 제외), 2011.08.08 LSH
    procedure GridClear(in_Grid : TUltraGrid);

    // [서식변환 대상환자] 조회 Event Handler, 2012.01.27 LSH
    // sType5, sType6 추가 -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // Duty별 최종 임상질지표 내역 복사, 2012.03.19 LSH
    function CopyLastQualCheckOfDuty(AsDuty: String): Boolean;

    // 9,10 항목 추가 -2015.03.05 smpark
    procedure Set_AA_20150306;

    // 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
    //// [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
    //procedure LoadEMRComPack;

    //--------------------------------------------------------------------------

  public
    { Public declarations }
     P_DschDate    : String;   // [의무기록 자동서식스캔] 퇴원일자, 2011.09.22 LSH
     P_PreviewYn   : String;   // [의무기록 자동서식스캔] 미리보기, 2011.09.22 LSH
     P_EMRPrintYn  : String;   // [의무기록 자동서식스캔] 출력여부, 2011.09.22 LSH
     P_EMRTitle    : String;   // [의무기록 자동서식스캔] Report Title, 2011.09.22 LSH
     P_PatFlag     : String;   // [병동기록지 출력] 호출시 넘겨준 환자위치, 2011.10.24 LSH
     P_RgtDate     : String;   // [병동기록지 출력] 호출시 넘겨준 기록일자, 2011.10.24 LSH

     G_EmrYn       : String;   // [의무기록 자동서식스캔] 출력유효성 여부 (Y/N), 2011.09.22 LSH
     G_EmrPrtIdx   : Integer;  // [의무기록 자동서식스캔] 출력Index, 2011.09.22 LSH
     G_LastEmrDateYn : String; // [의무기록 자동서식스캔] 마지막 출력일자 @ 2012.10.31 LSH
     G_LastPageIdx   : Integer;// [의무기록 자동서식스캔] 마지막 Page 인덱스 @ 2012.10.31 LSH

     P_EMRFromDt   : String;   // 장기재원환자 검색 시작일자 -2015.05.27 smpark
     P_EMRToDt     : String;   // 장기재원환자 검색 종료일자 -2015.05.27 smpark

  published
    property propPatNo      : String read FsPatNo      write FsPatNo;
    property propAdmDate    : String read FsAdmDate    write FsAdmDate;
    property propDschDate   : String read P_DschDate   write P_DschDate  ;    // 의무기록 자동서식스캔 위한 퇴원일자, 2011.09.22 LSH
    property propPreviewYn  : String read P_PreviewYn  write P_PreviewYn ;    // 의무기록 자동서식스캔 위한 미리보기, 2011.09.22 LSH
    property propEMRPrintYn : String read P_EMRPrintYn write P_EMRPrintYn;    // 의무기록 자동서식스캔 여부,          2011.09.22 LSH
    property propEMRTitle   : String read P_EMRTitle   write P_EMRTitle  ;    // 의무기록 자동서식스캔 Report Title,  2011.09.22 LSH
    property propPatFlag    : String read P_PatFlag    write P_PatFlag   ;    // 호출옵션 ('D': 병동기록지 출력, 'MDP110F2': 의사조회), 2011.10.24 LSH
    property propRgtDate    : String read P_RgtDate    write P_RgtDate   ;    // 퇴원환자 병동기록지 출력위한 일자,   2011.10.24 LSH

    property propEMRFromDt  : String read P_EMRFromDt  write P_EMRFromDt ;    // 장기재원환자 검색 시작일자 -2015.05.27 smpark
    property propEMRToDt    : String read P_EMRToDt    write P_EMRToDt   ;    // 장기재원환자 검색 종료일자 -2015.05.27 smpark

    // [EMR연계] 2016.04.12 홍창한 추가함(장은석). EMR연동 변수 선언
    property prop_SComReport  : HSComReport write pv_SComReport;
    property prop_Patsect     : String      write pv_Patsect   ;
    property prop_Patno       : String      write pv_Patno     ;
    property prop_Meddate     : String      write pv_Meddate   ;
    property prop_Reptid      : String      write pv_Reptid    ;
    // 2016-06-03 장은석 , 입원기록지 Fromdate - Todate 조건 추가 START
    property prop_Fromdate    : String      write P_EMRFromDt  ;
    property prop_Todate      : String      write P_EMRToDt    ;
    // 2016-06-03 장은석 , 입원기록지 Fromdate - Todate 조건 추가 END
    // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
    property propAge          : String read FsAge        write FsAge      ;
    property propSex          : String read FsSex        write FsSex      ;
    property propBirthymd     : String read FsBirthymd   write FsBirthymd ;
    property propAcptNo       : String read FsAcptNo     write FsAcptNo   ;
    property propCodvCd       : String read FsCodvCd     write FsCodvCd   ;
    property propMedTime      : String read FsMedTime    write FsMedTime  ;
    property propPatName      : String read FsPatName    write FsPatName  ;

    // ICU 임상질지표 의무기록 자동서식스캔, 2011.09.22 LSH
    procedure AutoScanPrint;


    // 욕창위험도평가(MDN470F1)에서 callback시 참조, 2011.08.08 LSH
    procedure AssignBdScore(Sender: TObject);


    // ICU 임상질지표 자동스캔 서식출력 New-ver, 2012.01.27 LSH
    procedure AutoScanPrint_New;


    // 통증사정평가(MDN920F1)에서 callback시 참조 @ 2012.06.13 LSH
    procedure AssignPainRslt(Sender: TObject);

  end;




var
  MDN110FV: TMDN110FV;
  // 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
  //// [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
  //CallEmrNurseLinker : procedure (APacket: IPipePacket); stdcall;



implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDN110UU, MDN110UV_P01,
   // [EMR연계] 2016.04.12 홍창한 추가함(장은석). TpSvc 추가
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
// [종료] Button onClick Event Handler
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
   // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
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
// 초기화
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//------------------------------------------------------------------------------
procedure TMDN110FV.Initialize;
var
   edName : TEdit;   // 사용자명 Edit
   edId   : TEdit;   // 사용자 ID Edit
   edDept : TEdit;   // 사용자 부서 Edit

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
           (P_PatFlag = 'D')) then  // [병동 기록지 출력/환자기록 통합조회]시, Invisible SetFocus 불가, 2011.10.24 LSH
   begin
      scrlbx_QualityCheck.SetFocus;
      scrlbx_QualityCheck.VertScrollBar.Position := 0;


      // 1.3. 삭제 여부 정보 Setting
      sbt_DDelete.Tag := 0;   // 삭제(Day)
      sbt_EDelete.Tag := 0;   // 삭제(Evening)
      sbt_NDelete.Tag := 0;   // 삭제(Night)
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


   // [의사 조회]시 추가, 2012.03.05 LSH
   if (P_PatFlag = 'MDP110F2') then
   begin
      // [조회]만 가능하게 제한
      sbt_DCopy.Enabled   := False;
      sbt_ECopy.Enabled   := False;
      sbt_NCopy.Enabled   := False;

      sbt_DSave.Enabled   := False;
      sbt_ESave.Enabled   := False;
      sbt_NSave.Enabled   := False;

      sbt_DDelete.Enabled := False;
      sbt_EDelete.Enabled := False;
      sbt_NDelete.Enabled := False;

      // 2016-08-22 장은석 , EMR에서 호출 시 간호기록으로 보내기 버튼도 ReadOnly 모드 추가.
      bbt_ToNrRecordD.Enabled := False;
      bbt_ToNrRecordE.Enabled := False;
      bbt_ToNrRecordN.Enabled := False;
   end;


   // --------------------------------------------------------------
   // [안암] 중환자실 퇴실 예비 판정 기준 관련 항목 추가
   // 2015.03.02 smpark
   // 2015년 3월 6일 부터 사용함.
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
      lb_PatNo.Caption   := FsPatNo;                           // 환자번호
      lb_PatName.Caption := sPatName[0];                       // 환자명
      lb_Sex.Caption     := sSex    [0];                       // 성별
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // 나이
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // 병동-병실

      // 생년월일, 과, 병동, 병실 정보 추가 -2015.08.03 smpark
      lb_Deptnm.Caption   := sDeptNm[0];
      lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
   end;


   // 2.2. Quality Check Date and Duty
   SetAssessDateAndCurrentDuty(FSysDate);



   // 2.3. Nurse & Time
   // 2.3.1. 사정 간호사
   edName := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_ChkNursName'));
   edId   := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_ChkNursId'  ));
   edDept := TEdit(GetComp(Self.Name, 'ed_' + FsCurDuty + '_ChkDept'    ));

   edName.Text := md_UserNm;
   edId.Text   := md_UserId;
   edDept.Text := md_DeptCd;

   // 사용자 검색
//   SearchUser('N', edName, edId, edName, edDept, nil);

   // 2.3.2. 시간
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
   // 2016-09-24 장은석 , EMR에서 처리하는 방식 변경되어 제거.
   //// [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
   //if (Application.MainForm.Name = 'SMCMainForm') then
   //begin
   //   Self.FormStyle := fsNormal;
   //end;

   //---------------------------------------------------------------------------
   //구로병원만 항목수정(욕창예방관리)  yhi 2014.07.15
   //---------------------------------------------------------------------------
   if G_Locate = 'GR' then
   Begin
      D_B0703_2.Caption := '공기침요 적용';
      E_B0703_2.Caption := '공기침요 적용';
      N_B0703_2.Caption := '공기침요 적용';
      D_B0703_4.Caption := '압력완화 보조도구사용';
      E_B0703_4.Caption := '압력완화 보조도구사용';
      N_B0703_4.Caption := '압력완화 보조도구사용';
      D_B0703_5.Caption := '피부청결관리(실금등)';
      E_B0703_5.Caption := '피부청결관리(실금등)';
      N_B0703_5.Caption := '피부청결관리(실금등)';
      D_B0703_5E.Visible := false;
      E_B0703_5E.Visible := false;
      N_B0703_5E.Visible := false;
   end;
   if G_Locate = 'AA' then
   begin
      //LEAKAGE 항목 안암병원 안보여짐.
      pn_01.Visible := false;
      pn_D02.Visible := false;
      pn_E01.Visible := false;
      pn_E02.Visible := false;
      pn_N01.Visible := false;
      pn_N02.Visible := false;
      //인공기도 항목 크기조절
      pn_DDetail01.Height := 113;
      Bevel48.Height      := 156;
      pn_EDetail01.Height := 113;
      Bevel92.Height      := 156;
      pn_NDetail01.Height := 113;
      Bevel183.Height     := 156;
   end;

   // 2016-10-07 장은석 , 진정상태평가 RSS Score -> RASS Score 변경 요청
   //                     안산병원만 적용 요청 (3개병원 추후 적용 요지 있다고 함)
   //                     SICU 요청사항. [이경희 쌤 전달 받음.]
   if G_LOCATE = 'AS' then
   begin
      D_B0301_1.Caption := 'RASS score';
      E_B0301_1.Caption := 'RASS score';
      N_B0301_1.Caption := 'RASS score';

      // 2016-10-11 장은석 , RASS score로 변경 시 Hint 변경. [AS-코디 이경희]
      //                     실제 화면에 표현될 때 줄 맞춤 때문에 일부러 이렇게 한겁니다.
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
   // 1. 초기화
   //-------------------------------------------------------------------
   Initialize;


   //-------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 조회
   //-------------------------------------------------------------------
   LoadQualityCheck;


   //-------------------------------------------------------------------
   // 3. Duty별 작성권한 세팅, 2011.08.08 LSH
   //-------------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;





//------------------------------------------------------------------------------
// 사정일자 와 현재 Duty 설정
// - 현재 시간에 따라 사정일자와 Duty를 결정 함.
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//
// param : AdtSysDate - Current System Date and Time
//------------------------------------------------------------------------------
procedure TMDN110FV.SetAssessDateAndCurrentDuty(AdtSysDateTime: TDateTime);
var
   sCurTime : String;      // 현재 시간

begin

   // get current time
   sCurTime := FormatDateTime('HHNNSS', AdtSysDateTime);


   // get assessment date and duty
   if (StrToFloat(sCurTime) >= StrToFloat('000000')) and (StrToFloat(sCurTime) < StrToFloat('070000')) then begin
      // Night of the day before (00:00 ~ 06:59)
      dtp_ChkDate.Date := AdtSysDateTime - 1;
      FsCurDuty := DT_NIGHT;

      // Duty 표시
      DisplayCurrentDuty(DT_NIGHT);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('070000')) and (StrToFloat(sCurTime) < StrToFloat('150000')) then begin
      // Day (07:00 ~ 14:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty := DT_DAY;

      // Duty 표시
      DisplayCurrentDuty(DT_DAY);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('150000')) and (StrToFloat(sCurTime) < StrToFloat('220000')) then begin
      // Evening (15:00 ~ 21:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty := DT_EVENING;

      // Duty 표시
      DisplayCurrentDuty(DT_EVENING);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('220000')) and (StrToFloat(sCurTime) <= StrToFloat('235959')) then begin
      // Night (22:00 ~ 06:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty := DT_NIGHT;

      // Duty 표시
      DisplayCurrentDuty(DT_NIGHT);
   end;

   //---------------------------------------------------------
   // [병동 기록지 출력/환자기록 통합조회]시 기록일자 세팅
   //   - 2011.10.24 LSH
   //---------------------------------------------------------
   if (P_RgtDate <> '') then
   begin
      dtp_ChkDate.Date := StrToDate(P_RgtDate);

      // 기록일자 변경시, P_RgtDate로 조회하는 부분 Skip위해 Clear, 2012.03.07 LSH
      P_PatFlag := '';
   end;

end;



//------------------------------------------------------------------------------
// 현재 Duty 표시
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
// 각 항목 값 제거
//
// Author : ByoungSik, Lee
// Date   : 2011.02.07
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FV.ClearValueOf(AsDuty: String);
var
   i            : Integer; // Loop Index
   oCurComp     : TObject; // 현재 Component
   sCurCompName : String;  // 현재 Component 명

begin

   //--------------------------------------------------------------
   // 1. 기록 정보
   //--------------------------------------------------------------
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursName') as TEdit).Text     := '';  // 간호사 명
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursId'  ) as TEdit).Text     := '';  // 간호사 사번
   (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkDept'    ) as TEdit).Text     := '';  // 사정 부서
   (GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime'    ) as TMaskEdit).Text := '';  // 사정 시간

   (GetComp(Self.Name, 'sbt_' + AsDuty + 'Delete') as TSpeedButton).Tag := 0; // 삭제


   //--------------------------------------------------------------
   // 2. 사정 정보
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
// 환자정보 조회
//
// Author : ByoungSik, Lee
// Date   : 2011.02.09
//------------------------------------------------------------------------------
// 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
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
//            // [EMR연계] 2016.04.15 홍창한 수정함. 신규추가 및 수정(ShowForm => ShowEMRForm).
//            // @ShowEMRForm := GetProcAddress(hPackage, 'ShowForm');
//            // @ShowEMRForm := GetProcAddress(hPackage, 'ShowEMRForm');
//
//            // @SetPatient  := GetProcAddress(hPackage, 'SetPatient');  // 환자선택 시 환자변경
//            // @CertifyEMR  := GetProcAddress(hPackage, 'CertifyEMR');  // 전자인증
//
//            // [EMR연계] 사용자 변경 시 EMR 종료 변경함.
//            // @TerminateEMR := GetProcAddress(hPackage, 'TerminateEMR');
//
//            // [EMR연계] V/S 저장 및 삭제 EMR연계
//            // @CallEMRSync := GetProcAddress(hPackage, 'CallEMRSync'); // 전자인증
//
//            // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
//            @CallEmrNurseLinker := GetProcAddress(hPackage, 'CallEmrNurseLinker');
//         except
//            // Error 처리
//         end;
//      end;
//   end;
//end;

procedure TMDN110FV.LoadPatientInfo;
var
   patient : HmdPatinf; // 환자 정보 관리
   iRowCnt : Integer;   // the number of rows searched

   { parameters }
   AsIOFlag  : String;   // 입원/외래 구분
   AsLocate  : String;   // 사업장
   AsPatNo   : String;
   AsAdmDate : String;
begin

   //-----------------------------------------------------------------
   // 1. Initialize
   //-----------------------------------------------------------------
   FreeAndNil(FPatient);



   //-----------------------------------------------------------------
   // 2. 환자 정보 조회
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

      // 2016-06-03 장은석 , QRP 생성 오류 유효성 CHECK 로직 추가 START
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := iRowCnt;   //결과값, 음수:에러, 0:건수없음, 양수: 정상
         pv_SComReport.RsltMsg  := GetTxMsg;  //결과 메시지
      end;
      // 2016-06-03 장은석 , QRP 생성 오류 유효성 CHECK 로직 추가 END

      // Show Error Message
      if iRowCnt < 0 then begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then begin
         stb_Message.Panels[0].Text := '환자정보 Loading에 실패하였습니다.';
         Exit;
      end;



      //-----------------------------------------------
      // 2.3. Set Data
      //-----------------------------------------------
      FPatient := patient;


      // Show Message
      stb_Message.Panels[0].Text := '환자정보 Loading이 완료되었습니다.';

   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// 임상 질 지표 기록 내역 조회
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

   // [안암] 9,10번 항목 추가 셋팅, 2015년 3월 6일 부터 -2015.03.05 smpark
   Set_AA_20150306;

   //----------------------------------------------------------------
   // 2. 임상 질 지표 기록 정보 조회
   //----------------------------------------------------------------
   LoadQualityCheckInfo;



   //----------------------------------------------------------------
   // 3. 임상 질 지표 기록 상세 조회
   //----------------------------------------------------------------
   LoadQualityCheckResult;


end;




//------------------------------------------------------------------------------
// 임상 질 지표 기록 정보 조회
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.LoadQualityCheckInfo;
var
   QcInfo  : HmdIcqcit; // 임상 질 지표 기록 정보 관리
   iRowCnt : Integer;   // the number of rows searched
   i       : Integer;   // Loop Index

   { parameters }
   AsPatNo   : String;  // 환자번호
   AsAdmDate : String;  // 입원일자(YYYYMMDD)
   AsChkDate : String;  // Check일자(YYYYMMDD)

   systime : TDateTime; // current system date

begin

   //------------------------------------------------------------------
   // 1. Initialize
   //------------------------------------------------------------------


   //------------------------------------------------------------------
   // 2. 조회
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

      // [병동 기록지 출력/통합기록 조회]시 세팅된 기록일자, 2011.10.24 LSH
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

         // Free 추가
         QcInfo.Free;

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
      end;




      //---------------------------------------------
      // 2.3. Display Data
      //---------------------------------------------
      with QcInfo do begin
         for i := 0 to iRowCnt - 1 do begin
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursName') as TEdit).Text     := sChkNursNm[i]; // 사정 간호사 명
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursId'  ) as TEdit).Text     := sChkNurs  [i]; // 사정 간호사 ID
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkDept'    ) as TEdit).Text     := sChkDept  [i]; // 사정 부서
            (GetComp(Self.Name, 'med_' + String(sDuty[i]) + '_ChkTime'    ) as TMaskEdit).Text := sChkTime  [i]; // 사정 시간

            // 삭제 가능 여부 Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Delete') as TSpeedButton).Tag := 1; // 1:삭제 가능(삭제할 데이터 있음)
         end;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '자료가 조회되었습니다.';

   finally
      Screen.Cursor := crDefault;

      QcInfo.Free;
   end;



   //------------------------------------------------------------------
   // 3. Default 간호사 정보 Setting
   //------------------------------------------------------------------
   if (P_EMRPrintYn <> 'Y') and
      (P_PreViewYn <> 'Y')  then
   begin
      if Trim((GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursId'  ) as TEdit).Text) = '' then begin
         // get current system date
         GetSysDate(systime);

         // 2013.03.15 khs 현재 Duty일인 경우만 로그인자 정보 및 시간을 표현해주도록 수정
         // 심혈관중환자실 김연아 구로병원 합의 완료
         if (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) then
         begin
            // set default user information
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursName') as TEdit).Text     := md_UserNm; // 사정 간호사 명
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursId'  ) as TEdit).Text     := md_UserId; // 사정 간호사 ID
            (GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkDept'    ) as TEdit).Text     := md_DeptCd; // 사정 부서
            (GetComp(Self.Name, 'med_' + FsCurDuty + '_ChkTime'    ) as TMaskEdit).Text := FormatDateTime('HH:NN', systime); // 사정 시간
         end;
      end;
   end;
end;




//------------------------------------------------------------------------------
// 임상 질 지표 기록 상세 조회 (All Duty)
// - 모든 Duty의 기록 내용을 조회 함.
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.LoadQualityCheckResult;
var
   check  : HmdIcuinf; // 간호사정 내역 관리
   iRowCnt : Integer;   // the number of rows searched
   i       : Integer;   // Loop Index

   sCompName : String;  // Component Name

   { parameters }
   AsSetType : String;  // Set 구분
   AsPatNo   : String;  // 환자번호
   AsAdmDate : String;  // 입원일자(YYYYMMDD)
   AsChkDate : String;  // Check일자(YYYYMMDD)

begin

   //------------------------------------------------------------------
   // 1. Initialize
   //------------------------------------------------------------------


   //------------------------------------------------------------------
   // 2. 조회
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

      // [병동 기록지 출력]시 세팅된 기록일자, 2011.10.24 LSH
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

         // 자동서식변환 출력 flag, 2011.09.22 LSH
         G_EmrYn := 'N';

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         // 자동서식변환 출력 flag, 2011.09.22 LSH
         G_EmrYn := 'N';

         Exit;
      end;



      // 자동서식변환 출력 flag, 2011.09.22 LSH
      G_EmrYn := 'Y';



      //----------------------------------------
      // 2.3. Display Data
      //----------------------------------------
      for i := 0 to iRowCnt - 1 do
      begin
         with check do
         begin
            sCompName := sDutycls[i] + '_' + sMcode[i] + '_' + sDcode[i];

            // 예외처리 추가, 2012.01.31 LSH
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
                             'ICU 임상질지표 항목조회중 예외처리',
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
// Duty별 임상 질 지표 기록 저장
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
   qltChk  : HmdIcqcit; // 임상 질 지표 기록 정보 관리
   iResult : Integer;   // the result of transaction
   i       : Integer;   // Loop Index

   { parameters }
   QcInfo  : HmdIcqcit; // 간호사정 정보
   lsChkVO : TList;     // 사정 내역

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
   // 저장
   //--------------------------------------------------------------------
   Screen.Cursor := crHourGlass;


   try
      // Create Object
      qltChk := HmdIcqcit.Create;



      //-----------------------------------------
      // 1. Set Parameter Value
      //-----------------------------------------
      // 1.1. 임상 질 지표 기록 정보
      QcInfo := HmdIcqcit.Create;




      with QcInfo do begin
         sPatNo   := FsPatNo;                                                                // 환자번호
         sAdmDate := FsAdmDate;                                                              // 입원일자
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);                           // 사정일자
         sDuty    := AsDuty;                                                                 // Duty
         sChkTime := (GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime'  ) as TMaskEdit).Text; // 사정 시간
         sChkNurs := (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursId') as TEdit).Text;     // 사정 간호사
         sChkDept := (GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkDept'  ) as TEdit).Text;     // 사정 부서
         sWardNo  := FPatient.sWardNo[0];                                                    // 병동
         sRoomNo  := FPatient.sRoomNo[0];                                                    // 병실
         sEditId  := md_UserId;                                                              // 수정자ID
      end;




      // 1.2. 임상 질 지표 기록 내역
      for i := 0 to Self.ComponentCount - 1 do begin
         oCurComp     := Self.Components[i];
         sCurCompName := oCurComp.Name;



         // 해당 Duty의 내용만 저장
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


                  // Value Object에 추가
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


                  // Value Object에 추가
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

                  // Value Object에 추가
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

                  // Value Object에 추가
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

                  // Value Object에 추가
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

         // Free 추가
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

         // Free 추가
         QcInfo.Free;
         qltChk.Free;
         curChk.Free;
         lsChkVO.Free;

         stb_Message.Panels[0].Text := '임상질지표 내역이 저장되지 않았습니다.';

         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '임상질지표 내역이 정상적으로 저장되었습니다.';

   finally
      Screen.Cursor := crDefault;

      // Free 추가
      QcInfo.Free;
      qltChk.Free;
      curChk.Free;
      lsChkVO.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day 저장] Button onClick Event Handler
// - Day Duty 임상 질지표 기록 저장
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_DSaveClick(Sender: TObject);
var
   iChoice : Integer;   // 선택결과

begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //---------------------------------------------------------------------
   // 1. Check
   //---------------------------------------------------------------------
   // 1.1. 작성자 정보 입력 체크
   if LengthByte(Trim(ed_D_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Day) 저장', MB_OK + MB_ICONINFORMATION);
      ed_D_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_D_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Day) 저장', MB_OK + MB_ICONINFORMATION);
      med_D_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 저장 데이터 여부 확인
   if IsNoData(DT_DAY) then begin
      MessageBox(Self.Handle, '저장할 내용이 없습니다.', '임상질지표(Day) 저장', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 저장 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('【' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '】일자 Day Duty 임상질지표 내역을 저장 하시겠습니까?'),
                         '임상질지표(Day) 저장',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;



   //---------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 저장
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_DAY);

end;




//------------------------------------------------------------------------------
// 저장 내역 존재 여부 체크
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
   iChkCnt      : Integer;    // 입력 갯 수

begin

   // initiate return value
   Result := True;


   //--------------------------------------------------------------
   // Data 입력 여부 체크
   //--------------------------------------------------------------
   iChkCnt := 0;

   // 1.2. 임상 질 지표 기록 내역
   for i := 0 to Self.ComponentCount - 1 do begin
      oCurComp     := Self.Components[i];
      sCurCompName := oCurComp.Name;

      // 해당 Duty의 내용만 저장
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
// [Evening 저장] Button onClick Event Handler
// - Evening Duty 임상 질지표 기록 저장
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_ESaveClick(Sender: TObject);
var
   iChoice : Integer;   // 선택결과

begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //---------------------------------------------------------------------
   // 1. Check
   //---------------------------------------------------------------------
   // 1.1. 작성자 정보 입력 체크
   if LengthByte(Trim(ed_E_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      ed_E_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_E_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      med_E_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 저장 데이터 여부 확인
   if IsNoData(DT_EVENING) then begin
      MessageBox(Self.Handle, '저장할 내용이 없습니다.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 저장 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('【' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '】일자 Evening Duty 임상질지표 내역을 저장 하시겠습니까?'),
                         '임상질지표(Evening) 저장',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;


   //---------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 저장
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_EVENING);

end;



//------------------------------------------------------------------------------
// [Night 저장] Button onClick Event Handler
// - Night Duty 임상 질지표 기록 저장
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_NSaveClick(Sender: TObject);
var
   iChoice : Integer;   // 선택결과

begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //---------------------------------------------------------------------
   // 1. Check
   //---------------------------------------------------------------------
   // 1.1. 작성자 정보 입력 체크
   if LengthByte(Trim(ed_N_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      ed_N_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_N_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      med_N_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 저장 데이터 여부 확인
   if IsNoData(DT_NIGHT) then begin
      MessageBox(Self.Handle, '저장할 내용이 없습니다.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 저장 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('【' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '】일자 Night Duty 임상질지표 내역을 저장 하시겠습니까?'),
                         '임상질지표(Night) 저장',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;


   //---------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 저장
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_NIGHT);

end;




//------------------------------------------------------------------------------
// [Day 간호사] Edit onKeyDown Event Handler
// - 간호사 검색
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
// [Evening 간호사] Edit onKeyDown Event Handler
// - 간호사 검색
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
// [Night 간호사] Edit onKeyDown Event Handler
// - 간호사 검색
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
// [이전일자] Button onClick Event Handler
// - 이전 일자 임상 질 지표 기록 내용 조회
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
   // 2. 임상 질 지표 기록 내용 조회
   //---------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 3. 작업 버튼 권한 설정
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;



//------------------------------------------------------------------------------
// [다음일자] Button onClick Event Handler
// - 다음 일자 임상 질 지표 기록 내용 조회
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
   // 2. 임상 질 지표 기록 내용 조회
   //---------------------------------------------------------------
   LoadQualityCheck;


   //------------------------------------------------------------------
   // 3. 자동서식변환인 경우 출력모드, 2011.09.22 LSH
   //------------------------------------------------------------------
   if (P_EMRPrintYn = 'Y') then
   begin
      // 출력
      bbt_PrintClick(Sender);

      Exit;
   end;


   //-----------------------------------------------------------------
   // 4. 작업 버튼 권한 설정
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty별 작업버튼 상태 설정
//
// Author : ByoungSik, Lee
// Date   : 2011.02.10
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FV.SetControlStatusOfDuty(AsDuty: string);
begin

   // [CCU 김연아 요청] Duty에 관계없이 저장/삭제 가능하도록, 2011.08.17 LSH
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

   // 현재 Duty인 경우만 표시
   if (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) then begin
      DisplayCurrentDuty(AsDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;




//------------------------------------------------------------------------------
// [Check 일자] DateTimePicker onCloseUp Event Handler
// - 선택일자 임상 질 지표 기록 조회
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.dtp_ChkDateCloseUp(Sender: TObject);
begin

   //-----------------------------------------------------------------
   // 1. 임상 질 지표 기록 조회
   //-----------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 2. 작업 버튼 권한 설정
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty별 임상 질 지표 기록 내역 삭제
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
   qltChk  : HmdIcqcit; // 임상 질 지표 기록 내역 관리
   iResult : Integer;   // the result of transaction(1:Success, 0:Fail)

   { parameter }
   AsSetType : string;     // 기록지 구분
   AQcInfo   : HmdIcqcit;  // 임상질지표 기록 정보

begin

   // initiate return value
   Result := True;



   //--------------------------------------------------------------------
   // 간호사정 내역 삭제
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
         sPatNo   := FsPatNo;                                        // 환자번호
         sAdmDate := FsAdmDate;                                      // 입원일자(YYYYMMDD)
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);   // Check일자(YYYYMMDD)
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

         // Free 추가
         AQcInfo.Free;
         qltChk.Free;

         ShowErrMsg;
         Exit;
      end
      else if iResult = 0 then
      begin
         Result := False;

         // Free 추가
         AQcInfo.Free;
         qltChk.Free;

         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '간호사정 내역 삭제 처리가 정상적으로 완료되었습니다.';


   finally
      Screen.Cursor := crDefault;

      AQcInfo.Free;
      qltChk.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day 삭제] Button onClick Event Handler
// - Day Duty 임상질지표 기록 삭제
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_DDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // 선택 결과
   sChkDate : String;   // Check일자

begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-------------------------------------------------------------------
   // 1. Check
   //-------------------------------------------------------------------
   // 1.1. 삭제 가능 여부 체크
   if sbt_DDelete.Tag = 0 then
   begin
      MessageBox(Self.Handle, '삭제할 내용이 없습니다.', '임상질지표(Day) 삭제', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. 최종 삭제 여부 확인
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('【' + sChkDate + '】일자 Day Duty 임상질지표 기록을 삭제합니다.' + #13#10 + #13#10 + '삭제 후 복구가 불가합니다.  삭제 하시겠습니까?'),
                         '임상질지표(Day) 삭제',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;




   //-------------------------------------------------------------------
   // 2. Day 임상질지표 기록 삭제
   //-------------------------------------------------------------------
   DeleteQualityCheckOfDuty(DT_DAY);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   LoadQualityCheck;

end;



//------------------------------------------------------------------------------
// [Evening 삭제] Button onClick Event Handler
// - Evening Duty 임상질지표 기록 삭제
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_EDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // 선택 결과
   sChkDate : String;   // Check일자

begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-------------------------------------------------------------------
   // 1. Check
   //-------------------------------------------------------------------
   // 1.1. 삭제 가능 여부 체크
   if sbt_EDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '삭제할 내용이 없습니다.', '임상질지표(Evening) 삭제', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. 최종 삭제 여부 확인
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('【' + sChkDate + '】일자 Evening Duty 임상질지표 기록을 삭제합니다.' + #13#10 + #13#10 + '삭제 후 복구가 불가합니다.  삭제 하시겠습니까?'),
                         '임상질지표(Evening) 삭제',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;




   //-------------------------------------------------------------------
   // 2. Day 임상질지표 기록 삭제
   //-------------------------------------------------------------------
   DeleteQualityCheckOfDuty(DT_EVENING);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   LoadQualityCheck;

end;




//------------------------------------------------------------------------------
// [Night 삭제] Button onClick Event Handler
// - Night Duty 임상질지표 기록 삭제
//
// Author : ByoungSik, Lee
// Date   : 2011.02.11
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_NDeleteClick(Sender: TObject);
var
   iChoice : Integer;   // 선택 결과
   sChkDate : String;   // Check일자

begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-------------------------------------------------------------------
   // 1. Check
   //-------------------------------------------------------------------
   // 1.1. 삭제 가능 여부 체크
   if sbt_EDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '삭제할 내용이 없습니다.', '임상질지표(Night) 삭제', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. 최종 삭제 여부 확인
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('【' + sChkDate + '】일자 Night Duty 임상질지표 기록을 삭제합니다.' + #13#10 + #13#10 + '삭제 후 복구가 불가합니다.  삭제 하시겠습니까?'),
                         '임상질지표(Night) 삭제',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;




   //-------------------------------------------------------------------
   // 2. Day 임상질지표 기록 삭제
   //-------------------------------------------------------------------
   DeleteQualityCheckOfDuty(DT_NIGHT);


   //-------------------------------------------------------------------
   // 3. Refresh
   //-------------------------------------------------------------------
   LoadQualityCheck;

end;




//------------------------------------------------------------------------------
// 작업 권한 설정
// - root : 해당 Duty 상관없이 모든 기록 수정/삭제 가능
//
// Author : ByoungSik, Lee
// Date   : 2011.02.14
//------------------------------------------------------------------------------
procedure TMDN110FV.SetAuthority;
begin
   FIsRoot := (md_JikGup = 'N51') or (md_JikGup = 'N52') or (md_UserId = '99995');
end;



//------------------------------------------------------------------------------
// [Day - 인공기도] 항목 선택
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
      D_B0104_1.Checked := False;   //LEAKAGE(유)
      D_B0104_2.Checked := False;   //LEAKAGE(무)
   end;

end;


//------------------------------------------------------------------------------
// [Evening - 인공기도] 항목 선택
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
      E_B0104_1.Checked := False;   //LEAKAGE(유)
      E_B0104_2.Checked := False;   //LEAKAGE(무)
   end;

end;


//------------------------------------------------------------------------------
// [Night - 인공기도] 항목 선택
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
      N_B0104_1.Checked := False;   //LEAKAGE(유)
      N_B0104_2.Checked := False;   //LEAKAGE(무)
   end;

end;


//------------------------------------------------------------------------------
// [Day - ET Tube] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0102_1Click(Sender: TObject);
begin
   pn_DDetail02.Enabled := D_B0102_1.Checked;

   if not pn_DDetail02.Enabled then begin
      D_C0102_1.Text := '';   // #
      D_C0102_2.Text := '';   // 삽관일자
      D_C0102_3.Text := '';   // 내경
      D_C0102_4.Text := '';   // 깊이
      D_C0102_5.Text := '';   // 커프압
   end;

   // 구로만 하나만 선택 가능하게. GR ICU1 김영하 Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if D_B0102_1.Checked then
      begin
         D_B0103_1.Checked := False;
      end
      else
      begin
         // 인공기도 (무) 이면 체크가 안되게
         if not D_B0101_2.Checked then
            D_B0103_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Evening - ET Tube] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0102_1Click(Sender: TObject);
begin

   pn_EDetail02.Enabled := E_B0102_1.Checked;

   if not pn_EDetail02.Enabled then begin
      E_C0102_1.Text := '';   // #
      E_C0102_2.Text := '';   // 삽관일자
      E_C0102_3.Text := '';   // 내경
      E_C0102_4.Text := '';   // 깊이
      E_C0102_5.Text := '';   // 커프압
   end;

   // 구로만 하나만 선택 가능하게. GR ICU1 김영하 Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if E_B0102_1.Checked then
         E_B0103_1.Checked := False
      else
      begin
         // 인공기도 (무) 이면 체크가 안되게
         if not E_B0101_2.Checked then
            E_B0103_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Night - ET Tube] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0102_1Click(Sender: TObject);
begin

   pn_NDetail02.Enabled := N_B0102_1.Checked;

   if not pn_NDetail02.Enabled then begin
      N_C0102_1.Text := '';   // #
      N_C0102_2.Text := '';   // 삽관일자
      N_C0102_3.Text := '';   // 내경
      N_C0102_4.Text := '';   // 깊이
      N_C0102_5.Text := '';   // 커프압
   end;

   // 구로만 하나만 선택 가능하게. GR ICU1 김영하 Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if N_B0102_1.Checked then
         N_B0103_1.Checked := False
      else
      begin
         // 인공기도 (무) 이면 체크가 안되게
         if not N_B0101_2.Checked then
            N_B0103_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Day - Tracheostomy] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0103_1Click(Sender: TObject);
begin

   pn_DDetail03.Enabled := D_B0103_1.Checked;

   if not pn_DDetail03.Enabled then begin
      D_C0103_1.Text := '';   // #
      D_C0103_2.Text := '';   // 수술일자
      D_C0103_3.Text := '';   // 내경
      D_C0103_4.Text := '';   // 커프압
   end;

   // 구로만 하나만 선택 가능하게. GR ICU1 김영하 Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if D_B0103_1.Checked then
         D_B0102_1.Checked := False
      else
      begin
         // 인공기도 (무) 이면 체크가 안되게
         if not D_B0101_2.Checked then
            D_B0102_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Evening - Tracheostomy] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0103_1Click(Sender: TObject);
begin

   pn_EDetail03.Enabled := E_B0103_1.Checked;

   if not pn_EDetail03.Enabled then begin
      E_C0103_1.Text := '';   // #
      E_C0103_2.Text := '';   // 수술일자
      E_C0103_3.Text := '';   // 내경
      E_C0103_4.Text := '';   // 커프압
   end;

   // 구로만 하나만 선택 가능하게. GR ICU1 김영하 Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if E_B0103_1.Checked then
         E_B0102_1.Checked := False
      else
      begin
         // 인공기도 (무) 이면 체크가 안되게
         if not E_B0101_2.Checked then
            E_B0102_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Night - Tracheostomy] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0103_1Click(Sender: TObject);
begin

   pn_NDetail03.Enabled := N_B0103_1.Checked;

   if not pn_NDetail03.Enabled then begin
      N_C0103_1.Text := '';   // #
      N_C0103_2.Text := '';   // 수술일자
      N_C0103_3.Text := '';   // 내경
      N_C0103_4.Text := '';   // 커프압
   end;

   // 구로만 하나만 선택 가능하게. GR ICU1 김영하 Nr - 2016.03.25 LEESANGMOON
   if G_LOCATE = 'GR' then
   begin
      if N_B0103_1.Checked then
         N_B0102_1.Checked := False
      else
      begin
         // 인공기도 (무) 이면 체크가 안되게
         if not N_B0101_2.Checked then
            N_B0102_1.Checked := True;
      end;
   end;
end;


//------------------------------------------------------------------------------
// [Day - 기계환기] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0201_1Click(Sender: TObject);
begin

   pn_DDetail04.Enabled := D_B0201_1.Checked;

   if not pn_DDetail04.Enabled then
   begin
      D_B0202_1.Text    := '';      // 적용일자
      D_B0202_2.Text    := '';      // 적용일자(#)

      D_B0203_1.Checked := True;    // clear
      D_B0203_1.Checked := False;   // 신체거상30˚(예)
      D_B0203_2.Checked := False;   // 신체거상30˚(금기)

      // DVT 적용유무 추가 @ 2012.10.29 LSH (구로 김재경 요청)
      D_B0204_1.Checked := False;   // DVT적용 "유"
      D_B0204_2.Checked := False;   // DVT적용 "무"
   end;

end;


//------------------------------------------------------------------------------
// [Evening - 기계환기] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0201_1Click(Sender: TObject);
begin

   pn_EDetail04.Enabled := E_B0201_1.Checked;

   if not pn_EDetail04.Enabled then begin
      E_B0202_1.Text    := '';      // 적용일자
      E_B0202_2.Text    := '';      // 적용일자(#)

      E_B0203_1.Checked := True;    // clear
      E_B0203_1.Checked := False;   // 신체거상30˚(예)
      E_B0203_2.Checked := False;   // 신체거상30˚(금기)

      // DVT 적용유무 추가 @ 2012.10.29 LSH (구로 김재경 요청)
      E_B0204_1.Checked := False;   // DVT적용 "유"
      E_B0204_2.Checked := False;   // DVT적용 "무"
   end;

end;


//------------------------------------------------------------------------------
// [Night - 기계환기] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0201_1Click(Sender: TObject);
begin

   pn_NDetail04.Enabled := N_B0201_1.Checked;

   if not pn_NDetail04.Enabled then begin
      N_B0202_1.Text    := '';      // 적용일자
      N_B0202_2.Text    := '';      // 적용일자(#)

      N_B0203_1.Checked := True;    // clear
      N_B0203_1.Checked := False;   // 신체거상30˚(예)
      N_B0203_2.Checked := False;   // 신체거상30˚(금기)

      // DVT 적용유무 추가 @ 2012.10.29 LSH (구로 김재경 요청)
      N_B0204_1.Checked := False;   // DVT적용 "유"
      N_B0204_2.Checked := False;   // DVT적용 "무"
   end;

end;


//------------------------------------------------------------------------------
// [Day - 신체거상30˚] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0203_1Click(Sender: TObject);
begin

   pn_DDetail05.Enabled := D_B0203_2.Checked;

   if not pn_DDetail05.Enabled then begin
      D_C0203_1.Checked := False;   // shock 혈압이 낮은경우
      D_C0203_2.Checked := False;   // 환자상태가 체위변경 불가
      D_C0203_3.Checked := False;   // 기타
      D_C0203_3E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - 신체거상30˚] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0203_1Click(Sender: TObject);
begin

   pn_EDetail05.Enabled := E_B0203_2.Checked;

   if not pn_EDetail05.Enabled then begin
      E_C0203_1.Checked := False;   // shock 혈압이 낮은경우
      E_C0203_2.Checked := False;   // 환자상태가 체위변경 불가
      E_C0203_3.Checked := False;   // 기타
      E_C0203_3E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - 신체거상30˚] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0203_1Click(Sender: TObject);
begin

   pn_NDetail05.Enabled := N_B0203_2.Checked;

   if not pn_NDetail05.Enabled then begin
      N_C0203_1.Checked := False;   // shock 혈압이 낮은경우
      N_C0203_2.Checked := False;   // 환자상태가 체위변경 불가
      N_C0203_3.Checked := False;   // 기타
      N_C0203_3E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - 신체거상30˚- 기타] 항목 선택
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
// [Evening - 신체거상30˚- 기타] 항목 선택
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
// [Night - 신체거상30˚- 기타] 항목 선택
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
// [Day - 진정상태평가 - RSS Score] 항목 선택
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
// [Evening - 진정상태평가 - RSS Score] 항목 선택
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
// [Night - 진정상태평가 - RSS Score] 항목 선택
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
// [Day - 진정상태평가 - Drug] 항목 선택
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
// [Evening - 진정상태평가 - Drug] 항목 선택
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
// [Night - 진정상태평가 - Drug] 항목 선택
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
// [Day - 통증상태평가] 항목 선택
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
      D_C0401_1.Text := '';   // 부위

      // 양상
      D_C0402_1.Checked := False;   // 둔화
      D_C0402_2.Checked := False;   // 쑤심
      D_C0402_3.Checked := False;   // 퍼짐
      D_C0402_4.Checked := False;   // 예리함
      D_C0402_5.Checked := False;   // 찌르는듯
      D_C0402_6.Checked := False;   // 기타
      D_C0402_6E.Text   := '';

      D_C0403_1.Text := '';         // 기간

      // 빈도
      D_C0404_1.Checked := False;   // 간헐적
      D_C0404_2.Checked := False;   // 지속적
   end;
end;


//------------------------------------------------------------------------------
// [Evening - 통증상태평가] 항목 선택
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
      E_C0401_1.Text := '';   // 부위

      // 양상
      E_C0402_1.Checked := False;   // 둔화
      E_C0402_2.Checked := False;   // 쑤심
      E_C0402_3.Checked := False;   // 퍼짐
      E_C0402_4.Checked := False;   // 예리함
      E_C0402_5.Checked := False;   // 찌르는듯
      E_C0402_6.Checked := False;   // 기타
      E_C0402_6E.Text   := '';

      E_C0403_1.Text := '';   // 기간

      // 빈도
      E_C0404_1.Checked := False;   // 간헐적
      E_C0404_2.Checked := False;   // 지속적
   end;

end;


//------------------------------------------------------------------------------
// [Night - 통증상태평가] 항목 선택
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
      N_C0401_1.Text := '';   // 부위

      // 양상
      N_C0402_1.Checked := False;   // 둔화
      N_C0402_2.Checked := False;   // 쑤심
      N_C0402_3.Checked := False;   // 퍼짐
      N_C0402_4.Checked := False;   // 예리함
      N_C0402_5.Checked := False;   // 찌르는듯
      N_C0402_6.Checked := False;   // 기타
      N_C0402_6E.Text   := '';

      N_C0403_1.Text := '';   // 기간

      // 빈도
      N_C0404_1.Checked := False;   // 간헐적
      N_C0404_2.Checked := False;   // 지속적
   end;

end;


//------------------------------------------------------------------------------
// [Day - 통장상태평가 - 양상 - 기타] 항목 체크
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
// [Evening - 통장상태평가 - 양상 - 기타] 항목 체크
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
// [Night - 통장상태평가 - 양상 - 기타] 항목 체크
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
// [Day - 통증상태평가 - Drug] 항목 선택
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
// [Evening - 통증상태평가 - Drug] 항목 선택
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
// [Night - 통증상태평가 - Drug] 항목 선택
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
// [Day - 말초정맥관] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0501_1Click(Sender: TObject);
begin

   pn_DDetail07.Enabled := D_B0501_1.Checked;   // 말초정맥관 1

   if not pn_DDetail07.Enabled then
   begin
      // 삽입일시
      D_B0502_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      D_B0502_2.Text := '';   // #

      // 위치
      D_B0503_1.Checked := False;   // 우상지
      D_B0503_2.Checked := False;   // 좌상지
      D_B0503_3.Checked := False;   // 우하지
      D_B0503_4.Checked := False;   // 좌하지

      // 삽입부위 상태
      D_B0504_1.Checked := False;   // 정상
      D_B0504_2.Checked := False;   // 부종
      D_B0504_3.Checked := False;   // 발적
      D_B0504_4.Checked := False;   // 열감
      D_B0504_5.Checked := False;   // 압통
   end;


end;


//------------------------------------------------------------------------------
// [Evening - 말초정맥관] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0501_1Click(Sender: TObject);
begin

   pn_EDetail07.Enabled := E_B0501_1.Checked;

   if not pn_EDetail07.Enabled then
   begin
      // 삽입일시
      E_B0502_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      E_B0502_2.Text := '';   // #

      // 위치
      E_B0503_1.Checked := False;   // 우상지
      E_B0503_2.Checked := False;   // 좌상지
      E_B0503_3.Checked := False;   // 우하지
      E_B0503_4.Checked := False;   // 좌하지

      // 삽입부위 상태
      E_B0504_1.Checked := False;   // 정상
      E_B0504_2.Checked := False;   // 부종
      E_B0504_3.Checked := False;   // 발적
      E_B0504_4.Checked := False;   // 열감
      E_B0504_5.Checked := False;   // 압통
   end;


end;


//------------------------------------------------------------------------------
// [Night - 말초정맥관] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0501_1Click(Sender: TObject);
begin

   pn_NDetail07.Enabled := N_B0501_1.Checked;

   if not pn_NDetail07.Enabled then
   begin
      // 삽입일시
      N_B0502_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      N_B0502_2.Text := '';   // #

      // 위치
      N_B0503_1.Checked := False;   // 우상지
      N_B0503_2.Checked := False;   // 좌상지
      N_B0503_3.Checked := False;   // 우하지
      N_B0503_4.Checked := False;   // 좌하지

      // 삽입부위 상태
      N_B0504_1.Checked := False;   // 정상
      N_B0504_2.Checked := False;   // 부종
      N_B0504_3.Checked := False;   // 발적
      N_B0504_4.Checked := False;   // 열감
      N_B0504_5.Checked := False;   // 압통
   end;


end;


//------------------------------------------------------------------------------
// [Day - 중심정맥관] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0601_1Click(Sender: TObject);
begin

   pn_DDetail08.Enabled := D_B0601_1.Checked;

   if not pn_DDetail08.Enabled then begin
      // 삽입일시
      D_B0602_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      D_B0602_2.Text := '';   // #

      // 위치(종류)
      D_B0603_1.Checked := False;   // Subclavian
      D_B0603_2.Checked := False;   // Internal Jugular
      D_B0603_3.Checked := False;   // Femoral
      D_B0603_4.Checked := False;   // PICC
      D_B0603_5.Checked := False;   // S-Gnz
      D_B0603_6.Checked := False;   // Left
      D_B0603_7.Checked := False;   // Right

      // 드레싱 상태
      D_B0604_1.Checked := False;   // 필름드레싱
      D_B0604_2.Checked := False;   // 거즈드레싱
      D_B0604_3.Checked := False;   // 건조
      D_B0604_4.Checked := False;   // 습함
      D_B0604_5.Checked := False;   // 벗겨짐

      // 삽입부위 상태
      D_B0605_1.Checked := False;  // 정상
      D_B0605_2.Checked := False;  // 부종
      D_B0605_3.Checked := False;  // 발적
      D_B0605_4.Checked := False;  // 삼출물

      // 드레싱 교환
      D_B0606_1.Checked := False;  // 예
      D_B0606_2.Checked := False;  // 아니오
      D_B0606_3.Text    := '';     // #
   end;

end;


//------------------------------------------------------------------------------
// [Evening - 중심정맥관] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0601_1Click(Sender: TObject);
begin

   pn_EDetail08.Enabled := E_B0601_1.Checked;

   if not pn_EDetail08.Enabled then begin
      // 삽입일시
      E_B0602_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      E_B0602_2.Text := '';   // #

      // 위치(종류)
      E_B0603_1.Checked := False;   // Subclavian
      E_B0603_2.Checked := False;   // Internal Jugular
      E_B0603_3.Checked := False;   // Femoral
      E_B0603_4.Checked := False;   // PICC
      E_B0603_5.Checked := False;   // S-Gnz
      E_B0603_6.Checked := False;   // Left
      E_B0603_7.Checked := False;   // Right

      // 드레싱 상태
      E_B0604_1.Checked := False;   // 필름드레싱
      E_B0604_2.Checked := False;   // 거즈드레싱
      E_B0604_3.Checked := False;   // 건조
      E_B0604_4.Checked := False;   // 습함
      E_B0604_5.Checked := False;   // 벗겨짐

      // 삽입부위 상태
      E_B0605_1.Checked := False;  // 정상
      E_B0605_2.Checked := False;  // 부종
      E_B0605_3.Checked := False;  // 발적
      E_B0605_4.Checked := False;  // 삼출물

      // 드레싱 교환
      E_B0606_1.Checked := False;  // 예
      E_B0606_2.Checked := False;  // 아니오
      E_B0606_3.Text    := '';     // #
   end;

end;


//------------------------------------------------------------------------------
// [Night - 중심정맥관] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0601_1Click(Sender: TObject);
begin

   pn_NDetail08.Enabled := N_B0601_1.Checked;

   if not pn_NDetail08.Enabled then begin
      // 삽입일시
      N_B0602_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      N_B0602_2.Text := '';   // #

      // 위치(종류)
      N_B0603_1.Checked := False;   // Subclavian
      N_B0603_2.Checked := False;   // Internal Jugular
      N_B0603_3.Checked := False;   // Femoral
      N_B0603_4.Checked := False;   // PICC
      N_B0603_5.Checked := False;   // S-Gnz
      N_B0603_6.Checked := False;   // Left
      N_B0603_7.Checked := False;   // Right

      // 드레싱 상태
      N_B0604_1.Checked := False;   // 필름드레싱
      N_B0604_2.Checked := False;   // 거즈드레싱
      N_B0604_3.Checked := False;   // 건조
      N_B0604_4.Checked := False;   // 습함
      N_B0604_5.Checked := False;   // 벗겨짐

      // 삽입부위 상태
      N_B0605_1.Checked := False;  // 정상
      N_B0605_2.Checked := False;  // 부종
      N_B0605_3.Checked := False;  // 발적
      N_B0605_4.Checked := False;  // 삼출물

      // 드레싱 교환
      N_B0606_1.Checked := False;  // 예
      N_B0606_2.Checked := False;  // 아니오
      N_B0606_3.Text    := '';     // #
   end;

end;


//------------------------------------------------------------------------------
// [Day - 욕창발생] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.D_B0701_1Click(Sender: TObject);
begin

   pn_DDetail09.Enabled := D_B0701_1.Checked;

   if not pn_DDetail09.Enabled then begin
      D_C0701_1.Checked := False;   // 입실 전
      D_C0701_2.Checked := False;   // 입실 후
      D_C0701_3.Text    := '';      // 위치
      D_C0701_4.Text    := '';      // 단계
      D_C0701_5.Text    := '';      // 크기
   end;

end;


//------------------------------------------------------------------------------
// [Evening - 욕창발생] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.E_B0701_1Click(Sender: TObject);
begin

   pn_EDetail09.Enabled := E_B0701_1.Checked;

   if not pn_EDetail09.Enabled then begin
      E_C0701_1.Checked := False;   // 입실 전
      E_C0701_2.Checked := False;   // 입실 후
      E_C0701_3.Text    := '';      // 위치
      E_C0701_4.Text    := '';      // 단계
      E_C0701_5.Text    := '';      // 크기
   end;

end;


//------------------------------------------------------------------------------
// [Night - 욕창발생] 항목 선택
//
// Author : ByoungSik, Lee
// Date   : 2011.02.16
//------------------------------------------------------------------------------
procedure TMDN110FV.N_B0701_1Click(Sender: TObject);
begin

   pn_NDetail09.Enabled := N_B0701_1.Checked;

   if not pn_NDetail09.Enabled then begin
      N_C0701_1.Checked := False;   // 입실 전
      N_C0701_2.Checked := False;   // 입실 후
      N_C0701_3.Text    := '';      // 위치
      N_C0701_4.Text    := '';      // 단계
      N_C0701_5.Text    := '';      // 크기
   end;

end;


//------------------------------------------------------------------------------
// [Day - 욕창예방관리활동 및 치료 - 기타] 항목 선택
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
// [Evening - 욕창예방관리활동 및 치료 - 기타] 항목 선택
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
// [Night - 욕창예방관리활동 및 치료 - 기타] 항목 선택
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
// [삽관일시 입력] OnExit Event Handler
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
   // 삽관일시 Sender 받아오기
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TMaskEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Sender와 동일한 Name의 Edit창에 삽관일시 자동계산
         sbt_CalcIntubeClick(Sender);

         Break;
      end;
   end;
end;



//------------------------------------------------------------------------------
// [삽관일수 계산] Button onClick Event Handler
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
   // Sender 명 가져오기
   sName := CopyByte((Sender as TMaskEdit).Name, 1, 8);

   // Component 세부 Flag 값 가져오기
   sFlag := CopyByte((Sender as TMaskEdit).Name, 9, 1);


   GetSysDate(systime);


   // 삽관일자
   i_Year  := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 1, 4));
   i_Month := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 6, 2));
   i_Day   := StrToInt(CopyByte(TMaskEdit(GetComp(Self.Name, (Sender as TMaskEdit).Name)).Text, 9, 2));


   // 오늘일자
   v_Year  := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),1,4));
   v_Month := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),5,2));
   v_Day   := StrToInt(CopyByte(FormatDateTime('yyyymmdd', systime),7,2));


   // 삽관일수 계산 (삽관당일은 일수계산에서 제외)
   sResult := IntToStr(Trunc(EncodeDate(v_Year,v_Month, v_Day)) -
                       Trunc(EncodeDate(i_Year,i_Month,i_Day)));


   // Flag에 따른 Component명 찾아서 자동삽관일 계산결과 넣기
   if (sFlag = '1') then
      TEdit(GetComp(Self.Name, sName + '2')).Text := sResult
   else if (sFlag = '2') then
      TEdit(GetComp(Self.Name, sName + '1')).Text := sResult;

end;



//------------------------------------------------------------------------------
// [욕창위험예방평가(MDN470F1) 호출] onClick Event Handler
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

   // Sender 받아오기
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Editing 선택한 Duty 설정 (Call-Back 위한 세팅), 2011.08.24 LSH
         FsSelDuty := CopyByte((Sender as TEdit).Name,1,1);

         Break;
      end;
   end;



   // 욕창위험도 평가도구(MDN470F1) 호출.
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
// [욕창위험도 평가결과 조회] CallBack Event Procedure
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FV.AssignBdScore(Sender: TObject);
var
   sFlag, sPatNo, sAdmDate, sEstiDate : string;
   RowNo         : Integer;
   bdsEstiInfo   : HmdBdspmt;   // 평가정보
begin
   sFlag     := '';                                                // '' 이면, 일반성인/중환자 평가도구, 'B'는 신생아 평가도구
   sPatNo    := FsPatNo;                                           // 환자번호
   sAdmDate  := FsAdmDate;                                         // 입원일자
   sEstiDate := FormatDateTime('yyyymmdd',dtp_ChkDate.date);       // 평가일자


   Screen.Cursor := crHourglass;


   try
      bdsEstiInfo := HmdBdspmt.Create;

      // 욕창위험도평가 내역 조회
      RowNo := bdsEstiInfo.loadEstiInfo(G_LOCATE, sPatNo, sAdmDate, sEstiDate, sFlag);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         stb_Message.Panels[0].Text := GetTxMsg;
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         Exit;
      end;


      // 욕창위험도 평가결과 Call-Back (현재 Editing중인 Duty에 C/B)
      TEdit(GetComp(Self.Name, FsSelDuty + '_B0702_1')).Text := bdsEstiInfo.iTotScore[0] + ' (' + bdsEstiInfo.sEstiRslt[0] + ')';


   finally
      screen.Cursor  :=  crDefault;
      FreeAndNil(bdsEstiInfo);
   end;

end;


//------------------------------------------------------------------------------
// [일자 자동입력] OnClick Event Handler
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
   // Sender 받아오기
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TMaskEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Sender에 오늘날짜 자동 세팅
         if Trim(DelChar((Sender as TMaskEdit).Text,'-')) = '' then
            (Sender as TMaskEdit).Text := FormatDateTime('yyyy-mm-dd', now);

         Break;
      end;
   end;
end;



//------------------------------------------------------------------------------
// [약 처방내역 조회] Call Procedure
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

   // 처방내역 화면 Clear
   GridClear(ugd_AddList);


   // 특정처방일에 대한 처방내역 조회하여 Display
   Screen.Cursor := crHourGlass;

   try
      //Create Class
      mdOrderv := HmdOrderv.Create;


      sType1 := '4';
      sPatNo   := FsPatNo;                                      // 환자번호
      sOrdDate := FormatDateTime('YYYYMMDD',dtp_Fromadd.Date);  // 처방일
      sType2   := '';


      // 일자별 처방내역 조회(md_order_l8)
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
            (mdOrderv.sOrdKind[i] =  '8') or    // 외래+입원시처방
            (mdOrderv.sOrdKind[i] =  '9') or    // 외래+미래처방
            (mdOrderv.sOrdKind[i] =  'F') then  // 가정+미래처방
             Continue;


         // 약 처방만 조회
         if (CopyByte(mdOrderv.sOrdGrp[i],1,1) <> 'B') then
             Continue;


         if (mdOrderv.sOrdGrpNm[i] <> sTempOrdGrpNm) or
            (mdOrderv.sOrdCd[i] = 'SPECIAL') then
            ugd_AddList.Cells[0,nRow] := mdOrderv.sOrdGrpNm[i];   // 처방분류명

         ugd_AddList.Cells[1,nRow] := mdOrderv.sOrdName[i];       // 처방명


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


// 처방내역 해당 duty Edit창에 복사
procedure TMDN110FV.bbt_AddClick(Sender: TObject);
var
   sTemp : String;
begin
   sTemp := TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text;

   TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text := sTemp + ' ' + ugd_AddList.Cells[1, ugd_AddList.Row];
end;


// 처방내역 해당 duty Edit창에 복사
procedure TMDN110FV.E_B0302_1EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // 처방조회 일자
   dtp_Fromadd.Date := dtp_ChkDate.Date;

   bpn_Add.Visible := True;
   bpn_Add.Left    := TPanel(GetComp(Self.Name, 'pn_' + FsCurDuty + 'Detail12')).Left;
   bpn_Add.Top     := TPanel(GetComp(Self.Name, 'pn_' + FsCurDuty + 'Detail12')).Top + 40;


   // 처방내역 조회
   SelOrderList;

end;


procedure TMDN110FV.ugd_AddListDblClick(Sender: TObject);
begin
   bbt_AddClick(Sender);
end;


// Grid 초기화 (Title Row 제외)
procedure TMDN110FV.GridClear(in_Grid : TUltraGrid);
var
   i, j : Integer;
begin

   if (in_Grid.Name = 'ugd_TempList') then
   begin
      // 항목 Grid 초기화 (Title까지)
      for i := 0 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';

   end
   else if (in_Grid.Name = 'ugd_AddList') then
   begin
      // 항목 Grid 초기화 (Title 제외)
      for i := 1 to in_Grid.RowCount do
         for j := 0 to in_Grid.ColCount do
            in_Grid.Cells[j,i] := '';
   end;
end;


procedure TMDN110FV.D_B0505_1Click(Sender: TObject);
begin
   pn_DDetail10.Enabled := D_B0505_1.Checked;   // 말초정맥관 2 추가, 2011.08.17 LSH

   // 2011.08.17 LSH, 추가
   if not pn_DDetail10.Enabled then
   begin
      // 삽입일시
      D_B0506_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      D_B0506_2.Text := '';   // #

      // 위치
      D_B0507_1.Checked := False;   // 우상지
      D_B0507_2.Checked := False;   // 좌상지
      D_B0507_3.Checked := False;   // 우하지
      D_B0507_4.Checked := False;   // 좌하지

      // 삽입부위 상태
      D_B0508_1.Checked := False;   // 정상
      D_B0508_2.Checked := False;   // 부종
      D_B0508_3.Checked := False;   // 발적
      D_B0508_4.Checked := False;   // 열감
      D_B0508_5.Checked := False;   // 압통
   end;

end;

procedure TMDN110FV.E_B0505_1Click(Sender: TObject);
begin
   pn_EDetail10.Enabled := E_B0505_1.Checked;

   if not pn_EDetail10.Enabled then
   begin
      // 삽입일시
      E_B0506_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      E_B0506_2.Text := '';   // #

      // 위치
      E_B0507_1.Checked := False;   // 우상지
      E_B0507_2.Checked := False;   // 좌상지
      E_B0507_3.Checked := False;   // 우하지
      E_B0507_4.Checked := False;   // 좌하지

      // 삽입부위 상태
      E_B0508_1.Checked := False;   // 정상
      E_B0508_2.Checked := False;   // 부종
      E_B0508_3.Checked := False;   // 발적
      E_B0508_4.Checked := False;   // 열감
      E_B0508_5.Checked := False;   // 압통
   end;

end;

procedure TMDN110FV.N_B0505_1Click(Sender: TObject);
begin
   pn_NDetail10.Enabled := N_B0505_1.Checked;

   if not pn_NDetail10.Enabled then
   begin
      // 삽입일시
      N_B0506_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      N_B0506_2.Text := '';   // #

      // 위치
      N_B0507_1.Checked := False;   // 우상지
      N_B0507_2.Checked := False;   // 좌상지
      N_B0507_3.Checked := False;   // 우하지
      N_B0507_4.Checked := False;   // 좌하지

      // 삽입부위 상태
      N_B0508_1.Checked := False;   // 정상
      N_B0508_2.Checked := False;   // 부종
      N_B0508_3.Checked := False;   // 발적
      N_B0508_4.Checked := False;   // 열감
      N_B0508_5.Checked := False;   // 압통
   end;
end;

procedure TMDN110FV.D_B0607_1Click(Sender: TObject);
begin
   pn_DDetail11.Enabled := D_B0607_1.Checked;

   if not pn_DDetail11.Enabled then
   begin
      // 삽입일시
      D_B0608_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      D_B0608_2.Text := '';   // #

      // 위치(종류)
      D_B0609_1.Checked := False;   // Subclavian
      D_B0609_2.Checked := False;   // Internal Jugular
      D_B0609_3.Checked := False;   // Femoral
      D_B0609_4.Checked := False;   // PICC
      D_B0609_5.Checked := False;   // S-Gnz
      D_B0609_6.Checked := False;   // Left
      D_B0609_7.Checked := False;   // Right

      // 드레싱 상태
      D_B0610_1.Checked := False;   // 필름드레싱
      D_B0610_2.Checked := False;   // 거즈드레싱
      D_B0610_3.Checked := False;   // 건조
      D_B0610_4.Checked := False;   // 습함
      D_B0610_5.Checked := False;   // 벗겨짐

      // 삽입부위 상태
      D_B0611_1.Checked := False;  // 정상
      D_B0611_2.Checked := False;  // 부종
      D_B0611_3.Checked := False;  // 발적
      D_B0611_4.Checked := False;  // 삼출물

      // 드레싱 교환
      D_B0612_1.Checked := False;  // 예
      D_B0612_2.Checked := False;  // 아니오
      D_B0612_3.Text    := '';     // #
   end;
end;

procedure TMDN110FV.E_B0607_1Click(Sender: TObject);
begin
   pn_EDetail11.Enabled := E_B0607_1.Checked;

   if not pn_EDetail11.Enabled then
   begin
      // 삽입일시
      E_B0608_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      E_B0608_2.Text := '';   // #

      // 위치(종류)
      E_B0609_1.Checked := False;   // Subclavian
      E_B0609_2.Checked := False;   // Internal Jugular
      E_B0609_3.Checked := False;   // Femoral
      E_B0609_4.Checked := False;   // PICC
      E_B0609_5.Checked := False;   // S-Gnz
      E_B0609_6.Checked := False;   // Left
      E_B0609_7.Checked := False;   // Right

      // 드레싱 상태
      E_B0610_1.Checked := False;   // 필름드레싱
      E_B0610_2.Checked := False;   // 거즈드레싱
      E_B0610_3.Checked := False;   // 건조
      E_B0610_4.Checked := False;   // 습함
      E_B0610_5.Checked := False;   // 벗겨짐

      // 삽입부위 상태
      E_B0611_1.Checked := False;  // 정상
      E_B0611_2.Checked := False;  // 부종
      E_B0611_3.Checked := False;  // 발적
      E_B0611_4.Checked := False;  // 삼출물

      // 드레싱 교환
      E_B0612_1.Checked := False;  // 예
      E_B0612_2.Checked := False;  // 아니오
      E_B0612_3.Text    := '';     // #
   end;
end;

procedure TMDN110FV.N_B0607_1Click(Sender: TObject);
begin
   pn_NDetail11.Enabled := N_B0607_1.Checked;

   if not pn_NDetail11.Enabled then
   begin
      // 삽입일시
      N_B0608_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      N_B0608_2.Text := '';   // #

      // 위치(종류)
      N_B0609_1.Checked := False;   // Subclavian
      N_B0609_2.Checked := False;   // Internal Jugular
      N_B0609_3.Checked := False;   // Femoral
      N_B0609_4.Checked := False;   // PICC
      N_B0609_5.Checked := False;   // S-Gnz
      N_B0609_6.Checked := False;   // Left
      N_B0609_7.Checked := False;   // Right

      // 드레싱 상태
      N_B0610_1.Checked := False;   // 필름드레싱
      N_B0610_2.Checked := False;   // 거즈드레싱
      N_B0610_3.Checked := False;   // 건조
      N_B0610_4.Checked := False;   // 습함
      N_B0610_5.Checked := False;   // 벗겨짐

      // 삽입부위 상태
      N_B0611_1.Checked := False;  // 정상
      N_B0611_2.Checked := False;  // 부종
      N_B0611_3.Checked := False;  // 발적
      N_B0611_4.Checked := False;  // 삼출물

      // 드레싱 교환
      N_B0612_1.Checked := False;  // 예
      N_B0612_2.Checked := False;  // 아니오
      N_B0612_3.Text    := '';     // #
   end;
end;


//------------------------------------------------------------------------------
// [중환자 통증평가(MDN920F2) 호출] onClick Event Handler
//   - BPS 도구만 평가프로그램 호출
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
   // 현 Duty Sender 받아오기
   //----------------------------------------------------
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];
      sName := (oComp as TComponent).Name;

      if (Sender as TEdit).Name = sName then
      begin
         Sender := (oComp as TComponent);

         // Editing 선택한 Duty 설정 (Call-Back 위한 세팅)
         FsSelDuty := CopyByte((Sender as TEdit).Name,1,1);

         Break;
      end;
   end;


   //----------------------------------------------------
   // 통증평가 시스템 연동 @ 2012.06.13 LSH
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
// [중환자 통증평가결과 조회] CallBack Event Procedure
//
// Author : Lee, Se-Ha
// Date   : 2011.08.24
//------------------------------------------------------------------------------
procedure TMDN110FV.AssignPainScore(Sender: TObject);
var
  // sFlag, sPatNo, sAdmDate, sEstiDate : string;
  // RowNo         : Integer;

   iMstCnt : Integer;   // the number of rows selected (평가 정보)
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
      // STEP 1 : 평가내역 기본조회 정보 setting
      //----------------------------------------------------------------
      sPatNo    := FsPatNo;
      sAdmDate  := FsAdmDate;
      sEstiDate := FormatDateTime('yyyymmdd',dtp_ChkDate.date);
      sEstiTime := FormatDateTime('yyyymmddhhmm',Now);
      sTool     := 'BPS';


      //----------------------------------------------------------------
      // STEP 2 : 평가 Data 입력 여부 체크
      //----------------------------------------------------------------
      bExist := paiEstiInfo.isExist(sPatNo, sAdmDate, sEstiDate, sEstiTime, sTool);


      if bExist then
      begin

         //----------------------------------------------------------------
         // CASE 1 : 평가 Data가 있는 경우
         //----------------------------------------------------------------

         //----------------------------------------------------------------
         // STEP 3 : 평가 Data Load
         //----------------------------------------------------------------
         // 3.1. 평가 정보 가져오기 (MDPAINMT)
         iMstCnt := paiEstiInfo.loadEstiInfo(G_LOCATE, sPatNo, sAdmDate, sEstiDate, sEstiTime, sTool);


         if (iMstCnt < 0) then
         begin
            stb_Message.Panels[0].Text := GetTxMsg;
            showErrMsg(stb_Message);
            Exit;
         end;



         // 통증평가점수 및 결과 assign
         sScore    := paiEstiInfo.iTotScore[0];
         sEstiRslt := paiEstiInfo.sEstiRslt[0];


         // 통증평가 결과 반영
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := sScore;

      end
      else
      // 평가내역(MDPAINMT) 없는경우, [도구] 다시 선택해서 진행함.
      begin
         MessageBox(Self.Handle,
                    PChar('저장된 통증평가내역이 없습니다.'+ #13#10 + '평가점수반영을 원하시면, [도구]를 다시 선택한후 진행해주십시오.'),
                    '통증평가 점수없음',
                    MB_OK + MB_ICONERROR);

      end;



   finally
      Screen.Cursor := crDefault;
      FreeAndNil(paiEstiInfo);
   end;


end;
}


//------------------------------------------------------------------------------
// [임상질지표 출력] Button onClick Event Handler
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
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('PRINT', '', '', '', self.Name) = False then Exit;

   //----------------------------------------------------------------
   // 1. Check
   //----------------------------------------------------------------
   // 2016-06-03 장은석 , QRP 출력 조회 시 프린터 존재 체크 안함 START
   // 하단 원본 구문
//   if (IsNotPrinterReady) then exit;
   // 하단 변경 구문
   if pv_SComReport = nil then
   begin
      if (IsNotPrinterReady) then exit;
   end;
   // 2016-06-03 장은석 , QRP 출력 조회 시 프린터 존재 체크 안함 END


   // 마지막 Page Index 초기화 @ 2012.10.31 LSH
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
   srcPrt.qrlb_PatNo.Caption   := lb_PatNo.Caption;             // 환자번호
   srcPrt.qrlb_PatName.Caption := lb_PatName.Caption;           // 환자명
   srcPrt.qrlb_Sex.Caption     := lb_Sex.Caption;               // 성별
   srcPrt.qrlb_Age.Caption     := lb_Age.Caption;               // 나이
   srcPrt.qrlb_RoomNo.Caption  := lb_RoomNo.Caption;            // 병동-병실
   srcPrt.qrlb_ChkDate.Caption := FormatDateTime('yyyy-mm-dd', dtp_ChkDate.Date);
   srcPrt.IsLastPage           := G_LastPageIdx;                // EndMark 출력위한 Page 인덱스 @ 2012.10.31 LSH
   srcPrt.LastDateYn           := G_LastEmrDateYn;              // EndMark 출력위한 마지막 출력일자 @ 2012.10.31 LSH

   // ------------------------------------------------------------------------
   // 생년월일, 과, 병동, 병실 정보 추가 -2015.08.03 smpark
   // 2015년 8월 11일 open
   // ------------------------------------------------------------------------
   if FormatDateTime('YYYYMMDD', dtp_ChkDate.Date) >= '20150811' then
   begin
      srcPrt.QRLabel5.Caption := '생년월일:';
      srcPrt.qrlb_Meddept.Enabled  := True;
      srcPrt.qrlb_Birtdate.Enabled := True;

      srcPrt.qrlb_Meddept.Caption  := lb_Deptnm.Caption;
      srcPrt.qrlb_Birtdate.Caption := lb_Birtdate.Caption;
   end
   else
   begin
      srcPrt.QRLabel5.Caption := '침상번호:';
      srcPrt.qrlb_RoomNo.Top  := 62;
      srcPrt.qrlb_RoomNo.Left := 88;
      srcPrt.qrlb_RoomNo.Font.Style := [];

      srcPrt.qrlb_Meddept.Enabled  := False;
      srcPrt.qrlb_Birtdate.Enabled := False;
   end;



   //구로병원만 출력항목명 변경 2014.07.25 yhi 추가
   if G_Locate = 'GR' then
   begin
      srcPrt.QRLabel281.Caption := '공기침요적용';
      srcPrt.QRLabel285.Caption := '압력완화 보조도구 사용';
      srcPrt.QRLabel287.Caption := '피부청결관리(실금등)';
      srcPrt.QRLabel462.Caption := '공기침요적용';
      srcPrt.QRLabel466.Caption := '압력완화 보조도구 사용';
      srcPrt.QRLabel468.Caption := '피부청결관리(실금등)';
      srcPrt.QRLabel772.Caption := '공기침요적용';
      srcPrt.QRLabel776.Caption := '압력완화 보조도구 사용';
      srcPrt.QRLabel778.Caption := '피부청결관리(실금등)';
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

   // 2016-10-07 장은석 , 진정상태평가 RSS Score -> RASS Score 변경 요청
   //                     안산병원만 적용 요청 (3개병원 추후 적용 요지 있다고 함)
   //                     SICU 요청사항. [이경희 쌤 전달 받음.]
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
   // 정상 출력
   //====================================================
   for i := 0 to srcForm.ComponentCount - 1 do
   begin
      // 기본 환자정보는 제외
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
               (GetComp(srcPrt.Name,srcForm.Components[i].Name) as TQRLabel).Caption := '■'
            else
               (GetComp(srcPrt.Name,srcForm.Components[i].Name) as TQRLabel).Caption := '';
         end
         else if (srcForm.Components[i].ClassType = TCheckBox) then
         begin
            //---------------------------------------------
            // TCheckBox Type
            //---------------------------------------------
            if (FindComponent(srcForm.Components[i].Name) as TCheckBox).Checked then
               (GetComp(srcPrt.Name, srcForm.Components[i].Name) as TQRLabel).Caption := '■'
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

   // EMR 미리보기 모드
   if P_PreviewYn = 'Y' then
   begin
      // 출력여부 Global Var (당일자 ICU 기록지 저장내역 있는경우 Y)
      if (G_EmrYn = 'Y') then
      begin
         FForm := BplFormCreate('PTP001F1');

         SetBplStrProp  ('PTP001F1','prop_Caption', srcPrt.Caption);         // 미리보기 타이틀
         SetBplClassProp('PTP001F1','prop_Report' , srcPrt.qr_Quality);      // 출력 첫장에 올릴 레포트
         SetBplStrProp  ('PTP001F1','prop_Zoom'   , 'Fit');	                 // 출력물 배율 지정

         FForm.ShowModal;
      end;

      Exit;

   end;




   //------------------------------------------------------------------------
   // 3-1. ICU 임상질지표  자동서식변환, 2011.09.22 LSH
   //------------------------------------------------------------------------
   if P_EMRPrintYn = 'Y' then
   begin
      // 3-2. 자동서식변환 출력여부 Global Var
      if (G_EmrYn = 'Y') then
      begin
         // EMR Index 증가
         Inc(G_EmrPrtIdx);


         // Print(EMR Image)
         iPrinterIndex := Printer.Printers.IndexOf('bitPrinter');
         // iPrinterIndex := Printer.Printers.IndexOf('Microsoft XPS Document Writer');


         // EMR 프린터 선택
         srcPrt.qr_Quality.PrinterSettings.PrinterIndex := iPrinterIndex;

         // EMR Report 제목 생성
         srcPrt.qr_Quality.ReportTitle := P_EMRTitle + CopyByte('000',1, 3 - LengthByte(IntToStr(G_EmrPrtIdx))) + IntToStr(G_EmrPrtIdx);;

         // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
         // // Main Form Print
         // srcPrt.qr_Quality.Print;

         if pv_SComReport <> nil then
         begin
            pv_SComReport.AddReport(srcPrt.qr_Quality); // 기록지를 Add
            pv_SComReport.PageTextList.Add('');         // 위변조방지용 문구. 현재는 없어서 공백
         end
         else
         begin
            srcPrt.qr_Quality.Print;
         end;
         // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End

         // 출력폼 Free
         srcPrt.Close;

      end;



      { 자동서식변환 튜닝하면서, 사용중지. 2012.01.31 LSH
      // 퇴원일자 전까지 기록일자 + 1일씩 조회하며 출력.
      if (DateToStr(dtp_ChkDate.Date) < P_DschDate) then
      begin
         // 기록일자 + 1일 조회
         sbt_NextClick(Sender);
      end
      else
      begin
         Close;
      end;
      }

   end
   else
   // 일반 출력
   begin
      //-------------------------------------------------------
      // 개인정보보호 출력물관리, 2011.11.25 LSH
      //-------------------------------------------------------
      srcPrt.qr_Quality.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
      fn_SetReportID(srcPrt.qr_Quality);

      // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
      // srcPrt.qr_Quality.Print;

      if pv_SComReport <> nil then
      begin
         pv_SComReport.AddReport(srcPrt.qr_Quality); // 기록지를 Add
         pv_SComReport.PageTextList.Add('');         // 위변조방지용 문구. 현재는 없어서 공백
      end
      else
      begin
         srcPrt.qr_Quality.Print;
      end;
      // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End

      // 출력폼 Free
      srcPrt.Close;
   end;

end;






//------------------------------------------------------------------------------
// ICU 임상질지표 자동스캔 서식출력
// - 환자별 출력
//
// Author : Lee, Se-Ha
// Date   : 2011.09.23 ~ 2012.01.30 (CPU 점유율 잡아먹는 문제로 사용중지)
//------------------------------------------------------------------------------
procedure TMDN110FV.AutoScanPrint;
begin

   // 출력할 최초일자(입원일) 받아오기
   dtp_ChkDate.Date := StrToDate(FsAdmDate);




   // EMR 출력 Index 초기화
   G_EmrPrtIdx := 0;



   //---------------------------------------------------
   // 2. 환자기본정보 조회
   //---------------------------------------------------
   LoadPatientInfo;



   // 2.1.1. Set Patient information
   with FPatient do begin
      lb_PatNo.Caption   := FsPatNo;                           // 환자번호
      lb_PatName.Caption := sPatName[0];                       // 환자명
      lb_Sex.Caption     := sSex    [0];                       // 성별
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // 나이
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // 병동-병실

      // 생년월일, 과, 병동, 병실 정보 추가 -2015.08.03 smpark, 누락 추가 -2016.02.23 smpark
      lb_Deptnm.Caption   := sDeptNm[0];
      lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
   end;



   //-----------------------------------------------------------------
   // 2. 임상질지표 내역 조회
   //-----------------------------------------------------------------
   LoadQualityCheck;



   //-----------------------------------------------------------------
   // 3. 출력 flag에 따른 출력분기
   //-----------------------------------------------------------------
   bbt_PrintClick(Self);


end;




//------------------------------------------------------------------------------
// ICU 임상질지표 자동스캔 서식출력 New-verion
// - 환자별 출력
//
// Author : Lee, Se-Ha
// Date   : 2012.01.27
//------------------------------------------------------------------------------
procedure TMDN110FV.AutoScanPrint_New;
begin
   // EMR 출력 Index 초기화
   G_EmrPrtIdx := 0;


   //---------------------------------------------------
   // 1. 환자기본정보 조회
   //---------------------------------------------------
   LoadPatientInfo;


   //---------------------------------------------------
   // 2. Set Patient information
   //---------------------------------------------------
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // 환자번호
      lb_PatName.Caption := sPatName[0];                       // 환자명
      lb_Sex.Caption     := sSex    [0];                       // 성별
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // 나이
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // 병동-병실

      // 생년월일, 과, 병동, 병실 정보 추가 -2015.08.03 smpark, 누락 추가 -2016.02.23 smpark
      lb_Deptnm.Caption   := sDeptNm[0];
      lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
   end;



   //---------------------------------------------------
   // 3. EMR 서식변환 대상 조회
   //---------------------------------------------------
   bbt_SelectClick(ugd_EmrList);

end;




//------------------------------------------------------------------------------
// [자동서식변환용] EMR 대상환자 조회
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
   // 변수 Assign
   //-------------------------------------------------------------------
   sGubun   := '6';
   sWardNo  := '';
   sPatNo   := FsPatNo;
   sAdmDate := DelChar(FsAdmDate,'-');

   // ICU 임상질지표 구분자 추가 -2014.11.27 smpark
   sSetType := 'ICQCK';

   // 2015.05.27 smpark
   sFromdate := DelChar(P_EMRFromDt,'-');
   sTodate   := DelChar(P_EMRToDt,'-');

   //-------------------------------------------------------------------
   // EMR 대상 조회
   //-------------------------------------------------------------------
   // 장기재원환자, 검색시작일자 종료일자 추가 -2015.05.27 smpark
   GetIcuInfo(sGubun, sWardNo, sPatNo, sAdmDate, sSetType, sFromdate, sTodate);

end;




procedure TMDN110FV.bbt_ToNrRecordDClick(Sender: TObject);
var
   sFlag      : String; // D/E/N Caller Component Flag
   sNrsRecord : String; // 간호기록 전문
   sTime      : String; // 기록일시

   // 인공기도
   sArtificialYN  : String; // 유무
   sETTube        : String; // ET tube
   sTracheostomy  : String; // Tracheostomy
   sLeakage       : String; // LEAKAGE
   // 기계환기
   sMechanicalYN  : String; // 유무
   sAdaptDVT      : String; // DVT 적용
   sAdaptDate     : String; // 적용일자
   sPhysical30    : String; // 신체거상 30˚
   sTabooReason   : String; // 금기사유
   // 진정상태평가
   sRelaxYN       : String; // 유무
   sRssScore      : String; // RSS score
   sRelaxDrug     : String; // Drug
   // 통증상태평가
   sPainScore     : String; // score
   sPainPart      : String; // 부위
   sPainCond      : String; // 양상
   sPainTerm      : String; // 기간
   sPainFreq      : String; // 빈도
   sPainDrug      : String; // Drug
   // 말초정맥관 I
   sEndVeinPipe1  : String; // 유무
   sEVP1EntDate   : String; // 삽입일시
   sEVP1Location  : String; // 위치
   sEVP1State     : String; // 삽입부위 상태
   // 말초정맥관 II
   sEndVeinPipe2  : String; // 유무
   sEVP2EntDate   : String; // 삽입일시
   sEVP2Location  : String; // 위치
   sEVP2State     : String; // 삽입부위 상태
   // 중심정맥관 I
   sCentVeinPipe1 : String; // 유무
   sCVP1EntDate   : String; // 삽입일시
   sCVP1Location  : String; // 위치(종류)
   sCVP1Dressing  : String; // 드레싱 상태
   sCVP1State     : String; // 삽입부위 상태
   sCVP1DresChnge : String; // 드레싱 교환
   // 중심정맥관 II
   sCentVeinPipe2 : String; // 유무
   sCVP2EntDate   : String; // 삽입일시
   sCVP2Location  : String; // 위치(종류)
   sCVP2Dressing  : String; // 드레싱 상태
   sCVP2State     : String; // 삽입부위 상태
   sCVP2DresChnge : String; // 드레싱 교환
   // 욕창예방관리
   sBedSoreYN     : String; // 유무
   sBedLocation   : String; // 위치
   sBedLevel      : String; // 단계
   sBedSize       : String; // 크기
   sBradenScale   : String; // Braden scale : score
   sBedCare       : String; // 욕창예방 관리활동 및 치료
   sWOCNConsult   : String; // WOCN consult
   sSoreDressing  : String; // Sore dressing
   // 낙상예방활동
   sFallHurt      : String; // 낙상예방활동
   // 기질적 정신장애(섬망, 불면 등)
   sMental        : String; // 유무
   // 활동성 출혈
   sActive        : String; // 유무

   sSummary1       : String; // 인공기도
   sSummary2       : String; // 기계환기
   sSummary3       : String; // 진정상태평가
   sSummary4       : String; // 통증상태평가
   sSummary5       : String; // 말초정맥관 I
   sSummary6       : String; // 말초정맥관 II
   sSummary7       : String; // 중심정맥관 I
   sSummary8       : String; // 중심정맥관 II
   sSummary9       : String; // 욕창예방관리
   sSummary10      : String; // 낙상예방활동
   sSummary11      : String; // 기질적 정신장애(섬망, 불면 등)
   sSummary12      : String; // 활동성 출혈

   // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
   aPacket : IPipePacket;
   i : Integer;
   jPatInfo : TJsonObject;
begin
   // [EMR연계] 2016-06-28 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
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

      // 기본적으로 작성되지 않은 내용은 항목도 보이지 않도록 설정 (이경희 선생님)
      sNrsRecord := '';

      // 인공기도
      begin
         // 인공기도 유무
         if      (Self.FindComponent(sFlag + '_B0101_1') as TRadioButton).Checked then
         begin
            sArtificialYN := '인공기도 유';
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
                      + '삽관일자:'
                      + (Self.FindComponent(sFlag + '_C0102_2') as TMaskEdit).Text
                      + ' '
                      + '내경:'
                      + (Self.FindComponent(sFlag + '_C0102_3') as TEdit).Text
                      + 'mm'
                      + ' '
                      + '깊이:'
                      + (Self.FindComponent(sFlag + '_C0102_4') as TEdit).Text
                      + 'cm'
                      + ' '
                      + '커프압:'
                      + (Self.FindComponent(sFlag + '_C0102_5') as TEdit).Text
                      + 'cmH₂O'
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
                            + '수술일자:'
                            + (Self.FindComponent(sFlag + '_C0103_2') as TMaskEdit).Text
                            + ' '
                            + '내경:'
                            + (Self.FindComponent(sFlag + '_C0103_3') as TEdit).Text
                            + 'mm'
                            + ' '
                            + '커프압:'
                            + (Self.FindComponent(sFlag + '_C0103_4') as TEdit).Text
                            + 'cmH₂O'
                            ;
         end
         else
         begin
            sTracheostomy := '';
         end;

         // LEAKAGE
         if      (Self.FindComponent(sFlag + '_B0104_1') as TRadioButton).Checked then
         begin
            sLeakage := 'LEAKAGE:유';
         end
         else if (Self.FindComponent(sFlag + '_B0104_1') as TRadioButton).Checked then
         begin
            sLeakage := 'LEAKAGE:무';
         end
         else
         begin
            sLeakage := '';
         end;
      end;

      // 기계환기
      begin
         // 기계환기 유무
         if      (Self.FindComponent(sFlag + '_B0201_1') as TRadioButton).Checked then
         begin
            sMechanicalYN := '기계환기 유';
         end
         else if (Self.FindComponent(sFlag + '_B0201_2') as TRadioButton).Checked then
         begin
            sMechanicalYN := '';
         end
         else
         begin
            sMechanicalYN := '';
         end;

         // DVT 적용
         if      (Self.FindComponent(sFlag + '_B0204_1') as TRadioButton).Checked then
         begin
            sAdaptDVT := 'DVT 적용:유';
         end
         else if (Self.FindComponent(sFlag + '_B0204_2') as TRadioButton).Checked then
         begin
            sAdaptDVT := 'DVT 적용:무';
         end
         else
         begin
            sAdaptDVT := '';
         end;

         // 적용일자
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0202_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0202_2') as TEdit).Text <> '') then
         begin
            sAdaptDate :=  '적용일자:'
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

         // 신체거상 30˚
         if      (Self.FindComponent(sFlag + '_B0203_1') as TRadioButton).Checked then
         begin
            sPhysical30 := '신체거상 30˚:예';

            // 금기사유
            sTabooReason := '';
         end
         else if (Self.FindComponent(sFlag + '_B0203_2') as TRadioButton).Checked then
         begin
            sPhysical30 := '신체거상 30˚:금기';

            // 금기사유
            if      (Self.FindComponent(sFlag + '_C0203_1') as TRadioButton).Checked then
            begin
               sTabooReason := '금기사유:shock등 혈압이 낮은 경우';
            end
            else if (Self.FindComponent(sFlag + '_C0203_2') as TRadioButton).Checked then
            begin
               sTabooReason := '금기사유:환자상태가 체위변경 불가능';
            end
            else if (Self.FindComponent(sFlag + '_C0203_3') as TRadioButton).Checked then
            begin
               sTabooReason :=  '금기사유:기타'
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

            // 금기사유
            sTabooReason := '';
         end;
      end;

      // 진정상태평가
      begin
         // 진정상태평가 유무
         if      (Self.FindComponent(sFlag + '_B0303_1') as TRadioButton).Checked then
         begin
            sRelaxYN := '진정상태평가 유';
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
            // 2016-10-14 장은석 , EMR 간호기록으로 전송 시 안산병원 RASS score로 변경
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

      // 통증상태평가
      begin
         // score
         if      (Self.FindComponent(sFlag + '_B0401_1') as TRadioButton).Checked then
         begin
            sPainScore := '통증상태평가 측정불가';
         end
         else if (Self.FindComponent(sFlag + '_B0401_2') as TRadioButton).Checked then
         begin
            sPainScore :=  '통증상태평가 FPS score:'
                         + (Self.FindComponent(sFlag + '_B0401_2E') as TEdit).Text
                         ;
         end
         else if (Self.FindComponent(sFlag + '_B0401_3') as TRadioButton).Checked then
         begin
            sPainScore :=  '통증상태평가 NRS score:'
                         + (Self.FindComponent(sFlag + '_B0401_3E') as TEdit).Text
                         ;
         end
         else if (Self.FindComponent(sFlag + '_B0401_4') as TRadioButton).Checked then
         begin
            sPainScore :=  '통증상태평가 BPS score:'
                         + (Self.FindComponent(sFlag + '_B0401_4E') as TEdit).Text
                         ;
         end
         else
         begin
            sPainScore := '';
         end;

         // 부위
         if (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text <> '' then
         begin
            sPainPart :=  '부위:'
                        + (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text
                        ;
         end
         else
         begin
            sPainPart := '';
         end;

         // 양상
         if      (Self.FindComponent(sFlag + '_C0402_1') as TRadioButton).Checked then
         begin
            sPainCond := '양상:둔화';
         end
         else if (Self.FindComponent(sFlag + '_C0402_2') as TRadioButton).Checked then
         begin
            sPainCond := '양상:쑤심';
         end
         else if (Self.FindComponent(sFlag + '_C0402_3') as TRadioButton).Checked then
         begin
            sPainCond := '양상:퍼짐';
         end
         else if (Self.FindComponent(sFlag + '_C0402_4') as TRadioButton).Checked then
         begin
            sPainCond := '양상:예리함';
         end
         else if (Self.FindComponent(sFlag + '_C0402_5') as TRadioButton).Checked then
         begin
            sPainCond := '양상:찌르는듯함';
         end
         else if (Self.FindComponent(sFlag + '_C0402_6') as TRadioButton).Checked then
         begin
            sPainCond :=  '양상:기타'
                        + '('
                        + (Self.FindComponent(sFlag + '_C0402_6E') as TEdit).Text
                        + ')'
                        ;
         end
         else
         begin
            sPainCond := '';
         end;

         // 기간
         if (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text <> '' then
         begin
            sPainTerm :=  '기간:'
                        + (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text
                        ;
         end
         else
         begin
            sPainTerm := '';
         end;

         // 빈도
         if      (Self.FindComponent(sFlag + '_C0404_1') as TRadioButton).Checked then
         begin
            sPainFreq := '빈도:간헐적';
         end
         else if (Self.FindComponent(sFlag + '_C0404_2') as TRadioButton).Checked then
         begin
            sPainFreq := '빈도:지속적';
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

      // 말초정맥관 I
      begin
         // 말초정맥관 I 유무
         if      (Self.FindComponent(sFlag + '_B0501_1') as TRadioButton).Checked then
         begin
            sEndVeinPipe1 := '말초정맥관 I 유';
         end
         else if (Self.FindComponent(sFlag + '_B0501_2') as TRadioButton).Checked then
         begin
            sEndVeinPipe1 := '';
         end
         else
         begin
            sEndVeinPipe1 := '';
         end;

         // 삽입일시
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0502_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0502_2') as TEdit).Text <> '') then
         begin
            sEVP1EntDate :=  '삽입일시:'
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

         // 위치
         sEVP1Location := '';

         if (Self.FindComponent(sFlag + '_B0503_4') as TCheckBox).Checked then
         begin
            sEVP1Location := '좌하지' + ',' + sEVP1Location;
         end;

         if (Self.FindComponent(sFlag + '_B0503_3') as TCheckBox).Checked then
         begin
            sEVP1Location := '우하지' + ',' + sEVP1Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_2') as TCheckBox).Checked then
         begin
            sEVP1Location := '좌상지' + ',' + sEVP1Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_1') as TCheckBox).Checked then
         begin
            sEVP1Location := '우상지' + ',' + sEVP1Location;;
         end;

         if sEVP1Location <> '' then
         begin
            sEVP1Location := Copy(sEVP1Location, 1, Length(sEVP1Location)-1);
            sEVP1Location := '위치:' + sEVP1Location;
         end;

         // 삽입부위 상태
         if      (Self.FindComponent(sFlag + '_B0504_1') as TRadioButton).Checked then
         begin
            sEVP1State := '삽입부위 상태:정상';
         end
         else if (Self.FindComponent(sFlag + '_B0504_2') as TRadioButton).Checked then
         begin
            sEVP1State := '삽입부위 상태:부종';
         end
         else if (Self.FindComponent(sFlag + '_B0504_3') as TRadioButton).Checked then
         begin
            sEVP1State := '삽입부위 상태:발적';
         end
         else if (Self.FindComponent(sFlag + '_B0504_4') as TRadioButton).Checked then
         begin
            sEVP1State := '삽입부위 상태:열감';
         end
         else if (Self.FindComponent(sFlag + '_B0504_5') as TRadioButton).Checked then
         begin
            sEVP1State := '삽입부위 상태:압통';
         end
         else
         begin
            sEVP1State := '';
         end;
      end;

      // 말초정맥관 II
      begin
         // 말초정맥관 II 유무
         if      (Self.FindComponent(sFlag + '_B0505_1') as TRadioButton).Checked then
         begin
            sEndVeinPipe2 := '말초정맥관 II 유';
         end
         else if (Self.FindComponent(sFlag + '_B0505_2') as TRadioButton).Checked then
         begin
            sEndVeinPipe2 := '';
         end
         else
         begin
            sEndVeinPipe2 := '';
         end;

         // 삽입일시
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0506_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0506_2') as TEdit).Text <> '') then
         begin
            sEVP2EntDate :=  '삽입일시:'
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

         // 위치
         sEVP2Location := '';

         if (Self.FindComponent(sFlag + '_B0507_4') as TCheckBox).Checked then
         begin
            sEVP2Location := '좌하지' + ',' + sEVP2Location;
         end;

         if (Self.FindComponent(sFlag + '_B0507_3') as TCheckBox).Checked then
         begin
            sEVP2Location := '우하지' + ',' + sEVP2Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_2') as TCheckBox).Checked then
         begin
            sEVP2Location := '좌상지' + ',' + sEVP2Location;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_1') as TCheckBox).Checked then
         begin
            sEVP2Location := '우상지' + ',' + sEVP2Location;;
         end;

         if sEVP2Location <> '' then
         begin
            sEVP2Location := Copy(sEVP2Location, 1, Length(sEVP2Location)-1);
            sEVP2Location := '위치:' + sEVP2Location;
         end;

         // 삽입부위 상태
         if      (Self.FindComponent(sFlag + '_B0508_1') as TRadioButton).Checked then
         begin
            sEVP2State := '삽입부위 상태:정상';
         end
         else if (Self.FindComponent(sFlag + '_B0508_2') as TRadioButton).Checked then
         begin
            sEVP2State := '삽입부위 상태:부종';
         end
         else if (Self.FindComponent(sFlag + '_B0508_3') as TRadioButton).Checked then
         begin
            sEVP2State := '삽입부위 상태:발적';
         end
         else if (Self.FindComponent(sFlag + '_B0508_4') as TRadioButton).Checked then
         begin
            sEVP2State := '삽입부위 상태:열감';
         end
         else if (Self.FindComponent(sFlag + '_B0508_5') as TRadioButton).Checked then
         begin
            sEVP2State := '삽입부위 상태:압통';
         end
         else
         begin
            sEVP2State := '';
         end;
      end;

      // 중심정맥관 I
      begin
         // 중심정맥관 I 유무
         if      (Self.FindComponent(sFlag + '_B0601_1') as TRadioButton).Checked then
         begin
            sCentVeinPipe1 := '중심정맥관 I 유';
         end
         else if (Self.FindComponent(sFlag + '_B0601_2') as TRadioButton).Checked then
         begin
            sCentVeinPipe1 := '';
         end
         else
         begin
            sCentVeinPipe1 := '';
         end;

         // 삽입일시
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0602_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0602_2') as TEdit).Text <> '') then
         begin
            sCVP1EntDate :=  '삽입일시:'
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

         // 위치(종류)
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
            sCVP1Location := '위치(종류):' + sCVP1Location;
         end;

         // 드레싱 상태
         sCVP1Dressing := '';

         if (Self.FindComponent(sFlag + '_B0604_5') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '벗겨짐' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_4') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '습함' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_3') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '건조' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_2') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '거즈드레싱' + ',' + sCVP1Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0604_1') as TCheckBox).Checked then
         begin
            sCVP1Dressing := '필름드레싱' + ',' + sCVP1Dressing;
         end;

         if sCVP1Dressing <> '' then
         begin
            sCVP1Dressing := Copy(sCVP1Dressing, 1, Length(sCVP1Dressing)-1);
            sCVP1Dressing := '드레싱 상태:' + sCVP1Dressing;
         end;

         // 삽입부위 상태
         sCVP1State := '';

         if (Self.FindComponent(sFlag + '_B0605_4') as TCheckBox).Checked then
         begin
            sCVP1State := '삼출물' + ',' + sCVP1State;
         end;

         if (Self.FindComponent(sFlag + '_B0605_3') as TCheckBox).Checked then
         begin
            sCVP1State := '발적' + ',' + sCVP1State;
         end;

         if (Self.FindComponent(sFlag + '_B0605_2') as TCheckBox).Checked then
         begin
            sCVP1State := '부종' + ',' + sCVP1State;
         end;

         if (Self.FindComponent(sFlag + '_B0605_1') as TCheckBox).Checked then
         begin
            sCVP1State := '정상' + ',' + sCVP1State;
         end;

         if sCVP1State <> '' then
         begin
            sCVP1State := Copy(sCVP1State, 1, Length(sCVP1State)-1);
            sCVP1State := '삽입부위 상태:' + sCVP1State;
         end;

         // 드레싱 교환
         if      (Self.FindComponent(sFlag + '_B0606_1') as TRadioButton).Checked then
         begin
            sCVP1DresChnge :=  '드레싱 교환:예'
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                             + ')'
                             ;
         end
         else if (Self.FindComponent(sFlag + '_B0606_2') as TRadioButton).Checked then
         begin
            sCVP1DresChnge :=  '드레싱 교환:아니오'
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

      // 중심정맥관 II
      begin
         // 중심정맥관 II 유무
         if      (Self.FindComponent(sFlag + '_B0607_1') as TRadioButton).Checked then
         begin
            sCentVeinPipe2 := '중심정맥관 II 유';
         end
         else if (Self.FindComponent(sFlag + '_B0607_2') as TRadioButton).Checked then
         begin
            sCentVeinPipe2 := '';
         end
         else
         begin
            sCentVeinPipe2 := '';
         end;

         // 삽입일시
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0608_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0608_2') as TEdit).Text <> '') then
         begin
            sCVP2EntDate :=  '삽입일시:'
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

         // 위치(종류)
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
            sCVP2Location := '위치(종류):' + sCVP2Location;
         end;

         // 드레싱 상태
         sCVP2Dressing := '';

         if (Self.FindComponent(sFlag + '_B0610_5') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '벗겨짐' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_4') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '습함' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_3') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '건조' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_2') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '거즈드레싱' + ',' + sCVP2Dressing;
         end;

         if (Self.FindComponent(sFlag + '_B0610_1') as TCheckBox).Checked then
         begin
            sCVP2Dressing := '필름드레싱' + ',' + sCVP2Dressing;
         end;

         if sCVP2Dressing <> '' then
         begin
            sCVP2Dressing := Copy(sCVP2Dressing, 1, Length(sCVP2Dressing)-1);
            sCVP2Dressing := '드레싱 상태:' + sCVP2Dressing;
         end;

         // 삽입부위 상태
         sCVP2State := '';

         if (Self.FindComponent(sFlag + '_B0611_4') as TCheckBox).Checked then
         begin
            sCVP2State := '삼출물' + ',' + sCVP2State;
         end;

         if (Self.FindComponent(sFlag + '_B0611_3') as TCheckBox).Checked then
         begin
            sCVP2State := '발적' + ',' + sCVP2State;
         end;

         if (Self.FindComponent(sFlag + '_B0611_2') as TCheckBox).Checked then
         begin
            sCVP2State := '부종' + ',' + sCVP2State;
         end;

         if (Self.FindComponent(sFlag + '_B0611_1') as TCheckBox).Checked then
         begin
            sCVP2State := '정상' + ',' + sCVP2State;
         end;

         if sCVP2State <> '' then
         begin
            sCVP2State := Copy(sCVP2State, 1, Length(sCVP2State)-1);
            sCVP2State := '삽입부위 상태:' + sCVP2State;
         end;

         // 드레싱 교환
         if      (Self.FindComponent(sFlag + '_B0612_1') as TRadioButton).Checked then
         begin
            sCVP2DresChnge :=  '드레싱 교환:예'
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0612_3') as TEdit).Text
                             + ')'
                             ;
         end
         else if (Self.FindComponent(sFlag + '_B0612_2') as TRadioButton).Checked then
         begin
            sCVP2DresChnge :=  '드레싱 교환:아니오'
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

      // 욕창예방관리
      begin
         // 욕창발생
         if      (Self.FindComponent(sFlag + '_B0701_1') as TRadioButton).Checked then
         begin
            sBedSoreYN :=  '욕창예방관리 욕창발생:유'
                         + '('
                         ;
            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + '입실시'
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
                            + '입실후'
                            ;
            end;

            sBedSoreYN :=  sBedSoreYN
                         + ')'
                         ;
         end
         else if (Self.FindComponent(sFlag + '_B0701_2') as TRadioButton).Checked then
         begin
            sBedSoreYN :=  '욕창예방관리 욕창발생:무'
                         + '('
                         ;
            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sBedSoreYN :=  sBedSoreYN
                            + '입실시'
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
                            + '입실후'
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

         // 위치
         if (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text <> '' then
         begin
            sBedLocation :=  '위치:'
                           + (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text
                           ;
         end;

         // 단계
         if (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text <> '' then
         begin
            sBedLevel :=  '단계:'
                        + (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text
                        ;
         end;

         // 크기
         if (Self.FindComponent(sFlag + '_C0701_5') as TEdit).Text <> '' then
         begin
            sBedSize :=  '크기:'
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

         // 욕창예방 관리활동 및 치료
         sBedCare := '';

         if (Self.FindComponent(sFlag + '_B0703_5') as TCheckBox).Checked then
         begin
            sBedCare :=  '기타'
                        + '('
                        + (Self.FindComponent(sFlag + '_B0703_5E') as TEdit).Text
                        + ')'
                        + ','
                        + sBedCare
                        ;
         end;

         if (Self.FindComponent(sFlag + '_B0703_4') as TCheckBox).Checked then
         begin
            sBedCare := '발뒤꿈치보호' + ',' + sBedCare;
         end;

         if (Self.FindComponent(sFlag + '_B0703_3') as TCheckBox).Checked then
         begin
            sBedCare := '습기, 미끄러짐 예방' + ',' + sBedCare;
         end;

         if (Self.FindComponent(sFlag + '_B0703_2') as TCheckBox).Checked then
         begin
            sBedCare := '공기침요' + ',' + sBedCare;
         end;

         if (Self.FindComponent(sFlag + '_B0703_1') as TCheckBox).Checked then
         begin
            sBedCare := '자세교환 2시간 이내' + ',' + sBedCare;
         end;

         if sBedCare <> '' then
         begin
            sBedCare := Copy(sBedCare, 1, Length(sBedCare)-1);
            sBedCare := '욕창예방 관리활동 및 치료:' + sBedCare;
         end;

         // WOCN consult
         if      (Self.FindComponent(sFlag + '_B0704_1') as TRadioButton).Checked then
         begin
            sWOCNConsult :=  'WOCN consult:유';
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
            sSoreDressing :=  'Sore dressing:유'
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

      // 낙상예방활동
      begin
         sFallHurt := '';

         if (Self.FindComponent(sFlag + '_B0801_4') as TCheckBox).Checked then
         begin
            sFallHurt := '낙상위험 스티커 부착' + ',' + sFallHurt;
         end;

         if (Self.FindComponent(sFlag + '_B0801_3') as TCheckBox).Checked then
         begin
            sFallHurt := '낙상주의표지판 부착' + ',' + sFallHurt;
         end;

         if (Self.FindComponent(sFlag + '_B0801_2') as TCheckBox).Checked then
         begin
            sFallHurt := '낙상예방교육' + ',' + sFallHurt;
         end;

         if (Self.FindComponent(sFlag + '_B0801_1') as TCheckBox).Checked then
         begin
            sFallHurt := '침상난간 올리기' + ',' + sFallHurt;
         end;

         if sFallHurt <> '' then
         begin
            sFallHurt := Copy(sFallHurt, 1, Length(sFallHurt)-1);
            sFallHurt := '낙상예방활동:' + sFallHurt;
         end;
      end;

      // 기질적 정신장애(섬망, 불면 등)
      begin
         if      (Self.FindComponent(sFlag + '_B0901_1') as TRadioButton).Checked then
         begin
            sMental := '기질적 정신장애(섬망, 불면 등):유';
         end
         else if (Self.FindComponent(sFlag + '_B0901_2') as TRadioButton).Checked then
         begin
            sMental := '기질적 정신장애(섬망, 불면 등):무';
         end
         else
         begin
            sMental := '';
         end;
      end;

      // 활동성 출혈
      begin
         if      (Self.FindComponent(sFlag + '_B1001_1') as TRadioButton).Checked then
         begin
            sActive := '활동성 출혈:유';
         end
         else if (Self.FindComponent(sFlag + '_B1001_2') as TRadioButton).Checked then
         begin
            sActive := '활동성 출혈:무';
         end
         else
         begin
            sActive := '';
         end;
      end;


      // 간호기록 전문 생성
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
                   +       sArtificialYN  // 유무
                   + ' ' + sETTube        // ET tube
                   + ' ' + sTracheostomy  // Tracheostomy
                   + ' ' + sLeakage       // LEAKAGE
                   ;
      if Trim(sSummary1) <> '' then sSummary1 := Trim(sSummary1) + #13#10
      else                          sSummary1 := '';

      sSummary2  :=        sSummary2
                   +       sMechanicalYN  // 유무
                   + ' ' + sAdaptDVT      // DVT 적용
                   + ' ' + sAdaptDate     // 적용일자
                   + ' ' + sPhysical30    // 신체거상 30˚
                   + ' ' + sTabooReason   // 금기사유
                   ;
      if Trim(sSummary2) <> '' then sSummary2 := Trim(sSummary2) + #13#10
      else                          sSummary2 := '';

      sSummary3  :=        sSummary3
                   +       sRelaxYN       // 유무
                   + ' ' + sRssScore      // RSS score
                   + ' ' + sRelaxDrug     // Drug
                   ;
      if Trim(sSummary3) <> '' then sSummary3 := Trim(sSummary3) + #13#10
      else                          sSummary3 := '';

      sSummary4  :=        sSummary4
                   +       sPainScore     // score
                   + ' ' + sPainPart      // 부위
                   + ' ' + sPainCond      // 양상
                   + ' ' + sPainTerm      // 기간
                   + ' ' + sPainFreq      // 빈도
                   + ' ' + sPainDrug      // Drug
                   ;
      if Trim(sSummary4) <> '' then sSummary4 := Trim(sSummary4) + #13#10
      else                          sSummary4 := '';

      sSummary5  :=        sSummary5
                   +       sEndVeinPipe1  // 유무
                   + ' ' + sEVP1EntDate   // 삽입일시
                   + ' ' + sEVP1Location  // 위치
                   + ' ' + sEVP1State     // 삽입부위 상태
                   ;
      if Trim(sSummary5) <> '' then sSummary5 := Trim(sSummary5) + #13#10
      else                          sSummary5 := '';

      sSummary6  :=        sSummary6
                   +       sEndVeinPipe2  // 유무
                   + ' ' + sEVP2EntDate   // 삽입일시
                   + ' ' + sEVP2Location  // 위치
                   + ' ' + sEVP2State     // 삽입부위 상태
                   ;
      if Trim(sSummary6) <> '' then sSummary6 := Trim(sSummary6) + #13#10
      else                          sSummary6 := '';

      sSummary7  :=        sSummary7
                   +       sCentVeinPipe1 // 유무
                   + ' ' + sCVP1EntDate   // 삽입일시
                   + ' ' + sCVP1Location  // 위치(종류)
                   + ' ' + sCVP1Dressing  // 드레싱 상태
                   + ' ' + sCVP1State     // 삽입부위 상태
                   + ' ' + sCVP1DresChnge // 드레싱 교환
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';

      sSummary8  :=        sSummary8
                   +       sCentVeinPipe2 // 유무
                   + ' ' + sCVP2EntDate   // 삽입일시
                   + ' ' + sCVP2Location  // 위치(종류)
                   + ' ' + sCVP2Dressing  // 드레싱 상태
                   + ' ' + sCVP2State     // 삽입부위 상태
                   + ' ' + sCVP2DresChnge // 드레싱 교환
                   ;
      if Trim(sSummary8) <> '' then sSummary8 := Trim(sSummary8) + #13#10
      else                          sSummary8 := '';

      sSummary9  :=        sSummary9
                   +       sBedSoreYN     // 유무
                   + ' ' + sBedLocation   // 위치
                   + ' ' + sBedLevel      // 단계
                   + ' ' + sBedSize       // 크기
                   + ' ' + sBradenScale   // Braden scale : score
                   + ' ' + sBedCare       // 욕창예방 관리활동 및 치료
                   + ' ' + sWOCNConsult   // WOCN consult
                   + ' ' + sSoreDressing  // Sore dressing
                   ;
      if Trim(sSummary9) <> '' then sSummary9 := Trim(sSummary9) + #13#10
      else                          sSummary9 := '';

      sSummary10 :=        sSummary10
                   +       sFallHurt      // 낙상예방활동
                   ;
      if Trim(sSummary10) <> '' then sSummary10 := Trim(sSummary10) + #13#10
      else                           sSummary10 := '';

      sSummary11 :=        sSummary11
                   +       sMental        // 유무
                   ;
      if Trim(sSummary11) <> '' then sSummary11 := Trim(sSummary11) + #13#10
      else                           sSummary11 := '';

      sSummary12 :=        sSummary12
                   +       sActive        // 유무
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
      jPatInfo.S['PATNO']        := FsPatNo;                   // 환자번호
      jPatInfo.S['PATNAME']      := FsPatName;

      jPatInfo.S['AGE']          := FsAge;
      jPatInfo.S['SEX']          := FsSex;
      jPatInfo.S['BIRTHYMD']     := FsBirthymd;

      jPatInfo.S['ADMDATE']      := FsAdmDate;                 // 입원일자
      jPatInfo.S['MEDTIME']      := FsMedTime;                 // 접수일자
      jPatInfo.S['MDRP_NO']      := FsAcptNo;                  // 접수번호
      jPatInfo.S['CODVCD']       := FsCodvCd;                  // 접수구분코드(외래:O, 입원:I, 응급:E)
      jPatInfo.S['RCRDDT']       := sTime;                     // 기록일시(YYYYMMDDHH24MI)
      jPatInfo.S['CARCCTN']      := sNrsRecord;                // 작성내용
      jPatInfo.S['DEPTCD']       := md_WkareaCd;               // 작성자부서
      jPatInfo.S['TMPRSAVEYN']   := 'N';                       //
      jPatInfo.S['CARCPRVCCD']   := 'IQ';                      // IA:ICU간호사정 IQ:ICU임상질지표
      jPatInfo.S['RECID']        := G_USERID;

      // 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
      if (Assigned(EMR_CallEmrNurseLinker) = True) then
      begin
         // 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
         EMR_CallEmrNurseLinker(aPacket);

         {
         if (aPacket.Response.B['RESULT'] = False) then
         begin
            ShowMessage('낙상 간호기록 전송 실패(CallEmrNurseLinker). 전산실에 문의하세요. ');
            Exit;
         end;
         }
      end
      else
      begin
         ShowMessage('EMR 동적 연동오류(CallEmrNurseLinker) 입니다. 전산실에 문의하시기 바랍니다.' );
         Exit;
      end;
   end;
end;

//------------------------------------------------------------------------------
// [서식변환 대상환자] 조회 Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2012.01.27
//------------------------------------------------------------------------------
// sType5, sType6 추가 -2015.05.27 smpark
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

      // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. Start
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := RowNo;     //결과값, 음수:에러, 0:건수없음, 양수: 정상
         pv_SComReport.RsltMsg  := GetTxMsg;  //결과 메시지
      end;
      // [EMR연계] 2016.04.12 홍창한 추가함(장은석). QRP 출력 로직 추가. End

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         iPats.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;


      // 조회건수 없음
      if RowNo = 0 then
      begin
         iPats.Free;
         Exit;
      end;



      //--------------------------------------------
      // 2. 자동서식변환(EMR) 대상환자 조회
      //   - 2012.01.26 LSH
      //--------------------------------------------
      begin

         ugd_EmrList.RowCount := RowNo + 1;


         with ugd_EmrList do
         begin
            for i := 0 to RowNo - 1 do
            begin
               Cells[0, i+1] := iPats.sPatNo[i];                  // 변환대상 환자번호
               Cells[1, i+1] := iPats.sAdmDate[i];                // 입원일자
               Cells[2, i+1] := ConvertSDate(iPats.sActDate[i]);  // 기록일자
            end;


            // 변환대상 환자 한 Row 씩 선택하며, EMR 출력.
            for i := 1 to RowCount - 1 do
            begin
               // 대상환자 마지막 출력일자 여부 @ 2012.10.31 LSH
               if i = RowCount -1 then
               begin
                  G_LastEmrDateYn := 'Y';
               end
               else
               begin
                  G_LastEmrDateYn := 'N';
               end;

               Row := i;

               // 기록일자 Set
               dtp_ChkDate.Date := StrToDateTime(Cells[2, i]);

               // 선택된 Row의 기록정보 조회
               bbt_OkClick(ugd_EmrList);

               // EMR 출력 진행
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
// [자동서식변환용] EMR 대상환자의 기록일자별 상세조회
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FV.bbt_OkClick(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // 일자별 임상질지표 내역 조회
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;



//------------------------------------------------------------------------------
// [Day 복사] Button onClick Event Handler
// - 이전 최종 간호사정 내역 복사
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_DCopyClick(Sender: TObject);
var
   iChoice : Integer;   // 선택 결과
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   // 1.1. 작성자 정보 입력 체크
   if LengthByte(Trim(ed_D_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Day) 복사', MB_OK + MB_ICONINFORMATION);
      ed_D_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_D_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Day) 복사', MB_OK + MB_ICONINFORMATION);
      med_D_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 복사 가능 여부 체크
   if sbt_DCopy.Tag = 1 then begin
      MessageBox(Self.Handle, '현재 Duty에 임상질지표 내역이 이미 존재 합니다. 전 평가를 복사 하실 수 없습니다.', '임상질지표(Day) 복사', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 복사 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('현재 Duty 이전 최종 임상질지표 내역을 현재 Duty 로 복사합니다.' + #13#10 + #13#10 + '계속 하시겠습니까?'),
                         '임상질지표(Day) 복사',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;




   //-----------------------------------------------------------------
   // 2. 복사
   //-----------------------------------------------------------------
   CopyLastQualCheckOfDuty(DT_DAY);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;


//------------------------------------------------------------------------------
// [Evening 복사] Button onClick Event Handler
// - 이전 최종 간호사정 내역 복사
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_ECopyClick(Sender: TObject);
var
   iChoice : Integer;   // 선택 결과
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   // 1.1. 작성자 정보 입력 체크
   if LengthByte(Trim(ed_E_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      ed_E_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_E_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      med_E_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 복사 가능 여부 체크
   if sbt_ECopy.Tag = 1 then begin
      MessageBox(Self.Handle, '현재 Duty에 임상질지표 내역이 이미 존재 합니다. 전 평가를 복사 하실 수 없습니다.', '임상질지표(Evening) 복사', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 복사 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('현재 Duty 이전 최종 임상질지표 내역을 현재 Duty 로 복사합니다.' + #13#10 + #13#10 + '계속 하시겠습니까?'),
                         '임상질지표(Evening) 복사',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;




   //-----------------------------------------------------------------
   // 2. 복사
   //-----------------------------------------------------------------
   CopyLastQualCheckOfDuty(DT_EVENING);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;



//------------------------------------------------------------------------------
// [Night 복사] Button onClick Event Handler
// - 이전 최종 간호사정 내역 복사
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FV.sbt_NCopyClick(Sender: TObject);
var
   iChoice : Integer;   // 선택 결과
begin
   //-----------------------------------------------------------------
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('SAVE', '', '', '', self.Name) = False then Exit;

   //-----------------------------------------------------------------
   // 1. Check
   //-----------------------------------------------------------------
   // 1.1. 작성자 정보 입력 체크
   if LengthByte(Trim(ed_N_ChkNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      ed_N_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_N_ChkTime.Text) = ':' then begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      med_N_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 복사 가능 여부 체크
   if sbt_NCopy.Tag = 1 then begin
      MessageBox(Self.Handle, '현재 Duty에 임상질지표 내역이 이미 존재 합니다. 전 평가를 복사 하실 수 없습니다.', '임상질지표(Night) 복사', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 복사 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('현재 Duty 이전 최종 임상질지표 내역을 현재 Duty 로 복사합니다.' + #13#10 + #13#10 + '계속 하시겠습니까?'),
                         '임상질지표(Night) 복사',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;



   //-----------------------------------------------------------------
   // 2. 복사
   //-----------------------------------------------------------------
   CopyLastQualCheckOfDuty(DT_NIGHT);


   //-----------------------------------------------------------------
   // 3. Refresh
   //-----------------------------------------------------------------
   LoadQualityCheck;

end;






//------------------------------------------------------------------------------
// Duty별 최종 임상질지표 내역 복사
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
function TMDN110FV.CopyLastQualCheckOfDuty(AsDuty: String): Boolean;
var
   nrsChk  : HmdIcqcit; // Duty별 임상질지표 관리
   iResult : Integer;   // the result of transaction(1:Success, 0:Fail)

   { parameters }
   QcInfo    : HmdIcqcit;  // 임상질지표 정보
   AsSetType : String;     // 기록지 구분

begin

   //-----------------------------------------------------------------
   // 1. Initialize
   //-----------------------------------------------------------------



   //-----------------------------------------------------------------
   // 2. 해당 Duty 이전 최종 간호사정 평가 내역 복사
   //-----------------------------------------------------------------
   Screen.Cursor := crHourGlass;

   try
      // Create Object
      nrsChk := HmdIcqcit.Create;



      //----------------------------------------------
      // 2.1. Set Parameter Value
      //----------------------------------------------
      // 기록지 구분
      AsSetType := 'ICQCK';

      // 임상질지표 정보
      QcInfo := HmdIcqcit.Create;


      with QcInfo do
      begin
         sPatNo   := FsPatNo;                                        // 환자번호
         sAdmDate := FsAdmDate;                                      // 입원일자
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);   // 사정 일자
         sDuty    := AsDuty;                                         // Duty
         sChkTime := Trim((GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime' )  as TMaskEdit).Text);  // 사정 시간
         sChkNurs := Trim((GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkNursId') as TEdit).Text);      // 사정 간호사
         sChkDept := Trim((GetComp(Self.Name, 'ed_'  + AsDuty + '_ChkDept'  ) as TEdit).Text);      // 사정 부서
         sWardNo  := FPatient.sWardNo[0];                            // 병동
         sRoomNo  := FPatient.sRoomNo[0];                            // 병실
         sEditId  := md_UserId;                                      // 수정자ID
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

         stb_Message.Panels[0].Text := '전 평가 복사가 완료되지 않았습니다.';
         Exit;
      end;


      // Show Message
      stb_Message.Panels[0].Text := '전 평가 복사가 정상적으로 완료되었습니다';

   finally
      Screen.Cursor := crDefault;

      QcInfo.Free;
      nrsChk.Free;
   end;

end;




//------------------------------------------------------------------------------
// [임상질지표] 통증사정 평가후 결과 callback function
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

   strType     := '5';                                               // 조회구분(5: 해당일자 ICU 통증평가 조회)
   strPatno    := Trim(lb_Patno.Caption);                            // 환자번호
   strAdmdate  := DelChar(FsAdmDate,'-');                            // 입원일자
   strRecdate  := FormatDateTime('yyyymmdd',dtp_ChkDate.date);       // 평가일자
   strRecId    := md_UserId;                                         // 해당 Duty 통증평가 긴호사ID (평가자 본인만 결과 조회가능)


   Screen.Cursor := crHourglass;


   try
      mdPaindt := HmdPaindt.Create;


      // 임상질지표 통증평가 내역 조회
      RowNo    := mdPaindt.OutputVsValue(strType, strPatno, strAdmdate, strRecdate, strRecId);


      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdpaindt.Free;

         ShowMessage(GetTxMsg);

         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdpaindt.Free;

         stb_Message.Panels[0].Text := '조회된 통증평가내역이 없습니다.';

         Exit;
      end;




      // 부위
      TEdit(GetComp(Self.Name, FsSelDuty + '_C0401_1')).Text     := mdpaindt.sArea[0];


      // 점수(강도)
      if (mdpaindt.sPoint[0] <> '') then
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := mdpaindt.sPoint[0]
      else
         TEdit(GetComp(Self.Name, FsSelDuty + '_B0401_4E')).Text := '';


      // 양상
      if (mdpaindt.sModality[0] = '둔화') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_1')).Checked := True
      else if (mdpaindt.sModality[0] = '쑤심') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_2')).Checked := True
      else if (mdpaindt.sModality[0] = '퍼짐') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_3')).Checked := True
      else if (mdpaindt.sModality[0] = '예리함') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_4')).Checked := True
      else if (mdpaindt.sModality[0] = '찌르는듯함') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_5')).Checked := True
      else
      begin
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0402_6')).Checked := True;
         TEdit(GetComp(Self.Name, FsSelDuty + '_C0402_6E')).Text          := mdpaindt.sModality[0];
      end;



      // 기간
      if (mdpaindt.sTph[0] <> '') then
         TEdit(GetComp(Self.Name, FsSelDuty + '_C0403_1')).Text := mdpaindt.sTph[0]
      else
         TEdit(GetComp(Self.Name, FsSelDuty + '_C0403_1')).Text := '';



      // 빈도
      if (mdpaindt.sFreq[0] = '간헐적') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0404_1')).Checked := True
      else if (mdpaindt.sFreq[0] = '지속적') then
         TRadioButton(GetComp(Self.Name, FsSelDuty + '_C0404_2')).Checked := True;


      // 약물중재(Drugs)
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
// [Day - 진정상태 평가 유/무] @ 2012.07.12 LSH
//  - CCU 김연아 요청
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
// [Evening - 진정상태 평가 유/무] @ 2012.07.12 LSH
//  - CCU 김연아 요청
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
// [Night - 진정상태 평가 유/무] @ 2012.07.12 LSH
//  - CCU 김연아 요청
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

// 9,10 항목 추가 -2015.03.05 smpark
procedure TMDN110FV.Set_AA_20150306;
begin
   // --------------------------------------------------------------
   // [안암] 중환자실 퇴실 예비 판정 기준 관련 항목 추가
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

// [EMR연계] 2016.04.12 홍창한 추가함(장은석).
procedure TMDN110FV.bt_printClick(Sender: TObject);
var
   rc         : Integer;
   wk_o_tpsvc : TTpSvc;
   sPageText  : String;
begin
   // [EMR연계] 2016-04-04 장은석 , 입원환자 기본정보 Load 추가
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
