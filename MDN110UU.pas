{===============================================================================
   Program ID    : MDN110UU
   Program Name  : ICU ���� ��ȣ����� - ��ȣ����
   Program Desc. :

   Author : ByoungSik, Lee
   Date   : 2011.01.13
===============================================================================}
unit MDN110UU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, AdvPanel, QuickRpt, Qrctrls,
  Printers, QRPrntr, Grids, UltraGrid, Variants,
  // [EMR����] 2016.04.12 ȫâ�� �߰���(������). SComReport ������ ���� �߰�
  SComFunc,
  // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
  LoadEMRFunc,
  // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
  KUMC.Packet, KUMC.JSON;

type

  TMDN110FU = class(TForm)
    stb_Message: TStatusBar;
    Panel2: TPanel;
    bbt_Close: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    sbt_Previous: TSpeedButton;
    sbt_Next: TSpeedButton;
    Label20: TLabel;
    dtp_AssDate: TDateTimePicker;
    pn_Work: TPanel;
    scrlbx_Assess: TScrollBox;
    Bevel48: TBevel;
    Bevel37: TBevel;
    Bevel18: TBevel;
    Bevel59: TBevel;
    Bevel70: TBevel;
    Bevel89: TBevel;
    Bevel90: TBevel;
    Bevel114: TBevel;
    Bevel145: TBevel;
    Bevel170: TBevel;
    Bevel171: TBevel;
    Bevel193: TBevel;
    Bevel200: TBevel;
    Bevel201: TBevel;
    Bevel211: TBevel;
    Bevel227: TBevel;
    Bevel253: TBevel;
    Bevel279: TBevel;
    Bevel305: TBevel;
    Bevel507: TBevel;
    Bevel508: TBevel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel78: TPanel;
    Panel79: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel96: TPanel;
    Bevel111: TBevel;
    Bevel112: TBevel;
    Bevel113: TBevel;
    D_B0405_1: TRadioButton;
    D_B0405_2: TRadioButton;
    D_B0405_3: TRadioButton;
    D_B0401_1: TEdit;
    D_B0402_1: TEdit;
    D_B0403_1: TEdit;
    D_B0404_1: TEdit;
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
    Panel101: TPanel;
    Panel102: TPanel;
    Panel118: TPanel;
    Panel119: TPanel;
    Panel120: TPanel;
    Panel121: TPanel;
    Panel122: TPanel;
    Panel123: TPanel;
    Panel103: TPanel;
    Bevel61: TBevel;
    Bevel62: TBevel;
    Bevel63: TBevel;
    E_B0405_1: TRadioButton;
    E_B0405_2: TRadioButton;
    E_B0405_3: TRadioButton;
    E_B0401_1: TEdit;
    E_B0402_1: TEdit;
    E_B0403_1: TEdit;
    E_B0404_1: TEdit;
    Panel104: TPanel;
    Bevel64: TBevel;
    Bevel65: TBevel;
    Bevel66: TBevel;
    Label23: TLabel;
    Bevel67: TBevel;
    E_B0407_1E: TEdit;
    E_B0407_1: TRadioButton;
    E_B0407_2: TRadioButton;
    Panel105: TPanel;
    Panel106: TPanel;
    Panel107: TPanel;
    Bevel68: TBevel;
    Bevel69: TBevel;
    E_B0406_1: TRadioButton;
    E_B0406_2: TRadioButton;
    Panel108: TPanel;
    Panel109: TPanel;
    Panel110: TPanel;
    Panel111: TPanel;
    Panel112: TPanel;
    Panel113: TPanel;
    Panel114: TPanel;
    Panel115: TPanel;
    Panel116: TPanel;
    Bevel71: TBevel;
    Bevel72: TBevel;
    Bevel73: TBevel;
    N_B0405_1: TRadioButton;
    N_B0405_2: TRadioButton;
    N_B0405_3: TRadioButton;
    N_B0401_1: TEdit;
    N_B0402_1: TEdit;
    N_B0403_1: TEdit;
    N_B0404_1: TEdit;
    Panel117: TPanel;
    Bevel74: TBevel;
    Bevel75: TBevel;
    Bevel76: TBevel;
    Label24: TLabel;
    Bevel77: TBevel;
    N_B0407_1E: TEdit;
    N_B0407_1: TRadioButton;
    N_B0407_2: TRadioButton;
    Panel124: TPanel;
    Panel125: TPanel;
    Panel126: TPanel;
    Bevel78: TBevel;
    Bevel79: TBevel;
    N_B0406_1: TRadioButton;
    N_B0406_2: TRadioButton;
    Panel127: TPanel;
    Panel128: TPanel;
    Panel129: TPanel;
    Panel130: TPanel;
    Panel131: TPanel;
    Panel132: TPanel;
    Panel133: TPanel;
    Panel134: TPanel;
    Panel135: TPanel;
    Bevel91: TBevel;
    Bevel92: TBevel;
    Bevel94: TBevel;
    Bevel95: TBevel;
    Bevel98: TBevel;
    Bevel93: TBevel;
    D_B0501_1: TCheckBox;
    D_B0501_2: TCheckBox;
    D_B0501_3: TCheckBox;
    D_B0501_4: TCheckBox;
    D_B0501_5: TCheckBox;
    Panel136: TPanel;
    Bevel99: TBevel;
    Bevel100: TBevel;
    Bevel101: TBevel;
    Bevel102: TBevel;
    Bevel103: TBevel;
    Bevel105: TBevel;
    Bevel106: TBevel;
    Bevel104: TBevel;
    D_B0502_3: TCheckBox;
    D_B0502_4: TCheckBox;
    D_B0502_5: TCheckBox;
    D_B0502_6: TCheckBox;
    D_B0502_7: TCheckBox;
    D_B0502_1: TCheckBox;
    D_B0502_2: TCheckBox;
    Panel137: TPanel;
    Panel138: TPanel;
    Panel139: TPanel;
    Panel140: TPanel;
    Panel141: TPanel;
    Bevel119: TBevel;
    Bevel120: TBevel;
    Bevel121: TBevel;
    D_B0503_1: TRadioButton;
    D_B0503_2: TRadioButton;
    D_B0503_3: TRadioButton;
    Panel142: TPanel;
    Bevel122: TBevel;
    Bevel124: TBevel;
    Bevel125: TBevel;
    D_B0504_1: TRadioButton;
    D_B0504_2: TRadioButton;
    D_B0504_3: TRadioButton;
    Panel143: TPanel;
    Panel144: TPanel;
    pn_DItem02: TPanel;
    Bevel107: TBevel;
    Bevel108: TBevel;
    Bevel109: TBevel;
    Bevel110: TBevel;
    D_C0501_2: TCheckBox;
    D_C0501_1: TCheckBox;
    D_C0501_4: TCheckBox;
    D_C0501_3: TCheckBox;
    pn_D02: TPanel;
    Panel147: TPanel;
    Bevel115: TBevel;
    Bevel116: TBevel;
    Bevel117: TBevel;
    Bevel118: TBevel;
    Bevel123: TBevel;
    Bevel126: TBevel;
    E_B0501_1: TCheckBox;
    E_B0501_2: TCheckBox;
    E_B0501_3: TCheckBox;
    E_B0501_4: TCheckBox;
    E_B0501_5: TCheckBox;
    Panel148: TPanel;
    Bevel127: TBevel;
    Bevel128: TBevel;
    Bevel129: TBevel;
    Bevel130: TBevel;
    Bevel131: TBevel;
    Bevel132: TBevel;
    Bevel133: TBevel;
    Bevel134: TBevel;
    E_B0502_3: TCheckBox;
    E_B0502_4: TCheckBox;
    E_B0502_5: TCheckBox;
    E_B0502_6: TCheckBox;
    E_B0502_7: TCheckBox;
    E_B0502_1: TCheckBox;
    E_B0502_2: TCheckBox;
    Panel149: TPanel;
    Panel150: TPanel;
    Panel151: TPanel;
    Panel152: TPanel;
    Panel153: TPanel;
    Bevel135: TBevel;
    Bevel136: TBevel;
    Bevel137: TBevel;
    E_B0503_1: TRadioButton;
    E_B0503_2: TRadioButton;
    E_B0503_3: TRadioButton;
    Panel154: TPanel;
    Bevel138: TBevel;
    Bevel139: TBevel;
    Bevel140: TBevel;
    E_B0504_1: TRadioButton;
    E_B0504_2: TRadioButton;
    E_B0504_3: TRadioButton;
    Panel155: TPanel;
    Panel156: TPanel;
    pn_EItem02: TPanel;
    Bevel141: TBevel;
    Bevel142: TBevel;
    Bevel143: TBevel;
    Bevel144: TBevel;
    E_C0501_2: TCheckBox;
    E_C0501_1: TCheckBox;
    E_C0501_4: TCheckBox;
    E_C0501_3: TCheckBox;
    pn_E02: TPanel;
    Panel159: TPanel;
    Bevel146: TBevel;
    Bevel147: TBevel;
    Bevel148: TBevel;
    Bevel149: TBevel;
    Bevel150: TBevel;
    Bevel151: TBevel;
    N_B0501_1: TCheckBox;
    N_B0501_2: TCheckBox;
    N_B0501_3: TCheckBox;
    N_B0501_4: TCheckBox;
    N_B0501_5: TCheckBox;
    Panel161: TPanel;
    Bevel152: TBevel;
    Bevel153: TBevel;
    Bevel154: TBevel;
    Bevel155: TBevel;
    Bevel156: TBevel;
    Bevel157: TBevel;
    Bevel158: TBevel;
    Bevel159: TBevel;
    N_B0502_3: TCheckBox;
    N_B0502_4: TCheckBox;
    N_B0502_5: TCheckBox;
    N_B0502_6: TCheckBox;
    N_B0502_7: TCheckBox;
    N_B0502_1: TCheckBox;
    N_B0502_2: TCheckBox;
    Panel162: TPanel;
    Panel163: TPanel;
    Panel165: TPanel;
    Panel174: TPanel;
    Panel175: TPanel;
    Bevel160: TBevel;
    Bevel161: TBevel;
    Bevel162: TBevel;
    N_B0503_1: TRadioButton;
    N_B0503_2: TRadioButton;
    N_B0503_3: TRadioButton;
    Panel176: TPanel;
    Bevel163: TBevel;
    Bevel164: TBevel;
    Bevel165: TBevel;
    N_B0504_1: TRadioButton;
    N_B0504_2: TRadioButton;
    N_B0504_3: TRadioButton;
    Panel177: TPanel;
    Panel178: TPanel;
    pn_NItem02: TPanel;
    Bevel166: TBevel;
    Bevel167: TBevel;
    Bevel168: TBevel;
    Bevel169: TBevel;
    N_C0501_2: TCheckBox;
    N_C0501_1: TCheckBox;
    N_C0501_4: TCheckBox;
    N_C0501_3: TCheckBox;
    pn_N02: TPanel;
    Panel183: TPanel;
    Panel184: TPanel;
    Panel185: TPanel;
    Bevel173: TBevel;
    Bevel174: TBevel;
    D_B0601_1: TRadioButton;
    D_B0601_2: TRadioButton;
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
    Panel217: TPanel;
    Panel220: TPanel;
    Panel221: TPanel;
    Bevel187: TBevel;
    Bevel188: TBevel;
    E_B0601_1: TRadioButton;
    E_B0601_2: TRadioButton;
    Panel222: TPanel;
    Panel223: TPanel;
    Bevel189: TBevel;
    Bevel190: TBevel;
    Bevel191: TBevel;
    Bevel192: TBevel;
    E_B0602_1: TRadioButton;
    E_B0602_2: TRadioButton;
    E_B0602_3: TRadioButton;
    E_B0602_4: TRadioButton;
    Panel224: TPanel;
    Panel225: TPanel;
    Panel226: TPanel;
    Panel227: TPanel;
    Bevel194: TBevel;
    Bevel195: TBevel;
    N_B0601_1: TRadioButton;
    N_B0601_2: TRadioButton;
    Panel240: TPanel;
    Panel241: TPanel;
    Bevel196: TBevel;
    Bevel197: TBevel;
    Bevel198: TBevel;
    Bevel199: TBevel;
    N_B0602_1: TRadioButton;
    N_B0602_2: TRadioButton;
    N_B0602_3: TRadioButton;
    N_B0602_4: TRadioButton;
    Panel242: TPanel;
    Panel244: TPanel;
    Panel245: TPanel;
    Panel246: TPanel;
    Bevel202: TBevel;
    Bevel203: TBevel;
    Bevel204: TBevel;
    Bevel205: TBevel;
    Bevel206: TBevel;
    Bevel207: TBevel;
    E_B0701_1: TRadioButton;
    E_B0701_2: TRadioButton;
    E_B0701_3: TRadioButton;
    E_B0701_4: TRadioButton;
    E_B0701_5: TRadioButton;
    Panel247: TPanel;
    Panel248: TPanel;
    Panel249: TPanel;
    Bevel208: TBevel;
    Bevel209: TBevel;
    Bevel210: TBevel;
    E_B0702_1: TRadioButton;
    E_B0702_2: TRadioButton;
    E_B0702_3: TRadioButton;
    Panel250: TPanel;
    Panel251: TPanel;
    Panel252: TPanel;
    Bevel212: TBevel;
    Bevel215: TBevel;
    Bevel216: TBevel;
    Bevel217: TBevel;
    Bevel219: TBevel;
    Bevel223: TBevel;
    N_B0701_1: TRadioButton;
    N_B0701_2: TRadioButton;
    N_B0701_3: TRadioButton;
    N_B0701_4: TRadioButton;
    N_B0701_5: TRadioButton;
    Panel253: TPanel;
    Panel254: TPanel;
    Panel255: TPanel;
    Bevel224: TBevel;
    Bevel225: TBevel;
    Bevel226: TBevel;
    N_B0702_1: TRadioButton;
    N_B0702_2: TRadioButton;
    N_B0702_3: TRadioButton;
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
    Panel259: TPanel;
    Bevel231: TBevel;
    Bevel232: TBevel;
    Bevel233: TBevel;
    Bevel234: TBevel;
    D_B0801_1: TRadioButton;
    D_B0801_2: TRadioButton;
    D_B0801_3: TRadioButton;
    D_B0801_4: TRadioButton;
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
    Panel265: TPanel;
    Panel266: TPanel;
    Panel267: TPanel;
    Bevel244: TBevel;
    Label26: TLabel;
    Bevel245: TBevel;
    Label27: TLabel;
    Bevel246: TBevel;
    Bevel247: TBevel;
    D_B0803_1: TEdit;
    D_B0804_1: TEdit;
    D_B0805_1: TCheckBox;
    Panel268: TPanel;
    pn_DItem03: TPanel;
    Bevel248: TBevel;
    Bevel249: TBevel;
    Bevel250: TBevel;
    Bevel251: TBevel;
    D_C0801_1: TRadioButton;
    D_C0801_3: TRadioButton;
    D_C0801_2: TRadioButton;
    D_C0801_4: TRadioButton;
    Panel264: TPanel;
    Bevel238: TBevel;
    Bevel239: TBevel;
    Bevel240: TBevel;
    Bevel242: TBevel;
    Bevel243: TBevel;
    Bevel252: TBevel;
    D_B0809_1: TCheckBox;
    D_B0809_2: TCheckBox;
    D_B0809_3: TCheckBox;
    D_B0809_4: TCheckBox;
    D_B0809_5: TCheckBox;
    Panel270: TPanel;
    Bevel254: TBevel;
    Bevel255: TBevel;
    Label28: TLabel;
    Bevel256: TBevel;
    Label29: TLabel;
    Bevel257: TBevel;
    E_B0808_1: TCheckBox;
    E_B0806_1: TEdit;
    E_B0807_1: TEdit;
    Panel271: TPanel;
    Panel272: TPanel;
    Panel273: TPanel;
    Bevel258: TBevel;
    Bevel259: TBevel;
    Bevel260: TBevel;
    Bevel261: TBevel;
    E_B0801_1: TRadioButton;
    E_B0801_2: TRadioButton;
    E_B0801_3: TRadioButton;
    E_B0801_4: TRadioButton;
    Panel274: TPanel;
    Panel275: TPanel;
    Bevel262: TBevel;
    Bevel263: TBevel;
    Bevel264: TBevel;
    E_B0802_1: TRadioButton;
    E_B0802_2: TRadioButton;
    E_B0802_3: TRadioButton;
    Panel276: TPanel;
    Panel277: TPanel;
    Panel278: TPanel;
    Bevel265: TBevel;
    Bevel266: TBevel;
    Bevel267: TBevel;
    Bevel268: TBevel;
    Bevel269: TBevel;
    Bevel270: TBevel;
    E_B0809_1: TCheckBox;
    E_B0809_2: TCheckBox;
    E_B0809_3: TCheckBox;
    E_B0809_4: TCheckBox;
    E_B0809_5: TCheckBox;
    Panel279: TPanel;
    Panel280: TPanel;
    Panel281: TPanel;
    Bevel271: TBevel;
    Label30: TLabel;
    Bevel272: TBevel;
    Label31: TLabel;
    Bevel273: TBevel;
    Bevel274: TBevel;
    E_B0803_1: TEdit;
    E_B0804_1: TEdit;
    E_B0805_1: TCheckBox;
    Panel282: TPanel;
    pn_EItem03: TPanel;
    Bevel275: TBevel;
    Bevel276: TBevel;
    Bevel277: TBevel;
    Bevel278: TBevel;
    E_C0801_1: TRadioButton;
    E_C0801_3: TRadioButton;
    E_C0801_2: TRadioButton;
    E_C0801_4: TRadioButton;
    Panel284: TPanel;
    Bevel280: TBevel;
    Bevel281: TBevel;
    Label32: TLabel;
    Bevel282: TBevel;
    Label33: TLabel;
    Bevel283: TBevel;
    N_B0808_1: TCheckBox;
    N_B0806_1: TEdit;
    N_B0807_1: TEdit;
    Panel285: TPanel;
    Panel286: TPanel;
    Panel287: TPanel;
    Bevel284: TBevel;
    Bevel285: TBevel;
    Bevel286: TBevel;
    Bevel287: TBevel;
    N_B0801_1: TRadioButton;
    N_B0801_2: TRadioButton;
    N_B0801_3: TRadioButton;
    N_B0801_4: TRadioButton;
    Panel288: TPanel;
    Panel289: TPanel;
    Bevel288: TBevel;
    Bevel289: TBevel;
    Bevel290: TBevel;
    N_B0802_1: TRadioButton;
    N_B0802_2: TRadioButton;
    N_B0802_3: TRadioButton;
    Panel290: TPanel;
    Panel291: TPanel;
    Panel292: TPanel;
    Bevel291: TBevel;
    Bevel292: TBevel;
    Bevel293: TBevel;
    Bevel294: TBevel;
    Bevel295: TBevel;
    Bevel296: TBevel;
    N_B0809_1: TCheckBox;
    N_B0809_2: TCheckBox;
    N_B0809_3: TCheckBox;
    N_B0809_4: TCheckBox;
    N_B0809_5: TCheckBox;
    Panel293: TPanel;
    Panel294: TPanel;
    Panel295: TPanel;
    Bevel297: TBevel;
    Label34: TLabel;
    Bevel298: TBevel;
    Label35: TLabel;
    Bevel299: TBevel;
    Bevel300: TBevel;
    N_B0803_1: TEdit;
    N_B0804_1: TEdit;
    N_B0805_1: TCheckBox;
    Panel296: TPanel;
    pn_NItem03: TPanel;
    Bevel301: TBevel;
    Bevel302: TBevel;
    Bevel303: TBevel;
    Bevel304: TBevel;
    N_C0801_1: TRadioButton;
    N_C0801_3: TRadioButton;
    N_C0801_2: TRadioButton;
    N_C0801_4: TRadioButton;
    Panel298: TPanel;
    Panel299: TPanel;
    pn_DItem04: TPanel;
    Bevel307: TBevel;
    Bevel308: TBevel;
    Bevel309: TBevel;
    Bevel310: TBevel;
    Bevel311: TBevel;
    D_C0901_1: TRadioButton;
    D_C0901_2: TRadioButton;
    D_C0901_3: TRadioButton;
    D_C0901_4: TRadioButton;
    D_C0901_5: TRadioButton;
    D_C0901_5E: TEdit;
    Panel301: TPanel;
    Panel302: TPanel;
    Bevel312: TBevel;
    Bevel313: TBevel;
    Bevel314: TBevel;
    D_B0901_1: TRadioButton;
    D_B0901_2: TRadioButton;
    D_B0901_3: TRadioButton;
    Panel303: TPanel;
    Panel305: TPanel;
    D_B0907_1: TEdit;
    Panel307: TPanel;
    Bevel319: TBevel;
    Bevel320: TBevel;
    Bevel321: TBevel;
    D_B0902_1: TRadioButton;
    D_B0902_2: TRadioButton;
    D_B0902_3: TRadioButton;
    Panel310: TPanel;
    Panel312: TPanel;
    Bevel327: TBevel;
    Bevel328: TBevel;
    Bevel329: TBevel;
    D_B0903_1: TRadioButton;
    D_B0903_2: TRadioButton;
    D_B0903_3: TRadioButton;
    Panel315: TPanel;
    Panel318: TPanel;
    Bevel371: TBevel;
    Bevel372: TBevel;
    Bevel373: TBevel;
    D_B0904_1: TRadioButton;
    D_B0904_2: TRadioButton;
    D_B0904_3: TRadioButton;
    Panel308: TPanel;
    Panel321: TPanel;
    Bevel379: TBevel;
    Bevel380: TBevel;
    Bevel381: TBevel;
    D_B0905_1: TRadioButton;
    D_B0905_2: TRadioButton;
    D_B0905_3: TRadioButton;
    Panel324: TPanel;
    Panel325: TPanel;
    Bevel387: TBevel;
    Bevel388: TBevel;
    Bevel389: TBevel;
    D_B0906_1: TRadioButton;
    D_B0906_2: TRadioButton;
    D_B0906_3: TRadioButton;
    Panel327: TPanel;
    Panel329: TPanel;
    Bevel395: TBevel;
    Bevel396: TBevel;
    Bevel397: TBevel;
    D_B0908_1: TRadioButton;
    D_B0908_2: TRadioButton;
    D_B0908_3: TRadioButton;
    Panel314: TPanel;
    Panel317: TPanel;
    Panel346: TPanel;
    Panel347: TPanel;
    pn_DItem05: TPanel;
    Bevel306: TBevel;
    Bevel315: TBevel;
    Bevel316: TBevel;
    Bevel317: TBevel;
    Bevel1: TBevel;
    D_C0902_1: TRadioButton;
    D_C0902_2: TRadioButton;
    D_C0902_3: TRadioButton;
    D_C0902_4: TRadioButton;
    D_C0902_5: TRadioButton;
    D_C0902_5E: TEdit;
    Panel190: TPanel;
    pn_DItem06: TPanel;
    Bevel322: TBevel;
    Bevel323: TBevel;
    Bevel324: TBevel;
    Bevel325: TBevel;
    Bevel326: TBevel;
    D_C0903_1: TRadioButton;
    D_C0903_2: TRadioButton;
    D_C0903_3: TRadioButton;
    D_C0903_4: TRadioButton;
    D_C0903_5: TRadioButton;
    D_C0903_5E: TEdit;
    Panel193: TPanel;
    pn_DItem07: TPanel;
    Bevel365: TBevel;
    Bevel366: TBevel;
    Bevel367: TBevel;
    Bevel368: TBevel;
    Bevel369: TBevel;
    D_C0904_1: TRadioButton;
    D_C0904_2: TRadioButton;
    D_C0904_3: TRadioButton;
    D_C0904_4: TRadioButton;
    D_C0904_5: TRadioButton;
    D_C0904_5E: TEdit;
    Panel197: TPanel;
    pn_DItem08: TPanel;
    Bevel462: TBevel;
    Bevel487: TBevel;
    Bevel512: TBevel;
    Bevel513: TBevel;
    Bevel514: TBevel;
    D_C0905_1: TRadioButton;
    D_C0905_2: TRadioButton;
    D_C0905_3: TRadioButton;
    D_C0905_4: TRadioButton;
    D_C0905_5: TRadioButton;
    D_C0905_5E: TEdit;
    Panel199: TPanel;
    pn_DItem09: TPanel;
    Bevel374: TBevel;
    Bevel375: TBevel;
    Bevel376: TBevel;
    Bevel377: TBevel;
    Bevel378: TBevel;
    D_C0906_1: TRadioButton;
    D_C0906_2: TRadioButton;
    D_C0906_3: TRadioButton;
    D_C0906_4: TRadioButton;
    D_C0906_5: TRadioButton;
    D_C0906_5E: TEdit;
    Panel201: TPanel;
    pn_DItem10: TPanel;
    Bevel382: TBevel;
    Bevel383: TBevel;
    Bevel384: TBevel;
    Bevel385: TBevel;
    Bevel386: TBevel;
    D_C0908_1: TRadioButton;
    D_C0908_2: TRadioButton;
    D_C0908_3: TRadioButton;
    D_C0908_4: TRadioButton;
    D_C0908_5: TRadioButton;
    D_C0908_5E: TEdit;
    Panel203: TPanel;
    pn_EItem04: TPanel;
    Bevel390: TBevel;
    Bevel391: TBevel;
    Bevel392: TBevel;
    Bevel393: TBevel;
    Bevel394: TBevel;
    E_C0901_1: TRadioButton;
    E_C0901_2: TRadioButton;
    E_C0901_3: TRadioButton;
    E_C0901_4: TRadioButton;
    E_C0901_5: TRadioButton;
    E_C0901_5E: TEdit;
    Panel205: TPanel;
    Panel207: TPanel;
    Bevel398: TBevel;
    Bevel399: TBevel;
    Bevel400: TBevel;
    E_B0901_1: TRadioButton;
    E_B0901_2: TRadioButton;
    E_B0901_3: TRadioButton;
    Panel208: TPanel;
    Panel209: TPanel;
    E_B0907_1: TEdit;
    Panel210: TPanel;
    Bevel401: TBevel;
    Bevel402: TBevel;
    Bevel403: TBevel;
    E_B0902_1: TRadioButton;
    E_B0902_2: TRadioButton;
    E_B0902_3: TRadioButton;
    Panel211: TPanel;
    Panel212: TPanel;
    Bevel404: TBevel;
    Bevel405: TBevel;
    Bevel406: TBevel;
    E_B0903_1: TRadioButton;
    E_B0903_2: TRadioButton;
    E_B0903_3: TRadioButton;
    Panel213: TPanel;
    Panel214: TPanel;
    Bevel407: TBevel;
    Bevel408: TBevel;
    Bevel409: TBevel;
    E_B0904_1: TRadioButton;
    E_B0904_2: TRadioButton;
    E_B0904_3: TRadioButton;
    Panel215: TPanel;
    Panel218: TPanel;
    Bevel410: TBevel;
    Bevel411: TBevel;
    Bevel412: TBevel;
    E_B0905_1: TRadioButton;
    E_B0905_2: TRadioButton;
    E_B0905_3: TRadioButton;
    Panel219: TPanel;
    Panel304: TPanel;
    Bevel413: TBevel;
    Bevel414: TBevel;
    Bevel415: TBevel;
    E_B0906_1: TRadioButton;
    E_B0906_2: TRadioButton;
    E_B0906_3: TRadioButton;
    Panel306: TPanel;
    Panel309: TPanel;
    Bevel416: TBevel;
    Bevel417: TBevel;
    Bevel418: TBevel;
    E_B0908_1: TRadioButton;
    E_B0908_2: TRadioButton;
    E_B0908_3: TRadioButton;
    pn_EItem05: TPanel;
    Bevel419: TBevel;
    Bevel420: TBevel;
    Bevel421: TBevel;
    Bevel422: TBevel;
    Bevel423: TBevel;
    E_C0902_1: TRadioButton;
    E_C0902_2: TRadioButton;
    E_C0902_3: TRadioButton;
    E_C0902_4: TRadioButton;
    E_C0902_5: TRadioButton;
    E_C0902_5E: TEdit;
    Panel313: TPanel;
    pn_EItem06: TPanel;
    Bevel424: TBevel;
    Bevel425: TBevel;
    Bevel426: TBevel;
    Bevel427: TBevel;
    Bevel428: TBevel;
    E_C0903_1: TRadioButton;
    E_C0903_2: TRadioButton;
    E_C0903_3: TRadioButton;
    E_C0903_4: TRadioButton;
    E_C0903_5: TRadioButton;
    E_C0903_5E: TEdit;
    Panel319: TPanel;
    pn_EItem07: TPanel;
    Bevel429: TBevel;
    Bevel430: TBevel;
    Bevel431: TBevel;
    Bevel432: TBevel;
    Bevel433: TBevel;
    E_C0904_1: TRadioButton;
    E_C0904_2: TRadioButton;
    E_C0904_3: TRadioButton;
    E_C0904_4: TRadioButton;
    E_C0904_5: TRadioButton;
    E_C0904_5E: TEdit;
    Panel322: TPanel;
    pn_EItem08: TPanel;
    Bevel434: TBevel;
    Bevel435: TBevel;
    Bevel436: TBevel;
    Bevel437: TBevel;
    Bevel438: TBevel;
    E_C0905_1: TRadioButton;
    E_C0905_2: TRadioButton;
    E_C0905_3: TRadioButton;
    E_C0905_4: TRadioButton;
    E_C0905_5: TRadioButton;
    E_C0905_5E: TEdit;
    Panel326: TPanel;
    pn_EItem09: TPanel;
    Bevel439: TBevel;
    Bevel440: TBevel;
    Bevel441: TBevel;
    Bevel442: TBevel;
    Bevel443: TBevel;
    E_C0906_1: TRadioButton;
    E_C0906_2: TRadioButton;
    E_C0906_3: TRadioButton;
    E_C0906_4: TRadioButton;
    E_C0906_5: TRadioButton;
    E_C0906_5E: TEdit;
    Panel330: TPanel;
    pn_EItem10: TPanel;
    Bevel444: TBevel;
    Bevel445: TBevel;
    Bevel446: TBevel;
    Bevel447: TBevel;
    Bevel448: TBevel;
    E_C0908_1: TRadioButton;
    E_C0908_2: TRadioButton;
    E_C0908_3: TRadioButton;
    E_C0908_4: TRadioButton;
    E_C0908_5: TRadioButton;
    E_C0908_5E: TEdit;
    Panel332: TPanel;
    pn_NItem04: TPanel;
    Bevel449: TBevel;
    Bevel450: TBevel;
    Bevel451: TBevel;
    Bevel452: TBevel;
    Bevel453: TBevel;
    N_C0901_1: TRadioButton;
    N_C0901_2: TRadioButton;
    N_C0901_3: TRadioButton;
    N_C0901_4: TRadioButton;
    N_C0901_5: TRadioButton;
    N_C0901_5E: TEdit;
    Panel334: TPanel;
    Panel335: TPanel;
    Bevel454: TBevel;
    Bevel455: TBevel;
    Bevel456: TBevel;
    N_B0901_1: TRadioButton;
    N_B0901_2: TRadioButton;
    N_B0901_3: TRadioButton;
    Panel336: TPanel;
    Panel337: TPanel;
    N_B0907_1: TEdit;
    Panel338: TPanel;
    Bevel457: TBevel;
    Bevel458: TBevel;
    Bevel459: TBevel;
    N_B0902_1: TRadioButton;
    N_B0902_2: TRadioButton;
    N_B0902_3: TRadioButton;
    Panel339: TPanel;
    Panel340: TPanel;
    Bevel460: TBevel;
    Bevel461: TBevel;
    Bevel463: TBevel;
    N_B0903_1: TRadioButton;
    N_B0903_2: TRadioButton;
    N_B0903_3: TRadioButton;
    Panel341: TPanel;
    Panel342: TPanel;
    Bevel464: TBevel;
    Bevel465: TBevel;
    Bevel466: TBevel;
    N_B0904_1: TRadioButton;
    N_B0904_2: TRadioButton;
    N_B0904_3: TRadioButton;
    Panel343: TPanel;
    Panel344: TPanel;
    Bevel467: TBevel;
    Bevel468: TBevel;
    Bevel469: TBevel;
    N_B0905_1: TRadioButton;
    N_B0905_2: TRadioButton;
    N_B0905_3: TRadioButton;
    Panel345: TPanel;
    Panel348: TPanel;
    Bevel470: TBevel;
    Bevel471: TBevel;
    Bevel472: TBevel;
    N_B0906_1: TRadioButton;
    N_B0906_2: TRadioButton;
    N_B0906_3: TRadioButton;
    Panel349: TPanel;
    Panel350: TPanel;
    Bevel473: TBevel;
    Bevel474: TBevel;
    Bevel475: TBevel;
    N_B0908_1: TRadioButton;
    N_B0908_2: TRadioButton;
    N_B0908_3: TRadioButton;
    pn_NItem05: TPanel;
    Bevel476: TBevel;
    Bevel477: TBevel;
    Bevel478: TBevel;
    Bevel479: TBevel;
    Bevel480: TBevel;
    N_C0902_1: TRadioButton;
    N_C0902_2: TRadioButton;
    N_C0902_3: TRadioButton;
    N_C0902_4: TRadioButton;
    N_C0902_5: TRadioButton;
    N_C0902_5E: TEdit;
    Panel352: TPanel;
    pn_NItem06: TPanel;
    Bevel481: TBevel;
    Bevel482: TBevel;
    Bevel483: TBevel;
    Bevel484: TBevel;
    Bevel485: TBevel;
    N_C0903_1: TRadioButton;
    N_C0903_2: TRadioButton;
    N_C0903_3: TRadioButton;
    N_C0903_4: TRadioButton;
    N_C0903_5: TRadioButton;
    N_C0903_5E: TEdit;
    Panel354: TPanel;
    pn_NItem07: TPanel;
    Bevel486: TBevel;
    Bevel488: TBevel;
    Bevel489: TBevel;
    Bevel490: TBevel;
    Bevel491: TBevel;
    N_C0904_1: TRadioButton;
    N_C0904_2: TRadioButton;
    N_C0904_3: TRadioButton;
    N_C0904_4: TRadioButton;
    N_C0904_5: TRadioButton;
    N_C0904_5E: TEdit;
    Panel356: TPanel;
    pn_NItem08: TPanel;
    Bevel492: TBevel;
    Bevel493: TBevel;
    Bevel494: TBevel;
    Bevel495: TBevel;
    Bevel496: TBevel;
    N_C0905_1: TRadioButton;
    N_C0905_2: TRadioButton;
    N_C0905_3: TRadioButton;
    N_C0905_4: TRadioButton;
    N_C0905_5: TRadioButton;
    N_C0905_5E: TEdit;
    Panel358: TPanel;
    pn_NItem09: TPanel;
    Bevel497: TBevel;
    Bevel498: TBevel;
    Bevel499: TBevel;
    Bevel500: TBevel;
    Bevel501: TBevel;
    N_C0906_1: TRadioButton;
    N_C0906_2: TRadioButton;
    N_C0906_3: TRadioButton;
    N_C0906_4: TRadioButton;
    N_C0906_5: TRadioButton;
    N_C0906_5E: TEdit;
    Panel360: TPanel;
    pn_NItem10: TPanel;
    Bevel502: TBevel;
    Bevel503: TBevel;
    Bevel504: TBevel;
    Bevel505: TBevel;
    Bevel506: TBevel;
    N_C0908_1: TRadioButton;
    N_C0908_2: TRadioButton;
    N_C0908_3: TRadioButton;
    N_C0908_4: TRadioButton;
    N_C0908_5: TRadioButton;
    N_C0908_5E: TEdit;
    Panel362: TPanel;
    lb_PatNo: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    lb_PatName: TLabel;
    Label40: TLabel;
    lb_AdmDate: TLabel;
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
    ed_D_AssNursName: TEdit;
    ed_D_AssNursId: TEdit;
    med_D_AssTime: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Bevel3: TBevel;
    ed_E_AssNursName: TEdit;
    ed_E_AssNursId: TEdit;
    med_E_AssTime: TMaskEdit;
    Label2: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    ed_D_AssDept: TEdit;
    ed_E_AssDept: TEdit;
    Bevel7: TBevel;
    ed_N_AssNursName: TEdit;
    ed_N_AssNursId: TEdit;
    med_N_AssTime: TMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    ed_N_AssDept: TEdit;
    shp_Alert_D: TShape;
    shp_Alert_E: TShape;
    shp_Alert_N: TShape;
    pn_DDetail01: TPanel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label43: TLabel;
    Label45: TLabel;
    D_B0603_2: TEdit;
    Panel66: TPanel;
    D_B0603_1: TMaskEdit;
    Panel67: TPanel;
    D_B0603_3: TEdit;
    Panel72: TPanel;
    D_B0603_4: TEdit;
    Panel3: TPanel;
    pn_EDetail01: TPanel;
    Bevel8: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label8: TLabel;
    Label10: TLabel;
    E_B0603_2: TEdit;
    Panel21: TPanel;
    E_B0603_1: TMaskEdit;
    Panel25: TPanel;
    E_B0603_3: TEdit;
    Panel27: TPanel;
    E_B0603_4: TEdit;
    Panel28: TPanel;
    pn_NDetail01: TPanel;
    Bevel318: TBevel;
    Bevel330: TBevel;
    Bevel331: TBevel;
    Label11: TLabel;
    Label13: TLabel;
    N_B0603_2: TEdit;
    Panel30: TPanel;
    N_B0603_1: TMaskEdit;
    Panel31: TPanel;
    N_B0603_3: TEdit;
    Panel32: TPanel;
    N_B0603_4: TEdit;
    Panel34: TPanel;
    Panel35: TPanel;
    pn_DDetail02: TPanel;
    Bevel332: TBevel;
    Bevel333: TBevel;
    Bevel334: TBevel;
    Label14: TLabel;
    D_B0703_2: TEdit;
    Panel37: TPanel;
    D_B0703_1: TMaskEdit;
    Panel38: TPanel;
    D_B0703_3: TEdit;
    Panel39: TPanel;
    pn_EDetail02: TPanel;
    Bevel335: TBevel;
    Bevel336: TBevel;
    Bevel337: TBevel;
    Label16: TLabel;
    E_B0703_2: TEdit;
    Panel41: TPanel;
    E_B0703_1: TMaskEdit;
    Panel42: TPanel;
    E_B0703_3: TEdit;
    Panel43: TPanel;
    pn_NDetail02: TPanel;
    Bevel338: TBevel;
    Bevel339: TBevel;
    Bevel340: TBevel;
    Label18: TLabel;
    N_B0703_2: TEdit;
    Panel45: TPanel;
    N_B0703_1: TMaskEdit;
    Panel46: TPanel;
    N_B0703_3: TEdit;
    sbt_CalcIntube: TSpeedButton;
    pn_DItem11: TPanel;
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
    Panel4: TPanel;
    Bevel96: TBevel;
    Bevel97: TBevel;
    D_B0303_1: TRadioButton;
    D_B0303_2: TRadioButton;
    Panel11: TPanel;
    Bevel49: TBevel;
    Bevel50: TBevel;
    D_B0301_1: TRadioButton;
    D_B0301_2: TRadioButton;
    Panel81: TPanel;
    Panel82: TPanel;
    Panel83: TPanel;
    Panel84: TPanel;
    Panel85: TPanel;
    Panel86: TPanel;
    pn_DItem01: TPanel;
    Bevel83: TBevel;
    Bevel84: TBevel;
    Bevel85: TBevel;
    Bevel86: TBevel;
    D_C0301_2: TCheckBox;
    D_C0301_1: TCheckBox;
    D_C0301_4: TCheckBox;
    D_C0301_3: TCheckBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    D_B0304_1: TRadioButton;
    D_B0304_2: TRadioButton;
    Panel7: TPanel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    D_B0305_1: TRadioButton;
    D_B0305_2: TRadioButton;
    Panel20: TPanel;
    Bevel341: TBevel;
    Bevel342: TBevel;
    D_B0306_1: TRadioButton;
    D_B0306_2: TRadioButton;
    Panel29: TPanel;
    Panel36: TPanel;
    Bevel343: TBevel;
    Bevel344: TBevel;
    E_B0306_1: TRadioButton;
    E_B0306_2: TRadioButton;
    Panel40: TPanel;
    pn_EItem11: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel57: TPanel;
    Panel50: TPanel;
    Panel10: TPanel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    E_B0301_1: TRadioButton;
    E_B0301_2: TRadioButton;
    pn_EItem01: TPanel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    E_C0301_2: TCheckBox;
    E_C0301_1: TCheckBox;
    E_C0301_4: TCheckBox;
    E_C0301_3: TCheckBox;
    Panel8: TPanel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    E_B0302_1: TCheckBox;
    E_B0302_2: TCheckBox;
    E_B0302_3: TCheckBox;
    E_B0302_4: TCheckBox;
    E_B0302_5: TCheckBox;
    E_B0302_6: TCheckBox;
    Panel9: TPanel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    E_B0303_1: TRadioButton;
    E_B0303_2: TRadioButton;
    Panel33: TPanel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    E_B0304_1: TRadioButton;
    E_B0304_2: TRadioButton;
    Panel74: TPanel;
    Bevel35: TBevel;
    Bevel36: TBevel;
    E_B0305_1: TRadioButton;
    E_B0305_2: TRadioButton;
    pn_NItem11: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel22: TPanel;
    Panel24: TPanel;
    Panel26: TPanel;
    Panel44: TPanel;
    Panel77: TPanel;
    Bevel46: TBevel;
    Bevel47: TBevel;
    N_B0301_1: TRadioButton;
    N_B0301_2: TRadioButton;
    pn_NItem01: TPanel;
    Bevel51: TBevel;
    Bevel52: TBevel;
    Bevel53: TBevel;
    Bevel54: TBevel;
    N_C0301_2: TCheckBox;
    N_C0301_1: TCheckBox;
    N_C0301_4: TCheckBox;
    N_C0301_3: TCheckBox;
    Panel75: TPanel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    N_B0302_1: TCheckBox;
    N_B0302_2: TCheckBox;
    N_B0302_3: TCheckBox;
    N_B0302_4: TCheckBox;
    N_B0302_5: TCheckBox;
    N_B0302_6: TCheckBox;
    Panel76: TPanel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    N_B0303_1: TRadioButton;
    N_B0303_2: TRadioButton;
    Panel93: TPanel;
    Bevel55: TBevel;
    Bevel56: TBevel;
    N_B0304_1: TRadioButton;
    N_B0304_2: TRadioButton;
    Panel94: TPanel;
    Bevel57: TBevel;
    Bevel58: TBevel;
    N_B0305_1: TRadioButton;
    N_B0305_2: TRadioButton;
    Panel47: TPanel;
    Bevel345: TBevel;
    Bevel346: TBevel;
    N_B0306_1: TRadioButton;
    N_B0306_2: TRadioButton;
    Panel48: TPanel;
    bbt_Print: TBitBtn;
    lb_Sex: TLabel;
    lb_Age: TLabel;
    lb_RoomNo: TLabel;
    pn_EmrList: TPanel;
    Panel16: TPanel;
    Panel49: TPanel;
    bbt_Ok: TBitBtn;
    bbt_ListExit: TBitBtn;
    bbt_Select: TBitBtn;
    Panel56: TPanel;
    ugd_EmrList: TUltraGrid;
    D_B0603Remove: TSpeedButton;
    D_B0703Remove: TSpeedButton;
    E_B0603Remove: TSpeedButton;
    E_B0703Remove: TSpeedButton;
    N_B0603Remove: TSpeedButton;
    N_B0703Remove: TSpeedButton;
    Bevel347: TBevel;
    Label9: TLabel;
    D_B0913Remove: TSpeedButton;
    D_B0913_2: TEdit;
    Panel80: TPanel;
    D_B0913_1: TMaskEdit;
    Panel58: TPanel;
    D_B0913_3: TEdit;
    Bevel348: TBevel;
    Label12: TLabel;
    D_B0912Remove: TSpeedButton;
    D_B0912_2: TEdit;
    Panel59: TPanel;
    D_B0912_1: TMaskEdit;
    Bevel349: TBevel;
    Label15: TLabel;
    D_B0911Remove: TSpeedButton;
    D_B0911_2: TEdit;
    Panel60: TPanel;
    D_B0911_1: TMaskEdit;
    Panel61: TPanel;
    D_B0911_3: TEdit;
    Bevel350: TBevel;
    Label17: TLabel;
    D_B0910Remove: TSpeedButton;
    D_B0910_2: TEdit;
    Panel62: TPanel;
    D_B0910_1: TMaskEdit;
    Bevel351: TBevel;
    Label19: TLabel;
    D_B0909Remove: TSpeedButton;
    D_B0909_2: TEdit;
    Panel63: TPanel;
    D_B0909_1: TMaskEdit;
    Panel64: TPanel;
    D_B0909_3: TEdit;
    Bevel352: TBevel;
    Label36: TLabel;
    E_B0909Remove: TSpeedButton;
    E_B0909_2: TEdit;
    Panel65: TPanel;
    E_B0909_1: TMaskEdit;
    Panel68: TPanel;
    E_B0909_3: TEdit;
    Bevel353: TBevel;
    Label39: TLabel;
    N_B0909Remove: TSpeedButton;
    N_B0909_2: TEdit;
    Panel69: TPanel;
    N_B0909_1: TMaskEdit;
    Panel70: TPanel;
    N_B0909_3: TEdit;
    Bevel354: TBevel;
    Label41: TLabel;
    E_B0910Remove: TSpeedButton;
    E_B0910_2: TEdit;
    Panel71: TPanel;
    E_B0910_1: TMaskEdit;
    Bevel355: TBevel;
    Label42: TLabel;
    N_B0910Remove: TSpeedButton;
    N_B0910_2: TEdit;
    Panel73: TPanel;
    N_B0910_1: TMaskEdit;
    Bevel356: TBevel;
    Label44: TLabel;
    E_B0911Remove: TSpeedButton;
    E_B0911_2: TEdit;
    Panel87: TPanel;
    E_B0911_1: TMaskEdit;
    Panel88: TPanel;
    E_B0911_3: TEdit;
    Bevel357: TBevel;
    Label46: TLabel;
    N_B0911Remove: TSpeedButton;
    N_B0911_2: TEdit;
    Panel89: TPanel;
    N_B0911_1: TMaskEdit;
    Panel90: TPanel;
    N_B0911_3: TEdit;
    Bevel358: TBevel;
    Label47: TLabel;
    E_B0912Remove: TSpeedButton;
    E_B0912_2: TEdit;
    Panel91: TPanel;
    E_B0912_1: TMaskEdit;
    Bevel359: TBevel;
    Label48: TLabel;
    N_B0912Remove: TSpeedButton;
    N_B0912_2: TEdit;
    Panel92: TPanel;
    N_B0912_1: TMaskEdit;
    Bevel360: TBevel;
    Label49: TLabel;
    E_B0913Remove: TSpeedButton;
    E_B0913_2: TEdit;
    Panel95: TPanel;
    E_B0913_1: TMaskEdit;
    Panel145: TPanel;
    E_B0913_3: TEdit;
    Bevel361: TBevel;
    Label50: TLabel;
    N_B0913Remove: TSpeedButton;
    N_B0913_2: TEdit;
    Panel146: TPanel;
    N_B0913_1: TMaskEdit;
    Panel157: TPanel;
    N_B0913_3: TEdit;
    lb_Deptnm: TLabel;
    lb_Birtdate: TLabel;
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
    procedure D_B0301_1Click(Sender: TObject);
    procedure E_B0301_1Click(Sender: TObject);
    procedure N_B0301_1Click(Sender: TObject);
    procedure D_B0407_1Click(Sender: TObject);
    procedure E_B0407_1Click(Sender: TObject);
    procedure N_B0407_1Click(Sender: TObject);
    procedure D_B0501_1Click(Sender: TObject);
    procedure E_B0501_1Click(Sender: TObject);
    procedure N_B0501_1Click(Sender: TObject);
    procedure D_B0805_1Click(Sender: TObject);
    procedure E_B0805_1Click(Sender: TObject);
    procedure N_B0805_1Click(Sender: TObject);
    procedure D_B0808_1Click(Sender: TObject);
    procedure E_B0808_1Click(Sender: TObject);
    procedure N_B0808_1Click(Sender: TObject);
    procedure D_B0901_1Click(Sender: TObject);
    procedure E_B0901_1Click(Sender: TObject);
    procedure N_B0901_1Click(Sender: TObject);
    procedure D_B0902_1Click(Sender: TObject);
    procedure E_B0902_1Click(Sender: TObject);
    procedure N_B0902_1Click(Sender: TObject);
    procedure D_B0903_1Click(Sender: TObject);
    procedure E_B0903_1Click(Sender: TObject);
    procedure N_B0903_1Click(Sender: TObject);
    procedure D_B0904_1Click(Sender: TObject);
    procedure E_B0904_1Click(Sender: TObject);
    procedure N_B0904_1Click(Sender: TObject);
    procedure D_B0905_1Click(Sender: TObject);
    procedure E_B0905_1Click(Sender: TObject);
    procedure N_B0905_1Click(Sender: TObject);
    procedure D_B0906_1Click(Sender: TObject);
    procedure E_B0906_1Click(Sender: TObject);
    procedure N_B0906_1Click(Sender: TObject);
    procedure D_B0908_1Click(Sender: TObject);
    procedure E_B0908_1Click(Sender: TObject);
    procedure N_B0908_1Click(Sender: TObject);
    procedure D_C0901_1Click(Sender: TObject);
    procedure E_C0901_1Click(Sender: TObject);
    procedure N_C0901_1Click(Sender: TObject);
    procedure D_C0902_1Click(Sender: TObject);
    procedure E_C0902_1Click(Sender: TObject);
    procedure N_C0902_1Click(Sender: TObject);
    procedure D_C0903_1Click(Sender: TObject);
    procedure E_C0903_1Click(Sender: TObject);
    procedure N_C0903_1Click(Sender: TObject);
    procedure D_C0904_1Click(Sender: TObject);
    procedure E_C0904_1Click(Sender: TObject);
    procedure N_C0904_1Click(Sender: TObject);
    procedure D_C0905_1Click(Sender: TObject);
    procedure E_C0905_1Click(Sender: TObject);
    procedure N_C0905_1Click(Sender: TObject);
    procedure D_C0906_1Click(Sender: TObject);
    procedure E_C0906_1Click(Sender: TObject);
    procedure N_C0906_1Click(Sender: TObject);
    procedure D_C0908_1Click(Sender: TObject);
    procedure E_C0908_1Click(Sender: TObject);
    procedure N_C0908_1Click(Sender: TObject);
    procedure sbt_DDeleteClick(Sender: TObject);
    procedure sbt_EDeleteClick(Sender: TObject);
    procedure sbt_NDeleteClick(Sender: TObject);
    procedure sbt_DCopyClick(Sender: TObject);
    procedure sbt_ECopyClick(Sender: TObject);
    procedure sbt_NCopyClick(Sender: TObject);
    procedure D_B0603_1Exit(Sender: TObject);
    procedure sbt_CalcIntubeClick(Sender: TObject);
    procedure D_B0603_1Click(Sender: TObject);
    procedure D_B0901_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure D_B0306_1Click(Sender: TObject);
    procedure E_B0306_1Click(Sender: TObject);
    procedure N_B0306_1Click(Sender: TObject);
    procedure bbt_PrintClick(Sender: TObject);
    procedure bbt_SelectClick(Sender: TObject);
    procedure bbt_OkClick(Sender: TObject);
    procedure D_B0603RemoveClick(Sender: TObject);
    procedure D_B0703RemoveClick(Sender: TObject);
    procedure D_B0909RemoveClick(Sender: TObject);
    procedure bt_printClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt_ToNrRecordDClick(Sender: TObject);
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
    // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
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

    // ȯ������ ��ȸ, 2011.09.21 LSH
    procedure LoadPatientInfo;

    // ICU ��ȣ���� ���ĺ�ȯ��� ��ȸ, 2012.01.27 LSH
    // sType5, sType6 �߰� -2015.05.27 smpark
    procedure GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);

    // Duty�� �۾���ư ���� ���� �߰� (�ӻ�����ǥ���� �������), 2012.03.08 LSH
    procedure SetControlStatusOfDuty(AsDuty: string);

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
    property propPatNo      : String read FsPatNo      write FsPatNo  ;
    property propPatName    : String read FsPatName    write FsPatName;
    property propAdmDate    : String read FsAdmDate    write FsAdmDate;
    property propWardNo     : String read FsWardNo     write FsWardNo ;
    property propRoomNo     : String read FsRoomNo     write FsRoomNo ;
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
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� START
    property prop_Fromdate    : String      write P_EMRFromDt  ;
    property prop_Todate      : String      write P_EMRToDt    ;
    // 2016-06-07 ������ , �Կ������ Fromdate - Todate ���� �߰� END
    // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
    property propAge          : String read FsAge        write FsAge      ;
    property propSex          : String read FsSex        write FsSex      ;
    property propBirthymd     : String read FsBirthymd   write FsBirthymd ;
    property propAcptNo       : String read FsAcptNo     write FsAcptNo   ;
    property propCodvCd       : String read FsCodvCd     write FsCodvCd   ;
    property propMedTime      : String read FsMedTime    write FsMedTime  ;

    // ICU ��ȣ���� �ǹ���� �ڵ����Ľ�ĵ, 2011.09.22 LSH --> CPU ������ ��ƸԴ� �κж����� �������.
    procedure AutoScanPrint;

    // ICU ��ȣ���� �ڵ���ĵ ������� New-ver, 2012.01.27 LSH
    procedure AutoScanPrint_New;


  end;




