{===============================================================================
   Program ID    : MDN110UX
   Program Name  : NICU 간호기록지 - 임상질지표
   Program Desc. : ICU 통합 간호기록지 임상질지표와 같은 용도의 NICU용 sheet

   Author : Lee, Se-Ha
   Date   : 2011.12.08
===============================================================================}
unit MDN110UX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, ExtCtrls, Buttons, ComCtrls, MDCLASS1, AdvPanel, Grids,
  UltraGrid, Bianco_Panel, Printers, QRPrntr, QuickRpt, Qrctrls, Variants,
  // [EMR연계] 2016.04.12 홍창한 추가함(장은석). SComReport 연결을 위한 추가
  SComFunc,
  // 2016-07-23 장은석 , LoadEMRComPack을 HisCom의 LoadEMRFunc.pas로 이관
  LoadEMRFunc,
  // [EMR연계] 2016-07-13 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
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
    FsPatNo   : string;    // 환자번호
    FsAdmDate : String;    // 입원일자
    FsCurDuty : String;    // Current Duty
    FPatient  : HmdPatinf; // 환자정보
    FSysDate  : TDateTime; // current system date
    FIsRoot   : Boolean;   // root authority
    FsSelDuty : String;    // 현재 Editing하기위해 선택한 Duty

    // [EMR연계] 2016.04.12 홍창한 추가함(장은석). EMR연동 변수 선언
    pv_SComReport  : HSComReport;
    pv_Patsect     : String;
    pv_Patno       : String;
    pv_Meddate     : String;
    pv_Reptid      : String;
    // 2016-06-07 장은석 , 입원기록지 Fromdate - Todate 조건 추가 START
    pv_Fromdate    : String;
    pv_Todate      : String;
    // 2016-06-07 장은석 , 입원기록지 Fromdate - Todate 조건 추가 END
    // [EMR연계] 2016-07-13 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
    FsPatName      : String;
    FsAge          : String;
    FsSex          : String;
    FsBirthymd     : String;
    FsAcptNo       : String;
    FsCodvCd       : String;
    FsMedTime      : String;

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
    // 해당 기록일자별 환아 Age 계산(일령)위한 수정 @ 2012.04.13 LSH
    procedure LoadPatientInfo(in_ChkDate : TDate);

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

    // 약 처방내역 조회 Call Procedure
    procedure SelOrderList;

    // Grid 초기화 (Title Row 제외)
    procedure GridClear(in_Grid : TUltraGrid);

    // NICU 임상질지표 서식변환대상 조회, 2012.01.31 LSH
    // sType5, sType6 추가 -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // Duty별 최종 임상질지표 내역 복사, 2012.03.19 LSH
    function CopyLastQualCheckOfDuty(AsDuty: String): Boolean;


    //--------------------------------------------------------------------------

  public
    { Public declarations }
    P_DschDate    : String;   // [의무기록 자동서식스캔] 퇴원일자
    P_PreviewYn   : String;   // [의무기록 자동서식스캔] 미리보기
    P_EMRPrintYn  : String;   // [의무기록 자동서식스캔] 출력여부
    P_EMRTitle    : String;   // [의무기록 자동서식스캔] Report Title
    P_PatFlag     : String;   // [병동기록지 출력] 호출시 넘겨준 환자위치
    P_RgtDate     : String;   // [병동기록지 출력] 호출시 넘겨준 기록일자
    G_EmrYn       : String;   // [의무기록 자동서식스캔] 출력유효성 여부 (Y/N)
    G_EmrPrtIdx   : Integer;  // [의무기록 자동서식스캔] 출력Index


  published
    property propPatNo      : String read FsPatNo      write FsPatNo;
    property propAdmDate    : String read FsAdmDate    write FsAdmDate;
    property propDschDate   : String read P_DschDate   write P_DschDate  ;    // 의무기록 자동서식스캔 위한 퇴원일자
    property propPreviewYn  : String read P_PreviewYn  write P_PreviewYn ;    // 의무기록 자동서식스캔 위한 미리보기
    property propEMRPrintYn : String read P_EMRPrintYn write P_EMRPrintYn;    // 의무기록 자동서식스캔 여부
    property propEMRTitle   : String read P_EMRTitle   write P_EMRTitle  ;    // 의무기록 자동서식스캔 Report Title
    property propPatFlag    : String read P_PatFlag    write P_PatFlag   ;    // 호출옵션 ('D': 병동기록지 출력, 'MDP110F2': 의사조회)
    property propRgtDate    : String read P_RgtDate    write P_RgtDate   ;    // 퇴원환자 병동기록지 출력위한 일자

    // [EMR연계] 2016.04.12 홍창한 추가함(장은석). EMR연동 변수 선언
    property prop_SComReport  : HSComReport write pv_SComReport;
    property prop_Patsect     : String      write pv_Patsect   ;
    property prop_Patno       : String      write pv_Patno     ;
    property prop_Meddate     : String      write pv_Meddate   ;
    property prop_Reptid      : String      write pv_Reptid    ;
    // 2016-06-07 장은석 , 입원기록지 Fromdate - Todate 조건 추가 START
    property prop_Fromdate    : String      write pv_Fromdate  ;
    property prop_Todate      : String      write pv_Todate    ;
    // 2016-06-07 장은석 , 입원기록지 Fromdate - Todate 조건 추가 END
    // [EMR연계] 2016-07-13 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
    property propPatName      : String read FsPatName    write FsPatName;
    property propAge          : String read FsAge        write FsAge      ;
    property propSex          : String read FsSex        write FsSex      ;
    property propBirthymd     : String read FsBirthymd   write FsBirthymd ;
    property propAcptNo       : String read FsAcptNo     write FsAcptNo   ;
    property propCodvCd       : String read FsCodvCd     write FsCodvCd   ;
    property propMedTime      : String read FsMedTime    write FsMedTime  ;

    // NICU 임상질지표 의무기록 자동서식스캔
    procedure AutoScanPrint;

    // 욕창위험도평가(MDN470F1)에서 callback시 참조
    procedure AssignBdScore(Sender: TObject);

    // 중환자 통증평가(MDN920F2)에서 callback시 참조
//    procedure AssignPainScore(Sender: TObject);

    // NICU 임상질지표 자동스캔 서식출력 New-ver, 2012.01.31 LSH
    procedure AutoScanPrint_New;

    // 통증사정평가(MDN920F1)에서 callback시 참조 @ 2012.06.13 LSH
    procedure AssignPainRslt(Sender: TObject);

  end;




var
  MDN110FX: TMDN110FX;





implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDN110UU, MDN110UV_P01,
   MDN110UX_P01,
   // [EMR연계] 2016.04.12 홍창한 추가함(장은석). TpSvc 추가
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
// [종료] Button onClick Event Handler
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
   // [EMR연계] 2016-07-13 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
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
// 초기화
//------------------------------------------------------------------------------
procedure TMDN110FX.Initialize;
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
   // [병동 기록지 출력/환자기록 통합조회]시, Invisible SetFocus 불가
   if not ((P_PatFlag = 'W') or
           (P_PatFlag = 'D')) then
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




   //---------------------------------------------------------------
   // 2. Set Default Value
   //---------------------------------------------------------------
   // 2.1. load Patient Information

   // 해당 기록일자별 환아 Age 계산(일령)위한 수정 @ 2012.04.13 LSH
   LoadPatientInfo(Now);



{
   // 2.1.1. Set Patient information
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // 환자번호
      lb_PatName.Caption := sPatName[0];                       // 환자명
      lb_Sex.Caption     := sSex    [0];                       // 성별
      lb_Age.Caption     := Trim(Calc_Age(Now, sBirtDate[0])); // 현 시점 나이 계산(컨펌 by 이진희 수선생님, 2011.12.22 LSH)
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // 병동-병실
   end;
}



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
//------------------------------------------------------------------------------
procedure TMDN110FX.FormShow(Sender: TObject);
begin

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
// param : AdtSysDate - Current System Date and Time
//------------------------------------------------------------------------------
procedure TMDN110FX.SetAssessDateAndCurrentDuty(AdtSysDateTime: TDateTime);
var
   sCurTime : String;      // 현재 시간

begin

   // get current time
   sCurTime := FormatDateTime('HHNNSS', AdtSysDateTime);


   // get assessment date and duty
   if (StrToFloat(sCurTime) >= StrToFloat('000000')) and (StrToFloat(sCurTime) < StrToFloat('070000')) then
   begin
      // Night of the day before (00:00 ~ 06:59)
      dtp_ChkDate.Date := AdtSysDateTime - 1;
      FsCurDuty        := DT_NIGHT;

      // Duty 표시
      DisplayCurrentDuty(DT_NIGHT);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('070000')) and (StrToFloat(sCurTime) < StrToFloat('150000')) then
   begin
      // Day (07:00 ~ 14:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_DAY;

      // Duty 표시
      DisplayCurrentDuty(DT_DAY);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('150000')) and (StrToFloat(sCurTime) < StrToFloat('220000')) then
   begin
      // Evening (15:00 ~ 21:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_EVENING;

      // Duty 표시
      DisplayCurrentDuty(DT_EVENING);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('220000')) and (StrToFloat(sCurTime) <= StrToFloat('235959')) then
   begin
      // Night (22:00 ~ 23:59)
      dtp_ChkDate.Date := AdtSysDateTime;
      FsCurDuty        := DT_NIGHT;

      // Duty 표시
      DisplayCurrentDuty(DT_NIGHT);
   end;


   //-----------------------------------------------------------
   // [병동 기록지 출력/환자기록 통합조회]시 기록일자 세팅.
   //-----------------------------------------------------------
   if (P_RgtDate <> '') then
   begin
      dtp_ChkDate.Date := StrToDate(P_RgtDate);

      // 기록일자 변경시, P_RgtDate로 조회하는 부분 Skip위해 Clear, 2012.03.07 LSH
      P_PatFlag := '';
   end;


end;



//------------------------------------------------------------------------------
// 현재 Duty 표시
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
// 각 항목 값 제거
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FX.ClearValueOf(AsDuty: String);
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

   (GetComp(Self.Name, 'sbt_' + AsDuty + 'Delete') as TSpeedButton).Tag := 0;       // 삭제


   //--------------------------------------------------------------
   // 2. 사정 정보
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
// NICU 환자정보 조회
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadPatientInfo(in_ChkDate : TDate);
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

      // 2016-06-07 장은석 , QRP 생성 오류 유효성 CHECK 로직 추가 START
      if pv_SComReport <> nil then
      begin
         pv_SComReport.RsltCode := iRowCnt;   //결과값, 음수:에러, 0:건수없음, 양수: 정상
         pv_SComReport.RsltMsg  := GetTxMsg;  //결과 메시지
      end;
      // 2016-06-07 장은석 , QRP 생성 오류 유효성 CHECK 로직 추가 END

      // Show Error Message
      if iRowCnt < 0 then
      begin
         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '환자정보 Loading에 실패하였습니다.';
         Exit;
      end;



      //-----------------------------------------------
      // 2.3. Set Data
      //-----------------------------------------------
      FPatient := patient;


      // 2.1.1. Set Patient information
      with FPatient do
      begin
         lb_PatNo.Caption   := FsPatNo;                                  // 환자번호
         lb_PatName.Caption := sPatName[0];                              // 환자명
         lb_Sex.Caption     := sSex    [0];                              // 성별
         lb_Age.Caption     := Trim(Calc_Age(in_ChkDate, sBirtDate[0])); // 현 시점 나이 계산(컨펌 by 이진희 수선생님, 2011.12.22 LSH)
         lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];            // 병동-병실

         // 생년월일, 과, 병동, 병실 정보 추가 -2015.08.03 smpark
         lb_Deptnm.Caption   := sDeptNm[0];
         lb_Birtdate.Caption := ConvertSDate(sBirtDate[0]);
      end;




      // Show Message
      stb_Message.Panels[0].Text := '환자정보 Loading이 완료되었습니다.';


   finally
      Screen.Cursor := crDefault;
   end;

