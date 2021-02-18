unit MDN110UM1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  ComCtrls, StdCtrls, ExtCtrls, Grids, UltraGrid, Buttons, Bianco_Panel, Mask, 
  Variants, VclTee.TeEngine, VclTee.Series, VclTee.TeeProcs, VclTee.Chart;

type
  TMDN110FM1 = class(TForm)
    Panel4: TPanel;
    pc_ICU: TPageControl;
    ts_ICU1: TTabSheet;
    ts_ICU2: TTabSheet;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel35: TPanel;
    ed_PatNo: TEdit;
    ed_PatName: TEdit;
    ed_SexAge: TEdit;
    ed_MedDept: TEdit;
    sbox_Tab1: TScrollBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    sbox_Tab2: TScrollBox;
    Panel74: TPanel;
    Panel75: TPanel;
    Panel76: TPanel;
    Panel91: TPanel;
    Bevel67: TBevel;
    Label45: TLabel;
    Bevel65: TBevel;
    Label46: TLabel;
    Bevel80: TBevel;
    Label47: TLabel;
    Panel92: TPanel;
    Bevel70: TBevel;
    Bevel71: TBevel;
    Bevel72: TBevel;
    Bevel73: TBevel;
    Bevel74: TBevel;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    Panel93: TPanel;
    Bevel68: TBevel;
    Bevel69: TBevel;
    Bevel75: TBevel;
    Bevel76: TBevel;
    Bevel77: TBevel;
    Bevel78: TBevel;
    Bevel79: TBevel;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    Panel94: TPanel;
    Bevel81: TBevel;
    Bevel82: TBevel;
    Bevel83: TBevel;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    Panel77: TPanel;
    Bevel28: TBevel;
    Bevel13: TBevel;
    Label15: TLabel;
    Label18: TLabel;
    Bevel20: TBevel;
    Label21: TLabel;
    Bevel22: TBevel;
    Label22: TLabel;
    pn_item02: TPanel;
    Bevel37: TBevel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    C0021_1: TCheckBox;
    C0021_2: TCheckBox;
    C0021_3: TCheckBox;
    Panel78: TPanel;
    Bevel18: TBevel;
    Label16: TLabel;
    Bevel19: TBevel;
    Label17: TLabel;
    Bevel14: TBevel;
    Label19: TLabel;
    Bevel17: TBevel;
    Label20: TLabel;
    C0001_5E: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Panel79: TPanel;
    Bevel21: TBevel;
    Bevel23: TBevel;
    CheckBox1: TCheckBox;
    CheckBox6: TCheckBox;
    Panel80: TPanel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Label23: TLabel;
    CheckBox5: TCheckBox;
    CheckBox7: TCheckBox;
    Edit31: TEdit;
    Bevel84: TBevel;
    Label48: TLabel;
    Panel95: TPanel;
    Bevel85: TBevel;
    Bevel86: TBevel;
    Bevel87: TBevel;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    Bevel88: TBevel;
    Label49: TLabel;
    Panel96: TPanel;
    Bevel89: TBevel;
    Bevel90: TBevel;
    Bevel91: TBevel;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Panel109: TPanel;
    Bevel147: TBevel;
    Label63: TLabel;
    Bevel149: TBevel;
    Label65: TLabel;
    Panel112: TPanel;
    Bevel164: TBevel;
    Bevel165: TBevel;
    Bevel166: TBevel;
    CheckBox97: TCheckBox;
    CheckBox98: TCheckBox;
    CheckBox99: TCheckBox;
    Panel110: TPanel;
    Bevel152: TBevel;
    Bevel153: TBevel;
    CheckBox85: TCheckBox;
    CheckBox86: TCheckBox;
    Bevel148: TBevel;
    CheckBox87: TCheckBox;
    Bevel150: TBevel;
    Label64: TLabel;
    Panel111: TPanel;
    Bevel151: TBevel;
    Bevel154: TBevel;
    Bevel155: TBevel;
    CheckBox88: TCheckBox;
    CheckBox89: TCheckBox;
    CheckBox90: TCheckBox;
    Bevel156: TBevel;
    Label66: TLabel;
    Panel113: TPanel;
    Bevel157: TBevel;
    Bevel158: TBevel;
    CheckBox91: TCheckBox;
    CheckBox92: TCheckBox;
    Panel124: TPanel;
    Bevel195: TBevel;
    Label78: TLabel;
    Panel125: TPanel;
    Bevel196: TBevel;
    Bevel197: TBevel;
    Bevel198: TBevel;
    Bevel199: TBevel;
    CheckBox118: TCheckBox;
    CheckBox119: TCheckBox;
    CheckBox120: TCheckBox;
    CheckBox121: TCheckBox;
    Bevel200: TBevel;
    CheckBox122: TCheckBox;
    Bevel201: TBevel;
    Label79: TLabel;
    Panel126: TPanel;
    Bevel202: TBevel;
    Bevel203: TBevel;
    Bevel204: TBevel;
    CheckBox123: TCheckBox;
    CheckBox124: TCheckBox;
    CheckBox125: TCheckBox;
    Panel127: TPanel;
    Bevel206: TBevel;
    Label81: TLabel;
    Bevel207: TBevel;
    Label82: TLabel;
    Panel128: TPanel;
    Bevel208: TBevel;
    Bevel209: TBevel;
    Bevel210: TBevel;
    Bevel211: TBevel;
    CheckBox126: TCheckBox;
    CheckBox127: TCheckBox;
    CheckBox128: TCheckBox;
    CheckBox129: TCheckBox;
    Panel129: TPanel;
    Bevel213: TBevel;
    Bevel214: TBevel;
    Bevel215: TBevel;
    CheckBox131: TCheckBox;
    CheckBox132: TCheckBox;
    CheckBox133: TCheckBox;
    Bevel212: TBevel;
    Label83: TLabel;
    Panel130: TPanel;
    Bevel217: TBevel;
    CheckBox134: TCheckBox;
    Edit45: TEdit;
    Bevel216: TBevel;
    Label91: TLabel;
    Bevel241: TBevel;
    Label92: TLabel;
    Edit46: TEdit;
    Bevel218: TBevel;
    Label84: TLabel;
    Panel137: TPanel;
    Bevel242: TBevel;
    Bevel243: TBevel;
    Bevel244: TBevel;
    Bevel245: TBevel;
    Bevel246: TBevel;
    CheckBox130: TCheckBox;
    CheckBox151: TCheckBox;
    CheckBox152: TCheckBox;
    CheckBox153: TCheckBox;
    CheckBox154: TCheckBox;
    Panel148: TPanel;
    Bevel288: TBevel;
    Label108: TLabel;
    Panel149: TPanel;
    Bevel292: TBevel;
    Bevel293: TBevel;
    CheckBox181: TCheckBox;
    CheckBox182: TCheckBox;
    Edit53: TEdit;
    Bevel294: TBevel;
    Label114: TLabel;
    Bevel289: TBevel;
    Label109: TLabel;
    Edit51: TEdit;
    Panel150: TPanel;
    Bevel290: TBevel;
    Bevel291: TBevel;
    Bevel295: TBevel;
    Label110: TLabel;
    CheckBox183: TCheckBox;
    CheckBox184: TCheckBox;
    Edit52: TEdit;
    Bevel296: TBevel;
    Label111: TLabel;
    Edit54: TEdit;
    Panel151: TPanel;
    Bevel297: TBevel;
    Bevel298: TBevel;
    Bevel299: TBevel;
    Label112: TLabel;
    CheckBox185: TCheckBox;
    CheckBox186: TCheckBox;
    Edit55: TEdit;
    Bevel12: TBevel;
    Label14: TLabel;
    Panel81: TPanel;
    Bevel27: TBevel;
    Bevel29: TBevel;
    Label24: TLabel;
    Label25: TLabel;
    Bevel30: TBevel;
    Label26: TLabel;
    Bevel31: TBevel;
    Label27: TLabel;
    Panel82: TPanel;
    Bevel32: TBevel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Panel83: TPanel;
    Bevel35: TBevel;
    Label28: TLabel;
    Bevel36: TBevel;
    Label29: TLabel;
    Bevel40: TBevel;
    Label30: TLabel;
    Bevel41: TBevel;
    Label31: TLabel;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Panel84: TPanel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    Panel85: TPanel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    Bevel46: TBevel;
    Label32: TLabel;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    Edit36: TEdit;
    Bevel47: TBevel;
    Label33: TLabel;
    Panel86: TPanel;
    Bevel48: TBevel;
    Bevel49: TBevel;
    Label34: TLabel;
    Label35: TLabel;
    Bevel50: TBevel;
    Label36: TLabel;
    Bevel51: TBevel;
    Label37: TLabel;
    Panel87: TPanel;
    Bevel52: TBevel;
    Bevel53: TBevel;
    Bevel54: TBevel;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    Panel88: TPanel;
    Bevel55: TBevel;
    Label38: TLabel;
    Bevel56: TBevel;
    Label39: TLabel;
    Bevel57: TBevel;
    Label40: TLabel;
    Bevel58: TBevel;
    Label41: TLabel;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Panel89: TPanel;
    Bevel59: TBevel;
    Bevel60: TBevel;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    Panel90: TPanel;
    Bevel61: TBevel;
    Bevel62: TBevel;
    Bevel63: TBevel;
    Label42: TLabel;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    Edit41: TEdit;
    Bevel64: TBevel;
    Label43: TLabel;
    Bevel66: TBevel;
    Label44: TLabel;
    Panel97: TPanel;
    Bevel92: TBevel;
    Label50: TLabel;
    Bevel93: TBevel;
    Label51: TLabel;
    Bevel94: TBevel;
    Label52: TLabel;
    Bevel95: TBevel;
    Label53: TLabel;
    Bevel96: TBevel;
    Label54: TLabel;
    Panel98: TPanel;
    Bevel97: TBevel;
    Bevel98: TBevel;
    Bevel99: TBevel;
    Bevel100: TBevel;
    Bevel101: TBevel;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    Panel99: TPanel;
    Bevel102: TBevel;
    Bevel103: TBevel;
    Bevel104: TBevel;
    Bevel105: TBevel;
    Bevel106: TBevel;
    Bevel107: TBevel;
    Bevel108: TBevel;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    Panel100: TPanel;
    Bevel109: TBevel;
    Bevel110: TBevel;
    Bevel111: TBevel;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    Panel101: TPanel;
    Bevel112: TBevel;
    Bevel113: TBevel;
    Bevel114: TBevel;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    Panel102: TPanel;
    Bevel115: TBevel;
    Bevel116: TBevel;
    Bevel117: TBevel;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    Bevel118: TBevel;
    Label55: TLabel;
    Panel103: TPanel;
    Bevel119: TBevel;
    Label56: TLabel;
    Bevel120: TBevel;
    Label57: TLabel;
    Bevel121: TBevel;
    Label58: TLabel;
    Bevel122: TBevel;
    Label59: TLabel;
    Bevel123: TBevel;
    Label60: TLabel;
    Panel104: TPanel;
    Bevel124: TBevel;
    Bevel125: TBevel;
    Bevel126: TBevel;
    Bevel127: TBevel;
    Bevel128: TBevel;
    CheckBox64: TCheckBox;
    CheckBox65: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox68: TCheckBox;
    Panel105: TPanel;
    Bevel129: TBevel;
    Bevel130: TBevel;
    Bevel131: TBevel;
    Bevel132: TBevel;
    Bevel133: TBevel;
    Bevel134: TBevel;
    Bevel135: TBevel;
    CheckBox69: TCheckBox;
    CheckBox70: TCheckBox;
    CheckBox71: TCheckBox;
    CheckBox72: TCheckBox;
    CheckBox73: TCheckBox;
    CheckBox74: TCheckBox;
    CheckBox75: TCheckBox;
    Panel106: TPanel;
    Bevel136: TBevel;
    Bevel137: TBevel;
    Bevel138: TBevel;
    CheckBox76: TCheckBox;
    CheckBox77: TCheckBox;
    CheckBox78: TCheckBox;
    Panel107: TPanel;
    Bevel139: TBevel;
    Bevel140: TBevel;
    Bevel141: TBevel;
    CheckBox79: TCheckBox;
    CheckBox80: TCheckBox;
    CheckBox81: TCheckBox;
    Panel108: TPanel;
    Bevel142: TBevel;
    Bevel143: TBevel;
    Bevel144: TBevel;
    CheckBox82: TCheckBox;
    CheckBox83: TCheckBox;
    CheckBox84: TCheckBox;
    Bevel145: TBevel;
    Label61: TLabel;
    Bevel146: TBevel;
    Label62: TLabel;
    Panel114: TPanel;
    Bevel159: TBevel;
    Label67: TLabel;
    Bevel160: TBevel;
    Label68: TLabel;
    Bevel161: TBevel;
    Label69: TLabel;
    Bevel162: TBevel;
    Label70: TLabel;
    Panel115: TPanel;
    Bevel163: TBevel;
    Bevel167: TBevel;
    Bevel168: TBevel;
    Bevel169: TBevel;
    CheckBox93: TCheckBox;
    CheckBox94: TCheckBox;
    CheckBox95: TCheckBox;
    CheckBox96: TCheckBox;
    Panel116: TPanel;
    Bevel170: TBevel;
    Bevel171: TBevel;
    CheckBox100: TCheckBox;
    CheckBox101: TCheckBox;
    Panel117: TPanel;
    Bevel172: TBevel;
    Bevel173: TBevel;
    Bevel174: TBevel;
    CheckBox102: TCheckBox;
    CheckBox103: TCheckBox;
    CheckBox104: TCheckBox;
    Panel118: TPanel;
    Bevel175: TBevel;
    Bevel176: TBevel;
    CheckBox105: TCheckBox;
    CheckBox106: TCheckBox;
    Bevel177: TBevel;
    Label71: TLabel;
    Panel119: TPanel;
    Bevel178: TBevel;
    Label72: TLabel;
    Bevel179: TBevel;
    Label73: TLabel;
    Bevel180: TBevel;
    Label74: TLabel;
    Bevel181: TBevel;
    Label75: TLabel;
    Panel120: TPanel;
    Bevel182: TBevel;
    Bevel183: TBevel;
    Bevel184: TBevel;
    Bevel185: TBevel;
    CheckBox107: TCheckBox;
    CheckBox108: TCheckBox;
    CheckBox109: TCheckBox;
    CheckBox110: TCheckBox;
    Panel121: TPanel;
    Bevel186: TBevel;
    Bevel187: TBevel;
    CheckBox111: TCheckBox;
    CheckBox112: TCheckBox;
    Panel122: TPanel;
    Bevel188: TBevel;
    Bevel189: TBevel;
    Bevel190: TBevel;
    CheckBox113: TCheckBox;
    CheckBox114: TCheckBox;
    CheckBox115: TCheckBox;
    Panel123: TPanel;
    Bevel191: TBevel;
    Bevel192: TBevel;
    CheckBox116: TCheckBox;
    CheckBox117: TCheckBox;
    Bevel193: TBevel;
    Label76: TLabel;
    Bevel194: TBevel;
    Label77: TLabel;
    Bevel219: TBevel;
    Label85: TLabel;
    Bevel205: TBevel;
    Label80: TLabel;
    Bevel220: TBevel;
    Panel131: TPanel;
    Bevel221: TBevel;
    Label86: TLabel;
    Bevel222: TBevel;
    Label87: TLabel;
    Panel132: TPanel;
    Bevel223: TBevel;
    Bevel224: TBevel;
    Bevel225: TBevel;
    Bevel226: TBevel;
    Bevel227: TBevel;
    CheckBox135: TCheckBox;
    CheckBox136: TCheckBox;
    CheckBox137: TCheckBox;
    CheckBox138: TCheckBox;
    CheckBox139: TCheckBox;
    Panel133: TPanel;
    Bevel228: TBevel;
    Bevel229: TBevel;
    Bevel230: TBevel;
    CheckBox140: TCheckBox;
    CheckBox141: TCheckBox;
    CheckBox142: TCheckBox;
    Panel134: TPanel;
    Bevel231: TBevel;
    Label88: TLabel;
    Bevel232: TBevel;
    Label89: TLabel;
    Bevel233: TBevel;
    Label90: TLabel;
    Bevel234: TBevel;
    Label93: TLabel;
    Panel135: TPanel;
    Bevel235: TBevel;
    Bevel236: TBevel;
    Bevel237: TBevel;
    Bevel238: TBevel;
    CheckBox143: TCheckBox;
    CheckBox144: TCheckBox;
    CheckBox145: TCheckBox;
    CheckBox146: TCheckBox;
    Panel136: TPanel;
    Bevel239: TBevel;
    Bevel240: TBevel;
    Bevel247: TBevel;
    CheckBox147: TCheckBox;
    CheckBox148: TCheckBox;
    CheckBox149: TCheckBox;
    Panel138: TPanel;
    Bevel248: TBevel;
    Bevel249: TBevel;
    Label94: TLabel;
    Bevel250: TBevel;
    Label95: TLabel;
    CheckBox150: TCheckBox;
    Edit47: TEdit;
    Edit48: TEdit;
    Panel139: TPanel;
    Bevel251: TBevel;
    Bevel252: TBevel;
    Bevel253: TBevel;
    Bevel254: TBevel;
    Bevel255: TBevel;
    CheckBox155: TCheckBox;
    CheckBox156: TCheckBox;
    CheckBox157: TCheckBox;
    CheckBox158: TCheckBox;
    CheckBox159: TCheckBox;
    Panel140: TPanel;
    Bevel256: TBevel;
    Label96: TLabel;
    Bevel257: TBevel;
    Label97: TLabel;
    Bevel258: TBevel;
    Label98: TLabel;
    Panel141: TPanel;
    Bevel259: TBevel;
    Bevel260: TBevel;
    Bevel261: TBevel;
    Label99: TLabel;
    CheckBox160: TCheckBox;
    CheckBox161: TCheckBox;
    Edit49: TEdit;
    Edit50: TEdit;
    Panel142: TPanel;
    Bevel262: TBevel;
    Bevel263: TBevel;
    Bevel264: TBevel;
    Label100: TLabel;
    CheckBox162: TCheckBox;
    CheckBox163: TCheckBox;
    Edit56: TEdit;
    Edit57: TEdit;
    Panel143: TPanel;
    Bevel265: TBevel;
    Bevel266: TBevel;
    Bevel267: TBevel;
    Label101: TLabel;
    CheckBox164: TCheckBox;
    CheckBox165: TCheckBox;
    Edit58: TEdit;
    Bevel268: TBevel;
    Label102: TLabel;
    Bevel269: TBevel;
    Label103: TLabel;
    Bevel270: TBevel;
    Label104: TLabel;
    Panel144: TPanel;
    Bevel271: TBevel;
    Label105: TLabel;
    Bevel272: TBevel;
    Label106: TLabel;
    Panel145: TPanel;
    Bevel273: TBevel;
    Bevel274: TBevel;
    Bevel275: TBevel;
    Bevel276: TBevel;
    Bevel277: TBevel;
    CheckBox166: TCheckBox;
    CheckBox167: TCheckBox;
    CheckBox168: TCheckBox;
    CheckBox169: TCheckBox;
    CheckBox170: TCheckBox;
    Panel146: TPanel;
    Bevel278: TBevel;
    Bevel279: TBevel;
    Bevel280: TBevel;
    CheckBox171: TCheckBox;
    CheckBox172: TCheckBox;
    CheckBox173: TCheckBox;
    Panel147: TPanel;
    Bevel281: TBevel;
    Label107: TLabel;
    Bevel282: TBevel;
    Label113: TLabel;
    Bevel283: TBevel;
    Label115: TLabel;
    Bevel284: TBevel;
    Label116: TLabel;
    Panel152: TPanel;
    Bevel285: TBevel;
    Bevel286: TBevel;
    Bevel287: TBevel;
    Bevel300: TBevel;
    CheckBox174: TCheckBox;
    CheckBox175: TCheckBox;
    CheckBox176: TCheckBox;
    CheckBox177: TCheckBox;
    Panel153: TPanel;
    Bevel301: TBevel;
    Bevel302: TBevel;
    Bevel303: TBevel;
    CheckBox178: TCheckBox;
    CheckBox179: TCheckBox;
    CheckBox180: TCheckBox;
    Panel154: TPanel;
    Bevel304: TBevel;
    Bevel305: TBevel;
    Label117: TLabel;
    Bevel306: TBevel;
    Label118: TLabel;
    CheckBox187: TCheckBox;
    Edit59: TEdit;
    Edit60: TEdit;
    Panel155: TPanel;
    Bevel307: TBevel;
    Bevel308: TBevel;
    Bevel309: TBevel;
    Bevel310: TBevel;
    Bevel311: TBevel;
    CheckBox188: TCheckBox;
    CheckBox189: TCheckBox;
    CheckBox190: TCheckBox;
    CheckBox191: TCheckBox;
    CheckBox192: TCheckBox;
    Panel156: TPanel;
    Bevel312: TBevel;
    Label119: TLabel;
    Bevel313: TBevel;
    Label120: TLabel;
    Bevel314: TBevel;
    Label121: TLabel;
    Panel157: TPanel;
    Bevel315: TBevel;
    Bevel316: TBevel;
    Bevel317: TBevel;
    Label122: TLabel;
    CheckBox193: TCheckBox;
    CheckBox194: TCheckBox;
    Edit61: TEdit;
    Edit62: TEdit;
    Panel158: TPanel;
    Bevel318: TBevel;
    Bevel319: TBevel;
    Bevel320: TBevel;
    Label123: TLabel;
    CheckBox195: TCheckBox;
    CheckBox196: TCheckBox;
    Edit63: TEdit;
    Edit64: TEdit;
    Panel159: TPanel;
    Bevel321: TBevel;
    Bevel322: TBevel;
    Bevel323: TBevel;
    Label124: TLabel;
    CheckBox197: TCheckBox;
    CheckBox198: TCheckBox;
    Edit65: TEdit;
    Bevel324: TBevel;
    Label125: TLabel;
    Bevel325: TBevel;
    Label126: TLabel;
    Bevel326: TBevel;
    Label127: TLabel;
    Panel162: TPanel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Panel182: TPanel;
    Panel190: TPanel;
    Label167: TLabel;
    Panel192: TPanel;
    Panel193: TPanel;
    Bevel370: TBevel;
    bbt_Delete: TBitBtn;
    bbt_Close: TBitBtn;
    bbt_Add: TBitBtn;
    stb_Message: TStatusBar;
    bbt_PreView: TBitBtn;
    dtp_RgtDate: TDateTimePicker;
    char_VS: TChart;
    Series2: TLineSeries;
    Series1: TLineSeries;
    Series3: TLineSeries;
    pn_VS: TPanel;
    Label193: TLabel;
    sgd_VsValue: TStringGrid;
    Panel228: TPanel;
    Panel229: TPanel;
    Panel230: TPanel;
    Panel231: TPanel;
    Label194: TLabel;
    Panel232: TPanel;
    Panel233: TPanel;
    Panel234: TPanel;
    Panel235: TPanel;
    Panel236: TPanel;
    Panel237: TPanel;
    Panel238: TPanel;
    Panel239: TPanel;
    Panel240: TPanel;
    Panel241: TPanel;
    Panel242: TPanel;
    Panel243: TPanel;
    Panel244: TPanel;
    combx_Path2: TComboBox;
    bbt_PatVsIns: TBitBtn;
    BitBtn1: TBitBtn;
    Label166: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Panel194: TPanel;
    Panel197: TPanel;
    Panel198: TPanel;
    Label170: TLabel;
    Label171: TLabel;
    Panel199: TPanel;
    Panel200: TPanel;
    Panel201: TPanel;
    Panel202: TPanel;
    Panel203: TPanel;
    Label173: TLabel;
    Panel204: TPanel;
    Panel205: TPanel;
    Panel207: TPanel;
    Label172: TLabel;
    Panel208: TPanel;
    Label174: TLabel;
    Panel209: TPanel;
    Panel210: TPanel;
    Panel211: TPanel;
    Panel212: TPanel;
    Panel213: TPanel;
    Panel214: TPanel;
    Label175: TLabel;
    Panel218: TPanel;
    Panel219: TPanel;
    Panel215: TPanel;
    pn_Patinfo: TBiancoPanel;
    sbt_Min2: TSpeedButton;
    sbt_Exit2: TSpeedButton;
    sbt_Max2: TSpeedButton;
    Panel43: TPanel;
    Panel44: TPanel;
    ed_OpName: TEdit;
    Panel36: TPanel;
    ed_OPD: TEdit;
    Panel37: TPanel;
    ed_Diet: TEdit;
    Panel164: TPanel;
    Panel34: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label3: TLabel;
    Bevel7: TBevel;
    Label4: TLabel;
    Bevel8: TBevel;
    Label5: TLabel;
    Bevel9: TBevel;
    Label6: TLabel;
    Bevel10: TBevel;
    Label9: TLabel;
    Bevel11: TBevel;
    Label10: TLabel;
    Bevel15: TBevel;
    Label11: TLabel;
    Bevel16: TBevel;
    Label12: TLabel;
    chk_Intu2: TCheckBox;
    ed_Intu: TEdit;
    Panel40: TPanel;
    chk_Trach: TCheckBox;
    ed_Trach: TEdit;
    Panel42: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    chk_Intu1: TCheckBox;
    ed_ID: TEdit;
    ed_Deep: TEdit;
    ed_Cuff: TEdit;
    ed_D: TEdit;
    ed_E: TEdit;
    ed_N: TEdit;
    ed_Cuffcate2: TEdit;
    ed_Dcath2: TEdit;
    ed_Ntube2: TEdit;
    ed_Ntube1: TEdit;
    ed_Dcath1: TEdit;
    ed_Cuffcate1: TEdit;
    me_comments: TMemo;
    Panel41: TPanel;
    ed_BedNo: TEdit;
    Panel45: TPanel;
    ed_BlWeg: TEdit;
    Panel30: TPanel;
    Panel31: TPanel;
    ed_HD: TEdit;
    Panel32: TPanel;
    Bevel327: TBevel;
    Bevel328: TBevel;
    Panel33: TPanel;
    bpn_PatList: TBiancoPanel;
    Panel161: TPanel;
    sbt_Min1: TSpeedButton;
    sbt_Max1: TSpeedButton;
    Panel163: TPanel;
    cbx_NowPos: TCheckBox;
    Label7: TLabel;
    combx_WardCd: TComboBox;
    combx_WardNm: TComboBox;
    ed_DocNm: TEdit;
    Label8: TLabel;
    bbt_DocSelect: TBitBtn;
    rbt_Gubun1: TRadioButton;
    Bevel329: TBevel;
    rbt_Gubun3: TRadioButton;
    rbt_Gubun2: TRadioButton;
    ed_DocCd: TEdit;
    pn_PatList: TPanel;
    ugd_List: TUltraGrid;
    StringGrid1: TStringGrid;
    sbt_PtInfo: TSpeedButton;
    sbt_Act: TSpeedButton;
    Panel165: TPanel;
    ed_OpDate: TEdit;
    ed_Admdate: TEdit;
    ed_DiagText: TEdit;
    Panel49: TPanel;
    ugd_List1: TUltraGrid;
    pn_Item1: TPanel;
    sbt_Item1: TSpeedButton;
    sbt_Close1: TSpeedButton;
    Panel50: TPanel;
    med_Item1: TMaskEdit;
    cbx_Item1: TComboBox;
    pn_Item2: TPanel;
    sbt_Item2: TSpeedButton;
    sbt_Close2: TSpeedButton;
    Panel52: TPanel;
    med_Item2: TMaskEdit;
    cbx_Item2: TComboBox;
    pn_Item3: TPanel;
    sbt_Item3: TSpeedButton;
    sbt_Close3: TSpeedButton;
    Panel53: TPanel;
    med_Item3: TMaskEdit;
    ed_Item3: TEdit;
    Label13: TLabel;
    pn_Item4: TPanel;
    sbt_Item4: TSpeedButton;
    sbt_Close4: TSpeedButton;
    Label147: TLabel;
    Panel54: TPanel;
    med_Item4: TMaskEdit;
    ed_Item4: TEdit;
    pn_Item5: TPanel;
    sbt_Item5: TSpeedButton;
    sbt_Close5: TSpeedButton;
    Label148: TLabel;
    Panel56: TPanel;
    med_Item5: TMaskEdit;
    ed_Item5: TEdit;
    pn_Item6: TPanel;
    sbt_Item6: TSpeedButton;
    sbt_Close6: TSpeedButton;
    Label149: TLabel;
    Panel58: TPanel;
    med_Item6: TMaskEdit;
    ed_Item6: TEdit;
    pn_Item7: TPanel;
    sbt_Item7: TSpeedButton;
    sbt_Close7: TSpeedButton;
    Label150: TLabel;
    Panel60: TPanel;
    med_Item7: TMaskEdit;
    ed_Item7: TEdit;
    pn_Item8: TPanel;
    sbt_Item8: TSpeedButton;
    sbt_Close8: TSpeedButton;
    Label151: TLabel;
    Panel62: TPanel;
    med_Item8: TMaskEdit;
    ed_Item8: TEdit;
    pn_Item9: TPanel;
    sbt_Item9: TSpeedButton;
    sbt_Close9: TSpeedButton;
    Panel55: TPanel;
    med_Item9: TMaskEdit;
    ed_Item9: TEdit;
    Panel57: TPanel;
    Bevel330: TBevel;
    Bevel331: TBevel;
    rbt_Item91: TRadioButton;
    rbt_Item92: TRadioButton;
    pn_Item10: TPanel;
    sbt_Item10: TSpeedButton;
    sbt_Close10: TSpeedButton;
    Panel61: TPanel;
    med_Item10: TMaskEdit;
    ed_Item10: TEdit;
    pn_Item11: TPanel;
    sbt_Item11: TSpeedButton;
    sbt_Close11: TSpeedButton;
    Panel59: TPanel;
    med_Item11: TMaskEdit;
    cbx_Item11: TComboBox;
    pn_Item12: TPanel;
    sbt_Item12: TSpeedButton;
    sbt_Close12: TSpeedButton;
    Panel64: TPanel;
    med_Item12: TMaskEdit;
    cbx_Item121: TComboBox;
    cbx_Item122: TComboBox;
    pn_Item13: TPanel;
    sbt_Item13: TSpeedButton;
    sbt_Close13: TSpeedButton;
    Panel63: TPanel;
    med_Item13: TMaskEdit;
    cbx_Item13: TComboBox;
    pn_Item14: TPanel;
    sbt_Item14: TSpeedButton;
    sbt_Close14: TSpeedButton;
    Panel65: TPanel;
    med_Item14: TMaskEdit;
    Panel180: TPanel;
    Bevel359: TBevel;
    Bevel351: TBevel;
    Bevel352: TBevel;
    Bevel353: TBevel;
    Bevel354: TBevel;
    Bevel355: TBevel;
    Bevel356: TBevel;
    Bevel357: TBevel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Panel66: TPanel;
    Bevel332: TBevel;
    Bevel333: TBevel;
    rbt_Item141: TRadioButton;
    rbt_Item142: TRadioButton;
    rbt_Item1421: TRadioButton;
    rbt_Item1422: TRadioButton;
    rbt_Item1423: TRadioButton;
    rbt_Item1424: TRadioButton;
    rbt_Item1425: TRadioButton;
    rbt_Item1426: TRadioButton;
    rbt_Item1427: TRadioButton;
    rbt_Item1428: TRadioButton;
    pn_Item15: TPanel;
    sbt_Item15: TSpeedButton;
    sbt_Close15: TSpeedButton;
    Panel67: TPanel;
    med_Item15: TMaskEdit;
    Panel69: TPanel;
    Bevel342: TBevel;
    Bevel343: TBevel;
    rbt_Item1511: TRadioButton;
    rbt_Item1512: TRadioButton;
    Panel70: TPanel;
    Bevel334: TBevel;
    Bevel335: TBevel;
    rbt_Item1521: TRadioButton;
    rbt_Item1522: TRadioButton;
    Bevel336: TBevel;
    rbt_Item1523: TRadioButton;
    pn_Item16: TPanel;
    sbt_Item16: TSpeedButton;
    sbt_Close16: TSpeedButton;
    Panel68: TPanel;
    med_Item16: TMaskEdit;
    ed_Item16: TEdit;
    pn_Item17: TPanel;
    sbt_Item17: TSpeedButton;
    sbt_Close17: TSpeedButton;
    Panel72: TPanel;
    Panel73: TPanel;
    Bevel337: TBevel;
    Bevel340: TBevel;
    Bevel338: TBevel;
    chk_Item1811: TCheckBox;
    chk_Item1812: TCheckBox;
    chk_Item1813: TCheckBox;
    ed_Item1811: TEdit;
    ed_Item1812: TEdit;
    ed_Item1813: TEdit;
    Panel166: TPanel;
    Bevel339: TBevel;
    Bevel341: TBevel;
    Bevel344: TBevel;
    rbt_Item1821: TRadioButton;
    rbt_Item1822: TRadioButton;
    rbt_Item1823: TRadioButton;
    med_Item17: TMaskEdit;
    pn_Item18: TPanel;
    sbt_Item18: TSpeedButton;
    sbt_Close18: TSpeedButton;
    Panel71: TPanel;
    Panel160: TPanel;
    Bevel345: TBevel;
    Bevel346: TBevel;
    Bevel347: TBevel;
    chk_Item1911: TCheckBox;
    chk_Item1913: TCheckBox;
    chk_Item1915: TCheckBox;
    Panel167: TPanel;
    Bevel358: TBevel;
    Bevel360: TBevel;
    Bevel361: TBevel;
    chk_Item1912: TCheckBox;
    chk_Item1914: TCheckBox;
    chk_Item1916: TCheckBox;
    Bevel348: TBevel;
    chk_Item1921: TCheckBox;
    ed_Item1921: TEdit;
    Bevel349: TBevel;
    chk_Item1922: TCheckBox;
    Bevel350: TBevel;
    chk_Item1923: TCheckBox;
    ed_Item1923: TEdit;
    Bevel362: TBevel;
    chk_Item1924: TCheckBox;
    Bevel363: TBevel;
    chk_Item1925: TCheckBox;
    ed_Item1925: TEdit;
    Bevel364: TBevel;
    chk_Item1926: TCheckBox;
    ed_Item1922: TEdit;
    ed_Item1924: TEdit;
    ed_Item1926: TEdit;
    med_Item18: TMaskEdit;
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pc_ICUChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbt_Min1Click(Sender: TObject);
    procedure sbt_Max1Click(Sender: TObject);
    procedure sbt_PtInfoClick(Sender: TObject);
    procedure combx_WardNmChange(Sender: TObject);
    procedure ugd_ListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sbt_Min2Click(Sender: TObject);
    procedure sbt_Max2Click(Sender: TObject);
    procedure sbt_Exit2Click(Sender: TObject);
    procedure ugd_ListClick(Sender: TObject);
    procedure pn_PatinfoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bpn_PatListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbt_Item1Click(Sender: TObject);
    procedure sbt_Close1Click(Sender: TObject);
    procedure ugd_List1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ugd_List1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sbt_Item2Click(Sender: TObject);
    procedure sbt_Item3Click(Sender: TObject);
    procedure sbt_Item4Click(Sender: TObject);
    procedure sbt_Item5Click(Sender: TObject);
    procedure sbt_Item6Click(Sender: TObject);
    procedure sbt_Item7Click(Sender: TObject);
    procedure sbt_Item8Click(Sender: TObject);
    procedure sbt_Item9Click(Sender: TObject);
    procedure sbt_Item10Click(Sender: TObject);
    procedure sbt_Item11Click(Sender: TObject);
    procedure sbt_Item12Click(Sender: TObject);
    procedure sbt_Item13Click(Sender: TObject);
    procedure sbt_Item14Click(Sender: TObject);
    procedure sbt_Item15Click(Sender: TObject);
    procedure sbt_Item16Click(Sender: TObject);
    procedure sbt_ActClick(Sender: TObject);
    procedure rbt_Gubun1Click(Sender: TObject);
    procedure rbt_Gubun2Click(Sender: TObject);
    procedure rbt_Gubun3Click(Sender: TObject);
  private
    procedure PatList;
    Procedure PatSelect;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDN110FM1: TMDN110FM1;

implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom, MDCLASS1, MComFunc, HisUtil;

{$R *.DFM}


procedure TMDN110FM1.bbt_CloseClick(Sender: TObject);
begin
   close;
end;

procedure TMDN110FM1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDN110FM1.FormDestroy(Sender: TObject);
begin
   MDN110FM1 := Nil;
end;

procedure TMDN110FM1.pc_ICUChange(Sender: TObject);
begin

   sbox_Tab1.HorzScrollBar.Position := 0;
   sbox_Tab1.VertScrollBar.Position := 0;

   sbox_Tab2.HorzScrollBar.Position := 0;
   sbox_Tab2.VertScrollBar.Position := 0;
end;

procedure TMDN110FM1.FormShow(Sender: TObject);
var
   i : Integer;
begin
   pc_ICU.ActivePageIndex := 0;

   sbox_Tab1.HorzScrollBar.Position := 0;
   sbox_Tab1.VertScrollBar.Position := 0;

   sbox_Tab2.HorzScrollBar.Position := 0;
   sbox_Tab2.VertScrollBar.Position := 0;

   // Date 처리
   // 07:00 ~ 익일 06:59까지 날짜 셋팅
   if    (StrToFloat(FormatDateTime('hhnn',Now)) >= 0700) and
         (StrToFloat(FormatDateTime('hhnn',Now)) <  2359) then
   begin
      dtp_RgtDate.Date := Now;
   end
   else if (StrToFloat(FormatDateTime('hhnn',Now)) >= 0000) and
           (StrToFloat(FormatDateTime('hhnn',Now)) <  0659) then
   begin
      dtp_RgtDate.Date := Now -1;
   end;

   bpn_PatList.Top := 33;
   bpn_PatList.Left := 155;

   // 가상 데이타 처리
   {for i := 0 to 96 do
   begin
      char_VS.SeriesList.Series[0].AddY(Random(250),char_VS.SeriesList.Series[0].XLabel[i],clRed);
      char_VS.SeriesList.Series[1].AddY(Random(250),char_VS.SeriesList.Series[1].XLabel[i],clRed);
      char_VS.SeriesList.Series[2].AddY(Random(250),char_VS.SeriesList.Series[2].XLabel[i],clBlack);
   end;}

   // 병동 setting
   GetNowPos(combx_WardCd, combx_WardNm); // NowPos Code Setting.
   combx_WardNm.ItemIndex := combx_WardCd.Items.IndexOf(md_DeptCd);
   combx_WardNmChange(Sender);