const
   { Duty }
   DT_DAY     = 'D'; // Day
   DT_EVENING = 'E'; // Evening
   DT_NIGHT   = 'N'; // Night



var
  MDN110FU: TMDN110FU;
  // 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
  //// [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
  //CallEmrNurseLinker : procedure (APacket: IPipePacket); stdcall;


implementation

uses
   VarCom, TuxCom, HisUtil, CComFunc, MComFunc, MDCLASS1, MDN110UV, MDN110UU_P01,
   // [EMR����] 2016.04.12 ȫâ�� �߰���(������). TpSvc �߰�
   TpSvc;

{$R *.DFM}


//------------------------------------------------------------------------------
// Form onClose Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2011.01.13
//------------------------------------------------------------------------------
procedure TMDN110FU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;


procedure TMDN110FU.FormCreate(Sender: TObject);
begin
   // [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   if (Application.MainForm.Name = 'SMCMainForm') then
   begin
      LoadEMRComPack;
   end;
end;

//------------------------------------------------------------------------------
// Form onDestroy Event Handler
//
// Author : ByoungSik, Lee
// Date   : 2011.01.13
//------------------------------------------------------------------------------
procedure TMDN110FU.FormDestroy(Sender: TObject);
begin
   MDN110FU := Nil;
end;


//------------------------------------------------------------------------------
// [����] Button onClick Event Handler
// - Close Form
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;