end;




//------------------------------------------------------------------------------
// 임상 질 지표 기록 내역 조회
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
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadQualityCheckInfo;
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


      // [병동 기록지 출력]시 세팅된 기록일자.
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
         // Free 추가
         QcInfo.Free;

         ShowErrMsg;
         Exit;
      end
      else if iRowCnt = 0 then
      begin
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
      end;



      //---------------------------------------------
      // 2.3. Display Data
      //---------------------------------------------
      with QcInfo do
      begin
         for i := 0 to iRowCnt - 1 do
         begin
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursName') as TEdit).Text     := sChkNursNm[i]; // 사정 간호사 명
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkNursId'  ) as TEdit).Text     := sChkNurs  [i]; // 사정 간호사 ID
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_ChkDept'    ) as TEdit).Text     := sChkDept  [i]; // 사정 부서
            (GetComp(Self.Name, 'med_' + String(sDuty[i]) + '_ChkTime'    ) as TMaskEdit).Text := sChkTime  [i]; // 사정 시간

            // 삭제 가능 여부 Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Delete') as TSpeedButton).Tag := 1;                // 1:삭제 가능(삭제할 데이터 있음)
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
      (P_PreViewYn <> 'Y') then
   begin
      if Trim((GetComp(Self.Name, 'ed_'  + FsCurDuty + '_ChkNursId'  ) as TEdit).Text) = '' then
      begin
         // get current system date
         GetSysDate(systime);

         // 2013.03.18 khs 현재 Duty일인 경우만 로그인자 정보 및 시간을 표현해주도록 수정
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
//------------------------------------------------------------------------------
procedure TMDN110FX.LoadQualityCheckResult;
var
   check   : HmdIcuinf; // 간호사정 내역 관리
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
      AsSetType := 'ICNNQ';
      AsPatNo   := FsPatNo;
      AsAdmDate := DelChar(FsAdmDate,'-');


      // [병동 기록지 출력]시 세팅된 기록일자.
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
         // Free 추가 - 여기서 free 하면, 자동서식변환시 Access Violation 에러 발생함, 2012.1.2 LSH
         //         check.Free;

         ShowErrMsg;

         // 자동서식변환 출력 flag
         G_EmrYn := 'N';

         Exit;
      end
      else if iRowCnt = 0 then
      begin
         // Free 추가 - 여기서 free 하면, 자동서식변환시 Access Violation 에러 발생함, 2012.1.2 LSH
         //         check.Free;

         // 자동서식변환 출력 flag
         G_EmrYn := 'N';

         Exit;
      end;



      // 자동서식변환 출력 flag
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
                             'NICU 임상질지표 항목조회중 예외처리',
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
// param : AsDuty - Duty(D/E/N)
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FX.SaveQualityCheckOfDuty(AsDuty: string): Boolean;
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




      with QcInfo do
      begin
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
      for i := 0 to Self.ComponentCount - 1 do
      begin
         oCurComp     := Self.Components[i];
         sCurCompName := oCurComp.Name;



         // 해당 Duty의 내용만 저장
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


                  // Value Object에 추가
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


                  // Value Object에 추가
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

                  // Value Object에 추가
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

                  // Value Object에 추가
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
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_DSaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_D_ChkNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Day) 저장', MB_OK + MB_ICONINFORMATION);
      ed_D_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_D_ChkTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Day) 저장', MB_OK + MB_ICONINFORMATION);
      med_D_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 저장 데이터 여부 확인
   if IsNoData(DT_DAY) then
   begin
      MessageBox(Self.Handle, '저장할 내용이 없습니다.', '임상질지표(Day) 저장', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 저장 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('【' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '】일자 Day Duty 임상질지표 내역을 저장 하시겠습니까?'),
                         '임상질지표(Day) 저장',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;



   //---------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 저장
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_DAY);


end;




//------------------------------------------------------------------------------
// 저장 내역 존재 여부 체크
//
// param : AsDuty - Duty
//------------------------------------------------------------------------------
function TMDN110FX.IsNoData(AsDuty: string): Boolean;
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
   for i := 0 to Self.ComponentCount - 1 do
   begin
      oCurComp     := Self.Components[i];
      sCurCompName := oCurComp.Name;

      // 해당 Duty의 내용만 저장
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
// [Evening 저장] Button onClick Event Handler
// - Evening Duty 임상 질지표 기록 저장
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_ESaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_E_ChkNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      ed_E_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_E_ChkTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      med_E_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 저장 데이터 여부 확인
   if IsNoData(DT_EVENING) then
   begin
      MessageBox(Self.Handle, '저장할 내용이 없습니다.', '임상질지표(Evening) 저장', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 저장 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('【' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '】일자 Evening Duty 임상질지표 내역을 저장 하시겠습니까?'),
                         '임상질지표(Evening) 저장',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;


   //---------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 저장
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_EVENING);


end;