end;

procedure TMDN110FM1.PatList;
var
   RowNo, i : LongInt;
   Type1, Type2, Type3 , strGubun : string;
   NowRow, cnt : Longint;
begin
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_List,20);
   ugd_List.RowCount := 2;

   if cbx_NowPos.Checked then
   begin
      if rbt_Gubun3.Checked then
      begin
         if Trim(ed_DocNm.Text) = '' then
            strGubun := 'D'   // 현위치별 조회
         else
            strGubun := 'E';  // 현위치별 + 주치의별 조회
      end
      else
      begin
         if Trim(ed_DocNm.Text) = '' then
            strGubun := '5'   // 현위치별 조회
         else
            strGubun := '9';  // 현위치별 + 주치의별 조회
      end;
   end
   else
   begin
      if rbt_Gubun3.Checked then
      begin
         if Trim(ed_DocNm.Text) = '' then
            strGubun := '4'   // 병동별 조회
         else
            strGubun := '6';  // 병동별 + 주치의별 조회
      end
      else
      begin
         if Trim(ed_DocNm.Text) = '' then
            strGubun := 'F'   // 병동별 조회
         else
            strGubun := 'G';  // 병동별 + 주치의별 조회
      end;
   end;


   Type1 := strGubun;                     // Private Variable
   Type2 := Trim(combx_WardCd.Text);
   //Type3 := Trim(ed_DocCd.Text);          // Private Variable
   Type3 := '';
   // Select Patinet List in Choiced Ward
   //NowRow := 1;
   Screen.Cursor := crHourglass;
   try
      mdPatInf := HmdPatInf.Create;
      RowNo := mdPatInf.StayWard2(Type1,Type2,Type3,G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatInf.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatInf.Free;
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         //MakeMsg(CF_D420, NF010, NF020, StatusBar1);
         Exit;
      end;

      ugd_List.RowCount := RowNo + 1;

      Cnt := 1;
      for i := 0 to RowNo - 1 do
      begin
         if cbx_NowPos.Checked then // 현위치
            ugd_List.Cells[0,i+1]  := mdPatInf.sRoomNo1[i]
         else
            ugd_List.Cells[0,i+1]  := mdPatInf.sRoomNo[i];

         ugd_List.Cells[1, i+1] := mdPatInf.sPatno[i];

         // 금일 입원환자
         if (mdPatInf.sBckStat[i] = '1') then  // 간호확인.
            ugd_List.Cells[2,i+1]  := 'ⓒ'+mdPatInf.sPatName[i]
         else if (mdPatInf.sBckStat[i] = '2') then  // 심사중
            ugd_List.Cells[2,i+1]  := 'ⓘ'+mdPatInf.sPatName[i]
         else if (mdPatInf.sBckStat[i] = '3') or (mdPatInf.sBckStat[i] = '4') then  // 심사완료
            ugd_List.Cells[2,i+1]  := 'ⓕ'+mdPatInf.sPatName[i]
         else if (mdPatInf.sTransDt[i] = FormatDateTime('yyyymmdd',Date)) then
            ugd_List.Cells[2,i+1]  := 'ⓣ'+mdPatInf.sPatName[i]
         else if (mdPatInf.sAdmDate[i] = FormatDateTime('yyyymmdd',Date)) then
            ugd_List.Cells[2,i+1]  := 'ⓐ'+mdPatInf.sPatName[i]
         else
            ugd_List.Cells[2,i+1]  := mdPatInf.sPatName[i];

         ugd_List.Cells[3,i+1]  := mdPatInf.sSex[i]+'/'+ Trim(Calc_Age(now,mdPatInf.sBirtDate[i]));
         ugd_List.Cells[4,i+1]  := GetHdPodCnt('1', mdPatInf.sAdmDate[i],Date);    // 10
         ugd_List.Cells[5,i+1]  := GetHdPodCnt('2', mdPatInf.sLstopDt[i],Date);    // 14
         ugd_List.Cells[6,i+1]  := mdPatInf.sMedDept[i];
         ugd_List.Cells[7,i+1]  := mdPatInf.sGenDrNm[i];
         if Trim(mdPatInf.sPatSect[i]) = 'D' then
            ugd_List.Cells[8,i+1]  := '◆'
         else
            ugd_List.Cells[8,i+1]  := '';
         ugd_List.Cells[9,i+1]  := mdPatInf.sDiagName[i];
         ugd_List.Cells[10,i+1] := mdPatInf.sAdmDate[i];
         ugd_List.Cells[11,i+1] := mdPatInf.sPatName[i];
         ugd_List.Cells[12,i+1] := mdPatInf.sLstordDt[i];
         ugd_List.Cells[13,i+1] := mdPatInf.sSysdate[i];
         ugd_List.Cells[14,i+1] := mdPatInf.sLstopDt[i];
         ugd_List.Cells[15,i+1] := mdPatInf.sChaDrNm[i];
         ugd_List.Cells[16,i+1] := mdPatInf.sBirtDate[i];
         ugd_List.Cells[17,i+1] := mdPatInf.sDeptNm[i];
         ugd_List.Cells[18,i+1] := mdPatInf.sOpyn[i];
         ugd_List.Cells[19,i+1] := mdPatInf.sScanYn[i];

         // 금일 퇴원예정 환자
         if (mdPatInf.sBckStat[i]<>'1') and (mdPatInf.sBckStat[i]<>'2') and (mdPatInf.sBckStat[i]<>'3') and (mdPatInf.sBckStat[i]<>'4') then
         begin
            if (mdPatInf.sDschexdt[i] = FormatDateTime('yyyymmdd',Date)) or
               (mdPatInf.sDschdate[i] = FormatDateTime('yyyymmdd',Date)) then
               ugd_List.Cells[2,i+1] := 'ⓓ'+ ugd_List.Cells[2,i+1];
         end;

         if Trim(mdPatInf.sNurstat[i]) = '' then
            ugd_List.Cells[2,i+1] := '◆' + ugd_List.Cells[2,i+1];

         //if (mdPatInf.sPatNo[i] = md_PatNo) then
         //   NowRow := Cnt;
         Inc(Cnt);
      end;

      ugd_List.SetColAlignment(0, taCenter);       // 가운데정렬
      ugd_List.SetColAlignment(4, taRightJustify); // 우측정렬
      ugd_List.SetColAlignment(5, taRightJustify); // 우측정렬
      ugd_List.SetColAlignment(6, taCenter);       // 가운데정렬

      mdPatInf.Free;
      stb_Message.Panels[0].Text := '자료가 조회되었습니다.';
      //ugd_List.Row := NowRow;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

procedure TMDN110FM1.sbt_Min1Click(Sender: TObject);
begin
   bpn_PatList.Height := 23;
end;

procedure TMDN110FM1.sbt_Max1Click(Sender: TObject);
begin
   bpn_PatList.Height := 417;
end;

procedure TMDN110FM1.sbt_PtInfoClick(Sender: TObject);
begin
   PatList;
end;

procedure TMDN110FM1.combx_WardNmChange(Sender: TObject);
begin
   combx_WardCd.ItemIndex := combx_WardNm.ItemIndex;

   PatList;
end;

procedure TMDN110FM1.ugd_ListDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 9);
end;