//------------------------------------------------------------------------------
// �ʱ�ȭ
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.Initialize;
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
   if not ((P_PatFlag = 'W') or
           (P_PatFlag = 'D')) then
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
   end;

   // 2016-08-22 ������ , EMR���� ȣ�� �� ��ȣ������� ������ ��ư�� ReadOnly ��� �߰�.
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
   // 2.1. load Patient Information, 2011.09.21 LSH
   LoadPatientInfo;


   // 1.1. Patient Information
   {
   lb_PatNo.Caption   := FsPatNo;
   lb_PatName.Caption := FsPatName;
   lb_AdmDate.Caption := ConvertSDate(FsAdmDate);
   }

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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.FormShow(Sender: TObject);
begin
   // 2016-09-24 ������ , EMR���� ó���ϴ� ��� ����Ǿ� ����.
   //// [EMR����] 2016-06-28 ������ , EMR ��ȣ������� �����ϱ� ���� ��� �߰�
   //if (Application.MainForm.Name = 'SMCMainForm') then
   //begin
   //   Self.FormStyle := fsNormal;
   //end;

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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.scrlbx_AssessMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   with scrlbx_Assess.VertScrollBar do begin
      Position := Position + Increment;
   end;
end;



//------------------------------------------------------------------------------
// ScrollBox onMouseWheelUp Event Handler
// - Scroll Up
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.scrlbx_AssessMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   with scrlbx_Assess.VertScrollBar do begin
      Position := Position - Increment;
   end;