//------------------------------------------------------------------------------
// [Night 저장] Button onClick Event Handler
// - Night Duty 임상 질지표 기록 저장
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NSaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_N_ChkNursId.Text)) = 0 then
   begin
      MessageBox(Self.Handle, '작성 간호사를 입력하세요.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      ed_N_ChkNursName.SetFocus;
      Exit;
   end;

   // 1.2. 작성자 시간 체크
   if Trim(med_N_ChkTime.Text) = ':' then
   begin
      MessageBox(Self.Handle, '작성 시간을 입력하세요.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      med_N_ChkTime.SetFocus;
      Exit;
   end;

   // 1.3. 저장 데이터 여부 확인
   if IsNoData(DT_NIGHT) then
   begin
      MessageBox(Self.Handle, '저장할 내용이 없습니다.', '임상질지표(Night) 저장', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. 최종 저장 여부 확인
   iChoice := MessageBox(Self.Handle,
                         PChar('【' + FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date) + '】일자 Night Duty 임상질지표 내역을 저장 하시겠습니까?'),
                         '임상질지표(Night) 저장',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then
      Exit;


   //---------------------------------------------------------------------
   // 2. 임상 질 지표 기록 내역 저장
   //---------------------------------------------------------------------
   SaveQualityCheckOfDuty(DT_NIGHT);


end;




//------------------------------------------------------------------------------
// [Day 간호사] Edit onKeyDown Event Handler
// - 간호사 검색
//------------------------------------------------------------------------------
procedure TMDN110FX.ed_D_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_D_ChkNursName, ed_D_ChkNursId, ed_D_ChkNursName, ed_D_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Evening 간호사] Edit onKeyDown Event Handler
// - 간호사 검색
//------------------------------------------------------------------------------
procedure TMDN110FX.ed_E_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_E_ChkNursName, ed_E_ChkNursId, ed_E_ChkNursName, ed_E_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Night 간호사] Edit onKeyDown Event Handler
// - 간호사 검색
//------------------------------------------------------------------------------
procedure TMDN110FX.ed_N_ChkNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
      SearchUser('N', ed_N_ChkNursName, ed_N_ChkNursId, ed_N_ChkNursName, ed_N_ChkDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [이전일자] Button onClick Event Handler
// - 이전 일자 임상 질 지표 기록 내용 조회
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_PreviousClick(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Set Check Date
   //---------------------------------------------------------------
   dtp_ChkDate.Date := dtp_ChkDate.Date - 1;


   //----------------------------------------------------------------
   // 2. 환아 나이(일령) Refresh by 이진희 @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);


   //---------------------------------------------------------------
   // 3. 임상 질 지표 기록 내용 조회
   //---------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 4. 작업 버튼 권한 설정
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;



//------------------------------------------------------------------------------
// [다음일자] Button onClick Event Handler
// - 다음 일자 임상 질 지표 기록 내용 조회
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NextClick(Sender: TObject);
begin

   //---------------------------------------------------------------
   // 1. Set Check Date
   //---------------------------------------------------------------
   dtp_ChkDate.Date := dtp_ChkDate.Date + 1;


   //----------------------------------------------------------------
   // 2. 환아 나이(일령) Refresh by 이진희 @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);


   //---------------------------------------------------------------
   // 3. 임상 질 지표 기록 내용 조회
   //---------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 4. 작업 버튼 권한 설정
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty별 작업버튼 상태 설정
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FX.SetControlStatusOfDuty(AsDuty: string);
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
   if (Trunc(FSysDate) = Trunc(dtp_ChkDate.Date)) then
   begin
      DisplayCurrentDuty(AsDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;




//------------------------------------------------------------------------------
// [Check 일자] DateTimePicker onCloseUp Event Handler
// - 선택일자 임상 질 지표 기록 조회
//------------------------------------------------------------------------------
procedure TMDN110FX.dtp_ChkDateCloseUp(Sender: TObject);
begin

   //----------------------------------------------------------------
   // 1. 환아 나이(일령) Refresh by 이진희 @ 2012.04.13 LSH
   //----------------------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);


   //-----------------------------------------------------------------
   // 2. 임상 질 지표 기록 조회
   //-----------------------------------------------------------------
   LoadQualityCheck;


   //-----------------------------------------------------------------
   // 3. 작업 버튼 권한 설정
   //-----------------------------------------------------------------
   SetControlStatusOfDuty(FsCurDuty);

end;




//------------------------------------------------------------------------------
// Duty별 임상 질 지표 기록 내역 삭제
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FX.DeleteQualityCheckOfDuty(AsDuty: String): Boolean;
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
      AsSetType := 'ICNNQ';
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
      stb_Message.Panels[0].Text := '간호사정 내역 [삭제] 처리가 정상적으로 완료되었습니다.';

   finally
      Screen.Cursor := crDefault;

      AQcInfo.Free;
      qltChk.Free;
   end;

end;




//------------------------------------------------------------------------------
// [Day 삭제] Button onClick Event Handler
// - Day Duty 임상질지표 기록 삭제
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_DDeleteClick(Sender: TObject);
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

   if iChoice = IDNO then
      Exit;




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
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_EDeleteClick(Sender: TObject);
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
   if sbt_EDelete.Tag = 0 then
   begin
      MessageBox(Self.Handle, '삭제할 내용이 없습니다.', '임상질지표(Evening) 삭제', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. 최종 삭제 여부 확인
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('【' + sChkDate + '】일자 Evening Duty 임상질지표 기록을 삭제합니다.' + #13#10 + #13#10 + '삭제 후 복구가 불가합니다.  삭제 하시겠습니까?'),
                         '임상질지표(Evening) 삭제',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;




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
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_NDeleteClick(Sender: TObject);
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
   if sbt_EDelete.Tag = 0 then
   begin
      MessageBox(Self.Handle, '삭제할 내용이 없습니다.', '임상질지표(Night) 삭제', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. 최종 삭제 여부 확인
   sChkDate := FormatDateTime('YYYY-MM-DD', dtp_ChkDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('【' + sChkDate + '】일자 Night Duty 임상질지표 기록을 삭제합니다.' + #13#10 + #13#10 + '삭제 후 복구가 불가합니다.  삭제 하시겠습니까?'),
                         '임상질지표(Night) 삭제',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then
      Exit;




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
//------------------------------------------------------------------------------
procedure TMDN110FX.SetAuthority;
begin
   FIsRoot := (md_JikGup = 'N51') or (md_JikGup = 'N52') or (md_UserId = '99995');
end;



//------------------------------------------------------------------------------
// [Day - 인공기도] 항목 선택
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
// [Day - ET Tube] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0102_1Click(Sender: TObject);
begin
   pn_DDetail02.Enabled := D_B0102_1.Checked;

   if not pn_DDetail02.Enabled then
   begin
      D_C0102_1.Text := '';   // #
      D_C0102_2.Text := '';   // 삽관일자
      D_C0102_3.Text := '';   // 내경
      D_C0102_4.Text := '';   // 깊이
   end;

end;





//------------------------------------------------------------------------------
// [Day - Tracheostomy] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0103_1Click(Sender: TObject);
begin

   pn_DDetail03.Enabled := D_B0103_1.Checked;

   if not pn_DDetail03.Enabled then
   begin
      D_C0103_1.Text := '';   // #
      D_C0103_2.Text := '';   // 수술일자
      D_C0103_3.Text := '';   // 내경
   end;

end;





//------------------------------------------------------------------------------
// [Day - 기계환기] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0201_1Click(Sender: TObject);
begin

   pn_DDetail04.Enabled := D_B0201_1.Checked;

   if not pn_DDetail04.Enabled then
   begin
      D_B0202_1.Text    := '';      // 적용일자
      D_B0202_2.Text    := '';      // 적용일자(#)
      D_B0202_3.Text    := '';      // Vent. Set
   end;

end;


//------------------------------------------------------------------------------
// [Day - 통증상태평가] 항목 선택
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
      D_C0401_1.Text := '';   // 유발요인
      D_C0403_1.Text := '';   // 중재방법

      // 빈도
      D_C0404_1.Checked := False;   // 간헐적
      D_C0404_2.Checked := False;   // 지속적
   end;

end;



//------------------------------------------------------------------------------
// [Day - 통증상태평가 - Drug] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0402_1Click(Sender: TObject);
begin
   D_B0402_1E.Enabled := D_B0402_1.Checked;

   if not D_B0402_1E.Enabled then
      D_B0402_1E.Text := '';
end;



//------------------------------------------------------------------------------
// [Day - 말초정맥관] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0501_1Click(Sender: TObject);
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
      D_B0504_2.Checked := False;   // 비정상
      D_C0504_1.Checked := False;   // 부종
      D_C0504_2.Checked := False;   // 발적
      D_C0504_3.Checked := False;   // 열감
      D_C0504_4.Checked := False;   // 압통
   end;


end;







//------------------------------------------------------------------------------
// [Day - 중심정맥관] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0601_1Click(Sender: TObject);
begin

   pn_DDetail08.Enabled := D_B0601_1.Checked;

   if not pn_DDetail08.Enabled then
   begin
      // 삽입일시
      D_B0602_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      D_B0602_2.Text := '';   // #


      // 종류
      D_B0603_1.Checked := False;   // Subclavian
      D_B0603_2.Checked := False;   // Internal Jugular
      D_B0603_3.Checked := False;   // Femoral
      D_B0603_4.Checked := False;   // PICC
      D_B0603_5.Checked := False;   // S-Gnz
      D_B0603_6.Checked := False;   // Left

      // 위치
      D_B0607_1.Checked := False;   // 우상지
      D_B0607_2.Checked := False;   // 좌상지
      D_B0607_3.Checked := False;   // 우하지
      D_B0607_4.Checked := False;   // 좌하지

      // cm (Fixed)
      D_B0608_1.Text    := '';

      // 드레싱 종류
      D_B0604_1.Checked := False;   // 필름드레싱
      D_B0604_2.Checked := False;   // 거즈드레싱

      // 드레싱 상태
      D_B0604_3.Checked := False;   // 건조
      D_B0604_4.Checked := False;   // 습함
      D_B0604_5.Checked := False;   // 벗겨짐


      // 드레싱 교환
      D_B0606_1.Checked := False;  // 예
      D_B0606_2.Checked := False;  // 아니오
      D_B0606_3.Text    := '';     // #

      // 삽입부위 상태
      D_B0605_1.Checked := False;  // 정상
      D_B0605_2.Checked := False;  // 부종
      D_B0605_3.Checked := False;  // 발적
      D_B0605_4.Checked := False;  // 삼출물


   end;

end;



//------------------------------------------------------------------------------
// [Day - 욕창발생] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0701_1Click(Sender: TObject);
begin

   pn_DDetail09.Enabled := D_B0701_1.Checked;   // 위치-단계/크기
   pn_DDetail12.Enabled := D_B0701_1.Checked;   // 입실시, 입실후


   if not pn_DDetail09.Enabled then
   begin
      D_C0701_1.Checked := False;   // 입실 전
      D_C0701_2.Checked := False;   // 입실 후
      D_C0701_3.Text    := '';      // 위치
      D_C0701_4.Text    := '';      // 단계
      D_C0701_5.Text    := '';      // 크기
   end;
end;



//------------------------------------------------------------------------------
// [Day - 욕창예방관리활동 및 치료 - 기타] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0703_5Click(Sender: TObject);
begin
   D_B0703_5E.Enabled := D_B0703_5.Checked;

   if not D_B0703_5E.Enabled then
      D_B0703_5E.Text := '';
end;






//------------------------------------------------------------------------------
// [삽관일시 입력] OnExit Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_C0102_2Exit(Sender: TObject);
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
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_CalcIntubeClick(Sender: TObject);
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
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0702_1Click(Sender: TObject);
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
   SetBplStrProp(FForm.Name, 'Prop_CallerForm'  , 'MDN110FX'              );
   SetBplStrProp(FForm.Name, 'Prop_CallerMethod', 'AssignBdScore'         );
   SetBplStrProp(FForm.Name, 'Prop_ParentForm'  , 'MDN110FX'              );
   SetBplStrProp(FForm.Name, 'Prop_ExecDate'    , FormatDatetime('yyyymmdd',dtp_ChkDate.Date));

   McomFormShow(FForm);
end;




//------------------------------------------------------------------------------
// [욕창위험도 평가결과 조회] CallBack Event Procedure
//------------------------------------------------------------------------------
procedure TMDN110FX.AssignBdScore(Sender: TObject);
var
   sFlag, sPatNo, sAdmDate, sEstiDate : string;
   RowNo         : Integer;
   bdsEstiInfo   : HmdBdspmt;   // 평가정보
begin
   sFlag     := 'B';                                               // '' 이면, 일반성인/중환자 평가도구, 'B'는 신생아 평가도구
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
      TEdit(GetComp(Self.Name, FsSelDuty + '_B0702_1')).Text := bdsEstiInfo.iTotScore[0] + '(' + bdsEstiInfo.sEstiRslt[0] + ')';



   finally
      screen.Cursor  :=  crDefault;
      FreeAndNil(bdsEstiInfo);
   end;

end;


//------------------------------------------------------------------------------
// [일자 자동입력] OnClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_C0102_2Click(Sender: TObject);
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
//------------------------------------------------------------------------------
procedure TMDN110FX.SelOrderList;
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


      sType1   := '4';
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


// 처방내역 해당(현) duty Edit창에 복사
procedure TMDN110FX.bbt_AddClick(Sender: TObject);
var
   sTemp : String;
begin
   sTemp := TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text;

   TEdit(GetComp(Self.Name, FsCurDuty + '_B0302_1E')).Text := sTemp + ' ' + ugd_AddList.Cells[1, ugd_AddList.Row];
end;


// 처방내역 해당 duty Edit창에 복사
procedure TMDN110FX.E_B0302_1EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;
begin
   // 처방조회 일자
   dtp_Fromadd.Date := dtp_ChkDate.Date;

   bpn_Add.Visible := True;

   bpn_Add.Left    := (Sender as TEdit).Left - 95;
   bpn_Add.Top     := (Sender as TEdit).Top  + 20;

   // 처방내역 조회
   SelOrderList;

end;



procedure TMDN110FX.ugd_AddListDblClick(Sender: TObject);
begin
   bbt_AddClick(Sender);
end;



// Grid 초기화 (Title Row 제외)
procedure TMDN110FX.GridClear(in_Grid : TUltraGrid);
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



//------------------------------------------------------------------------------
// [Day - 말초정맥관(II)] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0505_1Click(Sender: TObject);
begin

   pn_DDetail10.Enabled := D_B0505_1.Checked;   // 말초정맥관 2 추가


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
      D_B0508_2.Checked := False;   // 비정상
      D_C0508_1.Checked := False;   // 부종
      D_C0508_2.Checked := False;   // 발적
      D_C0508_3.Checked := False;   // 열감
      D_C0508_4.Checked := False;   // 압통
   end;

end;



procedure TMDN110FX.D_B0607_1Click(Sender: TObject);
begin
{
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
   }
end;




//------------------------------------------------------------------------------
// [중환자 통증평가(MDN920F2) 호출] onClick Event Handler
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0401_4EClick(Sender: TObject);
var
   i     : Integer;
   oComp : TObject;
   sName : String;

   FForm : TForm;
   sTool, sPatNo, sAdmDate, sCurPosYn : String;
begin

   // Sender 받아오기
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


   sTool     := 'BPS';
   sPatNo    := FsPatNo;
   sAdmDate  := FsAdmDate;
   sCurPosYn := 'N';




   // 중환자 통증평가도구(BPS) 입력화면 연동
   FForm := BplFormCreate('MDN920F2');

   SetBplStrProp('MDN920F2', 'Prop_FromFlag',sTool);
   SetBplStrProp('MDN920F2', 'Prop_PatNo'   ,sPatNo);
   SetBplStrProp('MDN920F2', 'Prop_AdmDate' ,sAdmDate);
   SetBplStrProp('MDN920F2', 'Prop_EstiDate',FormatDateTime('yyyymmdd',dtp_ChkDate.date));
   SetBplStrProp('MDN920F2', 'Prop_EstiTime',FormatDateTime('yyyymmddhhmm',Now));
   SetBplStrProp('MDN920F2', 'Prop_CurPosYn',sCurPosYn );

   // CallBack 메소드 호출 (호출한 폼의 조회 화면을 Refresh 시키고자 할때)
   SetBplStrProp('MDN920F2', 'Prop_CallerForm'  , 'MDN110FX'           );
   SetBplStrProp('MDN920F2', 'Prop_CallerMethod', 'AssignPainScore'    );


   MComFormShow(FForm);

end;


{
//------------------------------------------------------------------------------
// [중환자 통증평가결과 조회] CallBack Event Procedure
//------------------------------------------------------------------------------
procedure TMDN110FX.AssignPainScore(Sender: TObject);
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
   // 임상실습학생 OCS 접근권한(저장/수정/삭제/출력/엑셀) 제한
   //   - 2012.11.02 LSH
   //-----------------------------------------------------------------
   if CheckAuthority('PRINT', '', '', '', self.Name) = False then Exit;

   //----------------------------------------------------------------
   // 1. Check
   //----------------------------------------------------------------
   // 2016-06-07 장은석 , QRP 출력 조회 시 프린터 존재 체크 안함 START
   // 하단 원본 구문
//   if (IsNotPrinterReady) then exit;
   // 하단 변경 구문
   if pv_SComReport = nil then
   begin
      if (IsNotPrinterReady) then exit;
   end;
   // 2016-06-07 장은석 , QRP 출력 조회 시 프린터 존재 체크 안함 END


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
   srcPrt.qrlb_PatNo.Caption   := lb_PatNo.Caption;             // 환자번호
   srcPrt.qrlb_PatName.Caption := lb_PatName.Caption;           // 환자명
   srcPrt.qrlb_Sex.Caption     := lb_Sex.Caption;               // 성별
   srcPrt.qrlb_Age.Caption     := lb_Age.Caption;               // 나이
   srcPrt.qrlb_RoomNo.Caption  := lb_RoomNo.Caption;            // 병동-병실
   srcPrt.qrlb_ChkDate.Caption := FormatDateTime('yyyy-mm-dd', dtp_ChkDate.Date);


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
   // 3. Print Mode Set
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
   // 3-1. NICU 임상질지표  자동서식변환
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

         // 출력 Form-Free
         srcPrt.Close;
      end;

   end
   else
   // 일반 출력
   begin
      //-------------------------------------------------------
      // 개인정보보호 출력물관리
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

      // 출력 Form-Free
      srcPrt.Close;
   end;









end;






//------------------------------------------------------------------------------
// NICU 임상질지표 자동스캔 서식출력
// - 환자별 출력
//------------------------------------------------------------------------------
procedure TMDN110FX.AutoScanPrint;
begin

   // 출력할 최초일자(입원일) 받아오기
   dtp_ChkDate.Date := StrToDate(FsAdmDate);




   // EMR 출력 Index 초기화
   G_EmrPrtIdx := 0;



   //---------------------------------------------------
   // 2. 환자기본정보 조회
   //---------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);



{
   // 2.1.1. Set Patient information
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // 환자번호
      lb_PatName.Caption := sPatName[0];                       // 환자명
      lb_Sex.Caption     := sSex    [0];                       // 성별
      lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(DelChar(FsAdmDate,'-'))), sBirtDate[0]));   // 나이
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // 병동-병실
   end;
}


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
// [Day - 진정] Drug 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0302_1Click(Sender: TObject);
begin
   D_B0302_1E.Enabled := D_B0302_1.Checked
end;



//------------------------------------------------------------------------------
// [Day - 진정] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0301_1Click(Sender: TObject);
begin

   D_B0302_1.Enabled := D_B0301_1.Checked;

   if not D_B0302_1.Enabled then
   begin
      D_B0302_1.Checked  := False;
      D_B0302_1E.Text    := '';      // 진정 약물 목록
   end;

end;


//------------------------------------------------------------------------------
// [Day - 중심정맥관(II)] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0609_1Click(Sender: TObject);
begin

   pn_DDetail11.Enabled := D_B0609_1.Checked;

   if not pn_DDetail11.Enabled then
   begin

      // 삽입일시
      D_B0610_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      D_B0610_2.Text := '';   // #


      // 종류
      D_B0611_1.Checked := False;   // Subclavian
      D_B0611_2.Checked := False;   // Internal Jugular
      D_B0611_3.Checked := False;   // Femoral
      D_B0611_4.Checked := False;   // PICC
      D_B0611_5.Checked := False;   // A-Line
      D_B0611_6.Checked := False;   // UAC
      D_B0611_7.Checked := False;   // UVC


      // 위치
      D_B0612_1.Checked := False;   // 우상지
      D_B0612_2.Checked := False;   // 좌상지
      D_B0612_3.Checked := False;   // 우하지
      D_B0612_4.Checked := False;   // 좌하지


      // cm (Fixed)
      D_B0613_1.Text    := '';


      // 드레싱 종류
      D_B0614_1.Checked := False;   // 필름드레싱
      D_B0614_2.Checked := False;   // 거즈드레싱


      // 드레싱 상태
      D_B0615_1.Checked := False;   // 건조
      D_B0615_2.Checked := False;   // 습함
      D_B0615_3.Checked := False;   // 벗겨짐


      // 드레싱 교환
      D_B0616_1.Checked := False;  // 예
      D_B0616_2.Checked := False;  // 아니오
      D_B0616_3.Text    := '';     // #


      // 삽입부위 상태
      D_B0617_1.Checked := False;  // 정상
      D_B0617_2.Checked := False;  // 부종
      D_B0617_3.Checked := False;  // 발적
      D_B0617_4.Checked := False;  // 삼출물
   end;

end;


//------------------------------------------------------------------------------
// [Evn - 인공기도] 항목 선택
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
// [Evn - ET Tube] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0102_1Click(Sender: TObject);
begin

   pn_EDetail02.Enabled := E_B0102_1.Checked;

   if not pn_EDetail02.Enabled then
   begin
      E_C0102_1.Text := '';   // #
      E_C0102_2.Text := '';   // 삽관일자
      E_C0102_3.Text := '';   // 내경
      E_C0102_4.Text := '';   // 깊이
   end;
end;


//------------------------------------------------------------------------------
// [Evn - Tracheostomy] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0103_1Click(Sender: TObject);
begin
   pn_EDetail03.Enabled := E_B0103_1.Checked;

   if not pn_EDetail03.Enabled then
   begin
      E_C0103_1.Text := '';   // #
      E_C0103_2.Text := '';   // 수술일자
      E_C0103_3.Text := '';   // 내경
   end;
end;


//------------------------------------------------------------------------------
// [Evn - 기계환기] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0201_1Click(Sender: TObject);
begin
   pn_EDetail04.Enabled := E_B0201_1.Checked;

   if not pn_EDetail04.Enabled then
   begin
      E_B0202_1.Text    := '';      // 적용일자
      E_B0202_2.Text    := '';      // 적용일자(#)
      E_B0202_3.Text    := '';      // Vent. Set
   end;
end;


//------------------------------------------------------------------------------
// [Evn - 진정] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0301_1Click(Sender: TObject);
begin
   E_B0302_1.Enabled := E_B0301_1.Checked;

   if not E_B0302_1.Enabled then
   begin
      E_B0302_1.Checked  := False;
      E_B0302_1E.Text    := '';      // 진정 약물 목록
   end;
end;


//------------------------------------------------------------------------------
// [Evn - 진정] Drug 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0302_1Click(Sender: TObject);
begin
   E_B0302_1E.Enabled := E_B0302_1.Checked
end;


//------------------------------------------------------------------------------
// [Evn - 통증상태평가] 항목 선택
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
      E_C0401_1.Text := '';   // 유발요인
      E_C0403_1.Text := '';   // 중재방법

      // 빈도
      E_C0404_1.Checked := False;   // 간헐적
      E_C0404_2.Checked := False;   // 지속적
   end;

end;


//------------------------------------------------------------------------------
// [Evn - 말초정맥관] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0501_1Click(Sender: TObject);
begin
   pn_EDetail07.Enabled := E_B0501_1.Checked;   // 말초정맥관 1

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
      E_B0504_2.Checked := False;   // 비정상
      E_C0504_1.Checked := False;   // 부종
      E_C0504_2.Checked := False;   // 발적
      E_C0504_3.Checked := False;   // 열감
      E_C0504_4.Checked := False;   // 압통
   end;

end;


//------------------------------------------------------------------------------
// [Evn - 말초정맥관(II)] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0505_1Click(Sender: TObject);
begin

   pn_EDetail10.Enabled := E_B0505_1.Checked;   // 말초정맥관 2 추가


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
      E_B0508_2.Checked := False;   // 비정상
      E_C0508_1.Checked := False;   // 부종
      E_C0508_2.Checked := False;   // 발적
      E_C0508_3.Checked := False;   // 열감
      E_C0508_4.Checked := False;   // 압통
   end;


end;


//------------------------------------------------------------------------------
// [Evn - 중심정맥관] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0601_1Click(Sender: TObject);
begin
   pn_EDetail08.Enabled := E_B0601_1.Checked;

   if not pn_EDetail08.Enabled then
   begin
      // 삽입일시
      E_B0602_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      E_B0602_2.Text := '';   // #


      // 종류
      E_B0603_1.Checked := False;   // Subclavian
      E_B0603_2.Checked := False;   // Internal Jugular
      E_B0603_3.Checked := False;   // Femoral
      E_B0603_4.Checked := False;   // PICC
      E_B0603_5.Checked := False;   // S-Gnz
      E_B0603_6.Checked := False;   // Left

      // 위치
      E_B0607_1.Checked := False;   // 우상지
      E_B0607_2.Checked := False;   // 좌상지
      E_B0607_3.Checked := False;   // 우하지
      E_B0607_4.Checked := False;   // 좌하지

      // cm (Fixed)
      E_B0608_1.Text    := '';

      // 드레싱 종류
      E_B0604_1.Checked := False;   // 필름드레싱
      E_B0604_2.Checked := False;   // 거즈드레싱

      // 드레싱 상태
      E_B0604_3.Checked := False;   // 건조
      E_B0604_4.Checked := False;   // 습함
      E_B0604_5.Checked := False;   // 벗겨짐


      // 드레싱 교환
      E_B0606_1.Checked := False;  // 예
      E_B0606_2.Checked := False;  // 아니오
      E_B0606_3.Text    := '';     // #

      // 삽입부위 상태
      E_B0605_1.Checked := False;  // 정상
      E_B0605_2.Checked := False;  // 부종
      E_B0605_3.Checked := False;  // 발적
      E_B0605_4.Checked := False;  // 삼출물

   end;

end;


//------------------------------------------------------------------------------
// [Evn - 중심정맥관(II)] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0609_1Click(Sender: TObject);
begin

   pn_EDetail11.Enabled := E_B0609_1.Checked;

   if not pn_EDetail11.Enabled then
   begin

      // 삽입일시
      E_B0610_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      E_B0610_2.Text := '';   // #


      // 종류
      E_B0611_1.Checked := False;   // Subclavian
      E_B0611_2.Checked := False;   // Internal Jugular
      E_B0611_3.Checked := False;   // Femoral
      E_B0611_4.Checked := False;   // PICC
      E_B0611_5.Checked := False;   // A-Line
      E_B0611_6.Checked := False;   // UAC
      E_B0611_7.Checked := False;   // UVC


      // 위치
      E_B0612_1.Checked := False;   // 우상지
      E_B0612_2.Checked := False;   // 좌상지
      E_B0612_3.Checked := False;   // 우하지
      E_B0612_4.Checked := False;   // 좌하지


      // cm (Fixed)
      E_B0613_1.Text    := '';


      // 드레싱 종류
      E_B0614_1.Checked := False;   // 필름드레싱
      E_B0614_2.Checked := False;   // 거즈드레싱


      // 드레싱 상태
      E_B0615_1.Checked := False;   // 건조
      E_B0615_2.Checked := False;   // 습함
      E_B0615_3.Checked := False;   // 벗겨짐


      // 드레싱 교환
      E_B0616_1.Checked := False;  // 예
      E_B0616_2.Checked := False;  // 아니오
      E_B0616_3.Text    := '';     // #


      // 삽입부위 상태
      E_B0617_1.Checked := False;  // 정상
      E_B0617_2.Checked := False;  // 부종
      E_B0617_3.Checked := False;  // 발적
      E_B0617_4.Checked := False;  // 삼출물
   end;

end;

//------------------------------------------------------------------------------
// [Evn - 욕창발생] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0701_1Click(Sender: TObject);
begin
   pn_EDetail09.Enabled := E_B0701_1.Checked;   // 위치-단계/크기
   pn_EDetail12.Enabled := E_B0701_1.Checked;   // 입실시, 입실후


   if not pn_EDetail09.Enabled then
   begin
      E_C0701_1.Checked := False;   // 입실 전
      E_C0701_2.Checked := False;   // 입실 후
      E_C0701_3.Text    := '';      // 위치
      E_C0701_4.Text    := '';      // 단계
      E_C0701_5.Text    := '';      // 크기
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - 인공기도] 항목 선택
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
// [Ngt - ET Tube] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0102_1Click(Sender: TObject);
begin
   pn_NDetail02.Enabled := N_B0102_1.Checked;

   if not pn_NDetail02.Enabled then
   begin
      N_C0102_1.Text := '';   // #
      N_C0102_2.Text := '';   // 삽관일자
      N_C0102_3.Text := '';   // 내경
      N_C0102_4.Text := '';   // 깊이
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - Tracheostomy] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0103_1Click(Sender: TObject);
begin
   pn_NDetail03.Enabled := N_B0103_1.Checked;

   if not pn_NDetail03.Enabled then
   begin
      N_C0103_1.Text := '';   // #
      N_C0103_2.Text := '';   // 수술일자
      N_C0103_3.Text := '';   // 내경
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - 기계환기] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0201_1Click(Sender: TObject);
begin
   pn_NDetail04.Enabled := N_B0201_1.Checked;

   if not pn_NDetail04.Enabled then
   begin
      N_B0202_1.Text    := '';      // 적용일자
      N_B0202_2.Text    := '';      // 적용일자(#)
      N_B0202_3.Text    := '';      // Vent. Set
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - 진정] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0301_1Click(Sender: TObject);
begin
   N_B0302_1.Enabled := N_B0301_1.Checked;

   if not N_B0302_1.Enabled then
   begin
      N_B0302_1.Checked  := False;
      N_B0302_1E.Text    := '';      // 진정 약물 목록
   end;
end;


//------------------------------------------------------------------------------
// [Ngt - 진정] Drug 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0302_1Click(Sender: TObject);
begin
   N_B0302_1E.Enabled := N_B0302_1.Checked
end;


//------------------------------------------------------------------------------
// [Ngt - 통증상태평가] 항목 선택
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
      N_C0401_1.Text := '';   // 유발요인
      N_C0403_1.Text := '';   // 중재방법

      // 빈도
      N_C0404_1.Checked := False;   // 간헐적
      N_C0404_2.Checked := False;   // 지속적
   end;


end;


//------------------------------------------------------------------------------
// [Evn - 통증상태평가 - Drug] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0402_1Click(Sender: TObject);
begin
   E_B0402_1E.Enabled := E_B0402_1.Checked;

   if not E_B0402_1E.Enabled then
      E_B0402_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - 통증상태평가 - Drug] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0402_1Click(Sender: TObject);
begin
   N_B0402_1E.Enabled := N_B0402_1.Checked;

   if not N_B0402_1E.Enabled then
      N_B0402_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - 말초정맥관] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0501_1Click(Sender: TObject);
begin
   pn_NDetail07.Enabled := N_B0501_1.Checked;   // 말초정맥관 1

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
      N_B0504_2.Checked := False;   // 비정상
      N_C0504_1.Checked := False;   // 부종
      N_C0504_2.Checked := False;   // 발적
      N_C0504_3.Checked := False;   // 열감
      N_C0504_4.Checked := False;   // 압통
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - 말초정맥관(II)] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0505_1Click(Sender: TObject);
begin

   pn_NDetail10.Enabled := N_B0505_1.Checked;   // 말초정맥관 2 추가


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
      N_B0508_2.Checked := False;   // 비정상
      N_C0508_1.Checked := False;   // 부종
      N_C0508_2.Checked := False;   // 발적
      N_C0508_3.Checked := False;   // 열감
      N_C0508_4.Checked := False;   // 압통
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - 중심정맥관] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0601_1Click(Sender: TObject);
begin
   pn_NDetail08.Enabled := N_B0601_1.Checked;

   if not pn_NDetail08.Enabled then
   begin
      // 삽입일시
      N_B0602_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      N_B0602_2.Text := '';   // #


      // 종류
      N_B0603_1.Checked := False;   // Subclavian
      N_B0603_2.Checked := False;   // Internal Jugular
      N_B0603_3.Checked := False;   // Femoral
      N_B0603_4.Checked := False;   // PICC
      N_B0603_5.Checked := False;   // S-Gnz
      N_B0603_6.Checked := False;   // Left

      // 위치
      N_B0607_1.Checked := False;   // 우상지
      N_B0607_2.Checked := False;   // 좌상지
      N_B0607_3.Checked := False;   // 우하지
      N_B0607_4.Checked := False;   // 좌하지

      // cm (Fixed)
      N_B0608_1.Text    := '';

      // 드레싱 종류
      N_B0604_1.Checked := False;   // 필름드레싱
      N_B0604_2.Checked := False;   // 거즈드레싱

      // 드레싱 상태
      N_B0604_3.Checked := False;   // 건조
      N_B0604_4.Checked := False;   // 습함
      N_B0604_5.Checked := False;   // 벗겨짐


      // 드레싱 교환
      N_B0606_1.Checked := False;  // 예
      N_B0606_2.Checked := False;  // 아니오
      N_B0606_3.Text    := '';     // #

      // 삽입부위 상태
      N_B0605_1.Checked := False;  // 정상
      N_B0605_2.Checked := False;  // 부종
      N_B0605_3.Checked := False;  // 발적
      N_B0605_4.Checked := False;  // 삼출물

   end;