procedure TMDN110FM1.sbt_Min2Click(Sender: TObject);
begin
   pn_Patinfo.Height := 23;
end;

procedure TMDN110FM1.sbt_Max2Click(Sender: TObject);
begin
   pn_Patinfo.Height := 304;
end;

procedure TMDN110FM1.sbt_Exit2Click(Sender: TObject);
begin
   pn_Patinfo.Visible := False;
end;

procedure TMDN110FM1.ugd_ListClick(Sender: TObject);
begin

   if CopyByte(ugd_List.Cells[2, ugd_List.Row],1,2) = 'ⓓ' then
   begin
      showmessage('퇴원예정환자입니다.');
      Exit;
   end;

   ed_PatNo.Text := ugd_List.Cells[1, ugd_List.Row];

   PatSelect;

   if pn_Patinfo.Visible = False then
   begin
      pn_patinfo.Top  := 100;
      pn_patinfo.Left := 255;
      pn_patinfo.BringToFront;
      pn_Patinfo.Visible := True;
   end;
end;

procedure TMDN110FM1.pn_PatinfoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   pn_Patinfo.BringToFront;
end;

procedure TMDN110FM1.bpn_PatListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   bpn_PatList.BringToFront;
end;


Procedure TMDN110FM1.PatSelect;
var
   RowNo, i : LongInt;
   strPatStat : String;
   PatCls,PatNo,AdmDate,MedDept,MedDr,MedTime : String;