end;



//------------------------------------------------------------------------------
// ��ȣ���� ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.SearchNursingAssessment;
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
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//
// param : AdtSysDate - Current System Date and Time
//------------------------------------------------------------------------------
procedure TMDN110FU.SetAssessDateAndCurrentDuty(AdtSysDateTime : TDateTime);
var
   sToday   : String;      // ���� ��¥
   sCurTime : String;      // ���� �ð�

begin

   // get current time
   sCurTime := FormatDateTime('HHNNSS', AdtSysDateTime);


   // get assessment date and duty
   if (StrToFloat(sCurTime) >= StrToFloat('000000')) and (StrToFloat(sCurTime) < StrToFloat('070000')) then begin
      // Night of the day before (00:00 ~ 06:59)
      dtp_AssDate.Date := AdtSysDateTime - 1;
      FsCurDuty := DT_NIGHT;

      // Duty ǥ��
      DisplayCurrentDuty(DT_NIGHT);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('070000')) and (StrToFloat(sCurTime) < StrToFloat('150000')) then begin
      // Day (07:00 ~ 14:59)
      dtp_AssDate.Date := AdtSysDateTime;
      FsCurDuty := DT_DAY;

      // Duty ǥ��
      DisplayCurrentDuty(DT_DAY);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('150000')) and (StrToFloat(sCurTime) < StrToFloat('220000')) then begin
      // Evening (15:00 ~ 21:59)
      dtp_AssDate.Date := AdtSysDateTime;
      FsCurDuty := DT_EVENING;

      // Duty ǥ��
      DisplayCurrentDuty(DT_EVENING);
   end
   else if (StrToFloat(sCurTime) >= StrToFloat('220000')) and (StrToFloat(sCurTime) <= StrToFloat('235959')) then begin
      // Night (22:00 ~ 06:59)
      dtp_AssDate.Date := AdtSysDateTime;
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
      dtp_AssDate.Date := StrToDate(P_RgtDate);

      // ������� �����, P_RgtDate�� ��ȸ�ϴ� �κ� Skip���� Clear, 2012.03.07 LSH
      P_PatFlag := '';
   end;

end;



//------------------------------------------------------------------------------
// [Day ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.ed_D_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      SearchUser('N', ed_D_AssNursName, ed_D_AssNursId, ed_D_AssNursName, ed_D_AssDept, Nil);
   end;
end;


//------------------------------------------------------------------------------
// [Evening ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.ed_E_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      SearchUser('N', ed_E_AssNursName, ed_E_AssNursId, ed_E_AssNursName, ed_E_AssDept, Nil);
   end;
end;



//------------------------------------------------------------------------------
// [Night ��ȣ��] Edit onKeyDown Event Handler
// - ��ȣ�� �˻�
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.ed_N_AssNursNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      SearchUser('N', ed_N_AssNursName, ed_N_AssNursId, ed_N_AssNursName, ed_N_AssDept, Nil);
   end;
end;


//------------------------------------------------------------------------------
// �� �׸� �� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FU.ClearValueOf(AsDuty: String);
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
// ��ȣ���� ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.LoadAssessmentInfo;
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



      // [���� ����� ���/ȯ�ڱ��������ȸ]�� ���õ� �������, 2011.10.24 LSH
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
         // Free �߰�
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
         for i := 0 to iRowCnt - 1 do begin
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_AssNursName') as TEdit).Text     := sAssNursNm[i]; // ���� ��ȣ�� ��
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_AssNursId'  ) as TEdit).Text     := sAssNurs  [i]; // ���� ��ȣ�� ID
            (GetComp(Self.Name, 'ed_'  + String(sDuty[i]) + '_AssDept'    ) as TEdit).Text     := sAssDept  [i]; // ���� �μ�
            (GetComp(Self.Name, 'med_' + String(sDuty[i]) + '_AssTime'    ) as TMaskEdit).Text := sAssTime  [i]; // ���� �ð�

            // ���� ���� ���� Setting
            (GetComp(Self.Name, 'sbt_'  + String(sDuty[i]) + 'Copy') as TSpeedButton).Tag := 1; // 1:���� ������ ����

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
   //  - �ڵ����ĺ�ȯ ����, Default �������� �ȵǵ��� ��, 2011.09.22 LSH
   //---------------------------------------------------------------------------
   if (P_EMRPrintYn <> 'Y') and
      (P_PreViewYn <> 'Y')  then
   begin
      if Trim((GetComp(Self.Name, 'ed_'  + FsCurDuty + '_AssNursId'  ) as TEdit).Text) = '' then begin
         // get current system date
         GetSysDate(systime);

         // 2013.03.15 khs ���� Duty���� ��츸 �α����� ���� �� �ð��� ǥ�����ֵ��� ����
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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.14
//------------------------------------------------------------------------------
procedure TMDN110FU.LoadAssessmentResult;
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
      AsSetType := 'ICNAS';
      AsPatNo   := FsPatNo;
      AsAdmDate := FsAdmDate;


      // [���� ����� ���/ȯ�ڱ��������ȸ]�� ���õ� �������, 2011.10.24 LSH
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


      //------------------------------------------------------------------------
      // �ڵ����ĺ�ȯ�� ������ ��ȿ�Ұ��, ��� flag ����, 2011.09.22 LSH
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
                             'ICU ��ȣ���� �׸���ȸ�� ����ó��',
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

// 2016-07-23 ������ , LoadEMRComPack�� HisCom�� LoadEMRFunc.pas�� �̰�
//procedure TMDN110FU.LoadEMRComPack;
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

//------------------------------------------------------------------------------
// [��������] DateTimePicker onCloseUp Event Handler
// - �������� ��ȣ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.01.17
//------------------------------------------------------------------------------
procedure TMDN110FU.dtp_AssDateCloseUp(Sender: TObject);
begin

   //-----------------------------------------------------------------
   // ��ȣ���� ��ȸ
   //-----------------------------------------------------------------
   SearchNursingAssessment;


   //----------------------------------------------------------------
   // 2. ���� Duty ǥ��
   //----------------------------------------------------------------
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then begin
      DisplayCurrentDuty(FsCurDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - �������� ��ȣ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.01.17
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_PreviousClick(Sender: TObject);
begin

   //----------------------------------------------------------------
   // 1. Change Date
   //----------------------------------------------------------------
   dtp_AssDate.Date := dtp_AssDate.Date - 1;


   //----------------------------------------------------------------
   // 2. ����� ���� ��ȣ���� ��ȸ
   //----------------------------------------------------------------
   SearchNursingAssessment;


   //----------------------------------------------------------------
   // 3. ���� Duty ǥ��
   //----------------------------------------------------------------
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then begin
      DisplayCurrentDuty(FsCurDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;



//------------------------------------------------------------------------------
// [��������] Button onClick Event Handler
// - �������� ��ȣ���� ��ȸ
//
// Author : ByoungSik, Lee
// Date   : 2011.01.17
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_NextClick(Sender: TObject);
begin
   //----------------------------------------------------------------
   // 1. Change Date
   //----------------------------------------------------------------
   dtp_AssDate.Date := dtp_AssDate.Date + 1;




   //----------------------------------------------------------------
   // 2. ����� ���� ��ȣ���� ��ȸ
   //----------------------------------------------------------------
   SearchNursingAssessment;




   //------------------------------------------------------------------
   // 3. �ڵ����ĺ�ȯ�� ���, ������� + 1�� ������ȸ, 2011.09.09 LSH
   //  - ���ĺ�ȯ���� Ʃ���ϸ鼭, �������. 2012.01.31 LSH
   //------------------------------------------------------------------
   {
   if (P_EMRPrintYn = 'Y') then
   begin
      bbt_PrintClick(Sender);

      Exit;
   end;
   }



   //----------------------------------------------------------------
   // 4. ���� Duty ǥ��
   //----------------------------------------------------------------
   // ���� Duty�� ��츸 ǥ��
   if (Trunc(FSysDate) = Trunc(dtp_AssDate.Date)) then begin
      DisplayCurrentDuty(FsCurDuty);
   end
   else begin
      DisplayCurrentDuty('');
   end;

end;



//------------------------------------------------------------------------------
// ��ȣ���� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.18
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FU.SaveAssessmentOfDuty(AsDuty: string): Boolean;
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
                  curAss := HmdIcuinf.Create;

                  with curAss do begin
                     sSettype := 'ICNAS';
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
            else if Self.Components[i] is TMaskEdit then begin
               //-----------------------------------------
               // MaskEdit Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'med') and (LengthByte((oCurComp as TMaskEdit).Text) > 1) then begin

                  curAss := HmdIcuinf.Create;

                  with curAss do begin
                     sSettype := 'ICNAS';
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
            else if Self.Components[i] is TCheckBox then begin
               //-----------------------------------------
               // CheckBox Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'chx') and (oCurComp as TCheckBox).Checked then begin
                  curAss := HmdIcuinf.Create;

                  with curAss do begin
                     sSettype := 'ICNAS';
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
            else if Self.Components[i] is TRadioButton then begin
               //-----------------------------------------
               // RadioButton Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 3) <> 'rbt') and (oCurComp as TRadioButton).Checked then begin
                  curAss := HmdIcuinf.Create;

                  with curAss do begin
                     sSettype := 'ICNAS';
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
            else if Self.Components[i] is TMemo then begin
               //-----------------------------------------
               // Memo Component
               //-----------------------------------------
               if (CopyByte(sCurCompName, 1, 2) <> 'me') and (LengthByte(Trim((oCurComp as TMemo).Text)) > 0) then begin
                  curAss := HmdIcuinf.Create;

                  with curAss do begin
                     sSettype := 'ICNAS';
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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.18
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_DSaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_D_AssNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      ed_D_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_D_AssTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      med_D_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_DAY) then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date) + '������ Day Duty ��ȣ���� ������ ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Day) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;


   //---------------------------------------------------------------------
   // 2. ��ȣ���� ���� ����
   //---------------------------------------------------------------------
   SaveAssessmentOfDuty(DT_DAY);

end;



//------------------------------------------------------------------------------
// [Evening ó��] Button onClick Event Handler
// - Evening Duty ��ȣ���� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.18
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_ESaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_E_AssNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      ed_E_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_E_AssTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      med_E_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_EVENING) then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date) + '������ Evening Duty ��ȣ���� ������ ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Evening) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;



   //---------------------------------------------------------------------
   // 2. ��ȣ���� ���� ����
   //---------------------------------------------------------------------
   SaveAssessmentOfDuty(DT_EVENING);

end;