end;


//------------------------------------------------------------------------------
// [Ngt - 중심정맥관(II)] 유/무 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0609_1Click(Sender: TObject);
begin

   pn_NDetail11.Enabled := N_B0609_1.Checked;

   if not pn_NDetail11.Enabled then
   begin

      // 삽입일시
      N_B0610_1.Text := '';   // 삽입일시(YYYY-MM-DD)
      N_B0610_2.Text := '';   // #


      // 종류
      N_B0611_1.Checked := False;   // Subclavian
      N_B0611_2.Checked := False;   // Internal Jugular
      N_B0611_3.Checked := False;   // Femoral
      N_B0611_4.Checked := False;   // PICC
      N_B0611_5.Checked := False;   // A-Line
      N_B0611_6.Checked := False;   // UAC
      N_B0611_7.Checked := False;   // UVC


      // 위치
      N_B0612_1.Checked := False;   // 우상지
      N_B0612_2.Checked := False;   // 좌상지
      N_B0612_3.Checked := False;   // 우하지
      N_B0612_4.Checked := False;   // 좌하지


      // cm (Fixed)
      N_B0613_1.Text    := '';


      // 드레싱 종류
      N_B0614_1.Checked := False;   // 필름드레싱
      N_B0614_2.Checked := False;   // 거즈드레싱


      // 드레싱 상태
      N_B0615_1.Checked := False;   // 건조
      N_B0615_2.Checked := False;   // 습함
      N_B0615_3.Checked := False;   // 벗겨짐


      // 드레싱 교환
      N_B0616_1.Checked := False;  // 예
      N_B0616_2.Checked := False;  // 아니오
      N_B0616_3.Text    := '';     // #


      // 삽입부위 상태
      N_B0617_1.Checked := False;  // 정상
      N_B0617_2.Checked := False;  // 부종
      N_B0617_3.Checked := False;  // 발적
      N_B0617_4.Checked := False;  // 삼출물
   end;