begin

   Screen.Cursor := crHourglass;
   try

      PatCls  := 'I';
      PatNo   := ed_Patno.Text;

      AdmDate := ugd_List.Cells[10,ugd_List.Row];
      MedDept := '';
      MedDr   := '';
      MedTime := '';

      mdPatInf := HmdPatInf.Create;
      RowNo    := mdPatInf.PatInfo(PatCls,PatNo,AdmDate,MedDept,MedDr,G_LOCATE,MedTime);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatInf.Free;
         ShowErrMsg;
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatInf.Free;
         ShowMessage('조회할 자료가 없습니다.');
         Exit;
      end;

      //입원환자인 경우, 퇴원심사여부>='2'이면, 환자선택 불가
      if (PatCls = 'I') and (mdPatInf.sBckstat[0] >= '2') then
      begin
         if mdPatInf.sBckstat[0] = '2' then
            strPatStat := '※ 퇴원심사가 진행중인 환자이므로 '
         else if mdPatInf.sBckstat[0] = '3' then
            strPatStat := '※ 퇴원심사가 완료된 환자이므로 '
         else if mdPatInf.sBckstat[0] = '4' then
            strPatStat := '※ 퇴원계산서가 출력된 환자이므로 '
         else if mdPatInf.sBckstat[0] = '5' then
            strPatStat := '※ 가퇴원된 환자이므로 '
         else if mdPatInf.sBckstat[0] = '6' then
            strPatStat := '※ 퇴원/수납 완료된 환자이므로 ';

         ShowMessage(strPatStat + '어떠한 기록도 입력/수정 할 수 없습니다.'+#13#10+#13#10+
                     '    입력/수정이 필요한 경우, 먼저 보험심사과에 연락하여 심사마감 취소를 해야합니다.');