//------------------------------------------------------------------------------
// [Night ó��] Button onClick Event Handler
// - Night Duty ��ȣ���� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.18
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_NSaveClick(Sender: TObject);
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
   if LengthByte(Trim(ed_N_AssNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      ed_N_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ� �ð� üũ
   if Trim(med_N_AssTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      med_N_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ������ ���� Ȯ��
   if IsNoData(DT_NIGHT) then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('��' + FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date) + '������ Night Duty ��ȣ���� ������ ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Night) ����',
                         MB_YESNO + MB_ICONQUESTION);

   if iChoice = IDNO then Exit;


   //---------------------------------------------------------------------
   // 2. ��ȣ���� ���� ����
   //---------------------------------------------------------------------
   SaveAssessmentOfDuty(DT_NIGHT);

end;




//------------------------------------------------------------------------------
// [Day - Motor Weakness] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0301_1Click(Sender: TObject);
begin

   pn_DItem01.Enabled := D_B0301_2.Checked;

   if D_B0301_1.Checked then begin
      D_C0301_1.Checked := False;   // �����
      D_C0301_2.Checked := False;   // �˻���
      D_C0301_3.Checked := False;   // ������
      D_C0301_4.Checked := False;   // ������
   end;

end;



//------------------------------------------------------------------------------
// [Evening - Motor Weakness] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0301_1Click(Sender: TObject);
begin

   pn_EItem01.Enabled := E_B0301_2.Checked;

   if E_B0301_1.Checked then begin
      E_C0301_1.Checked := False;   // �����
      E_C0301_2.Checked := False;   // �˻���
      E_C0301_3.Checked := False;   // ������
      E_C0301_4.Checked := False;   // ������
   end;

end;



//------------------------------------------------------------------------------
// [Night - Motor Weakness] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0301_1Click(Sender: TObject);
begin

   pn_NItem01.Enabled := N_B0301_2.Checked;

   if N_B0301_1.Checked then begin
      N_C0301_1.Checked := False;   // �����
      N_C0301_2.Checked := False;   // �˻���
      N_C0301_3.Checked := False;   // ������
      N_C0301_4.Checked := False;   // ������
   end;

end;


//------------------------------------------------------------------------------
// [Day - ����] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0407_1Click(Sender: TObject);
begin
   // ����
    D_B0407_1E.Enabled := D_B0407_1.Checked;

    if not D_B0407_1E.Enabled then D_B0407_1E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - ����] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0407_1Click(Sender: TObject);
begin
   // ����
    E_B0407_1E.Enabled := E_B0407_1.Checked;

   if not E_B0407_1E.Enabled then E_B0407_1E.Text := '';
end;



//------------------------------------------------------------------------------
// [Night - ����] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0407_1Click(Sender: TObject);
begin
   // ����
    N_B0407_1E.Enabled := N_B0407_1.Checked;

   if not N_B0407_1E.Enabled then N_B0407_1E.Text := '';
end;



//------------------------------------------------------------------------------
// [Day - ȣ����] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0501_1Click(Sender: TObject);
begin

   pn_DItem02.Enabled := D_B0501_1.Checked or D_B0501_2.Checked or D_B0501_3.Checked or D_B0501_4.Checked or D_B0501_5.Checked;

   if not pn_DItem02.Enabled then begin
      D_C0501_1.Checked := False;   // RUL
      D_C0501_2.Checked := False;   // RLL
      D_C0501_3.Checked := False;   // LUL
      D_C0501_4.Checked := False;   // LLL
   end;

end;


//------------------------------------------------------------------------------
// [Evening - ȣ����] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0501_1Click(Sender: TObject);
begin

   pn_EItem02.Enabled := E_B0501_1.Checked or E_B0501_2.Checked or E_B0501_3.Checked or E_B0501_4.Checked or E_B0501_5.Checked;

   if not pn_EItem02.Enabled then begin
      E_C0501_1.Checked := False;   // RUL
      E_C0501_2.Checked := False;   // RLL
      E_C0501_3.Checked := False;   // LUL
      E_C0501_4.Checked := False;   // LLL
   end;

end;


//------------------------------------------------------------------------------
// [Night - ȣ����] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0501_1Click(Sender: TObject);
begin

   pn_NItem02.Enabled := N_B0501_1.Checked or N_B0501_2.Checked or N_B0501_3.Checked or N_B0501_4.Checked or N_B0501_5.Checked;

   if not pn_NItem02.Enabled then begin
      N_C0501_1.Checked := False;   // RUL
      N_C0501_2.Checked := False;   // RLL
      N_C0501_3.Checked := False;   // LUL
      N_C0501_4.Checked := False;   // LLL
   end;

end;



//------------------------------------------------------------------------------
// [Day - Pressure UIcer ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0805_1Click(Sender: TObject);
begin

   pn_DItem03.Enabled := not D_B0805_1.Checked;

   D_B0803_1.Enabled := pn_Ditem03.Enabled;  // ��ġ
   D_B0804_1.Enabled := pn_Ditem03.Enabled;  // ũ��

   if not pn_DItem03.Enabled then begin
      D_B0803_1.Text := '';
      D_B0804_1.Text := '';

      D_C0801_1.Checked := False;  // ����
      D_C0801_2.Checked := False;  // ����, �Ǻΰ� ������
      D_C0801_3.Checked := False;  // ��ó�� ����ȭ��
      D_C0801_4.Checked := False;  // ����, ����, ������ ����
   end;

end;



//------------------------------------------------------------------------------
// [Evening - Pressure UIcer ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0805_1Click(Sender: TObject);
begin

   pn_EItem03.Enabled := not E_B0805_1.Checked;

   E_B0803_1.Enabled := pn_Eitem03.Enabled;  // ��ġ
   E_B0804_1.Enabled := pn_Eitem03.Enabled;  // ũ��

   if not pn_EItem03.Enabled then begin
      E_B0803_1.Text := '';
      E_B0804_1.Text := '';

      E_C0801_1.Checked := False;  // ����
      E_C0801_2.Checked := False;  // ����, �Ǻΰ� ������
      E_C0801_3.Checked := False;  // ��ó�� ����ȭ��
      E_C0801_4.Checked := False;  // ����, ����, ������ ����
   end;

end;


//------------------------------------------------------------------------------
// [Night - Pressure UIcer ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0805_1Click(Sender: TObject);
begin

   pn_NItem03.Enabled := not N_B0805_1.Checked;

   N_B0803_1.Enabled := pn_Nitem03.Enabled;  // ��ġ
   N_B0804_1.Enabled := pn_Nitem03.Enabled;  // ũ��

   if not pn_NItem03.Enabled then begin
      N_B0803_1.Text := '';
      N_B0804_1.Text := '';

      N_C0801_1.Checked := False;  // ����
      N_C0801_2.Checked := False;  // ����, �Ǻΰ� ������
      N_C0801_3.Checked := False;  // ��ó�� ����ȭ��
      N_C0801_4.Checked := False;  // ����, ����, ������ ����
   end;

end;



//------------------------------------------------------------------------------
// [Day - Lesion ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0808_1Click(Sender: TObject);
begin

   D_B0806_1.Enabled := not D_B0808_1.Checked;  // ��ġ
   D_B0807_1.Enabled := not D_B0808_1.Checked;  // ũ��

   if D_B0808_1.Checked then begin
      D_B0806_1.Text := '';
      D_B0807_1.Text := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - Lesion ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0808_1Click(Sender: TObject);
begin

   E_B0806_1.Enabled := not E_B0808_1.Checked;  // ��ġ
   E_B0807_1.Enabled := not E_B0808_1.Checked;  // ũ��

   if E_B0808_1.Checked then begin
      E_B0806_1.Text := '';
      E_B0807_1.Text := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - Lesion ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0808_1Click(Sender: TObject);
begin

   N_B0806_1.Enabled := not N_B0808_1.Checked;  // ��ġ
   N_B0807_1.Enabled := not N_B0808_1.Checked;  // ũ��

   if N_B0808_1.Checked then begin
      N_B0806_1.Text := '';
      N_B0807_1.Text := '';
   end;

end;



//------------------------------------------------------------------------------
// [Day - L-tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0901_1Click(Sender: TObject);
begin

   pn_DItem04.Enabled := D_B0901_1.Checked or D_B0901_2.Checked;

   if not pn_Ditem04.Enabled then begin
      D_C0901_1.Checked := False;   // yellow
      D_C0901_2.Checked := False;   // bloody
      D_C0901_3.Checked := False;   // brownish
      D_C0901_4.Checked := False;   // green
      D_C0901_5.Checked := False;   // other
      D_C0901_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - L-tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0901_1Click(Sender: TObject);
begin

   pn_EItem04.Enabled := E_B0901_1.Checked or E_B0901_2.Checked;

   if not pn_Eitem04.Enabled then begin
      E_C0901_1.Checked := False;   // yellow
      E_C0901_2.Checked := False;   // bloody
      E_C0901_3.Checked := False;   // brownish
      E_C0901_4.Checked := False;   // green
      E_C0901_5.Checked := False;   // other
      E_C0901_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - L-tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0901_1Click(Sender: TObject);
begin

   pn_NItem04.Enabled := N_B0901_1.Checked or N_B0901_2.Checked;

   if not pn_Nitem04.Enabled then begin
      N_C0901_1.Checked := False;   // yellow
      N_C0901_2.Checked := False;   // bloody
      N_C0901_3.Checked := False;   // brownish
      N_C0901_4.Checked := False;   // green
      N_C0901_5.Checked := False;   // other
      N_C0901_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - Chest tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0902_1Click(Sender: TObject);
begin

   pn_DItem05.Enabled := D_B0902_1.Checked or D_B0902_2.Checked or D_B0902_3.Checked;

   if not pn_Ditem05.Enabled then begin
      D_C0902_1.Checked := False;   // yellow
      D_C0902_2.Checked := False;   // bloody
      D_C0902_3.Checked := False;   // brownish
      D_C0902_4.Checked := False;   // green
      D_C0902_5.Checked := False;   // other
      D_C0902_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - Chest tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0902_1Click(Sender: TObject);
begin

   pn_EItem05.Enabled := E_B0902_1.Checked or E_B0902_2.Checked or E_B0902_3.Checked;

   if not pn_Eitem05.Enabled then begin
      E_C0902_1.Checked := False;   // yellow
      E_C0902_2.Checked := False;   // bloody
      E_C0902_3.Checked := False;   // brownish
      E_C0902_4.Checked := False;   // green
      E_C0902_5.Checked := False;   // other
      E_C0902_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - Chest tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0902_1Click(Sender: TObject);
begin

   pn_NItem05.Enabled := N_B0902_1.Checked or N_B0902_2.Checked or N_B0902_3.Checked;

   if not pn_Nitem05.Enabled then begin
      N_C0902_1.Checked := False;   // yellow
      N_C0902_2.Checked := False;   // bloody
      N_C0902_3.Checked := False;   // brownish
      N_C0902_4.Checked := False;   // green
      N_C0902_5.Checked := False;   // other
      N_C0902_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - H-vac tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0903_1Click(Sender: TObject);
begin

   pn_DItem06.Enabled := D_B0903_1.Checked or D_B0903_2.Checked or D_B0903_3.Checked;

   if not pn_Ditem06.Enabled then begin
      D_C0903_1.Checked := False;   // yellow
      D_C0903_2.Checked := False;   // bloody
      D_C0903_3.Checked := False;   // brownish
      D_C0903_4.Checked := False;   // green
      D_C0903_5.Checked := False;   // other
      D_C0903_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - H-vac tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0903_1Click(Sender: TObject);
begin

   pn_EItem06.Enabled := E_B0903_1.Checked or E_B0903_2.Checked or E_B0903_3.Checked;

   if not pn_Eitem06.Enabled then begin
      E_C0903_1.Checked := False;   // yellow
      E_C0903_2.Checked := False;   // bloody
      E_C0903_3.Checked := False;   // brownish
      E_C0903_4.Checked := False;   // green
      E_C0903_5.Checked := False;   // other
      E_C0903_5E.Text   := '';
   end;

end;

//------------------------------------------------------------------------------
// [Night - H-vac tube] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0903_1Click(Sender: TObject);
begin

   pn_NItem06.Enabled := N_B0903_1.Checked or N_B0903_2.Checked or N_B0903_3.Checked;

   if not pn_Nitem06.Enabled then begin
      N_C0903_1.Checked := False;   // yellow
      N_C0903_2.Checked := False;   // bloody
      N_C0903_3.Checked := False;   // brownish
      N_C0903_4.Checked := False;   // green
      N_C0903_5.Checked := False;   // other
      N_C0903_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - EVD] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0904_1Click(Sender: TObject);
begin

   pn_DItem07.Enabled := D_B0904_1.Checked or D_B0904_2.Checked or D_B0904_3.Checked;

   if not pn_Ditem07.Enabled then begin
      D_C0904_1.Checked := False;   // yellow
      D_C0904_2.Checked := False;   // bloody
      D_C0904_3.Checked := False;   // brownish
      D_C0904_4.Checked := False;   // green
      D_C0904_5.Checked := False;   // other
      D_C0904_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - EVD] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0904_1Click(Sender: TObject);
begin

   pn_EItem07.Enabled := E_B0904_1.Checked or E_B0904_2.Checked or E_B0904_3.Checked;

   if not pn_Eitem07.Enabled then begin
      E_C0904_1.Checked := False;   // yellow
      E_C0904_2.Checked := False;   // bloody
      E_C0904_3.Checked := False;   // brownish
      E_C0904_4.Checked := False;   // green
      E_C0904_5.Checked := False;   // other
      E_C0904_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - EVD] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0904_1Click(Sender: TObject);
begin

   pn_NItem07.Enabled := N_B0904_1.Checked or N_B0904_2.Checked or N_B0904_3.Checked;

   if not pn_Nitem07.Enabled then begin
      N_C0904_1.Checked := False;   // yellow
      N_C0904_2.Checked := False;   // bloody
      N_C0904_3.Checked := False;   // brownish
      N_C0904_4.Checked := False;   // green
      N_C0904_5.Checked := False;   // other
      N_C0904_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - sump drain] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0905_1Click(Sender: TObject);
begin

   pn_DItem08.Enabled := D_B0905_1.Checked or D_B0905_2.Checked or D_B0905_3.Checked;

   if not pn_Ditem08.Enabled then begin
      D_C0905_1.Checked := False;   // yellow
      D_C0905_2.Checked := False;   // bloody
      D_C0905_3.Checked := False;   // brownish
      D_C0905_4.Checked := False;   // green
      D_C0905_5.Checked := False;   // other
      D_C0905_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - sump drain] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0905_1Click(Sender: TObject);
begin

   pn_EItem08.Enabled := E_B0905_1.Checked or E_B0905_2.Checked or E_B0905_3.Checked;

   if not pn_Eitem08.Enabled then begin
      E_C0905_1.Checked := False;   // yellow
      E_C0905_2.Checked := False;   // bloody
      E_C0905_3.Checked := False;   // brownish
      E_C0905_4.Checked := False;   // green
      E_C0905_5.Checked := False;   // other
      E_C0905_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - sump drain] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0905_1Click(Sender: TObject);
begin

   pn_NItem08.Enabled := N_B0905_1.Checked or N_B0905_2.Checked or N_B0905_3.Checked;

   if not pn_Nitem08.Enabled then begin
      N_C0905_1.Checked := False;   // yellow
      N_C0905_2.Checked := False;   // bloody
      N_C0905_3.Checked := False;   // brownish
      N_C0905_4.Checked := False;   // green
      N_C0905_5.Checked := False;   // other
      N_C0905_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - pigtail] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0906_1Click(Sender: TObject);
begin

   pn_DItem09.Enabled := D_B0906_1.Checked or D_B0906_2.Checked or D_B0906_3.Checked;

   if not pn_Ditem09.Enabled then begin
      D_C0906_1.Checked := False;   // yellow
      D_C0906_2.Checked := False;   // bloody
      D_C0906_3.Checked := False;   // brownish
      D_C0906_4.Checked := False;   // green
      D_C0906_5.Checked := False;   // other
      D_C0906_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - pigtail] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0906_1Click(Sender: TObject);
begin

   pn_EItem09.Enabled := E_B0906_1.Checked or E_B0906_2.Checked or E_B0906_3.Checked;

   if not pn_Eitem09.Enabled then begin
      E_C0906_1.Checked := False;   // yellow
      E_C0906_2.Checked := False;   // bloody
      E_C0906_3.Checked := False;   // brownish
      E_C0906_4.Checked := False;   // green
      E_C0906_5.Checked := False;   // other
      E_C0906_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - pigtail] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0906_1Click(Sender: TObject);
begin

   pn_NItem09.Enabled := N_B0906_1.Checked or N_B0906_2.Checked or N_B0906_3.Checked;

   if not pn_Nitem09.Enabled then begin
      N_C0906_1.Checked := False;   // yellow
      N_C0906_2.Checked := False;   // bloody
      N_C0906_3.Checked := False;   // brownish
      N_C0906_4.Checked := False;   // green
      N_C0906_5.Checked := False;   // other
      N_C0906_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - other] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0908_1Click(Sender: TObject);
begin

   pn_DItem10.Enabled := D_B0908_1.Checked or D_B0908_2.Checked or D_B0908_3.Checked;

   if not pn_Ditem10.Enabled then begin
      D_C0908_1.Checked := False;   // yellow
      D_C0908_2.Checked := False;   // bloody
      D_C0908_3.Checked := False;   // brownish
      D_C0908_4.Checked := False;   // green
      D_C0908_5.Checked := False;   // other
      D_C0908_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Evening - other] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0908_1Click(Sender: TObject);
begin

   pn_EItem10.Enabled := E_B0908_1.Checked or E_B0908_2.Checked or E_B0908_3.Checked;

   if not pn_EItem10.Enabled then begin
      E_C0908_1.Checked := False;   // yellow
      E_C0908_2.Checked := False;   // bloody
      E_C0908_3.Checked := False;   // brownish
      E_C0908_4.Checked := False;   // green
      E_C0908_5.Checked := False;   // other
      E_C0908_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Night - other] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0908_1Click(Sender: TObject);
begin

   pn_NItem10.Enabled := N_B0908_1.Checked or N_B0908_2.Checked or N_B0908_3.Checked;

   if not pn_NItem10.Enabled then begin
      N_C0908_1.Checked := False;   // yellow
      N_C0908_2.Checked := False;   // bloody
      N_C0908_3.Checked := False;   // brownish
      N_C0908_4.Checked := False;   // green
      N_C0908_5.Checked := False;   // other
      N_C0908_5E.Text   := '';
   end;

end;


//------------------------------------------------------------------------------
// [Day - L-tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0901_1Click(Sender: TObject);
begin
   D_C0901_5E.Enabled := D_C0901_5.Checked;

   if not D_C0901_5E.Enabled then D_C0901_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - L-tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0901_1Click(Sender: TObject);
begin
   E_C0901_5E.Enabled := E_C0901_5.Checked;

   if not E_C0901_5E.Enabled then E_C0901_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - L-tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0901_1Click(Sender: TObject);
begin
   N_C0901_5E.Enabled := N_C0901_5.Checked;

   if not N_C0901_5E.Enabled then N_C0901_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - Chest tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0902_1Click(Sender: TObject);
begin
   D_C0902_5E.Enabled := D_C0902_5.Checked;

   if not D_C0902_5E.Enabled then D_C0902_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - Chest tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0902_1Click(Sender: TObject);
begin
   E_C0902_5E.Enabled := E_C0902_5.Checked;

   if not E_C0902_5E.Enabled then E_C0902_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - Chest tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0902_1Click(Sender: TObject);
begin
   N_C0902_5E.Enabled := N_C0902_5.Checked;

   if not N_C0902_5E.Enabled then N_C0902_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - H-vac tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0903_1Click(Sender: TObject);
begin
   D_C0903_5E.Enabled := D_C0903_5.Checked;

   if not D_C0903_5E.Enabled then D_C0903_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - H-vac tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0903_1Click(Sender: TObject);
begin
   E_C0903_5E.Enabled := E_C0903_5.Checked;

   if not E_C0903_5E.Enabled then E_C0903_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - H-vac tube ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0903_1Click(Sender: TObject);
begin
   N_C0903_5E.Enabled := N_C0903_5.Checked;

   if not N_C0903_5E.Enabled then N_C0903_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - EVD ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0904_1Click(Sender: TObject);
begin
   D_C0904_5E.Enabled := D_C0904_5.Checked;

   if not D_C0904_5E.Enabled then D_C0904_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - EVD ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0904_1Click(Sender: TObject);
begin
   E_C0904_5E.Enabled := E_C0904_5.Checked;

   if not E_C0904_5E.Enabled then E_C0904_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - EVD ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0904_1Click(Sender: TObject);
begin
   N_C0904_5E.Enabled := N_C0904_5.Checked;

   if not N_C0904_5E.Enabled then N_C0904_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - sump drain ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0905_1Click(Sender: TObject);
begin
   D_C0905_5E.Enabled := D_C0905_5.Checked;

   if not D_C0905_5E.Enabled then D_C0905_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - sump drain ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0905_1Click(Sender: TObject);
begin
   E_C0905_5E.Enabled := E_C0905_5.Checked;

   if not E_C0905_5E.Enabled then E_C0905_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - sump drain ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0905_1Click(Sender: TObject);
begin
   N_C0905_5E.Enabled := N_C0905_5.Checked;

   if not N_C0905_5E.Enabled then N_C0905_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - pigtail ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0906_1Click(Sender: TObject);
begin
   D_C0906_5E.Enabled := D_C0906_5.Checked;

   if not D_C0906_5E.Enabled then D_C0906_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - pigtail ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0906_1Click(Sender: TObject);
begin
   E_C0906_5E.Enabled := E_C0906_5.Checked;

   if not E_C0906_5E.Enabled then E_C0906_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - pigtail ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0906_1Click(Sender: TObject);
begin
   N_C0906_5E.Enabled := N_C0906_5.Checked;

   if not N_C0906_5E.Enabled then N_C0906_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Day - other ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.D_C0908_1Click(Sender: TObject);
begin
   D_C0908_5E.Enabled := D_C0908_5.Checked;

   if not D_C0908_5E.Enabled then D_C0908_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Evening - other ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.E_C0908_1Click(Sender: TObject);
begin
   E_C0908_5E.Enabled := E_C0908_5.Checked;

   if not E_C0908_5E.Enabled then E_C0908_5E.Text := '';
end;


//------------------------------------------------------------------------------
// [Night - other ��] �׸� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.19
//------------------------------------------------------------------------------
procedure TMDN110FU.N_C0908_1Click(Sender: TObject);
begin
   N_C0908_5E.Enabled := N_C0908_5.Checked;

   if not N_C0908_5E.Enabled then N_C0908_5E.Text := '';
end;



//------------------------------------------------------------------------------
// Duty�� ��ȣ���� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.20
//
// param : AsDuty - Duty(D/E/N)
//
// return : Boolean - true if the transaction has finished Successfully, false otherwise
//------------------------------------------------------------------------------
function TMDN110FU.DeleteAssessmentOfDuty(AsDuty: string): Boolean;
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
      AsSetType := 'ICNAS';

      assess := HmdIcasit.Create;

      with assess do begin
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
      stb_Message.Panels[0].Text := '��ȣ���� ���� ���� ó���� ���������� �Ϸ�Ǿ����ϴ�.';

   finally
      Screen.Cursor := crDefault;

      assess.Free;
      nrsAss.Free;
   end;

end;