end;


//------------------------------------------------------------------------------
// [Ngt - 욕창발생] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0701_1Click(Sender: TObject);
begin
   pn_NDetail09.Enabled := N_B0701_1.Checked;   // 위치-단계/크기
   pn_NDetail12.Enabled := N_B0701_1.Checked;   // 입실시, 입실후


   if not pn_NDetail09.Enabled then
   begin
      N_C0701_1.Checked := False;   // 입실 전
      N_C0701_2.Checked := False;   // 입실 후
      N_C0701_3.Text    := '';      // 위치
      N_C0701_4.Text    := '';      // 단계
      N_C0701_5.Text    := '';      // 크기
   end;
end;



//------------------------------------------------------------------------------
// [Day - 낙상예방관리 - 기타] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0801_4Click(Sender: TObject);
begin
   D_B0801_4E.Enabled := D_B0801_4.Checked;

   if not D_B0801_4E.Enabled then
      D_B0801_4E.Text := '';

end;


//------------------------------------------------------------------------------
// [Evn - 낙상예방관리 - 기타] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0801_4Click(Sender: TObject);
begin
   E_B0801_4E.Enabled := E_B0801_4.Checked;

   if not E_B0801_4E.Enabled then
      E_B0801_4E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - 낙상예방관리 - 기타] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0801_4Click(Sender: TObject);
begin
   N_B0801_4E.Enabled := N_B0801_4.Checked;

   if not N_B0801_4E.Enabled then
      N_B0801_4E.Text := '';

end;



//------------------------------------------------------------------------------
// [Day - 말초정맥관(I)] 삽입부위 상태 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0504_1Click(Sender: TObject);
begin
   pn_DDetail13.Enabled := D_B0504_2.Checked;   // 비정상

   if not pn_DDetail13.Enabled then
   begin
      D_C0504_1.Checked := False;   // 부종
      D_C0504_2.Checked := False;   // 발적
      D_C0504_3.Checked := False;   // 열감
      D_C0504_4.Checked := False;   // 압통
   end;
end;



//------------------------------------------------------------------------------
// [Evn - 말초정맥관(I)] 삽입부위 상태 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0504_1Click(Sender: TObject);
begin
   pn_EDetail13.Enabled := E_B0504_2.Checked;   // 비정상

   if not pn_EDetail13.Enabled then
   begin
      E_C0504_1.Checked := False;   // 부종
      E_C0504_2.Checked := False;   // 발적
      E_C0504_3.Checked := False;   // 열감
      E_C0504_4.Checked := False;   // 압통
   end;
end;



//------------------------------------------------------------------------------
// [Ngt - 말초정맥관(I)] 삽입부위 상태 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0504_1Click(Sender: TObject);
begin
   pn_NDetail13.Enabled := N_B0504_2.Checked;   // 비정상

   if not pn_NDetail13.Enabled then
   begin
      N_C0504_1.Checked := False;   // 부종
      N_C0504_2.Checked := False;   // 발적
      N_C0504_3.Checked := False;   // 열감
      N_C0504_4.Checked := False;   // 압통
   end;
end;



//------------------------------------------------------------------------------
// [Day - 말초정맥관(II)] 삽입부위 상태 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.D_B0508_1Click(Sender: TObject);
begin
   pn_DDetail14.Enabled := D_B0508_2.Checked;   // 비정상

   if not pn_DDetail14.Enabled then
   begin
      D_C0508_1.Checked := False;   // 부종
      D_C0508_2.Checked := False;   // 발적
      D_C0508_3.Checked := False;   // 열감
      D_C0508_4.Checked := False;   // 압통
   end;
end;


//------------------------------------------------------------------------------
// [Evn - 말초정맥관(II)] 삽입부위 상태 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0508_1Click(Sender: TObject);
begin
   pn_EDetail14.Enabled := E_B0508_2.Checked;   // 비정상

   if not pn_EDetail14.Enabled then
   begin
      E_C0508_1.Checked := False;   // 부종
      E_C0508_2.Checked := False;   // 발적
      E_C0508_3.Checked := False;   // 열감
      E_C0508_4.Checked := False;   // 압통
   end;