//         Exit;
      end;

      //환자 정보 setting...
      ed_PatName.Text  := mdPatInf.sPatName[0];
      ed_SexAge.Text   := mdPatInf.sSex[0]+'/'+ Trim(Calc_Age(now,mdPatInf.sBirtDate[0]));
      ed_MedDept.Text  := mdPatInf.sMedDept[0];
      //md_MedDeptNm := mdPatInf.sDeptNm[0];
      ed_BedNo.Text    := mdPatInf.sBedNo[0];
      ed_DiagText.Text := mdPatInf.sDiagName[0];

      ed_OpName.Text   := mdPatInf.sOpName[0];
      ed_AdmDate.Text  := mdPatInf.sAdmDate[0];
      ed_Opdate.Text   := mdPatInf.sLstOpDt[0];

      if ed_AdmDate.Text <> '' then
         ed_HD.Text := inttostr(trunc(strtoFloat(GetHdPodCnt('1', ed_AdmDate.Text, dtp_RgtDate.Date))))
      else
         ed_HD.Text := '';

      if ed_OpDate.Text <> '' then
         ed_OPD.Text := inttostr(trunc(strtoFloat(GetHdPodCnt('2', ed_OpDate.Text, dtp_RgtDate.Date))))
      else
         ed_OPD.TExt := '';

      ed_BlWeg.Text    := '/' + mdPatInf.sWeight[0];

      mdPatInf.Free;

      mdPdiagt := HmdPdiagt.Create;
      RowNo    := mdPdiagt.ListPatDiag(PatNo,MedDept,AdmDate,G_LOCATE,'1');

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPdiagt.Free;
         ShowErrMsg;
         Exit;
      end;

      if RowNo > 0 then
      begin
         for i := 0 to RowNo - 1 do
         begin
            if mdPdiagt.sMaindiag[i] = 'Y' then
            begin
               ed_DiagText.Text := mdPdiagt.sDiagName[i];
            end;
         end;
      end;

      mdPdiagt.Free;
   finally
      screen.Cursor := crDefault;
   end;