//------------------------------------------------------------------------------
// [Day ����] Button onClick Event Handler
// - Day ��ȣ���� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.20
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_DDeleteClick(Sender: TObject);
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
   if sbt_DDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sAssDate := FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sAssDate + '������ Day Duty ��ȣ���� ������ �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Day) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;




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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.20
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_EDeleteClick(Sender: TObject);
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
   if sbt_EDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sAssDate := FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sAssDate + '������ Evening Duty ��ȣ���� ������ �����մϴ�.' + #13#10 + #13#10 + '���� �� ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Evening) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;



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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.20
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_NDeleteClick(Sender: TObject);
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
   if sbt_NDelete.Tag = 0 then begin
      MessageBox(Self.Handle, '������ ������ �����ϴ�.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.2. ���� ���� ���� Ȯ��
   sAssDate := FormatDateTime('YYYY-MM-DD', dtp_AssDate.Date);

   iChoice := MessageBox(Self.Handle,
                         PChar('��' + sAssDate + '������ Night Duty ��ȣ���� ������ �����մϴ�.' + #13#10 + #13#10 + '������ ������ �Ұ��մϴ�.  ���� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Night) ����',
                         MB_YESNO + MB_ICONWARNING);

   if iChoice = IDNO then Exit;



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
// Author : ByoungSik, Lee
// Date   : 2011.01.20
//
// param : AsDuty - Duty
//------------------------------------------------------------------------------
function TMDN110FU.IsNoData(AsDuty: string): Boolean;
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
            if (CopyByte(sCurCompName, 1, 3) <> 'med') and (LengthByte((oCurComp as TMaskEdit).Text) > 1) then Inc(iChkCnt);
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
// ���� Duty ǥ��
//
// Author : ByoungSik, Lee
// Date   : 2011.01.20
//------------------------------------------------------------------------------
procedure TMDN110FU.DisplayCurrentDuty(AsDuty: string);
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
// Duty�� ���� ��ȣ���� ���� ����
//
// Author : ByoungSik, Lee
// Date   : 2011.01.21
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
function TMDN110FU.CopyLastAssessmentOfDuty(AsDuty: String): Boolean;
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
      AsSetType := 'ICNAS';

      // ��ȣ���� ����
      assess := HmdIcasit.Create;

      with assess do begin
         sPatNo   := FsPatNo;                                        // ȯ�ڹ�ȣ
         sAdmDate := FsAdmDate;                                      // �Կ�����
         sAssDate := FormatDateTime('YYYYMMDD', dtp_AssDate.Date);   // ���� ����
         sDuty    := AsDuty;                                         // Duty
         sAssTime := Trim((GetComp(Self.Name, 'med_' + AsDuty + '_AssTime' ) as TMaskEdit).Text);  // ���� �ð�
         sAssNurs := Trim((GetComp(Self.Name, 'ed_' + AsDuty + '_AssNursId') as TEdit).Text);      // ���� ��ȣ��
         sAssDept := Trim((GetComp(Self.Name, 'ed_' + AsDuty + '_AssDept'  ) as TEdit).Text);      // ���� �μ�
         sWardNo  := FsWardNo;                                       // ����
         sRoomNo  := FsRoomNo;                                       // ����
         sEditId  := md_UserId;                                      // ������ID
      end;


      //----------------------------------------------
      // 2.2. CopyByte
      //----------------------------------------------
      iResult := nrsAss.CopyByDuty(assess, AsSetType);


      // Show Error Message
      if iResult < 0 then begin
         Result := False;

         assess.Free;
         nrsAss.Free;

         ShowErrMsg;
         Exit;
      end
      else if iResult = 0 then begin
         Result := False;

         assess.Free;
         nrsAss.Free;

         stb_Message.Panels[0].Text := '�� �� ���簡 �Ϸ���� �ʾҽ��ϴ�.';
         Exit;
      end;


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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.21
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_DCopyClick(Sender: TObject);
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
   if LengthByte(Trim(ed_D_AssNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      ed_D_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_D_AssTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      med_D_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_DCopy.Tag = 1 then begin
      MessageBox(Self.Handle, '���� Duty�� ���� ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '��ȣ����(Day) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� ��ȣ���� ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Day) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;




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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.21
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_ECopyClick(Sender: TObject);
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
   if LengthByte(Trim(ed_E_AssNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      ed_E_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_E_AssTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      med_E_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_ECopy.Tag = 1 then begin
      MessageBox(Self.Handle, '���� Duty�� ���� ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '��ȣ����(Evening) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� ��ȣ���� ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Evening) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;




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
//
// Author : ByoungSik, Lee
// Date   : 2011.01.21
//------------------------------------------------------------------------------
procedure TMDN110FU.sbt_NCopyClick(Sender: TObject);
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
   if LengthByte(Trim(ed_N_AssNursId.Text)) = 0 then begin
      MessageBox(Self.Handle, '�ۼ� ��ȣ�縦 �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      ed_N_AssNursName.SetFocus;
      Exit;
   end;

   // 1.2. �ۼ��� �ð� üũ
   if Trim(med_N_AssTime.Text) = ':' then begin
      MessageBox(Self.Handle, '�ۼ� �ð��� �Է��ϼ���.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      med_N_AssTime.SetFocus;
      Exit;
   end;

   // 1.3. ���� ���� ���� üũ
   if sbt_NCopy.Tag = 1 then begin
      MessageBox(Self.Handle, '���� Duty�� ���� ������ �̹� ���� �մϴ�. �� �򰡸� ���� �Ͻ� �� �����ϴ�.', '��ȣ����(Night) ����', MB_OK + MB_ICONINFORMATION);
      Exit;
   end;

   // 1.4. ���� ���� ���� Ȯ��
   iChoice := MessageBox(Self.Handle,
                         PChar('���� Duty ���� ���� ��ȣ���� ������ ���� Duty �� �����մϴ�.' + #13#10 + #13#10 + '��� �Ͻðڽ��ϱ�?'),
                         '��ȣ����(Night) ����',
                         MB_YESNO + MB_ICONINFORMATION);

   if iChoice = IDNO then Exit;



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
// [����Ͻ� �Է�] OnExit Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0603_1Exit(Sender: TObject);
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
procedure TMDN110FU.sbt_CalcIntubeClick(Sender: TObject);
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


   // ����ϼ� ��� (��������� �ϼ���� ����)
   sResult := IntToStr(Trunc(EncodeDate(v_Year,v_Month, v_Day)) -
                       Trunc(EncodeDate(i_Year,i_Month,i_Day)));


   // Flag�� ���� Component�� ã�Ƽ� �ڵ������ ����� �ֱ�
   if (sFlag = '1') then
      TEdit(GetComp(Self.Name, sName + '2')).Text := sResult
   else if (sFlag = '2') then
      TEdit(GetComp(Self.Name, sName + '1')).Text := sResult;

end;


//------------------------------------------------------------------------------
// [���� �ڵ��Է�] OnClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0603_1Click(Sender: TObject);
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
//
// Author : Lee, Se-Ha
// Date   : 2011.08.08
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0901_1KeyDown(Sender: TObject; var Key: Word;
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
// [Day - �Ű�� - Sedation] �׸� ����
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FU.D_B0306_1Click(Sender: TObject);
begin
   pn_DItem11.Enabled := D_B0306_1.Checked;

   if D_B0306_2.Checked then
   begin
      D_B0301_1.Checked := False;
      D_B0301_2.Checked := False;
      D_B0302_1.Checked := False;
      D_B0302_2.Checked := False;
      D_B0302_3.Checked := False;
      D_B0302_4.Checked := False;
      D_B0302_5.Checked := False;
      D_B0302_6.Checked := False;
      D_B0303_1.Checked := False;
      D_B0303_2.Checked := False;
      D_B0304_1.Checked := False;
      D_B0304_2.Checked := False;
      D_B0305_1.Checked := False;
      D_B0305_2.Checked := False;
      D_C0301_1.Checked := False;
      D_C0301_2.Checked := False;
      D_C0301_3.Checked := False;
      D_C0301_4.Checked := False;
   end;
end;


//------------------------------------------------------------------------------
// [Evening - �Ű�� - Sedation] �׸� ����
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FU.E_B0306_1Click(Sender: TObject);
begin
   pn_EItem11.Enabled := E_B0306_1.Checked;

   if E_B0306_2.Checked then
   begin
      E_B0301_1.Checked := False;
      E_B0301_2.Checked := False;
      E_B0302_1.Checked := False;
      E_B0302_2.Checked := False;
      E_B0302_3.Checked := False;
      E_B0302_4.Checked := False;
      E_B0302_5.Checked := False;
      E_B0302_6.Checked := False;
      E_B0303_1.Checked := False;
      E_B0303_2.Checked := False;
      E_B0304_1.Checked := False;
      E_B0304_2.Checked := False;
      E_B0305_1.Checked := False;
      E_B0305_2.Checked := False;
      E_C0301_1.Checked := False;
      E_C0301_2.Checked := False;
      E_C0301_3.Checked := False;
      E_C0301_4.Checked := False;
   end;

end;


//------------------------------------------------------------------------------
// [Night - �Ű�� - Sedation] �׸� ����
//
// Author : Lee, Se-Ha
// Date   : 2011.08.17
//------------------------------------------------------------------------------
procedure TMDN110FU.N_B0306_1Click(Sender: TObject);
begin
   pn_NItem11.Enabled := N_B0306_1.Checked;

   if N_B0306_2.Checked then
   begin
      N_B0301_1.Checked := False;
      N_B0301_2.Checked := False;
      N_B0302_1.Checked := False;
      N_B0302_2.Checked := False;
      N_B0302_3.Checked := False;
      N_B0302_4.Checked := False;
      N_B0302_5.Checked := False;
      N_B0302_6.Checked := False;
      N_B0303_1.Checked := False;
      N_B0303_2.Checked := False;
      N_B0304_1.Checked := False;
      N_B0304_2.Checked := False;
      N_B0305_1.Checked := False;
      N_B0305_2.Checked := False;
      N_C0301_1.Checked := False;
      N_C0301_2.Checked := False;
      N_C0301_3.Checked := False;
      N_C0301_4.Checked := False;
   end;

end;


//------------------------------------------------------------------------------
// [��ȣ���� ���] Button onClick Event Handler
//
// Author : Lee, Se-Ha
// Date   : 2011.09.21
//------------------------------------------------------------------------------
procedure TMDN110FU.bbt_PrintClick(Sender: TObject);
var
   srcPrt            : TMDN110FU_P01;
   srcForm           : TMDN110FU;
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


   // ������ Page Index �ʱ�ȭ @ 2012.10.31 LSH
   G_LastPageIdx := 0;

   if MDN110FU_P01 <> nil  then
      MDN110FU_P01 := nil;

   if MDN110FU <> nil  then
      MDN110FU := nil;



   srcPrt  := TMDN110FU_P01.Create(Application);
   srcForm := TMDN110FU.Create(Application);



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
   srcPrt.IsLastPage           := G_LastPageIdx;                // EndMark ������� Page �ε��� @ 2012.10.31 LSH
   srcPrt.LastDateYn           := G_LastEmrDateYn;              // EndMark ������� ������ ������� @ 2012.10.31 LSH

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
         SetBplClassProp('PTP001F1','prop_Report' , srcPrt.qr_Assess);       // ��� ù�忡 �ø� ����Ʈ��
         SetBplStrProp  ('PTP001F1','prop_Zoom'   , 'Fit');	                 // ��¹� ���� ����

         FForm.ShowModal;
      end;

      Exit;

   end;




   //------------------------------------------------------------------------
   // 3-1. ICU ��ȣ���� �ڵ����ĺ�ȯ, 2011.09.22 LSH
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


      { �ڵ����ĺ�ȯ Ʃ���ϸ鼭, �������. 2012.01.31 LSH
      // ������� ������ ������� + 1�Ͼ� ��ȸ�ϸ� ���.
      if (DateToStr(dtp_AssDate.Date) < P_DschDate) then
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
      srcPrt.qr_Assess.ReportTitle := DelChar(CopyByte(Self.Caption, 10, LengthByte(Self.Caption)-1), ']');
      fn_SetReportID(srcPrt.qr_Assess);

      // [EMR����] 2016.04.12 ȫâ�� �߰���(������). QRP ��� ���� �߰�. Start
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
//
// Author : Lee, Se-Ha
// Date   : 2011.09.21
//------------------------------------------------------------------------------
procedure TMDN110FU.LoadPatientInfo;
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
         lb_PatNo.Caption   := FsPatNo;                           // ȯ�ڹ�ȣ
         lb_PatName.Caption := sPatName[0];                       // ȯ�ڸ�
         lb_AdmDate.Caption := ConvertSDate(AsAdmDate);           // �Կ�����
         lb_Sex.Caption     := sSex    [0];                       // ����
         lb_Age.Caption     := Trim(Calc_Age(StrToDate(ConvertSDate(AsAdmDate)), sBirtDate[0]));   // ����
         lb_RoomNo.Caption  := sWardNo[0] + '-' + sRoomNo[0];     // ����-����

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
//
// Author : Lee, Se-Ha
// Date   : 2011.09.22 ~ 2012.01.30 (CPU ������ ��ƸԴ� ������ �������)
//------------------------------------------------------------------------------
procedure TMDN110FU.AutoScanPrint;
begin

   // ����� ��������(�Կ���) �޾ƿ���
   dtp_AssDate.Date := StrToDate(FsAdmDate);


   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;
   G_LastEmrDateYn := 'N';


   //---------------------------------------------------
   // 1. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo;


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
// ICU ��ȣ���� �ڵ���ĵ ������� New-ver
// - ȯ�ں� ���
//
// Author : Lee, Se-Ha
// Date   : 2012.01.27
//------------------------------------------------------------------------------
procedure TMDN110FU.AutoScanPrint_New;
begin
   // EMR ��� Index �ʱ�ȭ
   G_EmrPrtIdx := 0;
   G_LastEmrDateYn := 'N';


   //---------------------------------------------------
   // 1. ȯ�ڱ⺻���� ��ȸ
   //---------------------------------------------------
   LoadPatientInfo;



   //---------------------------------------------------
   // EMR ���ĺ�ȯ ��� ��ȸ
   //---------------------------------------------------
   bbt_SelectClick(ugd_EmrList);

end;



//------------------------------------------------------------------------------
// [�ڵ����ĺ�ȯ��] EMR ���ȯ�� ��ȸ
//
// Author : Lee, Se-Ha
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FU.bbt_SelectClick(Sender: TObject);
var
   sGubun, sWardNo, sPatNo, sAdmDate, sFromdate, sTodate, sSetType : string;
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
   sSetType := 'ICNAS';

   // 2015.05.27 smpark
   sFromdate := DelChar(P_EMRFromDt,'-');
   sTodate   := DelChar(P_EMRToDt,'-');

   //-------------------------------------------------------------------
   // EMR ��� ��ȸ
   //-------------------------------------------------------------------
   // ������ȯ��, �˻��������� �������� �߰� -2015.05.27 smpark
   GetIcuInfo(sGubun, sWardNo, sPatNo, sAdmDate, sSetType, sFromdate, sTodate);

end;



procedure TMDN110FU.bbt_ToNrRecordDClick(Sender: TObject);
var
   sFlag      : String; // D/E/N Caller Component Flag
   sNrsRecord : String; // ��ȣ��� ����
   sTime      : String; // ����Ͻ�

   // �Ű��
   sSedation       : String; // Sedation
   sMotorWeakness  : String; // Motor Weakness
   sMotorLocate    : String; // Motor Weakness ��ġ (���θ� ���)
   sAwareCondition : String; // �ǽĻ���
   sOrientation    : String; // Orientation ����
   // ��ȯ��
   sPulse          : String; // �ƹ�
   sEndPointTemp   : String; // ���ܺοµ�
   sEndPointCyan   : String; // ����û����
   sEdema          : String; // ����
   // ȣ����
   sBreathSound    : String; // ȣ����
   sSecretionColor : String; // �к񹰻���
   sBreathCond     : String; // ���
   sBreathAmount   : String; // ��
   // �����
   sAbdomen        : String; // ����
   sIntestinSound  : String; // ����
   sLTube          : String; // L-Tube
   // �񴢱��
   sUrineColor     : String; // �Һ���
   sUrineCond      : String; // ���
   sFoleyCath      : String; // Foley Cath
   // �Ǻ�
   sSkinColor      : String; // �Ǻλ�
   sTurgor         : String; // turgor
   sLesion         : String; // Lesion
   // ���
   sDrainLTube     : String; // L-Tube
   sDrainChestTube : String; // Chest Tube
   sDrainHvacTube  : String; // H-vac Tube
   sDrainEVD       : String; // EVD
   sDrainPigtail   : String; // Pigtail
   sDrainOther     : String; // Other

   sSummary1       : String; // �Ű�� ����
   sSummary2       : String; // ��ȯ�� ����
   sSummary3       : String; // ȣ���� ����
   sSummary4       : String; // ����� ����
   sSummary5       : String; // �񴢱�� ����
   sSummary6       : String; // �Ǻ� ����
   sSummary7       : String; // ��� ����


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

      // Sedation
      begin
         sSedation := '';

         if      (Self.FindComponent(sFlag + '_B0306_1') as TRadioButton).Checked then
         begin
            sSedation := '';
         end
         else if (Self.FindComponent(sFlag + '_B0306_2') as TRadioButton).Checked then
         begin
            sSedation := 'Sedation:��';
         end
         else
         begin
            sSedation := '';
         end;
      end;

      // Motor Weakness
      begin
         sMotorWeakness := '';

         if      (Self.FindComponent(sFlag + '_B0301_1') as TRadioButton).Checked then
         begin
            sMotorWeakness := '';
         end
         else if (Self.FindComponent(sFlag + '_B0301_2') as TRadioButton).Checked then
         begin
            sMotorWeakness := 'Motor Weakness:�� ';
         end
         else
         begin
            sMotorWeakness := '';
         end;

         // Motor Weakness ��ġ
         if (Self.FindComponent(sFlag + '_B0301_2') as TRadioButton).Checked then
         begin
            sMotorLocate := '';

            if (Self.FindComponent(sFlag + '_C0301_4') as TCheckBox).Checked then
            begin
               sMotorLocate := '������' + ',' + sMotorLocate;
            end;

            if (Self.FindComponent(sFlag + '_C0301_3') as TCheckBox).Checked then
            begin
               sMotorLocate := '������' + ',' + sMotorLocate;
            end;

            if (Self.FindComponent(sFlag + '_C0301_2') as TCheckBox).Checked then
            begin
               sMotorLocate := '�»���' + ',' + sMotorLocate;
            end;

            if (Self.FindComponent(sFlag + '_C0301_1') as TCheckBox).Checked then
            begin
               sMotorLocate := '�����' + ',' + sMotorLocate;
            end;

            if sMotorLocate <> '' then
            begin
               sMotorLocate := Copy(sMotorLocate, 1, Length(sMotorLocate)-1);
               sMotorLocate := '��ġ:' + sMotorLocate;
            end;

            sMotorWeakness := sMotorWeakness + sMotorLocate;
         end;
      end;

      // �ǽĻ���
      begin
         sAwareCondition := '';

         if (Self.FindComponent(sFlag + '_B0302_6') as TCheckBox).Checked then
         begin
            sAwareCondition := 'coma'      + ',' + sAwareCondition;
         end;

         if (Self.FindComponent(sFlag + '_B0302_5') as TCheckBox).Checked then
         begin
            sAwareCondition := 'semi-coma' + ',' + sAwareCondition;
         end;

         if (Self.FindComponent(sFlag + '_B0302_4') as TCheckBox).Checked then
         begin
            sAwareCondition := 'stupor'    + ',' + sAwareCondition;
         end;

         if (Self.FindComponent(sFlag + '_B0302_3') as TCheckBox).Checked then
         begin
            sAwareCondition := 'confuse'   + ',' + sAwareCondition;
         end;

         if (Self.FindComponent(sFlag + '_B0302_2') as TCheckBox).Checked then
         begin
            sAwareCondition := 'drowsy'    + ',' + sAwareCondition;
         end;

         if (Self.FindComponent(sFlag + '_B0302_1') as TCheckBox).Checked then
         begin
            sAwareCondition := 'alert'     + ',' + sAwareCondition;
         end;

         if sAwareCondition <> '' then
         begin
            sAwareCondition := Copy(sAwareCondition, 1, Length(sAwareCondition)-1);
            sAwareCondition := '�ǽĻ���:' + sAwareCondition;
         end;
      end;

      // Orientation ����
      begin
         sOrientation := '';

         // Orientation ���� - ���
         if      (Self.FindComponent(sFlag + '_B0303_1') as TRadioButton).Checked then
         begin
            sOrientation := sOrientation + '��� ��' + ',';
         end
         else if (Self.FindComponent(sFlag + '_B0303_2') as TRadioButton).Checked then
         begin
            sOrientation := sOrientation + '��� ��' + ',';
         end
         else
         begin
            sOrientation := sOrientation + '';
         end;

         // Orientation ���� - �ð�
         if      (Self.FindComponent(sFlag + '_B0304_1') as TRadioButton).Checked then
         begin
            sOrientation := sOrientation + '�ð� ��' + ',';
         end
         else if (Self.FindComponent(sFlag + '_B0304_2') as TRadioButton).Checked then
         begin
            sOrientation := sOrientation + '�ð� ��' + ',';
         end
         else
         begin
            sOrientation := sOrientation + '';
         end;

         // Orientation ���� - ���
         if      (Self.FindComponent(sFlag + '_B0305_1') as TRadioButton).Checked then
         begin
            sOrientation  := sOrientation + '��� ��';
         end
         else if (Self.FindComponent(sFlag + '_B0305_2') as TRadioButton).Checked then
         begin
            sOrientation  := sOrientation + '��� ��';
         end
         else
         begin
            sOrientation  := sOrientation + '';
         end;

         if sOrientation <> '' then
         begin
            sOrientation := 'Orientation ����:' + sOrientation;
         end;
      end;

      // �ƹ�
      begin
         sPulse := '�ƹ� ';

         if ( (Self.FindComponent(sFlag + '_B0401_1') as TEdit).Text
             +(Self.FindComponent(sFlag + '_B0403_1') as TEdit).Text
             +(Self.FindComponent(sFlag + '_B0402_1') as TEdit).Text
             +(Self.FindComponent(sFlag + '_B0404_1') as TEdit).Text ) <> '' then
         begin
            sPulse :=  sPulse
                     + '���/���� '
                     + (Self.FindComponent(sFlag + '_B0401_1') as TEdit).Text
                     + '/'
                     + (Self.FindComponent(sFlag + '_B0403_1') as TEdit).Text
                     + ' '
                     + '�»�/���� '
                     + (Self.FindComponent(sFlag + '_B0402_1') as TEdit).Text
                     + '/'
                     + (Self.FindComponent(sFlag + '_B0404_1') as TEdit).Text
                     ;
         end
         else
         begin
            sPulse := '';
         end;
      end;

      // ���ܺοµ�
      begin
         sEndPointTemp := '���ܺ� �µ�:';

         if      (Self.FindComponent(sFlag + '_B0405_1') as TRadioButton).Checked then
         begin
            sEndPointTemp := sEndPointTemp + 'cold';
         end
         else if (Self.FindComponent(sFlag + '_B0405_2') as TRadioButton).Checked then
         begin
            sEndPointTemp := sEndPointTemp + 'warm';
         end
         else if (Self.FindComponent(sFlag + '_B0405_3') as TRadioButton).Checked then
         begin
            sEndPointTemp := sEndPointTemp + 'clammy';
         end
         else
         begin
            sEndPointTemp := '';
         end;
      end;

      // ����û����
      begin
         sEndPointCyan := '';

         if      (Self.FindComponent(sFlag + '_B0406_1') as TRadioButton).Checked then
         begin
            sEndPointCyan := '����û����:��';
         end
         else if (Self.FindComponent(sFlag + '_B0406_2') as TRadioButton).Checked then
         begin
            sEndPointCyan := '';
         end
         else
         begin
            sEndPointCyan := '';
         end;
      end;

      // ����
      begin
         sEdema := '';

         if      (Self.FindComponent(sFlag + '_B0407_1') as TRadioButton).Checked then
         begin
            sEdema :=  '����:��'
                     + '('
                     + '����:'
                     + (Self.FindComponent(sFlag + '_B0407_1E') as TEdit).Text
                     + ')'
                     ;
         end
         else if (Self.FindComponent(sFlag + '_B0407_2') as TRadioButton).Checked then
         begin
            sEdema := '';
         end
         else
         begin
            sEdema := '';
         end;
      end;

      // ȣ����
      begin
         sBreathSound := '';

         if (Self.FindComponent(sFlag + '_B0501_5') as TCheckBox).Checked then
         begin
            sBreathSound := 'coarse'   + ',' + sBreathSound;
         end;

         if (Self.FindComponent(sFlag + '_B0501_4') as TCheckBox).Checked then
         begin
            sBreathSound := 'decrease' + ',' + sBreathSound;
         end;

         if (Self.FindComponent(sFlag + '_B0501_3') as TCheckBox).Checked then
         begin
            sBreathSound := 'wheezing' + ',' + sBreathSound;
         end;

         if (Self.FindComponent(sFlag + '_B0501_2') as TCheckBox).Checked then
         begin
            sBreathSound := 'crackles' + ',' + sBreathSound;
         end;

         if (Self.FindComponent(sFlag + '_B0501_1') as TCheckBox).Checked then
         begin
            sBreathSound := 'clear'    + ',' + sBreathSound;
         end;

         if sBreathSound <> '' then
         begin
            sBreathSound := Copy(sBreathSound, 1, Length(sBreathSound)-1);
            sBreathSound := 'ȣ����:' + sBreathSound;
         end;
      end;

      // �к񹰻���
      begin
         sSecretionColor := '';

         if (Self.FindComponent(sFlag + '_B0502_7') as TCheckBox).Checked then
         begin
            sSecretionColor := 'pink froth'    + ',' + sSecretionColor;
         end;

         if (Self.FindComponent(sFlag + '_B0502_6') as TCheckBox).Checked then
         begin
            sSecretionColor := 'blood tingled' + ',' + sSecretionColor;
         end;

         if (Self.FindComponent(sFlag + '_B0502_5') as TCheckBox).Checked then
         begin
            sSecretionColor := 'bloody'        + ',' + sSecretionColor;
         end;

         if (Self.FindComponent(sFlag + '_B0502_4') as TCheckBox).Checked then
         begin
            sSecretionColor := 'purulent'      + ',' + sSecretionColor;
         end;

         if (Self.FindComponent(sFlag + '_B0502_3') as TCheckBox).Checked then
         begin
            sSecretionColor := 'green'         + ',' + sSecretionColor;
         end;

         if (Self.FindComponent(sFlag + '_B0502_2') as TCheckBox).Checked then
         begin
            sSecretionColor := 'yellow'        + ',' + sSecretionColor;
         end;

         if (Self.FindComponent(sFlag + '_B0502_1') as TCheckBox).Checked then
         begin
            sSecretionColor := 'white'         + ',' + sSecretionColor;
         end;

         if sSecretionColor <> '' then
         begin
            sSecretionColor := Copy(sSecretionColor, 1, Length(sSecretionColor)-1);
            sSecretionColor := '�к񹰻���:' + sSecretionColor;
         end;
      end;

      // ���
      begin
         sBreathCond := '���:';

         if      (Self.FindComponent(sFlag + '_B0503_1') as TRadioButton).Checked then
         begin
            sBreathCond := sBreathCond + 'clear';
         end
         else if (Self.FindComponent(sFlag + '_B0503_2') as TRadioButton).Checked then
         begin
            sBreathCond := sBreathCond + 'thin';
         end
         else if (Self.FindComponent(sFlag + '_B0503_3') as TRadioButton).Checked then
         begin
            sBreathCond := sBreathCond + 'thick';
         end
         else
         begin
            sBreathCond := '';
         end;
      end;

      // ��
      begin
         sBreathAmount := '��:';

         if      (Self.FindComponent(sFlag + '_B0504_1') as TRadioButton).Checked then
         begin
            sBreathAmount := sBreathAmount + 'small';
         end
         else if (Self.FindComponent(sFlag + '_B0504_2') as TRadioButton).Checked then
         begin
            sBreathAmount := sBreathAmount + 'moderate';
         end
         else if (Self.FindComponent(sFlag + '_B0504_3') as TRadioButton).Checked then
         begin
            sBreathAmount := sBreathAmount + 'large';
         end
         else
         begin
            sBreathAmount := '';
         end;
      end;

      // ����
      begin
         sAbdomen := '����:';

         if      (Self.FindComponent(sFlag + '_B0601_1') as TRadioButton).Checked then
         begin
            sAbdomen := sAbdomen + 'soft';
         end
         else if (Self.FindComponent(sFlag + '_B0601_2') as TRadioButton).Checked then
         begin
            sAbdomen := sAbdomen + 'distension';
         end
         else
         begin
            sAbdomen := '';
         end;
      end;

      // ����
      begin
         sIntestinSound := '';

         if      (Self.FindComponent(sFlag + '_B0602_1') as TRadioButton).Checked then
         begin
            sIntestinSound := '����:normal';
         end
         else if (Self.FindComponent(sFlag + '_B0602_2') as TRadioButton).Checked then
         begin
            sIntestinSound := '����:inc.';
         end
         else if (Self.FindComponent(sFlag + '_B0602_3') as TRadioButton).Checked then
         begin
            sIntestinSound := '����:dic';
         end
         else if (Self.FindComponent(sFlag + '_B0602_4') as TRadioButton).Checked then
         begin
            sIntestinSound := '';
         end
         else
         begin
            sIntestinSound := '';
         end;
      end;

      // L-Tube
      begin
         sLTube := 'L-tube ';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0603_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0603_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0603_3') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0603_4') as TEdit).Text ) <> '') then
         begin
            sLTube :=  sLTube
                     + '�������:'
                     + (Self.FindComponent(sFlag + '_B0603_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0603_2') as TEdit).Text
                     + ') '
                     + 'Size(Fr.)'
                     + (Self.FindComponent(sFlag + '_B0603_3') as TEdit).Text
                     + ' '
                     + '����:'
                     + (Self.FindComponent(sFlag + '_B0603_4') as TEdit).Text
                     + 'cm'
                     ;
         end
         else
         begin
            sLTube := '';
         end;
      end;

      // �Һ���
      begin
         sUrineColor := '�Һ���:';

         if      (Self.FindComponent(sFlag + '_B0701_1') as TRadioButton).Checked then
         begin
            sUrineColor := sUrineColor + 'normal';
         end
         else if (Self.FindComponent(sFlag + '_B0701_2') as TRadioButton).Checked then
         begin
            sUrineColor := sUrineColor + 'amber';
         end
         else if (Self.FindComponent(sFlag + '_B0701_3') as TRadioButton).Checked then
         begin
            sUrineColor := sUrineColor + 'straw';
         end
         else if (Self.FindComponent(sFlag + '_B0701_4') as TRadioButton).Checked then
         begin
            sUrineColor := sUrineColor + 'hematuria';
         end
         else if (Self.FindComponent(sFlag + '_B0701_5') as TRadioButton).Checked then
         begin
            sUrineColor := sUrineColor + 'bilirubinuria';
         end
         else
         begin
            sUrineColor := '';
         end;
      end;

      // ���
      begin
         sUrineCond := '���:';

         if      (Self.FindComponent(sFlag + '_B0702_1') as TRadioButton).Checked then
         begin
            sUrineCond := sUrineCond + 'clear';
         end
         else if (Self.FindComponent(sFlag + '_B0702_2') as TRadioButton).Checked then
         begin
            sUrineCond := sUrineCond + 'turbid';
         end
         else if (Self.FindComponent(sFlag + '_B0702_3') as TRadioButton).Checked then
         begin
            sUrineCond := sUrineCond + 'foamy';
         end
         else
         begin
            sUrineCond := '';
         end;
      end;

      // Foley Cath
      begin
         sFoleyCath := 'Foley Cath ';

         if (Trim(StringReplace((Self.FindComponent(sFlag + '_B0703_1') as TMaskEdit).Text, '-', '', [rfReplaceAll])) <> '') and
            (( (Self.FindComponent(sFlag + '_B0703_2') as TEdit).Text
              +(Self.FindComponent(sFlag + '_B0703_3') as TEdit).Text ) <> '') then
         begin
            sFoleyCath :=  sFoleyCath
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
            sFoleyCath := '';
         end;
      end;

      // �Ǻλ�
      begin
         sSkinColor := '�Ǻλ�:';

         if      (Self.FindComponent(sFlag + '_B0801_1') as TRadioButton).Checked then
         begin
            sSkinColor := sSkinColor + 'normal';
         end
         else if (Self.FindComponent(sFlag + '_B0801_2') as TRadioButton).Checked then
         begin
            sSkinColor := sSkinColor + 'pale';
         end
         else if (Self.FindComponent(sFlag + '_B0801_3') as TRadioButton).Checked then
         begin
            sSkinColor := sSkinColor + 'anemic';
         end
         else if (Self.FindComponent(sFlag + '_B0801_4') as TRadioButton).Checked then
         begin
            sSkinColor := sSkinColor + 'icteric';
         end
         else
         begin
            sSkinColor := '';
         end;
      end;

      // turgor
      begin
         sTurgor := 'turgor:';

         if      (Self.FindComponent(sFlag + '_B0802_1') as TRadioButton).Checked then
         begin
            sTurgor := sTurgor + 'good';
         end
         else if (Self.FindComponent(sFlag + '_B0802_2') as TRadioButton).Checked then
         begin
            sTurgor := sTurgor + 'moderate';
         end
         else if (Self.FindComponent(sFlag + '_B0802_3') as TRadioButton).Checked then
         begin
            sTurgor := sTurgor + 'poor';
         end
         else
         begin
            sTurgor := '';
         end;
      end;

      // Lesion
      begin
         if (Self.FindComponent(sFlag + '_B0808_1') as TCheckBox).Checked then
         begin
            sLesion := '';
         end
         else
         begin
            sLesion := 'Lesion ';

            if ( (Self.FindComponent(sFlag + '_B0806_1') as TEdit).Text
                +(Self.FindComponent(sFlag + '_B0807_1') as TEdit).Text ) <> '' then
            begin
               sLesion :=  sLesion
                         + '��ġ:'
                         + (Self.FindComponent(sFlag + '_B0806_1') as TEdit).Text
                         + ' '
                         + 'ũ��:'
                         + (Self.FindComponent(sFlag + '_B0807_1') as TEdit).Text
                         ;
            end
            else
            begin
               sLesion := '';
            end;
         end;
      end;

      // L-Tube
      begin
         sDrainLTube := 'L-tube ';

         if      (Self.FindComponent(sFlag + '_B0901_1') as TRadioButton).Checked then
         begin
            sDrainLTube := sDrainLTube + 'N/D';
         end
         else if (Self.FindComponent(sFlag + '_B0901_2') as TRadioButton).Checked then
         begin
            sDrainLTube := sDrainLTube + 'I/S';
         end
         else if (Self.FindComponent(sFlag + '_B0901_3') as TRadioButton).Checked then
         begin
            sDrainLTube := ''; // �� �ΰ�� �ƹ� ǥ�⵵ ����.
         end
         else
         begin
            sDrainLTube := '';
         end;

         if sDrainLTube <> '' then
         begin
            sDrainLTube := sDrainLTube + ', ';

            if      (Self.FindComponent(sFlag + '_C0901_1') as TRadioButton).Checked then
            begin
               sDrainLTube := sDrainLTube + '���:yellow';
            end
            else if (Self.FindComponent(sFlag + '_C0901_2') as TRadioButton).Checked then
            begin
               sDrainLTube := sDrainLTube + '���:bloody';
            end
            else if (Self.FindComponent(sFlag + '_C0901_3') as TRadioButton).Checked then
            begin
               sDrainLTube := sDrainLTube + '���:brownish';
            end
            else if (Self.FindComponent(sFlag + '_C0901_4') as TRadioButton).Checked then
            begin
               sDrainLTube := sDrainLTube + '���:green';
            end
            else if (Self.FindComponent(sFlag + '_C0901_5') as TRadioButton).Checked then
            begin
               sDrainLTube := sDrainLTube + '���:other';
            end
            else
            begin
               sDrainLTube := '';
            end;

            if (Self.FindComponent(sFlag + '_C0901_5') as TRadioButton).Checked then
            begin
               sDrainLTube :=  sDrainLTube
                             + '('
                             + (Self.FindComponent(sFlag + '_C0901_5E') as TEdit).Text
                             + ')'
                             ;
            end;
         end;
      end;

      // Chest Tube
      begin
         sDrainChestTube := 'Chest tube ';

         if      (Self.FindComponent(sFlag + '_B0902_1') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0902_2') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0902_3') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + 'C/S, ';
         end
         else
         begin
            // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
            sDrainChestTube := '';
         end;

         {sDrainChestTube :=  sDrainChestTube
                           + '�����:'
                           + (Self.FindComponent(sFlag + '_B0909_1') as TMaskEdit).Text
                           + '(#'
                           + (Self.FindComponent(sFlag + '_B0909_2') as TEdit).Text
                           + ') '
                           + 'Size(Fr.)'
                           + (Self.FindComponent(sFlag + '_B0909_3') as TEdit).Text
                           + ' '
                           ;}
         // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
         if (Self.FindComponent(sFlag + '_B0909_1') as TMaskEdit).Text <> '    -  -  ' then
         begin
            sDrainChestTube := sDrainChestTube
                             + '�����:'
                             + (Self.FindComponent(sFlag + '_B0909_1') as TMaskEdit).Text;
         end
         else
         begin
            sDrainChestTube := sDrainChestTube;
         end;

         if (Self.FindComponent(sFlag + '_B0909_2') as TEdit).Text <> '' then
         begin
            sDrainChestTube := sDrainChestTube
                             + '(#'
                             + (Self.FindComponent(sFlag + '_B0909_2') as TEdit).Text
                             + ') ';
         end
         else
         begin
            sDrainChestTube := sDrainChestTube;
         end;

         if (Self.FindComponent(sFlag + '_B0909_3') as TEdit).Text <> '' then
         begin
            sDrainChestTube := sDrainChestTube
                             + 'Size(Fr.)'
                             + (Self.FindComponent(sFlag + '_B0909_3') as TEdit).Text
                             + ' '
         end
         else
         begin
            sDrainChestTube := sDrainChestTube;
         end;

         if      (Self.FindComponent(sFlag + '_C0902_1') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + '���:yellow';
         end
         else if (Self.FindComponent(sFlag + '_C0902_2') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + '���:bloody';
         end
         else if (Self.FindComponent(sFlag + '_C0902_3') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + '���:brownish';
         end
         else if (Self.FindComponent(sFlag + '_C0902_4') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + '���:green';
         end
         else if (Self.FindComponent(sFlag + '_C0902_5') as TRadioButton).Checked then
         begin
            sDrainChestTube := sDrainChestTube + '���:other';
         end
         else
         begin
            sDrainChestTube := sDrainChestTube;
         end;

         if (Self.FindComponent(sFlag + '_C0902_5') as TRadioButton).Checked then
         begin
            sDrainChestTube :=  sDrainChestTube
                              + '('
                              + (Self.FindComponent(sFlag + '_C0902_5E') as TEdit).Text
                              + ')'
                              ;
         end;
      end;

      // H-vac Tube
      begin
         sDrainHvacTube := 'H-vac tube ';

         if      (Self.FindComponent(sFlag + '_B0903_1') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0903_2') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0903_3') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + 'C/S, ';
         end
         else
         begin
            // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
            sDrainHvacTube := '';
         end;

         {sDrainHvacTube :=  sDrainHvacTube
                          + '�����:'
                          + (Self.FindComponent(sFlag + '_B0910_1') as TMaskEdit).Text
                          + '(#'
                          + (Self.FindComponent(sFlag + '_B0910_2') as TEdit).Text
                          + ') '
                          ;}
         // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
         if (Self.FindComponent(sFlag + '_B0910_1') as TMaskEdit).Text <> '    -  -  ' then
         begin
            sDrainHvacTube := sDrainHvacTube
                            + '�����:'
                            + (Self.FindComponent(sFlag + '_B0910_1') as TMaskEdit).Text;
         end
         else
         begin
            sDrainHvacTube := sDrainHvacTube;
         end;

         if (Self.FindComponent(sFlag + '_B0910_2') as TEdit).Text <> '' then
         begin
            sDrainHvacTube := sDrainHvacTube
                            + '(#'
                            + (Self.FindComponent(sFlag + '_B0910_2') as TEdit).Text
                            + ') ';
         end
         else
         begin
            sDrainHvacTube := sDrainHvacTube;
         end;

         if      (Self.FindComponent(sFlag + '_C0903_1') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + '���:yellow';
         end
         else if (Self.FindComponent(sFlag + '_C0903_2') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + '���:bloody';
         end
         else if (Self.FindComponent(sFlag + '_C0903_3') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + '���:brownish';
         end
         else if (Self.FindComponent(sFlag + '_C0903_4') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + '���:green';
         end
         else if (Self.FindComponent(sFlag + '_C0903_5') as TRadioButton).Checked then
         begin
            sDrainHvacTube := sDrainHvacTube + '���:other';
         end
         else
         begin
            sDrainHvacTube := sDrainHvacTube;
         end;

         if (Self.FindComponent(sFlag + '_C0903_5') as TRadioButton).Checked then
         begin
            sDrainHvacTube :=  sDrainHvacTube
                             + '('
                             + (Self.FindComponent(sFlag + '_C0903_5E') as TEdit).Text
                             + ')'
                             ;
         end;
      end;

      // EVD
      begin
         sDrainEVD := 'EVD ';

         if      (Self.FindComponent(sFlag + '_B0904_1') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0904_2') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0904_3') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + 'C/S, ';
         end
         else
         begin
            // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
            sDrainEVD := '';
         end;

         {sDrainEVD :=  sDrainEVD
                     + '�����:'
                     + (Self.FindComponent(sFlag + '_B0911_1') as TMaskEdit).Text
                     + '(#'
                     + (Self.FindComponent(sFlag + '_B0911_2') as TEdit).Text
                     + ') '
                     + 'Size(Fr.)'
                     + (Self.FindComponent(sFlag + '_B0911_3') as TEdit).Text
                     + ' '
                     ;}
         // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
         if (Self.FindComponent(sFlag + '_B0911_1') as TMaskEdit).Text <> '    -  -  ' then
         begin
            sDrainEVD := sDrainEVD
                       + '�����:'
                       + (Self.FindComponent(sFlag + '_B0911_1') as TMaskEdit).Text;
         end
         else
         begin
            sDrainEVD := sDrainEVD;
         end;

         if (Self.FindComponent(sFlag + '_B0911_2') as TEdit).Text <> '' then
         begin
            sDrainEVD := sDrainEVD
                       + '(#'
                       + (Self.FindComponent(sFlag + '_B0911_2') as TEdit).Text
                       + ') ';
         end
         else
         begin
            sDrainEVD := sDrainEVD;
         end;

         if (Self.FindComponent(sFlag + '_B0911_3') as TEdit).Text <> '' then
         begin
            sDrainEVD := sDrainEVD
                       + 'Size(Fr.)'
                       + (Self.FindComponent(sFlag + '_B0911_3') as TEdit).Text
                       + ' '
         end
         else
         begin
            sDrainEVD := sDrainEVD;
         end;

         if      (Self.FindComponent(sFlag + '_C0904_1') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + '���:yellow';
         end
         else if (Self.FindComponent(sFlag + '_C0904_2') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + '���:bloody';
         end
         else if (Self.FindComponent(sFlag + '_C0904_3') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + '���:brownish';
         end
         else if (Self.FindComponent(sFlag + '_C0904_4') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + '���:green';
         end
         else if (Self.FindComponent(sFlag + '_C0904_5') as TRadioButton).Checked then
         begin
            sDrainEVD := sDrainEVD + '���:other';
         end
         else
         begin
            sDrainEVD := sDrainEVD;
         end;

         if (Self.FindComponent(sFlag + '_C0904_5') as TRadioButton).Checked then
         begin
            sDrainEVD :=  sDrainEVD
                        + '('
                        + (Self.FindComponent(sFlag + '_C0904_5E') as TEdit).Text
                        + ')'
                        ;
         end;
      end;

      // Pigtail
      begin
         sDrainPigtail := 'pigtail ';

         if      (Self.FindComponent(sFlag + '_B0906_1') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + 'N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0906_2') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + 'I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0906_3') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + 'C/S, ';
         end
         else
         begin
            sDrainPigtail := '';
         end;

         {sDrainPigtail :=  sDrainPigtail
                         + '�����:'
                         + (Self.FindComponent(sFlag + '_B0912_1') as TMaskEdit).Text
                         + '(#'
                         + (Self.FindComponent(sFlag + '_B0912_2') as TEdit).Text
                         + ') '
                         ;}
         // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
         if (Self.FindComponent(sFlag + '_B0912_1') as TMaskEdit).Text <> '    -  -  ' then
         begin
            sDrainPigtail := sDrainPigtail
                           + '�����:'
                           + (Self.FindComponent(sFlag + '_B0912_1') as TMaskEdit).Text;
         end
         else
         begin
            sDrainPigtail := sDrainPigtail;
         end;

         if (Self.FindComponent(sFlag + '_B0912_2') as TEdit).Text <> '' then
         begin
            sDrainPigtail := sDrainPigtail
                           + '(#'
                           + (Self.FindComponent(sFlag + '_B0912_2') as TEdit).Text
                           + ') ';
         end
         else
         begin
            sDrainPigtail := sDrainPigtail;
         end;

         if      (Self.FindComponent(sFlag + '_C0906_1') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + '���:yellow';
         end
         else if (Self.FindComponent(sFlag + '_C0906_2') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + '���:bloody';
         end
         else if (Self.FindComponent(sFlag + '_C0906_3') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + '���:brownish';
         end
         else if (Self.FindComponent(sFlag + '_C0906_4') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + '���:green';
         end
         else if (Self.FindComponent(sFlag + '_C0906_5') as TRadioButton).Checked then
         begin
            sDrainPigtail := sDrainPigtail + '���:other';
         end
         else
         begin
            sDrainPigtail := sDrainPigtail;
         end;

         if (Self.FindComponent(sFlag + '_C0906_5') as TRadioButton).Checked then
         begin
            sDrainPigtail :=  sDrainPigtail
                             + '('
                             + (Self.FindComponent(sFlag + '_C0906_5E') as TEdit).Text
                             + ')'
                             ;
         end;
      end;

      // Other
      begin
         sDrainOther := 'other ';

         if      (Self.FindComponent(sFlag + '_B0908_1') as TRadioButton).Checked then
         begin
            sDrainOther := (Self.FindComponent(sFlag + '_B0907_1') as TEdit).Text + ' N/D, ';
         end
         else if (Self.FindComponent(sFlag + '_B0908_2') as TRadioButton).Checked then
         begin
            sDrainOther := (Self.FindComponent(sFlag + '_B0907_1') as TEdit).Text + ' I/S, ';
         end
         else if (Self.FindComponent(sFlag + '_B0908_3') as TRadioButton).Checked then
         begin
            sDrainOther := (Self.FindComponent(sFlag + '_B0907_1') as TEdit).Text + ' C/S, ';
         end
         else
         begin
            // Edit �κ� �߰� - 2016.11.01 LEESANGMOON
            if (Self.FindComponent(sFlag + '_B0907_1') as TEdit).Text <> '' then
               sDrainOther := sDrainOther + (Self.FindComponent(sFlag + '_B0907_1') as TEdit).Text
            else
               // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
               sDrainOther := '';
         end;

         {sDrainOther :=  sDrainOther
                       + '�����:'
                       + (Self.FindComponent(sFlag + '_B0913_1') as TMaskEdit).Text
                       + '(#'
                       + (Self.FindComponent(sFlag + '_B0913_2') as TEdit).Text
                       + ') '
                       + 'Size(Fr.)'
                       + (Self.FindComponent(sFlag + '_B0913_3') as TEdit).Text
                       + ' '
                       ;}
         // üũ���� �ʴ� �׸� ǥ������ �ʱ� ���� - 2016.11.01 LEESANGMOON
         if (Self.FindComponent(sFlag + '_B0913_1') as TMaskEdit).Text <> '    -  -  ' then
         begin
            sDrainOther := sDrainOther
                         + '�����:'
                         + (Self.FindComponent(sFlag + '_B0913_1') as TMaskEdit).Text;
         end
         else
         begin
            sDrainOther := sDrainOther;
         end;

         if (Self.FindComponent(sFlag + '_B0913_2') as TEdit).Text <> '' then
         begin
            sDrainOther := sDrainOther
                         + '(#'
                         + (Self.FindComponent(sFlag + '_B0913_2') as TEdit).Text
                         + ') ';
         end
         else
         begin
            sDrainOther := sDrainOther;
         end;

         if (Self.FindComponent(sFlag + '_B0913_3') as TEdit).Text <> '' then
         begin
            sDrainOther := sDrainOther
                         + 'Size(Fr.)'
                         + (Self.FindComponent(sFlag + '_B0913_3') as TEdit).Text
                         + ' '
         end
         else
         begin
            sDrainOther := sDrainOther;
         end;

         if      (Self.FindComponent(sFlag + '_C0908_1') as TRadioButton).Checked then
         begin
            sDrainOther := sDrainOther + '���:yellow';
         end
         else if (Self.FindComponent(sFlag + '_C0908_2') as TRadioButton).Checked then
         begin
            sDrainOther := sDrainOther + '���:bloody';
         end
         else if (Self.FindComponent(sFlag + '_C0908_3') as TRadioButton).Checked then
         begin
            sDrainOther := sDrainOther + '���:brownish';
         end
         else if (Self.FindComponent(sFlag + '_C0908_4') as TRadioButton).Checked then
         begin
            sDrainOther := sDrainOther + '���:green';
         end
         else if (Self.FindComponent(sFlag + '_C0908_5') as TRadioButton).Checked then
         begin
            sDrainOther := sDrainOther + '���:other';
         end
         else
         begin
            sDrainOther := sDrainOther;
         end;

         if (Self.FindComponent(sFlag + '_C0908_5') as TRadioButton).Checked then
         begin
            sDrainOther :=  sDrainOther
                        + '('
                        + (Self.FindComponent(sFlag + '_C0908_5E') as TEdit).Text
                        + ')'
                        ;
         end;
      end;


      // ��ȣ��� ���� ����
      sSummary1 := '';
      sSummary2 := '';
      sSummary3 := '';
      sSummary4 := '';
      sSummary5 := '';
      sSummary6 := '';
      sSummary7 := '';

      sSummary1  :=        sSummary1
                   +       sSedation        // Sedation
                   + ' ' + sMotorWeakness   // Motor Weakness
                   + ' ' + sAwareCondition  // �ǽĻ���
                   + ' ' + sOrientation     // Orientation ����
                   ;
      if Trim(sSummary1) <> '' then sSummary1 := Trim(sSummary1) + #13#10
      else                          sSummary1 := '';

      sSummary2  :=        sSummary2
                   +       sPulse           // �ƹ�
                   + ' ' + sEndPointTemp    // ���ܺοµ�
                   + ' ' + sEndPointCyan    // ����û����
                   + ' ' + sEdema           // ����
                   ;
      if Trim(sSummary2) <> '' then sSummary2 := Trim(sSummary2) + #13#10
      else                          sSummary2 := '';

      sSummary3  :=        sSummary3
                   +       sBreathSound     // ȣ����
                   + ' ' + sSecretionColor  // �к񹰻���
                   + ' ' + sBreathCond      // ���
                   + ' ' + sBreathAmount    // ��
                   ;
      if Trim(sSummary3) <> '' then sSummary3 := Trim(sSummary3) + #13#10
      else                          sSummary3 := '';

      sSummary4  :=        sSummary4
                   +       sAbdomen         // ����
                   + ' ' + sIntestinSound   // ����
                   + ' ' + sLTube           // L-Tube
                   ;
      if Trim(sSummary4) <> '' then sSummary4 := Trim(sSummary4) + #13#10
      else                          sSummary4 := '';

      sSummary5  :=        sSummary5
                   +       sUrineColor      // �Һ���
                   + ' ' + sUrineCond       // ���
                   + ' ' + sFoleyCath       // Foley Cath
                   ;
      if Trim(sSummary5) <> '' then sSummary5 := Trim(sSummary5) + #13#10
      else                          sSummary5 := '';

      sSummary6  :=        sSummary6
                   +       sSkinColor       // �Ǻλ�
                   + ' ' + sTurgor          // turgor
                   + ' ' + sLesion          // Lesion
                   ;
      if Trim(sSummary6) <> '' then sSummary6 := Trim(sSummary6) + #13#10
      else                          sSummary6 := '';

      sSummary7  :=        sSummary7
                   +       sDrainLTube      // L-Tube
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sDrainChestTube  // Chest Tube
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sDrainHvacTube   // H-vac Tube
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sDrainEVD        // EVD
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sDrainPigtail    // Pigtail
                   ;
      if Trim(sSummary7) <> '' then sSummary7 := Trim(sSummary7) + #13#10
      else                          sSummary7 := '';
      sSummary7  :=        sSummary7
                   +       sDrainOther      // Other
                   ;

      sNrsRecord :=  sSummary1
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
procedure TMDN110FU.GetIcuInfo(sFlag1, sType1, sType2, sType3, sType4, sType5, sType6 : String);
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
               dtp_AssDate.Date := StrToDateTime(Cells[2, i]);

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
// Date   : 2012.01.26
//------------------------------------------------------------------------------
procedure TMDN110FU.bbt_OkClick(Sender: TObject);
begin
   //-----------------------------------------------------------------
   // ���ں� ��ȣ���� ���� ��ȸ
   //-----------------------------------------------------------------
   SearchNursingAssessment;

end;



//------------------------------------------------------------------------------
// Duty�� �۾���ư ���� ���� �߰� (�ӻ�����ǥ���� �������)
//
// Author : Lee, Se-Ha
// Date   : 2012.03.08
//
// param : AsDuty - Duty(D/E/N)
//------------------------------------------------------------------------------
procedure TMDN110FU.SetControlStatusOfDuty(AsDuty: string);
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
// [�����] Duty�� ��� Remove�� ���� ������� + ����ϼ� Clear
//   - 2012.04.24 LSH
//-------------------------------------------------------------------
procedure TMDN110FU.D_B0603RemoveClick(Sender: TObject);
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


//-------------------------------------------------------------------
// [�񴢱��] Duty�� ��� Remove�� ���� ������� + ����ϼ� Clear
//   - 2012.04.24 LSH
//-------------------------------------------------------------------
procedure TMDN110FU.D_B0703RemoveClick(Sender: TObject);
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
//   - 2012.10.29 LSH
//-------------------------------------------------------------------
procedure TMDN110FU.D_B0909RemoveClick(Sender: TObject);
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

         Break;
      end;
   end;
end;

// [EMR����] 2016.04.12 ȫâ�� �߰���(������).
procedure TMDN110FU.bt_printClick(Sender: TObject);
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
   RegisterClass(TMDN110FU);

finalization
   UnRegisterClass(TMDN110FU);

end.