end;



//------------------------------------------------------------------------------
// [Ngt - 말초정맥관(II)] 삽입부위 상태 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0508_1Click(Sender: TObject);
begin
   pn_NDetail14.Enabled := N_B0508_2.Checked;   // 비정상

   if not pn_NDetail14.Enabled then
   begin
      N_C0508_1.Checked := False;   // 부종
      N_C0508_2.Checked := False;   // 발적
      N_C0508_3.Checked := False;   // 열감
      N_C0508_4.Checked := False;   // 압통
   end;
end;


//------------------------------------------------------------------------------
// [Evn - 욕창예방관리활동 및 치료 - 기타] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.E_B0703_5Click(Sender: TObject);
begin
   E_B0703_5E.Enabled := E_B0703_5.Checked;

   if not E_B0703_5E.Enabled then
      E_B0703_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Ngt - 욕창예방관리활동 및 치료 - 기타] 항목 선택
//------------------------------------------------------------------------------
procedure TMDN110FX.N_B0703_5Click(Sender: TObject);
begin
   N_B0703_5E.Enabled := N_B0703_5.Checked;

   if not N_B0703_5E.Enabled then
      N_B0703_5E.Text := '';
end;



//------------------------------------------------------------------------------
// [자동서식변환용] EMR 대상환자 조회
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
   // 변수 Assign
   //-------------------------------------------------------------------
   sGubun   := '6';
   sWardNo  := '';
   sPatNo   := FsPatNo;
   sAdmDate := DelChar(FsAdmDate,'-');

   // NICU 임상질지표 구분자 추가 -2014.11.27 smpark
   sSetType := 'ICNNQ';


   //-------------------------------------------------------------------
   // EMR 대상 조회
   //-------------------------------------------------------------------
   // 장기재원환자, 검색시작일자 종료일자 추가 -2015.05.27 smpark
   GetIcuInfo(sGubun, sWardNo, sPatNo, sAdmDate, sSetType, '', '');

end;




procedure TMDN110FX.bbt_ToNrRecordDClick(Sender: TObject);
var
   sFlag      : String; // D/E/N Caller Component Flag
   sNrsRecord : String; // 간호기록 전문
   sTime      : String; // 기록일시

   // 인공기도
   sB0101     : String; // 유무
   sB0102     : String; // ET tube
   sB0103     : String; // Tracheostomy
   // 기계환기
   sB0201     : String; // 유무
   sB0202     : String; // 적용일자
   sB0203     : String; // Vent.Circuit
   // 진정
   sB0301     : String; // 유무
   sB0302     : String; // Drug
   // 통증평가
   sB0401     : String; // score
   sC0401     : String; // 유발요인
   sC0403     : String; // 중재방법
   sC0404     : String; // 빈도
   sB0402     : String; // Drug
   // 말초정맥관 I
   sB0501     : String; // 유무
   sB0502     : String; // 삽입일자
   sB0503     : String; // 위치
   sB0504     : String; // 삽입부위 상태
   sC0504     : String; // 삽입부위 상태 비정상
   // 말초정맥관 II
   sB0505     : String; // 유무
   sB0506     : String; // 삽입일시
   sB0507     : String; // 위치
   sB0508     : String; // 삽입부위 상태
   sC0508     : String; // 삽입부위 상태 비정상
   // 중심정맥 · 동맥관 I
   sB0601     : String; // 유무
   sB0602     : String; // 삽입일시
   sB0603     : String; // 종류
   sB0607     : String; // 위치
   sB0608     : String; // cm (fixed)
   sB0604_a   : String; // 드레싱 종류
   sB0604_b   : String; // 드레싱 상태
   sB0606     : String; // 드레싱 교환
   sB0605     : String; // 삽입부위 상태
   // 중심정맥 · 동맥관 II
   sB0609     : String; // 유무
   sB0610     : String; // 삽입일시
   sB0611     : String; // 종류
   sB0612     : String; // 위치
   sB0613     : String; // cm (fixed)
   sB0614     : String; // 드레싱 종류
   sB0615     : String; // 드레싱 상태
   sB0616     : String; // 드레싱 교환
   sB0617     : String; // 삽입부위 상태
   // 욕창예방관리
   sB0701     : String; // 유무
   sC0701     : String; // 위치,단계,크기
   sB0702     : String; // Neonatal Skin Assessment Scale
   sB0704     : String; // WOCN consult
   sB0705     : String; // Dressing
   sB0703     : String; // 예방 및 관리활동
   // 낙상예방활동
   sB0801      : String; // 낙상예방활동

   sSummary1       : String; // 인공기도
   sSummary2       : String; // 기계환기
   sSummary3       : String; // 진정
   sSummary4       : String; // 통증평가
   sSummary5       : String; // 말초정맥관 I
   sSummary6       : String; // 말초정맥관 II
   sSummary7       : String; // 중심정맥 · 동맥관 I
   sSummary8       : String; // 중심정맥 · 동맥관 II
   sSummary9       : String; // 욕창예방관리
   sSummary10      : String; // 낙상예방활동

   // [EMR연계] 2016-07-13 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
   aPacket : IPipePacket;
   i : Integer;
   jPatInfo : TJsonObject;