end;

procedure TMDN110FM1.ugd_List1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
   oComp : TObject;
   sName : string;
   Old_Row, Old_Col, x, y : Integer;
   i : Integer;

begin
   //sbox_Tab1.HorzScrollBar.Position := ugd_List1.CellRect(ACol, ARow).Left + 180;
   //sbox_Tab1.VertScrollBar.Position := ugd_List1.CellRect(ACol, ARow).Top  + 161;

   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];

      // 초기화...
      if oComp is TEdit then
      begin
         sName := (oComp as TEdit).Name;

         if CopyByte(sName,1,7) = 'ed_Item' then
            (oComp as TEdit).Text := '';
      end
      else if oComp is TCheckBox then
      begin
         sName := (oComp as TCheckBox).Name;

         if CopyByte(sName,1,8) = 'chk_Item' then
            (oComp as TCheckBox).Checked := False;
      end
      else if oComp is TRadioButton then
      begin
         sName := (oComp as TRadioButton).Name;

         if CopyByte(sName,1,8) = 'rbt_Item' then
            (oComp as TRadioButton).Checked := False;
      end
      else if oComp is TComboBox then
      begin
         sName := (oComp as TComboBox).Name;

         if CopyByte(sName,1,8) = 'cbx_Item' then
            (oComp as TComboBox).ItemIndex := 0;
      end
      else if oComp is TMaskEdit then
      begin
         sName := (oComp as TMaskEdit).Name;

         if CopyByte(sName,1,8) = 'med_Item' then
         begin
            if sName = 'med_Item' + inttostr(ARow) then
            begin
               if ACol < 18 then
               begin
                  if LengthByte(inttostr(ACol-1 + 7)) = 1 then
                     (oComp as TMaskEdit).Text := '0'+ inttostr(ACol-1 + 7) + ':00'
                  else
                     (oComp as TMaskEdit).Text := inttostr(ACol-1 + 7) + ':00';
               end
               else
               begin
                  if LengthByte(inttostr(ACol-1 - 17)) = 1 then
                     (oComp as TMaskEdit).Text := '0'+ inttostr(ACol-1 - 17) + ':00'
                  else
                     (oComp as TMaskEdit).Text := inttostr(ACol-1 - 17) + ':00';
               end;
            end;
         end;
      end;
   end;

   with ugd_List1 do
   begin
      if ARow = 0 then Exit;

      for i := 0 to Self.ComponentCount -1 do
      begin
         oComp := Self.Components[i];
         // Panel 보여주기..
         if oComp is TPanel then
         begin
            sName := (oComp as TPanel).Name;

            if CopyByte(sName,1,7) = 'pn_Item' then
            begin
               if sName = 'pn_Item' + inttostr(ARow) then
               begin
                  // Panel이 grid 전체 높이보다 높으면 위로 가게..
                  if (CellRect(ACol, ARow).Top + (oComp as TPanel).Height) < Height then
                  begin
                     (oComp as TPanel).Top := CellRect(ACol, ARow).Top +Top;
                  end
                  else
                  begin
                     (oComp as TPanel).Top := CellRect(ACol, ARow).Top + DefaultRowHeight - (oComp as TPanel).Height;
                  end;
                  // Panel이 grid 전체 폭보다 뒤로 가면 셀 앞으로 가게...
                  if (CellRect(ACol, ARow).Left + (oComp as TPanel).Width) + DefaultColWidth < Width then
                  begin
                     (oComp as TPanel).Left := CellRect(ACol, ARow).Left+ DefaultColWidth;
                  end
                  else
                  begin
                     (oComp as TPanel).Left := CellRect(ACol, ARow).Left - (oComp as TPanel).Width;
                  end;

                  (oComp as TPanel).Visible := True;
               end
               else
               begin
                  (oComp as TPanel).Visible := False;
               end;
            end;
         end;
      end;
   end;