begin
   SendLogViewData('INPUT', '확인');
   // [EMR연계] 2016-07-13 장은석 , EMR 간호기록으로 전송하기 위한 기능 추가
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
            sB0101 := '인공기도 유';
         end
         else if (Self.FindComponent(sFlag + '_B0101_2') as TRadioButton).Checked then
         begin
            sB0101 := '인공기도 무';
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
                     ;
         end
         else
         begin
            sB0102 := 'ET tube 무';
         end;

         // Tracheostomy
         if      (Self.FindComponent(sFlag + '_B0103_1') as TCheckBox).Checked then
         begin
            sB0103 :=  'Tracheostomy '
                     + '(#'
                     + (Self.FindComponent(sFlag + '_C0103_1') as TEdit).Text
                     + ') '
                     + '수술일자:'
                     + (Self.FindComponent(sFlag + '_C0103_2') as TMaskEdit).Text
                     + ' '
                     + '내경:'
                     + (Self.FindComponent(sFlag + '_C0103_3') as TEdit).Text
                     + 'mm'
                     ;
         end
         else
         begin
            sB0103 := '';
         end;
      end;

      // 기계환기
      begin
         // 기계환기 유무
         if      (Self.FindComponent(sFlag + '_B0201_1') as TRadioButton).Checked then
         begin
            sB0201 := '기계환기 유';
         end
         else if (Self.FindComponent(sFlag + '_B0201_2') as TRadioButton).Checked then
         begin
            sB0201 := '기계환기 무';
         end
         else
         begin
            sB0201 := '';
         end;

         // 적용일자
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0202_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0202_2') as TEdit).Text <> '') then
         begin
            sB0202 :=  '적용일자:'
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
                    + '일째'
                    ;
         end;
      end;

      // 진정
      begin
         // 유무
         if      (Self.FindComponent(sFlag + '_B0301_1') as TRadioButton).Checked then
         begin
            sB0301 := '진정 유';
         end
         else if (Self.FindComponent(sFlag + '_B0301_2') as TRadioButton).Checked then
         begin
            sB0301 := '진정 무';
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

      // 통증평가
      begin
         // score
         if      (Self.FindComponent(sFlag + '_B0401_1') as TRadioButton).Checked then
         begin
            sB0401 := '통증평가 측정불가';
         end
         else if (Self.FindComponent(sFlag + '_B0401_3') as TRadioButton).Checked then
         begin
            sB0401 :=  '통증평가 NIPS:'
                     + (Self.FindComponent(sFlag + '_B0401_3E') as TEdit).Text
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0401_4') as TRadioButton).Checked then
         begin
            sB0401 :=  '통증평가 PIPP:'
                    + (Self.FindComponent(sFlag + '_B0401_4E') as TEdit).Text
                    ;
         end
         else
         begin
            sB0401 := '';
         end;

         // 유발요인
         if (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text <> '' then
         begin
            sC0401 :=  '유발요인:'
                     + (Self.FindComponent(sFlag + '_C0401_1') as TEdit).Text
                     ;
         end
         else
         begin
            sC0401 := '';
         end;

         // 중재방법
         if (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text <> '' then
         begin
            sC0403 :=  '중재방법:'
                     + (Self.FindComponent(sFlag + '_C0403_1') as TEdit).Text
                     ;
         end
         else
         begin
            sC0403 := '';
         end;

         // 빈도
         if      (Self.FindComponent(sFlag + '_C0404_1') as TRadioButton).Checked then
         begin
            sC0404 := '빈도:간헐적';
         end
         else if (Self.FindComponent(sFlag + '_C0404_2') as TRadioButton).Checked then
         begin
            sC0404 := '빈도:지속적';
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

      // 말초정맥관 I
      begin
         // 말초정맥관 I 유무
         if      (Self.FindComponent(sFlag + '_B0501_1') as TRadioButton).Checked then
         begin
            sB0501 := '말초정맥관 I 유';
         end
         else if (Self.FindComponent(sFlag + '_B0501_2') as TRadioButton).Checked then
         begin
            sB0501 := '말초정맥관 I 무';
         end
         else
         begin
            sB0501 := '';
         end;

         // 삽입일자
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0502_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0502_2') as TEdit).Text <> '') then
         begin
            sB0502 :=  '삽입일자:'
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

         // 위치
         sB0503 := '';

         if (Self.FindComponent(sFlag + '_B0503_4') as TCheckBox).Checked then
         begin
            sB0503 := '좌하지' + ',' + sB0503;
         end;

         if (Self.FindComponent(sFlag + '_B0503_3') as TCheckBox).Checked then
         begin
            sB0503 := '우하지' + ',' + sB0503;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_2') as TCheckBox).Checked then
         begin
            sB0503 := '좌상지' + ',' + sB0503;;
         end;

         if (Self.FindComponent(sFlag + '_B0503_1') as TCheckBox).Checked then
         begin
            sB0503 := '우상지' + ',' + sB0503;;
         end;

         if sB0503 <> '' then
         begin
            sB0503 := Copy(sB0503, 1, Length(sB0503)-1);
            sB0503 := '위치:' + sB0503;
         end;

         // 삽입부위 상태
         if      (Self.FindComponent(sFlag + '_B0504_1') as TRadioButton).Checked then
         begin
            sB0504 := '삽입부위 상태:정상';
         end
         else if (Self.FindComponent(sFlag + '_B0504_2') as TRadioButton).Checked then
         begin
            sB0504 := '삽입부위 상태:비정상';

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
                       + '부종';
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
                       + '발적';
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
                       + '열감';
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
                       + '압통';
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

      // 말초정맥관 II
      begin
         // 말초정맥관 II 유무
         if      (Self.FindComponent(sFlag + '_B0505_1') as TRadioButton).Checked then
         begin
            sB0505 := '말초정맥관 II 유';
         end
         else if (Self.FindComponent(sFlag + '_B0505_2') as TRadioButton).Checked then
         begin
            sB0505 := '말초정맥관 II 무';
         end
         else
         begin
            sB0505 := '';
         end;

         // 삽입일시
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0506_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0506_2') as TEdit).Text <> '') then
         begin
            sB0506 :=  '삽입일시:'
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

         // 위치
         sB0507 := '';

         if (Self.FindComponent(sFlag + '_B0507_4') as TCheckBox).Checked then
         begin
            sB0507 := '좌하지' + ',' + sB0507;
         end;

         if (Self.FindComponent(sFlag + '_B0507_3') as TCheckBox).Checked then
         begin
            sB0507 := '우하지' + ',' + sB0507;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_2') as TCheckBox).Checked then
         begin
            sB0507 := '좌상지' + ',' + sB0507;;
         end;

         if (Self.FindComponent(sFlag + '_B0507_1') as TCheckBox).Checked then
         begin
            sB0507 := '우상지' + ',' + sB0507;;
         end;

         if sB0507 <> '' then
         begin
            sB0507 := Copy(sB0507, 1, Length(sB0507)-1);
            sB0507 := '위치:' + sB0507;
         end;

         // 삽입부위 상태
         if      (Self.FindComponent(sFlag + '_B0508_1') as TRadioButton).Checked then
         begin
            sB0508 := '삽입부위 상태:정상';
         end
         else if (Self.FindComponent(sFlag + '_B0508_2') as TRadioButton).Checked then
         begin
            sB0508 := '삽입부위 상태:비정상';

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
                       + '부종';
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
                       + '발적';
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
                       + '열감';
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
                       + '압통';
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

      // 중심정맥·동맥관 I
      begin
         // 중심정맥·동맥관 I 유무
         if      (Self.FindComponent(sFlag + '_B0601_1') as TRadioButton).Checked then
         begin
            sB0601 := '중심정맥·동맥관 I 유';
         end
         else if (Self.FindComponent(sFlag + '_B0601_2') as TRadioButton).Checked then
         begin
            sB0601 := '';
         end
         else
         begin
            sB0601 := '';
         end;

         // 삽입일자
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0602_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0602_2') as TEdit).Text <> '') then
         begin
            sB0602 :=  '삽입일자:'
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

         // 종류
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
            sB0603 := '종류:' + sB0603;
         end;

         // 위치
         sB0607 := '';

         if (Self.FindComponent(sFlag + '_B0607_4') as TCheckBox).Checked then
         begin
            sB0607 := '좌하지' + ',' + sB0607;
         end;

         if (Self.FindComponent(sFlag + '_B0607_3') as TCheckBox).Checked then
         begin
            sB0607 := '우하지' + ',' + sB0607;;
         end;

         if (Self.FindComponent(sFlag + '_B0607_2') as TCheckBox).Checked then
         begin
            sB0607 := '좌상지' + ',' + sB0607;;
         end;

         if (Self.FindComponent(sFlag + '_B0607_1') as TCheckBox).Checked then
         begin
            sB0607 := '우상지' + ',' + sB0607;;
         end;

         if sB0607 <> '' then
         begin
            sB0607 := Copy(sB0607, 1, Length(sB0607)-1);
            sB0607 := '위치:' + sB0607;
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

         // 드레싱 종류
         sB0604_a := '';

         if (Self.FindComponent(sFlag + '_B0604_2') as TCheckBox).Checked then
         begin
            sB0604_a := '거즈드레싱' + ',' + sB0604_a;
         end;

         if (Self.FindComponent(sFlag + '_B0604_1') as TCheckBox).Checked then
         begin
            sB0604_a := '필름드레싱' + ',' + sB0604_a;
         end;

         if sB0604_a <> '' then
         begin
            sB0604_a := Copy(sB0604_a, 1, Length(sB0604_a)-1);
            sB0604_a := '드레싱 종류:' + sB0604_a;
         end;

         // 드레싱 상태
         sB0604_b := '';

         if (Self.FindComponent(sFlag + '_B0604_5') as TCheckBox).Checked then
         begin
            sB0604_b := '벗겨짐' + ',' + sB0604_b;
         end;

         if (Self.FindComponent(sFlag + '_B0604_4') as TCheckBox).Checked then
         begin
            sB0604_b := '습함' + ',' + sB0604_b;
         end;

         if (Self.FindComponent(sFlag + '_B0604_3') as TCheckBox).Checked then
         begin
            sB0604_b := '건조' + ',' + sB0604_b;
         end;

         if sB0604_b <> '' then
         begin
            sB0604_b := Copy(sB0604_b, 1, Length(sB0604_b)-1);
            sB0604_b := '드레싱 상태:' + sB0604_b;
         end;

         // 드레싱 교환
         if      (Self.FindComponent(sFlag + '_B0606_1') as TRadioButton).Checked then
         begin
            sB0606 :=  '드레싱 교환:예'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0606_2') as TRadioButton).Checked then
         begin
            sB0606 :=  '드레싱 교환:아니오'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0606_3') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0606 := '';
         end;

         // 삽입부위 상태
         sB0605 := '';

         if (Self.FindComponent(sFlag + '_B0605_4') as TCheckBox).Checked then
         begin
            sB0605 := '삼출물' + ',' + sB0605;
         end;

         if (Self.FindComponent(sFlag + '_B0605_3') as TCheckBox).Checked then
         begin
            sB0605 := '발적' + ',' + sB0605;
         end;

         if (Self.FindComponent(sFlag + '_B0605_2') as TCheckBox).Checked then
         begin
            sB0605 := '부종' + ',' + sB0605;
         end;

         if (Self.FindComponent(sFlag + '_B0605_1') as TCheckBox).Checked then
         begin
            sB0605 := '정상' + ',' + sB0605;
         end;

         if sB0605 <> '' then
         begin
            sB0605 := Copy(sB0605, 1, Length(sB0605)-1);
            sB0605 := '삽입부위 상태:' + sB0605;
         end;
      end;

      // 중심정맥·동맥관 II
      begin
         // 중심정맥·동맥관 II 유무
         if      (Self.FindComponent(sFlag + '_B0609_1') as TRadioButton).Checked then
         begin
            sB0609 := '중심정맥·동맥관 II 유';
         end
         else if (Self.FindComponent(sFlag + '_B0609_2') as TRadioButton).Checked then
         begin
            sB0609 := '';
         end
         else
         begin
            sB0609 := '';
         end;

         // 삽입일자
         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0610_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') or
            ((Self.FindComponent(sFlag + '_B0610_2') as TEdit).Text <> '') then
         begin
            sB0610 :=  '삽입일자:'
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

         // 종류
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
            sB0611 := '종류:' + sB0611;
         end;

         // 위치
         sB0612 := '';

         if (Self.FindComponent(sFlag + '_B0612_4') as TCheckBox).Checked then
         begin
            sB0612 := '좌하지' + ',' + sB0612;
         end;

         if (Self.FindComponent(sFlag + '_B0612_3') as TCheckBox).Checked then
         begin
            sB0612 := '우하지' + ',' + sB0612;;
         end;

         if (Self.FindComponent(sFlag + '_B0612_2') as TCheckBox).Checked then
         begin
            sB0612 := '좌상지' + ',' + sB0612;;
         end;

         if (Self.FindComponent(sFlag + '_B0612_1') as TCheckBox).Checked then
         begin
            sB0612 := '우상지' + ',' + sB0612;;
         end;

         if sB0612 <> '' then
         begin
            sB0612 := Copy(sB0612, 1, Length(sB0612)-1);
            sB0612 := '위치:' + sB0612;
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

         // 드레싱 종류
         sB0614 := '';

         if (Self.FindComponent(sFlag + '_B0614_2') as TCheckBox).Checked then
         begin
            sB0614 := '거즈드레싱' + ',' + sB0614;
         end;

         if (Self.FindComponent(sFlag + '_B0614_1') as TCheckBox).Checked then
         begin
            sB0614 := '필름드레싱' + ',' + sB0614;
         end;

         if sB0614 <> '' then
         begin
            sB0614 := Copy(sB0614, 1, Length(sB0614)-1);
            sB0614 := '드레싱 종류:' + sB0614;
         end;

         // 드레싱 상태
         sB0615 := '';

         if (Self.FindComponent(sFlag + '_B0615_3') as TCheckBox).Checked then
         begin
            sB0615 := '벗겨짐' + ',' + sB0615;
         end;

         if (Self.FindComponent(sFlag + '_B0615_2') as TCheckBox).Checked then
         begin
            sB0615 := '습함' + ',' + sB0615;
         end;

         if (Self.FindComponent(sFlag + '_B0615_1') as TCheckBox).Checked then
         begin
            sB0615 := '건조' + ',' + sB0615;
         end;

         if sB0615 <> '' then
         begin
            sB0615 := Copy(sB0615, 1, Length(sB0615)-1);
            sB0615 := '드레싱 상태:' + sB0615;
         end;

         // 드레싱 교환
         if      (Self.FindComponent(sFlag + '_B0616_1') as TRadioButton).Checked then
         begin
            sB0616 :=  '드레싱 교환:예'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0616_3') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0616_2') as TRadioButton).Checked then
         begin
            sB0616 :=  '드레싱 교환:아니오'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0616_3') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0616 := '';
         end;

         // 삽입부위 상태
         sB0617 := '';

         if (Self.FindComponent(sFlag + '_B0617_4') as TCheckBox).Checked then
         begin
            sB0617 := '삼출물' + ',' + sB0617;
         end;

         if (Self.FindComponent(sFlag + '_B0617_3') as TCheckBox).Checked then
         begin
            sB0617 := '발적' + ',' + sB0617;
         end;

         if (Self.FindComponent(sFlag + '_B0617_2') as TCheckBox).Checked then
         begin
            sB0617 := '부종' + ',' + sB0617;
         end;

         if (Self.FindComponent(sFlag + '_B0617_1') as TCheckBox).Checked then
         begin
            sB0617 := '정상' + ',' + sB0617;
         end;

         if sB0617 <> '' then
         begin
            sB0617 := Copy(sB0617, 1, Length(sB0617)-1);
            sB0617 := '삽입부위 상태:' + sB0617;
         end;
      end;

      // 욕창예방관리
      begin
         // 욕창발생
         if      (Self.FindComponent(sFlag + '_B0701_1') as TRadioButton).Checked then
         begin
            sB0701 :=  '욕창예방관리 욕창발생:유'
                     + '('
                     ;

            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sB0701 :=  sB0701
                        + '입실시'
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
                        + '입실후'
                        ;
            end;

            sB0701 :=  sB0701
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0701_2') as TRadioButton).Checked then
         begin
            sB0701 :=  '욕창예방관리 욕창발생:무'
                     + '('
                     ;

            if (Self.FindComponent(sFlag + '_C0701_1') as TCheckBox).Checked then
            begin
               sB0701 :=  sB0701
                        + '입실시'
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
                        + '입실후'
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

         // 위치,단계,크기
         begin
            sC0701 := '';

            // 위치
            if (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text <> '' then
            begin
               sC0701 :=  sC0701
                        + '위치:'
                        + (Self.FindComponent(sFlag + '_C0701_3') as TEdit).Text
                        + ' '
                        ;
            end;

            // 단계
            if (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text <> '' then
            begin
               sC0701 :=  sC0701
                        + '단계:'
                        + (Self.FindComponent(sFlag + '_C0701_4') as TEdit).Text
                        + ' '
                        ;
            end;

            // 크기
            if (Self.FindComponent(sFlag + '_C0701_5') as TEdit).Text <> '' then
            begin
               sC0701 :=  sC0701
                        + '위치:'
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
            sB0704 :=  'WOCN consult:유';
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
            sB0705 :=  'Dressing:유'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0705_3') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0705_2') as TRadioButton).Checked then
         begin
            sB0705 :=  'Dressing:무'
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0705_3') as TEdit).Text
                     + ')'
                     ;
         end
         else
         begin
            sB0705 := '';
         end;

         // 예방 및 관리활동
         sB0703 := '';

         if (Self.FindComponent(sFlag + '_B0703_5') as TCheckBox).Checked then
         begin
            sB0703 :=  '기타'
                     + '('
                     + (Self.FindComponent(sFlag + '_B0703_5E') as TEdit).Text
                     + ')'
                     + ','
                     + sB0703
                     ;
         end;

         if (Self.FindComponent(sFlag + '_B0703_4') as TCheckBox).Checked then
         begin
            sB0703 := '기저귀 교환' + ',' + sB0703;
         end;

         if (Self.FindComponent(sFlag + '_B0703_3') as TCheckBox).Checked then
         begin
            sB0703 := '습기, 피부를 건조하게 한다' + ',' + sB0703;
         end;

         if (Self.FindComponent(sFlag + '_B0703_2') as TCheckBox).Checked then
         begin
            sB0703 := 'Water glove' + ',' + sB0703;
         end;

         if (Self.FindComponent(sFlag + '_B0703_1') as TCheckBox).Checked then
         begin
            sB0703 := '체위변경 2시간 이내' + ',' + sB0703;
         end;

         if sB0703 <> '' then
         begin
            sB0703 := Copy(sB0703, 1, Length(sB0703)-1);
            sB0703 := '예방 및 관리활동:' + sB0703;
         end;
      end;

      // 낙상예방활동
      begin
         sB0801 := '';

         if (Self.FindComponent(sFlag + '_B0801_4') as TCheckBox).Checked then
         begin
            sB0801 :=  '기타'
                     + '('
                     + (Self.FindComponent(sFlag + '_B0801_4E') as TEdit).Text
                     + ')'
                     + ','
                     + sB0801
                     ;
         end;

         if (Self.FindComponent(sFlag + '_B0801_3') as TCheckBox).Checked then
         begin
            sB0801 := '낙상위험 스티커 부착' + ',' + sB0801;
         end;

         if (Self.FindComponent(sFlag + '_B0801_2') as TCheckBox).Checked then
         begin
            sB0801 := '낙상예방교육' + ',' + sB0801;
         end;

         if (Self.FindComponent(sFlag + '_B0801_1') as TCheckBox).Checked then
         begin
            sB0801 := '보육기 locking' + ',' + sB0801;
         end;

         if sB0801 <> '' then
         begin
            sB0801 := Copy(sB0801, 1, Length(sB0801)-1);
            sB0801 := '낙상예방활동:' + sB0801;
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

      sSummary1  :=        sSummary1
                   +       sB0101     // 유무
                   + ' ' + sB0102     // ET tube
                   + ' ' + sB0103     // Tracheostomy
                   ;
      if Trim(sSummary1) <> '' then sSummary1 := Trim(sSummary1) + #13#10
      else                          sSummary1 := '';

      sSummary2  :=        sSummary2
                   +       sB0201     // 유무
                   + ' ' + sB0202     // 적용일자
                   + ' ' + sB0203     // Vent.Circuit
                   ;
      if Trim(sSummary2) <> '' then sSummary2 := Trim(sSummary2) + #13#10
      else                          sSummary2 := '';

      sSummary3  :=        sSummary3
                   +       sB0301     // 유무
                   + ' ' + sB0302     // Drug
                   ;
      if Trim(sSummary3) <> '' then sSummary3 := Trim(sSummary3) + #13#10
      else                          sSummary3 := '';

      sSummary4  :=        sSummary4
                   +       sB0401     // score
                   + ' ' + sC0401     // 유발요인
                   + ' ' + sC0403     // 중재방법
                   + ' ' + sC0404     // 빈도
                   + ' ' + sB0402     // Drug
                   ;
      if Trim(sSummary4) <> '' then sSummary4 := Trim(sSummary4) + #13#10
      else                          sSummary4 := '';

      sSummary5  :=        sSummary5
                   +       sB0501     // 유무
                   + ' ' + sB0502     // 삽입일자
                   + ' ' + sB0503     // 위치
                   + ' ' + sB0504     // 삽입부위 상태
                   + ' ' + sC0504     // 삽입부위 상태 비정상
                   ;
      if Trim(sSummary5) <> '' then sSummary5 := Trim(sSummary5) + #13#10
      else                          sSummary5 := '';

      sSummary6  :=        sSummary6
                   +       sB0505     // 유무
                   + ' ' + sB0506     // 삽입일시
                   + ' ' + sB0507     // 위치
                   + ' ' + sB0508     // 삽입부위 상태
                   + ' ' + sC0508     // 삽입부위 상태 비정상
                   ;
      if Trim(sSummary6) <> '' then sSummary6 := Trim(sSummary6) + #13#10
      else                          sSummary6 := '';

      sSummary7  :=        sSummary7
                   +       sB0601     // 유무
                   + ' ' + sB0602     // 삽입일시
                   + ' ' + sB0603     // 종류
                   + ' ' + sB0607     // 위치
                   + ' ' + sB0608     // cm (fixed)
                   + ' ' + sB0604_a   // 드레싱 종류
                   + ' ' + sB0604_b   // 드레싱 상태
                   + ' ' + sB0606     // 드레싱 교환
                   + ' ' + sB0605     // 삽입부위 상태

                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';

      sSummary8  :=        sSummary8
                   +       sB0609     // 유무
                   + ' ' + sB0610     // 삽입일시
                   + ' ' + sB0611     // 종류
                   + ' ' + sB0612     // 위치
                   + ' ' + sB0613     // cm (fixed)
                   + ' ' + sB0614     // 드레싱 종류
                   + ' ' + sB0615     // 드레싱 상태
                   + ' ' + sB0616     // 드레싱 교환
                   + ' ' + sB0617     // 삽입부위 상태
                   ;
      if Trim(sSummary8) <> '' then sSummary8 := Trim(sSummary8) + #13#10
      else                          sSummary8 := '';

      sSummary9  :=        sSummary9
                   +       sB0701     // 유무
                   + ' ' + sC0701     // 위치,단계,크기
                   + ' ' + sB0702     // Neonatal Skin Assessment Scale
                   + ' ' + sB0704     // WOCN consult
                   + ' ' + sB0705     // Dressing
                   + ' ' + sB0703     // 예방 및 관리활동
                   ;
      if Trim(sSummary9) <> '' then sSummary9 := Trim(sSummary9) + #13#10
      else                          sSummary9 := '';

      sSummary10 :=        sSummary10
                   +       sB0801      // 낙상예방활동
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
// [서식변환 대상환자] 조회 Procedure
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
// sType5, sType6 추가 -2015.05.27 smpark
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

      // 2016-06-07 장은석 , 입원기록지 Fromdate - Todate 조건 추가 START
      if pv_SComReport <> nil then
      begin
         // 장기재원환자용 검색 From-To가 이미 정의되어 있으므로 그 것을 사용함.
         if (pv_Fromdate <> '') and
            (pv_Todate   <> '')     then
         begin
            sType5 := InvertSDate(pv_Fromdate);
            sType6 := InvertSDate(pv_Todate  );
         end;
      end;
      // 2016-06-07 장은석 , 입원기록지 Fromdate - Todate 조건 추가 END

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
              Row := i;



              // 기록일자 Set
              dtp_ChkDate.Date := StrToDateTime(Cells[2, i]);




              // 환아 나이(일령) Refresh by 이진희 @ 2012.04.13 LSH
              LoadPatientInfo(dtp_ChkDate.Date);




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
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FX.bbt_OkClick(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // 일자별 임상질지표 내역 조회
   //-----------------------------------------------------------------
   LoadQualityCheck;
end;




//------------------------------------------------------------------------------
// NICU 임상질지표 자동스캔 서식출력 New-verion
// - 대상환자의 기록일자를 fetch하여, 일자별 상세내역을 EMR 변환
//
// Author : Lee, Se-Ha
// Date   : 2012.01.31
//------------------------------------------------------------------------------
procedure TMDN110FX.AutoScanPrint_New;
begin
   // EMR 출력 Index 초기화
   G_EmrPrtIdx := 0;



   //---------------------------------------------------
   // 1. 환자기본정보 조회
   //---------------------------------------------------
   LoadPatientInfo(dtp_ChkDate.Date);



{
   //---------------------------------------------------
   // 2. Set Patient information
   //---------------------------------------------------
   with FPatient do
   begin
      lb_PatNo.Caption   := FsPatNo;                           // 환자번호
      lb_PatName.Caption := sPatName[0];                       // 환자명
      lb_Sex.Caption     := sSex    [0];                       // 성별
      lb_Age.Caption     := Trim(Calc_Age(Now, sBirtDate[0])); // 현 시점 나이 계산(컨펌 by 이진희 수선생님, 2011.12.22 LSH)
      lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // 병동-병실
   end;
}

   //---------------------------------------------------
   // 3. EMR 서식변환 대상 조회
   //---------------------------------------------------
   bbt_SelectClick(ugd_EmrList);





end;


//------------------------------------------------------------------------------
// [Day 복사] Button onClick Event Handler
// - 이전 최종 간호사정 내역 복사
//
// Author : Lee, Se-Ha
// Date   : 2012.03.19
//------------------------------------------------------------------------------
procedure TMDN110FX.sbt_DCopyClick(Sender: TObject);
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
procedure TMDN110FX.sbt_ECopyClick(Sender: TObject);
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
procedure TMDN110FX.sbt_NCopyClick(Sender: TObject);
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
function TMDN110FX.CopyLastQualCheckOfDuty(AsDuty: String): Boolean;
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
      AsSetType := 'ICNNQ';

      // 임상질지표 정보
      QcInfo := HmdIcqcit.Create;


      with QcInfo do
      begin
         sPatNo   := FsPatNo;                                        // 환자번호
         sAdmDate := FsAdmDate;                                      // 입원일자
         sChkDate := FormatDateTime('YYYYMMDD', dtp_ChkDate.Date);   // 사정 일자
         sDuty    := AsDuty;                                         // Duty
         sChkTime := Trim((GetComp(Self.Name, 'med_' + AsDuty + '_ChkTime' ) as TMaskEdit).Text);  // 사정 시간
         sChkNurs := Trim((GetComp(Self.Name, 'ed_' + AsDuty + '_ChkNursId') as TEdit).Text);      // 사정 간호사
         sChkDept := Trim((GetComp(Self.Name, 'ed_' + AsDuty + '_ChkDept'  ) as TEdit).Text);      // 사정 부서
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
// [NICU 통증평가(MDN920F2) 호출] onClick Event Handler
//   - NIPS,PIPP 도구 평가프로그램 호출
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
   // 통증평가 시스템 연동
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
// [임상질지표] 통증사정 평가후 결과 callback function
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



      // 평가도구 및 점수
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


      // 유발요인
      TEdit(GetComp(Self.Name, FsSelDuty + '_C0401_1')).Text  := mdpaindt.sModality[0];


      // 중재방법 - null


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

// [EMR연계] 2016.04.12 홍창한 추가함(장은석).
procedure TMDN110FX.bt_printClick(Sender: TObject);
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
   RegisterClass(TMDN110FX);

finalization
   UnRegisterClass(TMDN110FX);

end.