end;

procedure TMDN110FM1.ugd_List1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    ReSizeGridCol((Sender as TUltragrid), 25);
end;

procedure TMDN110FM1.sbt_Close1Click(Sender: TObject);
var
   oComp : TObject;
   sName : string;
   i : Integer;
begin
   for i := 0 to Self.ComponentCount -1 do
   begin
      oComp := Self.Components[i];

      if oComp is TPanel then
      begin
         sName := (oComp as TPanel).Name;

         if CopyByte(sName,1,7) = 'pn_Item' then
         begin
            (oComp as TPanel).Visible := False;
         end;
      end;
   end;
end;

procedure TMDN110FM1.sbt_Item1Click(Sender: TObject);
var
   sTemp : String;
begin
   if cbx_Item1.Text <> '' then
   begin
      sTemp :=  CopyByte(cbx_Item1.Text, 1, PosByte(':',cbx_Item1.Text)-1);
      ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := sTemp;
   end;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item2Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := cbx_Item2.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item3Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item3.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item4Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item4.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item5Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item5.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item6Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item6.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item7Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item7.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item8Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item8.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item9Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item9.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item10Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item10.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item11Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := CopyByte(cbx_Item11.Text,1,1);

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item12Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := CopyByte(cbx_Item121.Text,1,1) + '/' +
                                                   CopyByte(cbx_Item122.Text,1,1);

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item13Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := CopyByte(cbx_Item13.Text,1,1);

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item14Click(Sender: TObject);
var
   sTemp : string;
begin
   sTemp := '';

   if      rbt_Item141.Checked then
      sTemp := 'R'
   else if rbt_Item142.Checked then
      sTemp := 'L';

   if rbt_Item1421.Checked then
      sTemp := sTemp + '/' + '1'
   else if rbt_Item1422.Checked then
      sTemp := sTemp + '/' + '2'
   else if rbt_Item1423.Checked then
      sTemp := sTemp + '/' + '3'
   else if rbt_Item1424.Checked then
      sTemp := sTemp + '/' + '4'
   else if rbt_Item1425.Checked then
      sTemp := sTemp + '/' + '5'
   else if rbt_Item1426.Checked then
      sTemp := sTemp + '/' + '6'
   else if rbt_Item1427.Checked then
      sTemp := sTemp + '/' + '7'
   else if rbt_Item1428.Checked then
      sTemp := sTemp + '/' + '8';

   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := sTemp;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_Item15Click(Sender: TObject);
var
   sTemp : string;
begin
   sTemp := '';

   if      rbt_Item1511.Checked then
      sTemp := 'R'
   else if rbt_Item1512.Checked then
      sTemp := 'L';

   if rbt_Item1521.Checked then
      sTemp := sTemp + '/' + 'P'
   else if rbt_Item1522.Checked then
      sTemp := sTemp + '/' + 's'
   else if rbt_Item1523.Checked then
      sTemp := sTemp + '/' + 'F';

   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := sTemp;

   sbt_Close1Click(Sender);

end;

procedure TMDN110FM1.sbt_Item16Click(Sender: TObject);
begin
   ugd_List1.Cells[ugd_List1.Col,ugd_List1.Row] := ed_Item16.Text;

   sbt_Close1Click(Sender);
end;

procedure TMDN110FM1.sbt_ActClick(Sender: TObject);
var
   FForm : TForm;
begin
   FForm := BplFormCreate('MDN110FM2');
   FForm.Show;
end;

procedure TMDN110FM1.rbt_Gubun1Click(Sender: TObject);
begin
   PatList;
end;

procedure TMDN110FM1.rbt_Gubun2Click(Sender: TObject);
begin
   PatList;
   QuickSortGrid(ugd_List,2,ugd_List.RowCount-1,11,False);
end;

procedure TMDN110FM1.rbt_Gubun3Click(Sender: TObject);
begin
   PatList;
end;

initialization
    RegisterClass(TMDN110FM1);

finalization
    UnRegisterClass(TMDN110FM1);
end.
