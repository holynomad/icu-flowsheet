object MDN110FM1: TMDN110FM1
  Left = 12
  Top = 40
  BorderStyle = bsSingle
  Caption = 'MDN110FM1 ÁßÈ¯ÀÚ½Ç °£È£ ±â·ÏÁö'
  ClientHeight = 690
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = '±¼¸²Ã¼'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel370: TBevel
    Left = 0
    Top = 632
    Width = 1012
    Height = 34
    Align = alBottom
    Shape = bsFrame
    Style = bsRaised
  end
  object Panel4: TPanel
    ParentBackground = False
    Left = 0
    Top = 0
    Width = 1012
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    Color = 16755285
    TabOrder = 0
    object Panel27: TPanel
      ParentBackground = False
      Left = 260
      Top = 4
      Width = 65
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'µî·Ï¹øÈ£'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel28: TPanel
      ParentBackground = False
      Left = 386
      Top = 4
      Width = 65
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '¼º¸í'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel29: TPanel
      ParentBackground = False
      Left = 513
      Top = 4
      Width = 65
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '¼ºº°/³ªÀÌ'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Panel35: TPanel
      ParentBackground = False
      Left = 639
      Top = 4
      Width = 65
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Áø·á°ú'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ed_PatNo: TEdit
      Left = 325
      Top = 4
      Width = 60
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 4
    end
    object ed_PatName: TEdit
      Left = 451
      Top = 4
      Width = 59
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 5
    end
    object ed_SexAge: TEdit
      Left = 578
      Top = 4
      Width = 59
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 6
    end
    object ed_MedDept: TEdit
      Left = 704
      Top = 4
      Width = 46
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 7
    end
    object dtp_RgtDate: TDateTimePicker
      Left = 67
      Top = 4
      Width = 95
      Height = 22
      CalAlignment = dtaLeft
      Date = 37785.595025544
      Time = 37785.595025544
      DateFormat = dfShort
      DateMode = dmComboBox
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 8
    end
    object Panel41: TPanel
      ParentBackground = False
      Left = 752
      Top = 4
      Width = 57
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Ä§»ó¹øÈ£'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object ed_BedNo: TEdit
      Left = 809
      Top = 4
      Width = 28
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 10
    end
    object Panel45: TPanel
      ParentBackground = False
      Left = 838
      Top = 4
      Width = 82
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Ç÷¾×Çü/Ã¼Áß'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object ed_BlWeg: TEdit
      Left = 920
      Top = 4
      Width = 86
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 12
    end
    object Panel30: TPanel
      ParentBackground = False
      Left = 164
      Top = 4
      Width = 60
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'ÀÔ¿øÀÏ¼ö'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object Panel31: TPanel
      ParentBackground = False
      Left = 4
      Top = 4
      Width = 62
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'ÀÛ¼ºÀÏÀÚ'
      Color = 15458008
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object ed_HD: TEdit
      Left = 225
      Top = 4
      Width = 34
      Height = 22
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 15
    end
  end
  object pc_ICU: TPageControl
    Left = 0
    Top = 33
    Width = 1012
    Height = 596
    ActivePage = ts_ICU1
    Align = alTop
    TabOrder = 1
    OnChange = pc_ICUChange
    object ts_ICU1: TTabSheet
      Caption = '°£È£±â·ÏÁö'
      object sbox_Tab1: TScrollBox
        Left = 0
        Top = 0
        Width = 1004
        Height = 568
        HorzScrollBar.Increment = 1
        HorzScrollBar.Tracking = True
        VertScrollBar.Increment = 1
        VertScrollBar.Tracking = True
        Align = alClient
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object char_VS: TChart
          BackWall.Transparent = False
          Left = 146
          Top = 23
          Width = 1124
          Height = 388
          Cursor = crHandPoint
          AllowZoom = False
          AnimatedZoom = True
          BackWall.Brush.Color = clWhite
          BackWall.Color = 15132390
          MarginBottom = 0
          MarginLeft = 1
          MarginRight = 0
          MarginTop = 0
          Title.Brush.Color = clSilver
          Title.Font.Charset = HANGEUL_CHARSET
          Title.Font.Color = clPurple
          Title.Font.Height = -13
          Title.Font.Name = '±¼¸²Ã¼'
          Title.Font.Style = []
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          BackColor = 15132390
          BottomAxis.Automatic = False
          BottomAxis.AutomaticMaximum = False
          BottomAxis.AutomaticMinimum = False
          BottomAxis.ExactDateTime = False
          BottomAxis.LabelsFont.Charset = ANSI_CHARSET
          BottomAxis.LabelsFont.Color = clBlack
          BottomAxis.LabelsFont.Height = -11
          BottomAxis.LabelsFont.Name = 'Arial'
          BottomAxis.LabelsFont.Style = []
          BottomAxis.LabelsMultiLine = True
          BottomAxis.LabelsSeparation = 0
          BottomAxis.Maximum = 96
          BottomAxis.MinorTickCount = 0
          BottomAxis.MinorTickLength = 0
          BottomAxis.RoundFirstLabel = False
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.ExactDateTime = False
          LeftAxis.LabelStyle = talValue
          LeftAxis.Maximum = 250
          LeftAxis.Title.Angle = 270
          Legend.ColorWidth = 15
          Legend.Font.Charset = HANGEUL_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -17
          Legend.Font.Name = '±¼¸²Ã¼'
          Legend.Font.Style = []
          Legend.Frame.Width = 2
          Legend.HorizMargin = 13
          Legend.ShadowSize = 0
          Legend.TextStyle = ltsRightValue
          Legend.TopPos = 3
          Legend.Visible = False
          View3D = False
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = clSilver
          TabOrder = 3
          object Series2: TLineSeries
            Marks.Arrow.Visible = False
            Marks.ArrowLength = 11
            Marks.Font.Charset = DEFAULT_CHARSET
            Marks.Font.Color = clBlue
            Marks.Font.Height = -12
            Marks.Font.Name = 'Arial'
            Marks.Font.Style = [fsBold]
            Marks.Frame.Visible = False
            Marks.Style = smsValue
            Marks.Transparent = True
            Marks.Visible = True
            SeriesColor = clRed
            Title = 'BP1'
            LinePen.Color = clRed
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Pen.Color = clRed
            Pointer.Pen.Style = psDot
            Pointer.Style = psDownTriangle
            Pointer.VertSize = 3
            Pointer.Visible = True
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
          end
          object Series1: TLineSeries
            Marks.Arrow.Visible = False
            Marks.ArrowLength = 11
            Marks.Font.Charset = DEFAULT_CHARSET
            Marks.Font.Color = clBlue
            Marks.Font.Height = -12
            Marks.Font.Name = 'Arial'
            Marks.Font.Style = [fsBold]
            Marks.Frame.Visible = False
            Marks.Style = smsValue
            Marks.Transparent = True
            Marks.Visible = True
            SeriesColor = clRed
            Title = 'BP2'
            LinePen.Color = clRed
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Pen.Color = clRed
            Pointer.Pen.Style = psDot
            Pointer.Style = psTriangle
            Pointer.VertSize = 3
            Pointer.Visible = True
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
          end
          object Series3: TLineSeries
            Marks.Arrow.Visible = False
            Marks.ArrowLength = 11
            Marks.Font.Charset = DEFAULT_CHARSET
            Marks.Font.Color = clBlue
            Marks.Font.Height = -12
            Marks.Font.Name = 'Arial'
            Marks.Font.Style = [fsBold]
            Marks.Frame.Visible = False
            Marks.Style = smsValue
            Marks.Transparent = True
            Marks.Visible = True
            SeriesColor = clBlack
            Title = 'Ã¼¿Â'
            LinePen.Color = clRed
            LinePen.Style = psDashDot
            Pointer.HorizSize = 3
            Pointer.InflateMargins = True
            Pointer.Pen.Color = clRed
            Pointer.Pen.Style = psDot
            Pointer.Style = psCircle
            Pointer.VertSize = 3
            Pointer.Visible = True
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
          end
        end
        object Panel1: TPanel
          ParentBackground = False
          Left = 182
          Top = 0
          Width = 1089
          Height = 24
          BevelInner = bvLowered
          Color = 16755285
          TabOrder = 0
          object Panel2: TPanel
            ParentBackground = False
            Left = 2
            Top = 2
            Width = 45
            Height = 20
            Caption = '7'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Panel3: TPanel
            ParentBackground = False
            Left = 47
            Top = 2
            Width = 45
            Height = 20
            Caption = '8'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Panel5: TPanel
            ParentBackground = False
            Left = 92
            Top = 2
            Width = 46
            Height = 20
            Caption = '9'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object Panel6: TPanel
            ParentBackground = False
            Left = 138
            Top = 2
            Width = 45
            Height = 20
            Caption = '10'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object Panel7: TPanel
            ParentBackground = False
            Left = 183
            Top = 2
            Width = 45
            Height = 20
            Caption = '11'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object Panel8: TPanel
            ParentBackground = False
            Left = 228
            Top = 2
            Width = 46
            Height = 20
            Caption = 'MD'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object Panel9: TPanel
            ParentBackground = False
            Left = 274
            Top = 2
            Width = 45
            Height = 20
            Caption = '1'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object Panel10: TPanel
            ParentBackground = False
            Left = 319
            Top = 2
            Width = 45
            Height = 20
            Caption = '2'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object Panel11: TPanel
            ParentBackground = False
            Left = 364
            Top = 2
            Width = 44
            Height = 20
            Caption = '3'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object Panel12: TPanel
            ParentBackground = False
            Left = 408
            Top = 2
            Width = 46
            Height = 20
            Caption = '4'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object Panel13: TPanel
            ParentBackground = False
            Left = 454
            Top = 2
            Width = 46
            Height = 20
            Caption = '5'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object Panel14: TPanel
            ParentBackground = False
            Left = 500
            Top = 2
            Width = 45
            Height = 20
            Caption = '6'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
          object Panel15: TPanel
            ParentBackground = False
            Left = 545
            Top = 2
            Width = 45
            Height = 20
            Caption = '7'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object Panel16: TPanel
            ParentBackground = False
            Left = 590
            Top = 2
            Width = 46
            Height = 20
            Caption = '8'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
          end
          object Panel17: TPanel
            ParentBackground = False
            Left = 636
            Top = 2
            Width = 45
            Height = 20
            Caption = '9'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
          end
          object Panel18: TPanel
            ParentBackground = False
            Left = 681
            Top = 2
            Width = 45
            Height = 20
            Caption = '10'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
          end
          object Panel19: TPanel
            ParentBackground = False
            Left = 726
            Top = 2
            Width = 45
            Height = 20
            Caption = '11'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
          end
          object Panel20: TPanel
            ParentBackground = False
            Left = 771
            Top = 2
            Width = 45
            Height = 20
            Caption = 'MN'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
          end
          object Panel21: TPanel
            ParentBackground = False
            Left = 816
            Top = 2
            Width = 45
            Height = 20
            Caption = '1'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
          end
          object Panel22: TPanel
            ParentBackground = False
            Left = 861
            Top = 2
            Width = 45
            Height = 20
            Caption = '2'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 19
          end
          object Panel23: TPanel
            ParentBackground = False
            Left = 906
            Top = 2
            Width = 45
            Height = 20
            Caption = '3'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 20
          end
          object Panel24: TPanel
            ParentBackground = False
            Left = 951
            Top = 2
            Width = 45
            Height = 20
            Caption = '4'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 21
          end
          object Panel25: TPanel
            ParentBackground = False
            Left = 996
            Top = 2
            Width = 45
            Height = 20
            Caption = '5'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
          end
          object Panel26: TPanel
            ParentBackground = False
            Left = 1041
            Top = 2
            Width = 46
            Height = 20
            Caption = '6'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 23
          end
        end
        object Panel162: TPanel
          ParentBackground = False
          Left = 108
          Top = 0
          Width = 74
          Height = 393
          BevelInner = bvLowered
          Color = 16755285
          TabOrder = 1
          object Label128: TLabel
            Transparent = False
            Left = 56
            Top = 377
            Width = 6
            Height = 11
            Caption = '0'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label129: TLabel
            Transparent = False
            Left = 50
            Top = 356
            Width = 12
            Height = 11
            Caption = '20'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label130: TLabel
            Transparent = False
            Left = 50
            Top = 327
            Width = 12
            Height = 11
            Caption = '40'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label131: TLabel
            Transparent = False
            Left = 49
            Top = 298
            Width = 12
            Height = 11
            Caption = '60'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label132: TLabel
            Transparent = False
            Left = 49
            Top = 268
            Width = 12
            Height = 11
            Caption = '80'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label133: TLabel
            Transparent = False
            Left = 43
            Top = 239
            Width = 18
            Height = 11
            Caption = '100'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label134: TLabel
            Transparent = False
            Left = 43
            Top = 209
            Width = 18
            Height = 11
            Caption = '120'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label135: TLabel
            Transparent = False
            Left = 43
            Top = 181
            Width = 18
            Height = 11
            Caption = '140'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label136: TLabel
            Transparent = False
            Left = 43
            Top = 150
            Width = 18
            Height = 11
            Caption = '160'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label137: TLabel
            Transparent = False
            Left = 43
            Top = 122
            Width = 18
            Height = 11
            Caption = '180'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label138: TLabel
            Transparent = False
            Left = 43
            Top = 92
            Width = 18
            Height = 11
            Caption = '200'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label139: TLabel
            Transparent = False
            Left = 43
            Top = 62
            Width = 18
            Height = 11
            Caption = '220'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label140: TLabel
            Transparent = False
            Left = 43
            Top = 36
            Width = 18
            Height = 11
            Caption = '240'
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentFont = False
          end
          object Label141: TLabel
            Transparent = False
            Left = 4
            Top = 377
            Width = 24
            Height = 11
            Caption = '35¡É'
            Color = 16755285
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label142: TLabel
            Transparent = False
            Left = 4
            Top = 312
            Width = 24
            Height = 11
            Caption = '36¡É'
            Color = 16755285
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label143: TLabel
            Transparent = False
            Left = 4
            Top = 239
            Width = 24
            Height = 11
            Caption = '37¡É'
            Color = 16755285
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label144: TLabel
            Transparent = False
            Left = 4
            Top = 166
            Width = 24
            Height = 11
            Caption = '38¡É'
            Color = 16755285
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label145: TLabel
            Transparent = False
            Left = 4
            Top = 92
            Width = 24
            Height = 11
            Caption = '39¡É'
            Color = 16755285
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label146: TLabel
            Transparent = False
            Left = 9
            Top = 24
            Width = 24
            Height = 11
            Caption = '40¡É'
            Color = 16755285
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel33: TPanel
          ParentBackground = False
          Left = 0
          Top = 0
          Width = 108
          Height = 393
          BevelInner = bvLowered
          Color = 15458008
          TabOrder = 4
        end
        object Panel182: TPanel
          ParentBackground = False
          Left = 1
          Top = 393
          Width = 1271
          Height = 384
          BevelInner = bvLowered
          Color = 16755285
          TabOrder = 2
          object ugd_List1: TUltraGrid
            DrawingStyle = gdsClassic
            Left = 4
            Top = 2
            Width = 1268
            Height = 380
            Cursor = crHandPoint
            BorderStyle = bsNone
            Color = 16383999
            ColCount = 25
            DefaultColWidth = 47
            DefaultRowHeight = 20
            FixedColor = 13882323
            RowCount = 19
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            GridLineWidth = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssNone
            ShowHint = False
            TabOrder = 25
            OnDrawCell = ugd_List1DrawCell
            OnSelectCell = ugd_List1SelectCell
            FixedAlignment = taCenter
            FixedFontBold = False
            SelectedRowColor = 16641503
            SelectedRowFontColor = clNavy
            GridRowColor = 15724527
            Title = 'Title|7|8|9|10|11|MD|1|2|3|4|5|6|7|8|9|10|11|MN|1|2|3|4|5|6'
            Wrap = False
            ColWidths = (
              179
              45
              46
              45
              45
              45
              46
              45
              45
              45
              46
              45
              45
              46
              45
              44
              45
              46
              46
              45
              45
              46
              44
              47
              47)
          end
          object Panel49: TPanel
            ParentBackground = False
            Left = 2
            Top = 2
            Width = 181
            Height = 20
            Alignment = taLeftJustify
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 24
          end
          object Panel190: TPanel
            ParentBackground = False
            Left = 2
            Top = 22
            Width = 49
            Height = 160
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label167: TLabel
              Transparent = False
              Left = 10
              Top = 53
              Width = 26
              Height = 12
              Caption = 'Ã¼À§'
            end
            object Label166: TLabel
              Transparent = False
              Left = 17
              Top = 69
              Width = 13
              Height = 12
              Caption = '¹×'
            end
            object Label168: TLabel
              Transparent = False
              Left = 10
              Top = 85
              Width = 26
              Height = 12
              Caption = 'ÀÏ¹Ý'
            end
            object Label169: TLabel
              Transparent = False
              Left = 10
              Top = 101
              Width = 26
              Height = 12
              Caption = '°üÂû'
            end
          end
          object Panel192: TPanel
            ParentBackground = False
            Left = 51
            Top = 22
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Ã¼ À§'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Panel193: TPanel
            ParentBackground = False
            Left = 51
            Top = 42
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' ½Ä ÀÌ'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object Panel194: TPanel
            ParentBackground = False
            Left = 51
            Top = 62
            Width = 62
            Height = 120
            Alignment = taLeftJustify
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object Label170: TLabel
              Transparent = False
              Left = 6
              Top = 37
              Width = 33
              Height = 12
              Caption = '±â Å¸'
            end
            object Label171: TLabel
              Transparent = False
              Left = 6
              Top = 57
              Width = 33
              Height = 12
              Caption = 'Ãø Á¤'
            end
          end
          object Panel197: TPanel
            ParentBackground = False
            Left = 113
            Top = 62
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Ã¼ Áß'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object Panel198: TPanel
            ParentBackground = False
            Left = 113
            Top = 82
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' ½Å Àå'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object Panel199: TPanel
            ParentBackground = False
            Left = 113
            Top = 102
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' µÎ À§'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object Panel200: TPanel
            ParentBackground = False
            Left = 113
            Top = 122
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Èä À§'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object Panel201: TPanel
            ParentBackground = False
            Left = 113
            Top = 142
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' º¹ À§'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object Panel202: TPanel
            ParentBackground = False
            Left = 113
            Top = 162
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Çã ¸®'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object Panel203: TPanel
            ParentBackground = False
            Left = 2
            Top = 182
            Width = 49
            Height = 40
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            object Label173: TLabel
              Transparent = False
              Left = 5
              Top = 13
              Width = 39
              Height = 12
              Caption = '¼øÈ¯°è'
            end
          end
          object Panel204: TPanel
            ParentBackground = False
            Left = 51
            Top = 182
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' CVP'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
          object Panel205: TPanel
            ParentBackground = False
            Left = 51
            Top = 202
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' PAP && PCWP'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object Panel207: TPanel
            ParentBackground = False
            Left = 2
            Top = 222
            Width = 49
            Height = 100
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            object Label172: TLabel
              Transparent = False
              Left = 5
              Top = 45
              Width = 39
              Height = 12
              Caption = '½Å°æ°è'
            end
          end
          object Panel208: TPanel
            ParentBackground = False
            Left = 51
            Top = 222
            Width = 62
            Height = 60
            Alignment = taLeftJustify
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
            object Label174: TLabel
              Transparent = False
              Left = 10
              Top = 23
              Width = 21
              Height = 12
              Caption = 'GCS'
            end
          end
          object Panel209: TPanel
            ParentBackground = False
            Left = 113
            Top = 222
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Eye'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
          end
          object Panel210: TPanel
            ParentBackground = False
            Left = 113
            Top = 242
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Verbal'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
          end
          object Panel211: TPanel
            ParentBackground = False
            Left = 113
            Top = 262
            Width = 70
            Height = 20
            Alignment = taLeftJustify
            Caption = ' Motor'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 17
          end
          object Panel212: TPanel
            ParentBackground = False
            Left = 51
            Top = 282
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' P/S'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
          end
          object Panel213: TPanel
            ParentBackground = False
            Left = 51
            Top = 302
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' L/R'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 19
          end
          object Panel214: TPanel
            ParentBackground = False
            Left = 2
            Top = 322
            Width = 49
            Height = 60
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 20
            object Label175: TLabel
              Transparent = False
              Left = 5
              Top = 21
              Width = 39
              Height = 12
              Caption = 'È£Èí±â'
            end
          end
          object Panel218: TPanel
            ParentBackground = False
            Left = 51
            Top = 322
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' SpO2'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 21
          end
          object Panel219: TPanel
            ParentBackground = False
            Left = 51
            Top = 342
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' O2'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
          end
          object Panel215: TPanel
            ParentBackground = False
            Left = 51
            Top = 362
            Width = 132
            Height = 20
            Alignment = taLeftJustify
            Caption = ' V. mode'
            Color = 15458008
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 23
          end
          object pn_Item1: TPanel
            ParentBackground = False
            Left = 192
            Top = 22
            Width = 289
            Height = 24
            TabOrder = 26
            Visible = False
            object sbt_Item1: TSpeedButton
              Left = 224
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item1Click
            end
            object sbt_Close1: TSpeedButton
              Left = 256
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel50: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Ã¼ À§'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item1: TMaskEdit
              Left = 53
              Top = 2
              Width = 43
              Height = 20
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object cbx_Item1: TComboBox
              Left = 96
              Top = 2
              Width = 126
              Height = 21
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ItemHeight = 13
              TabOrder = 2
              Items.Strings = (
                ''
                'S: supine'
                'SFP: semifowler'#39's'
                'Rt: Rt lateral'
                'Lt: Lt lateral'
                'shock: shock position'
                'P: prone'
                'sit: sitting')
            end
          end
          object pn_Item2: TPanel
            ParentBackground = False
            Left = 192
            Top = 46
            Width = 289
            Height = 24
            TabOrder = 27
            Visible = False
            object sbt_Item2: TSpeedButton
              Left = 224
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item2Click
            end
            object sbt_Close2: TSpeedButton
              Left = 256
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel52: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' ½Ä ÀÌ'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item2: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object cbx_Item2: TComboBox
              Left = 96
              Top = 1
              Width = 126
              Height = 21
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ItemHeight = 13
              TabOrder = 2
              Items.Strings = (
                ''
                '»ó½Ä'
                '¿¬½Ä'
                'À¯µ¿½Ä'
                'TF')
            end
          end
          object pn_Item3: TPanel
            ParentBackground = False
            Left = 192
            Top = 70
            Width = 250
            Height = 24
            TabOrder = 28
            Visible = False
            object sbt_Item3: TSpeedButton
              Left = 184
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item3Click
            end
            object sbt_Close3: TSpeedButton
              Left = 216
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Label13: TLabel
              Transparent = False
              Left = 167
              Top = 7
              Width = 14
              Height = 13
              Caption = '§¸'
            end
            object Panel53: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Ã¼ Áß'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item3: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item3: TEdit
              Left = 96
              Top = 1
              Width = 68
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item4: TPanel
            ParentBackground = False
            Left = 192
            Top = 94
            Width = 250
            Height = 24
            TabOrder = 29
            Visible = False
            object sbt_Item4: TSpeedButton
              Left = 184
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item4Click
            end
            object sbt_Close4: TSpeedButton
              Left = 216
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Label147: TLabel
              Transparent = False
              Left = 167
              Top = 7
              Width = 14
              Height = 13
              Caption = '§¯'
            end
            object Panel54: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' ½Å Àå'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item4: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item4: TEdit
              Left = 96
              Top = 1
              Width = 68
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item5: TPanel
            ParentBackground = False
            Left = 192
            Top = 118
            Width = 250
            Height = 24
            TabOrder = 30
            Visible = False
            object sbt_Item5: TSpeedButton
              Left = 184
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item5Click
            end
            object sbt_Close5: TSpeedButton
              Left = 216
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Label148: TLabel
              Transparent = False
              Left = 167
              Top = 7
              Width = 14
              Height = 13
              Caption = '§¯'
            end
            object Panel56: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' µÎ À§'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item5: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item5: TEdit
              Left = 96
              Top = 1
              Width = 68
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item6: TPanel
            ParentBackground = False
            Left = 192
            Top = 142
            Width = 250
            Height = 24
            TabOrder = 31
            Visible = False
            object sbt_Item6: TSpeedButton
              Left = 184
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item6Click
            end
            object sbt_Close6: TSpeedButton
              Left = 216
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Label149: TLabel
              Transparent = False
              Left = 167
              Top = 7
              Width = 14
              Height = 13
              Caption = '§¯'
            end
            object Panel58: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Èä À§'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item6: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item6: TEdit
              Left = 96
              Top = 1
              Width = 68
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item7: TPanel
            ParentBackground = False
            Left = 192
            Top = 166
            Width = 250
            Height = 24
            TabOrder = 32
            Visible = False
            object sbt_Item7: TSpeedButton
              Left = 184
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item7Click
            end
            object sbt_Close7: TSpeedButton
              Left = 216
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Label150: TLabel
              Transparent = False
              Left = 167
              Top = 7
              Width = 14
              Height = 13
              Caption = '§¯'
            end
            object Panel60: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' º¹ À§'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item7: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item7: TEdit
              Left = 96
              Top = 1
              Width = 68
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item8: TPanel
            ParentBackground = False
            Left = 192
            Top = 190
            Width = 250
            Height = 24
            TabOrder = 33
            Visible = False
            object sbt_Item8: TSpeedButton
              Left = 184
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item8Click
            end
            object sbt_Close8: TSpeedButton
              Left = 216
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Label151: TLabel
              Transparent = False
              Left = 167
              Top = 7
              Width = 14
              Height = 13
              Caption = '§¯'
            end
            object Panel62: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Çã ¸®'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item8: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item8: TEdit
              Left = 96
              Top = 1
              Width = 68
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item9: TPanel
            ParentBackground = False
            Left = 192
            Top = 214
            Width = 365
            Height = 26
            TabOrder = 34
            Visible = False
            object sbt_Item9: TSpeedButton
              Left = 300
              Top = 3
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item9Click
            end
            object sbt_Close9: TSpeedButton
              Left = 332
              Top = 3
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel55: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 22
              Alignment = taLeftJustify
              Caption = ' CVP'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item9: TMaskEdit
              Left = 53
              Top = 1
              Width = 43
              Height = 23
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item9: TEdit
              Left = 248
              Top = 3
              Width = 50
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
            object Panel57: TPanel
              ParentBackground = False
              Left = 97
              Top = 2
              Width = 151
              Height = 22
              TabOrder = 3
              object Bevel330: TBevel
                Left = 1
                Top = 1
                Width = 85
                Height = 20
                Shape = bsFrame
              end
              object Bevel331: TBevel
                Left = 86
                Top = 1
                Width = 64
                Height = 20
                Shape = bsFrame
              end
              object rbt_Item91: TRadioButton
                Left = 3
                Top = 3
                Width = 81
                Height = 16
                Caption = 'monitoring'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object rbt_Item92: TRadioButton
                Left = 88
                Top = 3
                Width = 60
                Height = 16
                Caption = 'manual'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object pn_Item10: TPanel
            ParentBackground = False
            Left = 192
            Top = 240
            Width = 229
            Height = 24
            TabOrder = 35
            Visible = False
            object sbt_Item10: TSpeedButton
              Left = 164
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item10Click
            end
            object sbt_Close10: TSpeedButton
              Left = 196
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel61: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 70
              Height = 20
              Alignment = taLeftJustify
              Caption = ' PAP&&PCWP'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item10: TMaskEdit
              Left = 73
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item10: TEdit
              Left = 116
              Top = 1
              Width = 47
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item11: TPanel
            ParentBackground = False
            Left = 192
            Top = 264
            Width = 289
            Height = 24
            TabOrder = 36
            Visible = False
            object sbt_Item11: TSpeedButton
              Left = 224
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item11Click
            end
            object sbt_Close11: TSpeedButton
              Left = 256
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel59: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Eye'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item11: TMaskEdit
              Left = 53
              Top = 2
              Width = 43
              Height = 20
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object cbx_Item11: TComboBox
              Left = 96
              Top = 2
              Width = 126
              Height = 21
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ItemHeight = 13
              TabOrder = 2
              Items.Strings = (
                ''
                '4. spontaneous'
                '3. To voice'
                '2. To pain'
                '1. No response')
            end
          end
          object pn_Item12: TPanel
            ParentBackground = False
            Left = 192
            Top = 288
            Width = 413
            Height = 24
            TabOrder = 37
            Visible = False
            object sbt_Item12: TSpeedButton
              Left = 348
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item12Click
            end
            object sbt_Close12: TSpeedButton
              Left = 380
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel64: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 55
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Verbal'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item12: TMaskEdit
              Left = 58
              Top = 2
              Width = 43
              Height = 20
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object cbx_Item121: TComboBox
              Left = 101
              Top = 2
              Width = 123
              Height = 21
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ItemHeight = 13
              TabOrder = 2
              Items.Strings = (
                ''
                '5. Oriented'
                '4. Confused'
                '3. Inappropriate'
                '2. Incomprehensive'
                '1. No response')
            end
            object cbx_Item122: TComboBox
              Left = 223
              Top = 2
              Width = 124
              Height = 21
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ItemHeight = 13
              TabOrder = 3
              Items.Strings = (
                ''
                'T: tracheostomy'
                'E: endotracheal tube'
                'A: airway')
            end
          end
          object pn_Item13: TPanel
            ParentBackground = False
            Left = 192
            Top = 313
            Width = 289
            Height = 24
            TabOrder = 38
            Visible = False
            object sbt_Item13: TSpeedButton
              Left = 224
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item13Click
            end
            object sbt_Close13: TSpeedButton
              Left = 256
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel63: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 51
              Height = 20
              Alignment = taLeftJustify
              Caption = ' Motor'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item13: TMaskEdit
              Left = 53
              Top = 2
              Width = 43
              Height = 20
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object cbx_Item13: TComboBox
              Left = 96
              Top = 2
              Width = 126
              Height = 21
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ItemHeight = 13
              TabOrder = 2
              Items.Strings = (
                ''
                '6. Obey Commandes'
                '5. Localize'
                '4. Withdrawal'
                '3. Abnomal Flexion'
                '2. Abnormal Extension'
                '1. No response')
            end
          end
          object pn_Item14: TPanel
            ParentBackground = False
            Left = 528
            Top = 22
            Width = 225
            Height = 176
            TabOrder = 39
            Visible = False
            object sbt_Item14: TSpeedButton
              Left = 159
              Top = 2
              Width = 32
              Height = 21
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item14Click
            end
            object sbt_Close14: TSpeedButton
              Left = 191
              Top = 2
              Width = 31
              Height = 21
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel65: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 36
              Height = 22
              Alignment = taLeftJustify
              Caption = ' P/S'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item14: TMaskEdit
              Left = 38
              Top = 2
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object Panel180: TPanel
              ParentBackground = False
              Left = 3
              Top = 24
              Width = 220
              Height = 150
              TabOrder = 2
              object Bevel359: TBevel
                Left = 1
                Top = 1
                Width = 106
                Height = 37
                Shape = bsFrame
              end
              object Bevel351: TBevel
                Left = 1
                Top = 38
                Width = 106
                Height = 37
                Shape = bsFrame
              end
              object Bevel352: TBevel
                Left = 1
                Top = 75
                Width = 106
                Height = 37
                Shape = bsFrame
              end
              object Bevel353: TBevel
                Left = 1
                Top = 112
                Width = 106
                Height = 37
                Shape = bsFrame
              end
              object Bevel354: TBevel
                Left = 107
                Top = 1
                Width = 112
                Height = 37
                Shape = bsFrame
              end
              object Bevel355: TBevel
                Left = 107
                Top = 38
                Width = 112
                Height = 37
                Shape = bsFrame
              end
              object Bevel356: TBevel
                Left = 107
                Top = 75
                Width = 112
                Height = 37
                Shape = bsFrame
              end
              object Bevel357: TBevel
                Left = 107
                Top = 112
                Width = 112
                Height = 37
                Shape = bsFrame
              end
              object rbt_Item1428: TRadioButton
                Left = 109
                Top = 113
                Width = 108
                Height = 34
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -32
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 15
              end
              object rbt_Item1427: TRadioButton
                Left = 108
                Top = 77
                Width = 109
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -27
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 14
              end
              object rbt_Item1426: TRadioButton
                Left = 108
                Top = 40
                Width = 109
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -24
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 13
              end
              object rbt_Item1425: TRadioButton
                Left = 109
                Top = 3
                Width = 106
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -21
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 12
              end
              object rbt_Item1424: TRadioButton
                Left = 3
                Top = 114
                Width = 102
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 11
              end
              object rbt_Item1423: TRadioButton
                Left = 3
                Top = 77
                Width = 102
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 10
              end
              object rbt_Item1422: TRadioButton
                Left = 3
                Top = 40
                Width = 102
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 9
              end
              object rbt_Item1421: TRadioButton
                Left = 3
                Top = 3
                Width = 102
                Height = 33
                Caption = '¡Ü'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 8
              end
              object StaticText1: TStaticText
                Transparent = False
                Left = 86
                Top = 12
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '1'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object StaticText2: TStaticText
                Transparent = False
                Left = 86
                Top = 47
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '2'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object StaticText3: TStaticText
                Transparent = False
                Left = 86
                Top = 86
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '3'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
              object StaticText4: TStaticText
                Transparent = False
                Left = 86
                Top = 125
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '4'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 3
              end
              object StaticText5: TStaticText
                Transparent = False
                Left = 199
                Top = 12
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '5'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 4
              end
              object StaticText6: TStaticText
                Transparent = False
                Left = 199
                Top = 47
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '6'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 5
              end
              object StaticText7: TStaticText
                Transparent = False
                Left = 199
                Top = 86
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '7'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 6
              end
              object StaticText8: TStaticText
                Transparent = False
                Left = 199
                Top = 125
                Width = 10
                Height = 16
                Alignment = taCenter
                Caption = '8'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 7
              end
            end
            object Panel66: TPanel
              ParentBackground = False
              Left = 83
              Top = 2
              Width = 76
              Height = 22
              TabOrder = 3
              object Bevel332: TBevel
                Left = 1
                Top = 1
                Width = 38
                Height = 20
                Shape = bsFrame
              end
              object Bevel333: TBevel
                Left = 39
                Top = 1
                Width = 36
                Height = 20
                Shape = bsFrame
              end
              object rbt_Item141: TRadioButton
                Left = 3
                Top = 3
                Width = 34
                Height = 16
                Caption = 'R'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object rbt_Item142: TRadioButton
                Left = 41
                Top = 3
                Width = 32
                Height = 16
                Caption = 'L'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object pn_Item15: TPanel
            ParentBackground = False
            Left = 589
            Top = 198
            Width = 249
            Height = 46
            TabOrder = 40
            Visible = False
            object sbt_Item15: TSpeedButton
              Left = 183
              Top = 2
              Width = 32
              Height = 22
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item15Click
            end
            object sbt_Close15: TSpeedButton
              Left = 215
              Top = 2
              Width = 31
              Height = 22
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel67: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 41
              Height = 22
              Alignment = taLeftJustify
              Caption = ' L/R'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item15: TMaskEdit
              Left = 44
              Top = 2
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object Panel69: TPanel
              ParentBackground = False
              Left = 89
              Top = 2
              Width = 93
              Height = 22
              TabOrder = 2
              object Bevel342: TBevel
                Left = 1
                Top = 1
                Width = 46
                Height = 20
                Shape = bsFrame
              end
              object Bevel343: TBevel
                Left = 47
                Top = 1
                Width = 44
                Height = 20
                Shape = bsFrame
              end
              object rbt_Item1511: TRadioButton
                Left = 3
                Top = 3
                Width = 42
                Height = 16
                Caption = 'R'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object rbt_Item1512: TRadioButton
                Left = 49
                Top = 3
                Width = 40
                Height = 16
                Caption = 'L'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object Panel70: TPanel
              ParentBackground = False
              Left = 2
              Top = 24
              Width = 245
              Height = 22
              TabOrder = 3
              object Bevel334: TBevel
                Left = 1
                Top = 1
                Width = 71
                Height = 20
                Shape = bsFrame
              end
              object Bevel335: TBevel
                Left = 72
                Top = 1
                Width = 86
                Height = 20
                Shape = bsFrame
              end
              object Bevel336: TBevel
                Left = 158
                Top = 1
                Width = 86
                Height = 20
                Shape = bsFrame
              end
              object rbt_Item1521: TRadioButton
                Left = 3
                Top = 3
                Width = 67
                Height = 16
                Caption = 'P:prompt'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object rbt_Item1522: TRadioButton
                Left = 74
                Top = 3
                Width = 82
                Height = 16
                Caption = 's:sluggish'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object rbt_Item1523: TRadioButton
                Left = 160
                Top = 3
                Width = 82
                Height = 16
                Caption = 'F:fixation'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
            end
          end
          object pn_Item16: TPanel
            ParentBackground = False
            Left = 616
            Top = 244
            Width = 229
            Height = 24
            TabOrder = 41
            Visible = False
            object sbt_Item16: TSpeedButton
              Left = 164
              Top = 2
              Width = 32
              Height = 20
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item16Click
            end
            object sbt_Close16: TSpeedButton
              Left = 196
              Top = 2
              Width = 31
              Height = 20
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel68: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 43
              Height = 20
              Alignment = taLeftJustify
              Caption = ' SpO2'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object med_Item16: TMaskEdit
              Left = 46
              Top = 1
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              Text = '  :  '
            end
            object ed_Item16: TEdit
              Left = 89
              Top = 1
              Width = 73
              Height = 21
              AutoSize = False
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              ParentFont = False
              TabOrder = 2
            end
          end
          object pn_Item17: TPanel
            ParentBackground = False
            Left = 773
            Top = 22
            Width = 285
            Height = 111
            TabOrder = 42
            Visible = False
            object sbt_Item17: TSpeedButton
              Left = 219
              Top = 2
              Width = 32
              Height = 22
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item15Click
            end
            object sbt_Close17: TSpeedButton
              Left = 251
              Top = 2
              Width = 31
              Height = 22
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel72: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 41
              Height = 22
              Alignment = taLeftJustify
              Caption = ' O2'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel73: TPanel
              ParentBackground = False
              Left = 2
              Top = 25
              Width = 281
              Height = 62
              TabOrder = 1
              object Bevel337: TBevel
                Left = 1
                Top = 1
                Width = 154
                Height = 20
                Shape = bsFrame
              end
              object Bevel340: TBevel
                Left = 1
                Top = 21
                Width = 154
                Height = 20
                Shape = bsFrame
              end
              object Bevel338: TBevel
                Left = 1
                Top = 41
                Width = 154
                Height = 20
                Shape = bsFrame
              end
              object chk_Item1811: TCheckBox
                Left = 3
                Top = 3
                Width = 150
                Height = 16
                Caption = 'O2 meter(L/min)'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object chk_Item1812: TCheckBox
                Left = 3
                Top = 23
                Width = 150
                Height = 16
                Caption = 'z-nebulizer(FiO2)'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object chk_Item1813: TCheckBox
                Left = 3
                Top = 43
                Width = 150
                Height = 16
                Caption = 'ventilator'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
              object ed_Item1811: TEdit
                Left = 155
                Top = 1
                Width = 125
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 3
              end
              object ed_Item1812: TEdit
                Left = 155
                Top = 21
                Width = 125
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 4
              end
              object ed_Item1813: TEdit
                Left = 155
                Top = 41
                Width = 125
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 5
              end
            end
            object Panel166: TPanel
              ParentBackground = False
              Left = 2
              Top = 87
              Width = 281
              Height = 22
              TabOrder = 2
              object Bevel339: TBevel
                Left = 1
                Top = 1
                Width = 67
                Height = 20
                Shape = bsFrame
              end
              object Bevel341: TBevel
                Left = 68
                Top = 1
                Width = 91
                Height = 20
                Shape = bsFrame
              end
              object Bevel344: TBevel
                Left = 159
                Top = 1
                Width = 121
                Height = 20
                Shape = bsFrame
              end
              object rbt_Item1821: TRadioButton
                Left = 3
                Top = 3
                Width = 63
                Height = 16
                Caption = 'O2 mask'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object rbt_Item1822: TRadioButton
                Left = 70
                Top = 3
                Width = 87
                Height = 16
                Caption = 'nasal prong'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object rbt_Item1823: TRadioButton
                Left = 161
                Top = 3
                Width = 117
                Height = 16
                Caption = 'ventilator route'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
            end
            object med_Item17: TMaskEdit
              Left = 43
              Top = 3
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 3
              Text = '  :  '
            end
          end
          object pn_Item18: TPanel
            ParentBackground = False
            Left = 885
            Top = 141
            Width = 293
            Height = 151
            TabOrder = 43
            Visible = False
            object sbt_Item18: TSpeedButton
              Left = 228
              Top = 2
              Width = 32
              Height = 22
              Caption = 'ÀÔ·Â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Item15Click
            end
            object sbt_Close18: TSpeedButton
              Left = 260
              Top = 2
              Width = 31
              Height = 22
              Caption = '´Ý±â'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbt_Close1Click
            end
            object Panel71: TPanel
              ParentBackground = False
              Left = 2
              Top = 2
              Width = 56
              Height = 22
              Alignment = taLeftJustify
              Caption = ' V.mode'
              Color = 15458008
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel160: TPanel
              ParentBackground = False
              Left = 2
              Top = 25
              Width = 290
              Height = 62
              TabOrder = 1
              object Bevel345: TBevel
                Left = 1
                Top = 1
                Width = 144
                Height = 20
                Shape = bsFrame
              end
              object Bevel346: TBevel
                Left = 1
                Top = 21
                Width = 144
                Height = 20
                Shape = bsFrame
              end
              object Bevel347: TBevel
                Left = 1
                Top = 41
                Width = 144
                Height = 20
                Shape = bsFrame
              end
              object Bevel358: TBevel
                Left = 145
                Top = 1
                Width = 144
                Height = 20
                Shape = bsFrame
              end
              object Bevel360: TBevel
                Left = 145
                Top = 21
                Width = 144
                Height = 20
                Shape = bsFrame
              end
              object Bevel361: TBevel
                Left = 145
                Top = 41
                Width = 144
                Height = 20
                Shape = bsFrame
              end
              object chk_Item1911: TCheckBox
                Left = 3
                Top = 3
                Width = 140
                Height = 16
                Caption = 'CMV(volume/pressure)'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object chk_Item1913: TCheckBox
                Left = 3
                Top = 23
                Width = 140
                Height = 16
                Caption = 'SIMV'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object chk_Item1915: TCheckBox
                Left = 3
                Top = 43
                Width = 140
                Height = 16
                Caption = 'SIMV+PS'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
              object chk_Item1912: TCheckBox
                Left = 147
                Top = 3
                Width = 140
                Height = 16
                Caption = 'CPAP'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 3
              end
              object chk_Item1914: TCheckBox
                Left = 147
                Top = 23
                Width = 140
                Height = 16
                Caption = 'PSV(Spontaneous)'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 4
              end
              object chk_Item1916: TCheckBox
                Left = 147
                Top = 43
                Width = 140
                Height = 16
                Caption = 'Bilevel'
                Color = 16379628
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 5
              end
            end
            object Panel167: TPanel
              ParentBackground = False
              Left = 2
              Top = 87
              Width = 290
              Height = 62
              TabOrder = 2
              object Bevel348: TBevel
                Left = 1
                Top = 1
                Width = 79
                Height = 20
                Shape = bsFrame
              end
              object Bevel349: TBevel
                Left = 145
                Top = 1
                Width = 78
                Height = 20
                Shape = bsFrame
              end
              object Bevel350: TBevel
                Left = 1
                Top = 21
                Width = 79
                Height = 20
                Shape = bsFrame
              end
              object Bevel362: TBevel
                Left = 145
                Top = 21
                Width = 78
                Height = 20
                Shape = bsFrame
              end
              object Bevel363: TBevel
                Left = 1
                Top = 41
                Width = 79
                Height = 20
                Shape = bsFrame
              end
              object Bevel364: TBevel
                Left = 145
                Top = 41
                Width = 78
                Height = 20
                Shape = bsFrame
              end
              object chk_Item1921: TCheckBox
                Left = 3
                Top = 3
                Width = 75
                Height = 16
                Caption = 'T.V'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object ed_Item1921: TEdit
                Left = 80
                Top = 1
                Width = 65
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 1
              end
              object chk_Item1922: TCheckBox
                Left = 147
                Top = 3
                Width = 74
                Height = 16
                Caption = 'R.R'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
              end
              object chk_Item1923: TCheckBox
                Left = 3
                Top = 23
                Width = 75
                Height = 16
                Caption = 'FiO2'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 3
              end
              object ed_Item1923: TEdit
                Left = 80
                Top = 21
                Width = 65
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 4
              end
              object chk_Item1924: TCheckBox
                Left = 147
                Top = 23
                Width = 74
                Height = 16
                Caption = 'PEEP'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 5
              end
              object chk_Item1925: TCheckBox
                Left = 3
                Top = 43
                Width = 75
                Height = 16
                Caption = 'peak flow'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 6
              end
              object ed_Item1925: TEdit
                Left = 80
                Top = 41
                Width = 65
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 7
              end
              object chk_Item1926: TCheckBox
                Left = 147
                Top = 43
                Width = 74
                Height = 16
                Caption = 'T.V'
                Color = 15465210
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 8
              end
              object ed_Item1922: TEdit
                Left = 223
                Top = 1
                Width = 65
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 9
              end
              object ed_Item1924: TEdit
                Left = 223
                Top = 21
                Width = 65
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 10
              end
              object ed_Item1926: TEdit
                Left = 223
                Top = 41
                Width = 65
                Height = 20
                AutoSize = False
                Font.Charset = HANGEUL_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = '±¼¸²Ã¼'
                Font.Style = []
                ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
                ParentFont = False
                TabOrder = 11
              end
            end
            object med_Item18: TMaskEdit
              Left = 58
              Top = 2
              Width = 43
              Height = 21
              Anchors = [akTop, akBottom]
              AutoSize = False
              Color = clBtnFace
              EditMask = '!90:00;1;_'
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
              MaxLength = 5
              ParentFont = False
              TabOrder = 3
              Text = '  :  '
            end
          end
        end
      end
    end
    object ts_ICU2: TTabSheet
      Caption = '°£È£»çÁ¤'
      ImageIndex = 2
      object sbox_Tab2: TScrollBox
        Left = 0
        Top = 0
        Width = 1004
        Height = 568
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Bevel12: TBevel
          Left = 1
          Top = 34
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label14: TLabel
          Transparent = False
          Left = 2
          Top = 36
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 1. ¼øÈ¯°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel47: TBevel
          Left = 327
          Top = 34
          Width = 326
          Height = 20
          Shape = bsFrame
        end
        object Label33: TLabel
          Transparent = False
          Left = 329
          Top = 36
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 1. ¼øÈ¯°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel64: TBevel
          Left = 654
          Top = 34
          Width = 326
          Height = 20
          Shape = bsFrame
        end
        object Label43: TLabel
          Transparent = False
          Left = 656
          Top = 36
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 1. ¼øÈ¯°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel66: TBevel
          Left = 1
          Top = 160
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label44: TLabel
          Transparent = False
          Left = 2
          Top = 162
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 2. È£Èí±â°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel118: TBevel
          Left = 328
          Top = 160
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label55: TLabel
          Transparent = False
          Left = 329
          Top = 162
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 2. È£Èí±â°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel145: TBevel
          Left = 655
          Top = 160
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label61: TLabel
          Transparent = False
          Left = 656
          Top = 162
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 2. È£Èí±â°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel146: TBevel
          Left = 1
          Top = 361
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label62: TLabel
          Transparent = False
          Left = 2
          Top = 363
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 3. À§Àå°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel177: TBevel
          Left = 328
          Top = 361
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label71: TLabel
          Transparent = False
          Left = 329
          Top = 363
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 3. À§Àå°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel193: TBevel
          Left = 655
          Top = 361
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label76: TLabel
          Transparent = False
          Left = 656
          Top = 363
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 3. À§Àå°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel194: TBevel
          Left = 1
          Top = 487
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label77: TLabel
          Transparent = False
          Left = 2
          Top = 489
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 4. ºñ´¢±â°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel219: TBevel
          Left = 1
          Top = 588
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label85: TLabel
          Transparent = False
          Left = 2
          Top = 590
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 5. ÇÇºÎ'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel205: TBevel
          Left = 1
          Top = 772
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label80: TLabel
          Transparent = False
          Left = 2
          Top = 774
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 6. ¹è¾×'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel220: TBevel
          Left = 0
          Top = 873
          Width = 980
          Height = 23
          Shape = bsFrame
        end
        object Bevel268: TBevel
          Left = 328
          Top = 487
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label102: TLabel
          Transparent = False
          Left = 329
          Top = 489
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 4. ºñ´¢±â°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel269: TBevel
          Left = 328
          Top = 588
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label103: TLabel
          Transparent = False
          Left = 329
          Top = 590
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 5. ÇÇºÎ'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel270: TBevel
          Left = 328
          Top = 772
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label104: TLabel
          Transparent = False
          Left = 329
          Top = 774
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 6. ¹è¾×'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel324: TBevel
          Left = 654
          Top = 487
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label125: TLabel
          Transparent = False
          Left = 655
          Top = 489
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 4. ºñ´¢±â°è'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel325: TBevel
          Left = 654
          Top = 588
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label126: TLabel
          Transparent = False
          Left = 655
          Top = 590
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 5. ÇÇºÎ'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Bevel326: TBevel
          Left = 654
          Top = 772
          Width = 325
          Height = 20
          Shape = bsFrame
        end
        object Label127: TLabel
          Transparent = False
          Left = 655
          Top = 774
          Width = 322
          Height = 16
          AutoSize = False
          Caption = ' 6. ¹è¾×'
          Color = 16709615
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Panel74: TPanel
          ParentBackground = False
          Left = 0
          Top = 2
          Width = 326
          Height = 26
          BevelInner = bvLowered
          Caption = '°£È£»çÁ¤(D)                          AM/PM'
          Color = 15458008
          Enabled = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²Ã¼'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Edit42: TEdit
            Left = 243
            Top = 4
            Width = 27
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel75: TPanel
          ParentBackground = False
          Left = 327
          Top = 2
          Width = 326
          Height = 26
          BevelInner = bvLowered
          Caption = '°£È£»çÁ¤(E)                          AM/PM'
          Color = 15458008
          Enabled = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²Ã¼'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Edit43: TEdit
            Left = 243
            Top = 4
            Width = 27
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel76: TPanel
          ParentBackground = False
          Left = 654
          Top = 2
          Width = 327
          Height = 26
          BevelInner = bvLowered
          Caption = '°£È£»çÁ¤(N)                          AM/PM'
          Color = 15458008
          Enabled = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = '±¼¸²Ã¼'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Edit44: TEdit
            Left = 243
            Top = 4
            Width = 27
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel91: TPanel
          ParentBackground = False
          Left = 0
          Top = 183
          Width = 326
          Height = 174
          TabOrder = 3
          object Bevel67: TBevel
            Left = 1
            Top = 5
            Width = 70
            Height = 20
            Shape = bsFrame
          end
          object Label45: TLabel
            Transparent = False
            Left = 3
            Top = 7
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'È£ÈíÀ½'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel65: TBevel
            Left = 1
            Top = 45
            Width = 69
            Height = 21
            Shape = bsFrame
          end
          object Label46: TLabel
            Transparent = False
            Left = 3
            Top = 47
            Width = 65
            Height = 17
            AutoSize = False
            Caption = 'ºÐºñ¹°»ö±ò'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel80: TBevel
            Left = 1
            Top = 105
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label47: TLabel
            Transparent = False
            Left = 2
            Top = 107
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel84: TBevel
            Left = 1
            Top = 126
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label48: TLabel
            Transparent = False
            Left = 2
            Top = 128
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¾ç'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel88: TBevel
            Left = 1
            Top = 148
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label49: TLabel
            Transparent = False
            Left = 3
            Top = 150
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'PT'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel92: TPanel
            ParentBackground = False
            Left = 72
            Top = 5
            Width = 252
            Height = 40
            TabOrder = 0
            object Bevel70: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel71: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel72: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel73: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel74: TBevel
              Left = 86
              Top = 21
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object CheckBox22: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox23: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'crackles'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox24: TCheckBox
              Left = 173
              Top = 4
              Width = 76
              Height = 14
              Caption = 'wheezing'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox29: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'decrease'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox30: TCheckBox
              Left = 89
              Top = 23
              Width = 80
              Height = 14
              Caption = 'coarse'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel93: TPanel
            ParentBackground = False
            Left = 72
            Top = 46
            Width = 252
            Height = 59
            TabOrder = 1
            object Bevel68: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel69: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel75: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel76: TBevel
              Left = 2
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel77: TBevel
              Left = 87
              Top = 21
              Width = 164
              Height = 18
              Shape = bsFrame
            end
            object Bevel78: TBevel
              Left = 1
              Top = 39
              Width = 147
              Height = 19
              Shape = bsFrame
            end
            object Bevel79: TBevel
              Left = 149
              Top = 39
              Width = 102
              Height = 19
              Shape = bsFrame
            end
            object CheckBox25: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'white'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox26: TCheckBox
              Left = 88
              Top = 4
              Width = 80
              Height = 14
              Caption = 'yellow'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox27: TCheckBox
              Left = 173
              Top = 4
              Width = 76
              Height = 14
              Caption = 'green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox28: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'purulent'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox31: TCheckBox
              Left = 89
              Top = 23
              Width = 159
              Height = 14
              Caption = 'bloody'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object CheckBox32: TCheckBox
              Left = 3
              Top = 41
              Width = 143
              Height = 15
              Caption = 'blood tingled'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
            end
            object CheckBox33: TCheckBox
              Left = 151
              Top = 41
              Width = 97
              Height = 15
              Caption = 'pink froth'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
            end
          end
          object Panel94: TPanel
            ParentBackground = False
            Left = 72
            Top = 106
            Width = 251
            Height = 20
            TabOrder = 2
            object Bevel81: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel82: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel83: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox34: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox35: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'thin'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox36: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = 'thick'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel95: TPanel
            ParentBackground = False
            Left = 72
            Top = 127
            Width = 251
            Height = 20
            TabOrder = 3
            object Bevel85: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel86: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel87: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox37: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'small'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox38: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'moderate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox39: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = 'large'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel96: TPanel
            ParentBackground = False
            Left = 72
            Top = 148
            Width = 251
            Height = 20
            TabOrder = 4
            object Bevel89: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel90: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel91: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox40: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'percussion'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox41: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'vibrate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox42: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel77: TPanel
          ParentBackground = False
          Left = 0
          Top = 56
          Width = 326
          Height = 100
          TabOrder = 4
          object Bevel28: TBevel
            Left = 1
            Top = 29
            Width = 70
            Height = 20
            Shape = bsFrame
          end
          object Bevel13: TBevel
            Left = 1
            Top = 6
            Width = 62
            Height = 20
            Shape = bsFrame
          end
          object Label15: TLabel
            Transparent = False
            Left = 3
            Top = 7
            Width = 58
            Height = 17
            AutoSize = False
            Caption = '¸Æ¹Ú'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Label18: TLabel
            Transparent = False
            Left = 3
            Top = 31
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¸»´ÜºÎ¿Âµµ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel20: TBevel
            Left = 1
            Top = 53
            Width = 70
            Height = 20
            Shape = bsFrame
          end
          object Label21: TLabel
            Transparent = False
            Left = 3
            Top = 55
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¸»´ÜÃ»»öÁõ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel22: TBevel
            Left = 1
            Top = 75
            Width = 70
            Height = 20
            Shape = bsFrame
          end
          object Label22: TLabel
            Transparent = False
            Left = 3
            Top = 77
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'ºÎÁ¾'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object pn_item02: TPanel
            ParentBackground = False
            Left = 71
            Top = 29
            Width = 253
            Height = 21
            TabOrder = 0
            object Bevel37: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel38: TBevel
              Left = 85
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel39: TBevel
              Left = 170
              Top = 2
              Width = 82
              Height = 18
              Shape = bsFrame
            end
            object C0021_1: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 15
              Caption = 'cold'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object C0021_2: TCheckBox
              Left = 88
              Top = 4
              Width = 80
              Height = 14
              Caption = 'warm'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object C0021_3: TCheckBox
              Left = 172
              Top = 4
              Width = 77
              Height = 14
              Caption = 'clammy'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel78: TPanel
            ParentBackground = False
            Left = 64
            Top = 6
            Width = 260
            Height = 21
            TabOrder = 1
            object Bevel18: TBevel
              Left = 91
              Top = 1
              Width = 12
              Height = 19
              Shape = bsFrame
            end
            object Label16: TLabel
              Transparent = False
              Left = 93
              Top = 3
              Width = 8
              Height = 15
              AutoSize = False
              Caption = '/'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel19: TBevel
              Left = 1
              Top = 1
              Width = 63
              Height = 19
              Shape = bsFrame
            end
            object Label17: TLabel
              Transparent = False
              Left = 3
              Top = 3
              Width = 59
              Height = 15
              AutoSize = False
              Caption = '¿ì»ó/¿ìÇÏ'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel14: TBevel
              Left = 221
              Top = 1
              Width = 13
              Height = 19
              Shape = bsFrame
            end
            object Label19: TLabel
              Transparent = False
              Left = 223
              Top = 3
              Width = 9
              Height = 15
              AutoSize = False
              Caption = '/'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel17: TBevel
              Left = 130
              Top = 1
              Width = 64
              Height = 19
              Shape = bsFrame
            end
            object Label20: TLabel
              Transparent = False
              Left = 132
              Top = 3
              Width = 60
              Height = 15
              AutoSize = False
              Caption = 'ÁÂ»ó/ÁÂÇÏ'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object C0001_5E: TEdit
              Left = 64
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 0
              Text = '100'
            end
            object Edit28: TEdit
              Left = 103
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 1
              Text = '100'
            end
            object Edit29: TEdit
              Left = 194
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
              Text = '100'
            end
            object Edit30: TEdit
              Left = 234
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 3
              Text = '100'
            end
          end
          object Panel79: TPanel
            ParentBackground = False
            Left = 71
            Top = 52
            Width = 253
            Height = 21
            TabOrder = 2
            object Bevel21: TBevel
              Left = 0
              Top = 1
              Width = 126
              Height = 19
              Shape = bsFrame
            end
            object Bevel23: TBevel
              Left = 126
              Top = 1
              Width = 125
              Height = 19
              Shape = bsFrame
            end
            object CheckBox1: TCheckBox
              Left = 2
              Top = 3
              Width = 121
              Height = 15
              Caption = 'À¯'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox6: TCheckBox
              Left = 128
              Top = 3
              Width = 120
              Height = 15
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel80: TPanel
            ParentBackground = False
            Left = 72
            Top = 75
            Width = 252
            Height = 21
            TabOrder = 3
            object Bevel24: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel25: TBevel
              Left = 169
              Top = 2
              Width = 82
              Height = 18
              Shape = bsFrame
            end
            object Bevel26: TBevel
              Left = 155
              Top = 1
              Width = 12
              Height = 19
              Shape = bsFrame
            end
            object Label23: TLabel
              Transparent = False
              Left = 157
              Top = 3
              Width = 8
              Height = 15
              AutoSize = False
              Caption = ')'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox5: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 15
              Caption = 'À¯(ºÎÀ§:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox7: TCheckBox
              Left = 171
              Top = 4
              Width = 77
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit31: TEdit
              Left = 86
              Top = 1
              Width = 68
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel109: TPanel
          ParentBackground = False
          Left = 0
          Top = 384
          Width = 326
          Height = 96
          TabOrder = 5
          object Bevel147: TBevel
            Left = 2
            Top = 6
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label63: TLabel
            Transparent = False
            Left = 4
            Top = 8
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'º¹ºÎ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel149: TBevel
            Left = 2
            Top = 27
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label65: TLabel
            Transparent = False
            Left = 4
            Top = 29
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'ÀåÀ½'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel150: TBevel
            Left = 2
            Top = 49
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label64: TLabel
            Transparent = False
            Left = 4
            Top = 51
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'L-tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel156: TBevel
            Left = 2
            Top = 70
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label66: TLabel
            Transparent = False
            Left = 4
            Top = 71
            Width = 64
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel112: TPanel
            ParentBackground = False
            Left = 71
            Top = 28
            Width = 251
            Height = 20
            TabOrder = 0
            object Bevel164: TBevel
              Left = 0
              Top = 1
              Width = 64
              Height = 18
              Shape = bsFrame
            end
            object Bevel165: TBevel
              Left = 64
              Top = 1
              Width = 59
              Height = 18
              Shape = bsFrame
            end
            object Bevel166: TBevel
              Left = 124
              Top = 1
              Width = 62
              Height = 18
              Shape = bsFrame
            end
            object Bevel148: TBevel
              Left = 186
              Top = 1
              Width = 64
              Height = 18
              Shape = bsFrame
            end
            object CheckBox97: TCheckBox
              Left = 2
              Top = 3
              Width = 59
              Height = 14
              Caption = 'normal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox98: TCheckBox
              Left = 67
              Top = 3
              Width = 54
              Height = 14
              Caption = 'inc.'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox99: TCheckBox
              Left = 126
              Top = 3
              Width = 57
              Height = 14
              Caption = 'dic'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox87: TCheckBox
              Left = 188
              Top = 3
              Width = 59
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel110: TPanel
            ParentBackground = False
            Left = 71
            Top = 6
            Width = 251
            Height = 21
            TabOrder = 1
            object Bevel152: TBevel
              Left = 0
              Top = 1
              Width = 124
              Height = 19
              Shape = bsFrame
            end
            object Bevel153: TBevel
              Left = 124
              Top = 1
              Width = 126
              Height = 19
              Shape = bsFrame
            end
            object CheckBox85: TCheckBox
              Left = 2
              Top = 3
              Width = 119
              Height = 15
              Caption = 'soft'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox86: TCheckBox
              Left = 126
              Top = 3
              Width = 121
              Height = 15
              Caption = 'distension'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel111: TPanel
            ParentBackground = False
            Left = 71
            Top = 49
            Width = 251
            Height = 20
            TabOrder = 2
            object Bevel151: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel154: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel155: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox88: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'yellow'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox89: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'bloody'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox90: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel113: TPanel
            ParentBackground = False
            Left = 70
            Top = 70
            Width = 252
            Height = 21
            TabOrder = 3
            object Bevel157: TBevel
              Left = 0
              Top = 1
              Width = 124
              Height = 19
              Shape = bsFrame
            end
            object Bevel158: TBevel
              Left = 124
              Top = 1
              Width = 127
              Height = 19
              Shape = bsFrame
            end
            object CheckBox91: TCheckBox
              Left = 2
              Top = 3
              Width = 119
              Height = 15
              Caption = 'dark green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox92: TCheckBox
              Left = 126
              Top = 3
              Width = 122
              Height = 15
              Caption = 'dark brown'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object Panel124: TPanel
          ParentBackground = False
          Left = 0
          Top = 511
          Width = 326
          Height = 71
          TabOrder = 6
          object Bevel195: TBevel
            Left = 2
            Top = 5
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label78: TLabel
            Transparent = False
            Left = 4
            Top = 7
            Width = 64
            Height = 16
            AutoSize = False
            Caption = '¼Òº¯»ö'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel201: TBevel
            Left = 2
            Top = 46
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label79: TLabel
            Transparent = False
            Left = 4
            Top = 48
            Width = 63
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel125: TPanel
            ParentBackground = False
            Left = 70
            Top = 5
            Width = 253
            Height = 40
            TabOrder = 0
            object Bevel196: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel197: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel198: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel199: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel200: TBevel
              Left = 86
              Top = 21
              Width = 165
              Height = 18
              Shape = bsFrame
            end
            object CheckBox118: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox119: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'amber'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox120: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'straw'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox121: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'hematuria'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox122: TCheckBox
              Left = 89
              Top = 23
              Width = 160
              Height = 14
              Caption = 'bilirubinuria'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel126: TPanel
            ParentBackground = False
            Left = 71
            Top = 47
            Width = 252
            Height = 20
            TabOrder = 1
            object Bevel202: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel203: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel204: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox123: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox124: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'thin'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox125: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'thick'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel127: TPanel
          ParentBackground = False
          Left = 0
          Top = 612
          Width = 326
          Height = 154
          TabOrder = 7
          object Bevel206: TBevel
            Left = 2
            Top = 5
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label81: TLabel
            Transparent = False
            Left = 4
            Top = 7
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'ÇÇºÎ»ö'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel207: TBevel
            Left = 2
            Top = 45
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label82: TLabel
            Transparent = False
            Left = 4
            Top = 47
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'tugor'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel212: TBevel
            Left = 2
            Top = 67
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label83: TLabel
            Transparent = False
            Left = 4
            Top = 69
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'Lesion'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel218: TBevel
            Left = 2
            Top = 110
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label84: TLabel
            Transparent = False
            Left = 4
            Top = 112
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'IV site'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel128: TPanel
            ParentBackground = False
            Left = 71
            Top = 5
            Width = 252
            Height = 40
            TabOrder = 0
            object Bevel208: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel209: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel210: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel211: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object CheckBox126: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox127: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'pale'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox128: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'anemic'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox129: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'icteric'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel129: TPanel
            ParentBackground = False
            Left = 72
            Top = 46
            Width = 251
            Height = 20
            TabOrder = 1
            object Bevel213: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel214: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel215: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox131: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'good'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox132: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'moderate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox133: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'poor'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel130: TPanel
            ParentBackground = False
            Left = 71
            Top = 68
            Width = 252
            Height = 41
            TabOrder = 2
            object Bevel217: TBevel
              Left = 169
              Top = 21
              Width = 81
              Height = 18
              Shape = bsFrame
            end
            object Bevel216: TBevel
              Left = 1
              Top = 1
              Width = 40
              Height = 19
              Shape = bsFrame
            end
            object Label91: TLabel
              Transparent = False
              Left = 3
              Top = 3
              Width = 36
              Height = 15
              AutoSize = False
              Caption = 'À§Ä¡:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel241: TBevel
              Left = 1
              Top = 20
              Width = 40
              Height = 19
              Shape = bsFrame
            end
            object Label92: TLabel
              Transparent = False
              Left = 3
              Top = 22
              Width = 36
              Height = 15
              AutoSize = False
              Caption = 'Å©±â:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox134: TCheckBox
              Left = 171
              Top = 23
              Width = 77
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object Edit45: TEdit
              Left = 41
              Top = 1
              Width = 209
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 1
            end
            object Edit46: TEdit
              Left = 41
              Top = 20
              Width = 127
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel137: TPanel
            ParentBackground = False
            Left = 71
            Top = 110
            Width = 253
            Height = 40
            TabOrder = 3
            object Bevel242: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel243: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel244: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel245: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel246: TBevel
              Left = 86
              Top = 21
              Width = 165
              Height = 18
              Shape = bsFrame
            end
            object CheckBox130: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox151: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'swelling'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox152: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'pain'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox153: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'redness'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox154: TCheckBox
              Left = 89
              Top = 23
              Width = 160
              Height = 14
              Caption = 'febrile sense'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object Panel148: TPanel
          ParentBackground = False
          Left = 0
          Top = 796
          Width = 326
          Height = 76
          TabOrder = 8
          object Bevel288: TBevel
            Left = 2
            Top = 6
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label108: TLabel
            Transparent = False
            Left = 4
            Top = 8
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'L tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel289: TBevel
            Left = 69
            Top = 29
            Width = 32
            Height = 20
            Shape = bsFrame
          end
          object Label109: TLabel
            Transparent = False
            Left = 70
            Top = 30
            Width = 29
            Height = 16
            AutoSize = False
            Caption = 'tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel296: TBevel
            Left = 69
            Top = 51
            Width = 32
            Height = 20
            Shape = bsFrame
          end
          object Label111: TLabel
            Transparent = False
            Left = 70
            Top = 52
            Width = 29
            Height = 16
            AutoSize = False
            Caption = 'tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel149: TPanel
            ParentBackground = False
            Left = 70
            Top = 6
            Width = 252
            Height = 21
            TabOrder = 0
            object Bevel292: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel293: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel294: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label114: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox181: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox182: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit53: TEdit
              Left = 131
              Top = 1
              Width = 118
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Edit51: TEdit
            Left = 2
            Top = 29
            Width = 66
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 1
          end
          object Panel150: TPanel
            ParentBackground = False
            Left = 102
            Top = 28
            Width = 220
            Height = 21
            TabOrder = 2
            object Bevel290: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel291: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel295: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label110: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox183: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox184: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit52: TEdit
              Left = 131
              Top = 1
              Width = 86
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Edit54: TEdit
            Left = 2
            Top = 51
            Width = 66
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 3
          end
          object Panel151: TPanel
            ParentBackground = False
            Left = 102
            Top = 50
            Width = 220
            Height = 21
            TabOrder = 4
            object Bevel297: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel298: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel299: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label112: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox185: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox186: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit55: TEdit
              Left = 131
              Top = 1
              Width = 86
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel81: TPanel
          ParentBackground = False
          Left = 327
          Top = 56
          Width = 326
          Height = 100
          TabOrder = 9
          object Bevel27: TBevel
            Left = 1
            Top = 28
            Width = 70
            Height = 21
            Shape = bsFrame
          end
          object Bevel29: TBevel
            Left = 1
            Top = 6
            Width = 62
            Height = 21
            Shape = bsFrame
          end
          object Label24: TLabel
            Transparent = False
            Left = 2
            Top = 7
            Width = 59
            Height = 18
            AutoSize = False
            Caption = '¸Æ¹Ú'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Label25: TLabel
            Transparent = False
            Left = 2
            Top = 30
            Width = 66
            Height = 17
            AutoSize = False
            Caption = '¸»´ÜºÎ¿Âµµ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel30: TBevel
            Left = 1
            Top = 52
            Width = 70
            Height = 21
            Shape = bsFrame
          end
          object Label26: TLabel
            Transparent = False
            Left = 2
            Top = 54
            Width = 66
            Height = 17
            AutoSize = False
            Caption = '¸»´ÜÃ»»öÁõ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel31: TBevel
            Left = 1
            Top = 74
            Width = 70
            Height = 21
            Shape = bsFrame
          end
          object Label27: TLabel
            Transparent = False
            Left = 2
            Top = 76
            Width = 66
            Height = 17
            AutoSize = False
            Caption = 'ºÎÁ¾'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel82: TPanel
            ParentBackground = False
            Left = 71
            Top = 29
            Width = 253
            Height = 21
            TabOrder = 0
            object Bevel32: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel33: TBevel
              Left = 85
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel34: TBevel
              Left = 170
              Top = 2
              Width = 82
              Height = 18
              Shape = bsFrame
            end
            object CheckBox8: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 15
              Caption = 'cold'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox9: TCheckBox
              Left = 88
              Top = 4
              Width = 80
              Height = 14
              Caption = 'warm'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox10: TCheckBox
              Left = 172
              Top = 4
              Width = 77
              Height = 14
              Caption = 'clammy'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel83: TPanel
            ParentBackground = False
            Left = 64
            Top = 6
            Width = 260
            Height = 21
            TabOrder = 1
            object Bevel35: TBevel
              Left = 91
              Top = 1
              Width = 12
              Height = 19
              Shape = bsFrame
            end
            object Label28: TLabel
              Transparent = False
              Left = 93
              Top = 3
              Width = 8
              Height = 15
              AutoSize = False
              Caption = '/'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel36: TBevel
              Left = 1
              Top = 1
              Width = 63
              Height = 19
              Shape = bsFrame
            end
            object Label29: TLabel
              Transparent = False
              Left = 3
              Top = 3
              Width = 59
              Height = 15
              AutoSize = False
              Caption = '¿ì»ó/¿ìÇÏ'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel40: TBevel
              Left = 221
              Top = 1
              Width = 13
              Height = 19
              Shape = bsFrame
            end
            object Label30: TLabel
              Transparent = False
              Left = 223
              Top = 3
              Width = 9
              Height = 15
              AutoSize = False
              Caption = '/'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel41: TBevel
              Left = 130
              Top = 1
              Width = 64
              Height = 19
              Shape = bsFrame
            end
            object Label31: TLabel
              Transparent = False
              Left = 132
              Top = 3
              Width = 60
              Height = 15
              AutoSize = False
              Caption = 'ÁÂ»ó/ÁÂÇÏ'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Edit32: TEdit
              Left = 64
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 0
              Text = '100'
            end
            object Edit33: TEdit
              Left = 103
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 1
              Text = '100'
            end
            object Edit34: TEdit
              Left = 194
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
              Text = '100'
            end
            object Edit35: TEdit
              Left = 234
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 3
              Text = '100'
            end
          end
          object Panel84: TPanel
            ParentBackground = False
            Left = 71
            Top = 52
            Width = 253
            Height = 21
            TabOrder = 2
            object Bevel42: TBevel
              Left = 0
              Top = 1
              Width = 126
              Height = 19
              Shape = bsFrame
            end
            object Bevel43: TBevel
              Left = 126
              Top = 1
              Width = 125
              Height = 19
              Shape = bsFrame
            end
            object CheckBox11: TCheckBox
              Left = 2
              Top = 3
              Width = 121
              Height = 15
              Caption = 'À¯'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox12: TCheckBox
              Left = 128
              Top = 3
              Width = 120
              Height = 15
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel85: TPanel
            ParentBackground = False
            Left = 72
            Top = 75
            Width = 252
            Height = 21
            TabOrder = 3
            object Bevel44: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel45: TBevel
              Left = 169
              Top = 2
              Width = 82
              Height = 18
              Shape = bsFrame
            end
            object Bevel46: TBevel
              Left = 155
              Top = 1
              Width = 12
              Height = 19
              Shape = bsFrame
            end
            object Label32: TLabel
              Transparent = False
              Left = 157
              Top = 3
              Width = 8
              Height = 15
              AutoSize = False
              Caption = ')'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox13: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 15
              Caption = 'À¯(ºÎÀ§:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox14: TCheckBox
              Left = 171
              Top = 4
              Width = 77
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit36: TEdit
              Left = 86
              Top = 1
              Width = 68
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel86: TPanel
          ParentBackground = False
          Left = 654
          Top = 56
          Width = 326
          Height = 100
          TabOrder = 10
          object Bevel48: TBevel
            Left = 1
            Top = 29
            Width = 70
            Height = 21
            Shape = bsFrame
          end
          object Bevel49: TBevel
            Left = 1
            Top = 6
            Width = 62
            Height = 21
            Shape = bsFrame
          end
          object Label34: TLabel
            Transparent = False
            Left = 2
            Top = 8
            Width = 59
            Height = 17
            AutoSize = False
            Caption = '¸Æ¹Ú'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Label35: TLabel
            Transparent = False
            Left = 2
            Top = 31
            Width = 66
            Height = 17
            AutoSize = False
            Caption = '¸»´ÜºÎ¿Âµµ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel50: TBevel
            Left = 1
            Top = 52
            Width = 70
            Height = 21
            Shape = bsFrame
          end
          object Label36: TLabel
            Transparent = False
            Left = 2
            Top = 54
            Width = 66
            Height = 17
            AutoSize = False
            Caption = '¸»´ÜÃ»»öÁõ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel51: TBevel
            Left = 1
            Top = 75
            Width = 70
            Height = 21
            Shape = bsFrame
          end
          object Label37: TLabel
            Transparent = False
            Left = 2
            Top = 77
            Width = 66
            Height = 17
            AutoSize = False
            Caption = 'ºÎÁ¾'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel87: TPanel
            ParentBackground = False
            Left = 71
            Top = 29
            Width = 253
            Height = 21
            TabOrder = 0
            object Bevel52: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel53: TBevel
              Left = 85
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel54: TBevel
              Left = 170
              Top = 2
              Width = 82
              Height = 18
              Shape = bsFrame
            end
            object CheckBox15: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 15
              Caption = 'cold'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox16: TCheckBox
              Left = 88
              Top = 4
              Width = 80
              Height = 14
              Caption = 'warm'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox17: TCheckBox
              Left = 172
              Top = 4
              Width = 77
              Height = 14
              Caption = 'clammy'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel88: TPanel
            ParentBackground = False
            Left = 64
            Top = 6
            Width = 260
            Height = 21
            TabOrder = 1
            object Bevel55: TBevel
              Left = 91
              Top = 1
              Width = 12
              Height = 19
              Shape = bsFrame
            end
            object Label38: TLabel
              Transparent = False
              Left = 93
              Top = 3
              Width = 8
              Height = 15
              AutoSize = False
              Caption = '/'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel56: TBevel
              Left = 1
              Top = 1
              Width = 63
              Height = 19
              Shape = bsFrame
            end
            object Label39: TLabel
              Transparent = False
              Left = 3
              Top = 3
              Width = 59
              Height = 15
              AutoSize = False
              Caption = '¿ì»ó/¿ìÇÏ'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel57: TBevel
              Left = 221
              Top = 1
              Width = 13
              Height = 19
              Shape = bsFrame
            end
            object Label40: TLabel
              Transparent = False
              Left = 223
              Top = 3
              Width = 9
              Height = 15
              AutoSize = False
              Caption = '/'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel58: TBevel
              Left = 130
              Top = 1
              Width = 64
              Height = 19
              Shape = bsFrame
            end
            object Label41: TLabel
              Transparent = False
              Left = 132
              Top = 3
              Width = 60
              Height = 15
              AutoSize = False
              Caption = 'ÁÂ»ó/ÁÂÇÏ'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Edit37: TEdit
              Left = 64
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 0
              Text = '100'
            end
            object Edit38: TEdit
              Left = 103
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 1
              Text = '100'
            end
            object Edit39: TEdit
              Left = 194
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
              Text = '100'
            end
            object Edit40: TEdit
              Left = 234
              Top = 1
              Width = 25
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 3
              Text = '100'
            end
          end
          object Panel89: TPanel
            ParentBackground = False
            Left = 71
            Top = 52
            Width = 253
            Height = 21
            TabOrder = 2
            object Bevel59: TBevel
              Left = 0
              Top = 1
              Width = 126
              Height = 19
              Shape = bsFrame
            end
            object Bevel60: TBevel
              Left = 126
              Top = 1
              Width = 125
              Height = 19
              Shape = bsFrame
            end
            object CheckBox18: TCheckBox
              Left = 2
              Top = 3
              Width = 121
              Height = 15
              Caption = 'À¯'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox19: TCheckBox
              Left = 128
              Top = 3
              Width = 120
              Height = 15
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel90: TPanel
            ParentBackground = False
            Left = 72
            Top = 75
            Width = 252
            Height = 21
            TabOrder = 3
            object Bevel61: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel62: TBevel
              Left = 169
              Top = 2
              Width = 82
              Height = 18
              Shape = bsFrame
            end
            object Bevel63: TBevel
              Left = 155
              Top = 1
              Width = 12
              Height = 19
              Shape = bsFrame
            end
            object Label42: TLabel
              Transparent = False
              Left = 157
              Top = 3
              Width = 8
              Height = 15
              AutoSize = False
              Caption = ')'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox20: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 15
              Caption = 'À¯(ºÎÀ§:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox21: TCheckBox
              Left = 171
              Top = 4
              Width = 77
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit41: TEdit
              Left = 86
              Top = 1
              Width = 68
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel97: TPanel
          ParentBackground = False
          Left = 327
          Top = 183
          Width = 326
          Height = 174
          TabOrder = 11
          object Bevel92: TBevel
            Left = 1
            Top = 5
            Width = 70
            Height = 20
            Shape = bsFrame
          end
          object Label50: TLabel
            Transparent = False
            Left = 3
            Top = 7
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'È£ÈíÀ½'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel93: TBevel
            Left = 1
            Top = 45
            Width = 69
            Height = 21
            Shape = bsFrame
          end
          object Label51: TLabel
            Transparent = False
            Left = 3
            Top = 47
            Width = 65
            Height = 17
            AutoSize = False
            Caption = 'ºÐºñ¹°»ö±ò'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel94: TBevel
            Left = 1
            Top = 105
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label52: TLabel
            Transparent = False
            Left = 2
            Top = 107
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel95: TBevel
            Left = 1
            Top = 126
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label53: TLabel
            Transparent = False
            Left = 2
            Top = 128
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¾ç'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel96: TBevel
            Left = 1
            Top = 148
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label54: TLabel
            Transparent = False
            Left = 3
            Top = 150
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'PT'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel98: TPanel
            ParentBackground = False
            Left = 72
            Top = 5
            Width = 252
            Height = 40
            TabOrder = 0
            object Bevel97: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel98: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel99: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel100: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel101: TBevel
              Left = 86
              Top = 21
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object CheckBox43: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox44: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'crackles'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox45: TCheckBox
              Left = 173
              Top = 4
              Width = 76
              Height = 14
              Caption = 'wheezing'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox46: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'decrease'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox47: TCheckBox
              Left = 89
              Top = 23
              Width = 80
              Height = 14
              Caption = 'coarse'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel99: TPanel
            ParentBackground = False
            Left = 72
            Top = 46
            Width = 252
            Height = 59
            TabOrder = 1
            object Bevel102: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel103: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel104: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel105: TBevel
              Left = 2
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel106: TBevel
              Left = 87
              Top = 21
              Width = 164
              Height = 18
              Shape = bsFrame
            end
            object Bevel107: TBevel
              Left = 1
              Top = 39
              Width = 147
              Height = 19
              Shape = bsFrame
            end
            object Bevel108: TBevel
              Left = 149
              Top = 39
              Width = 102
              Height = 19
              Shape = bsFrame
            end
            object CheckBox48: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'white'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox49: TCheckBox
              Left = 88
              Top = 4
              Width = 80
              Height = 14
              Caption = 'yellow'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox50: TCheckBox
              Left = 173
              Top = 4
              Width = 76
              Height = 14
              Caption = 'green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox51: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'purulent'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox52: TCheckBox
              Left = 89
              Top = 23
              Width = 159
              Height = 14
              Caption = 'bloody'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object CheckBox53: TCheckBox
              Left = 3
              Top = 41
              Width = 143
              Height = 15
              Caption = 'blood tingled'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
            end
            object CheckBox54: TCheckBox
              Left = 151
              Top = 41
              Width = 97
              Height = 15
              Caption = 'pink froth'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
            end
          end
          object Panel100: TPanel
            ParentBackground = False
            Left = 72
            Top = 106
            Width = 251
            Height = 20
            TabOrder = 2
            object Bevel109: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel110: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel111: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox55: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox56: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'thin'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox57: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = 'thick'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel101: TPanel
            ParentBackground = False
            Left = 72
            Top = 127
            Width = 251
            Height = 20
            TabOrder = 3
            object Bevel112: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel113: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel114: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox58: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'small'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox59: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'moderate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox60: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = 'large'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel102: TPanel
            ParentBackground = False
            Left = 72
            Top = 148
            Width = 251
            Height = 20
            TabOrder = 4
            object Bevel115: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel116: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel117: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox61: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'percussion'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox62: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'vibrate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox63: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel103: TPanel
          ParentBackground = False
          Left = 654
          Top = 183
          Width = 326
          Height = 174
          TabOrder = 12
          object Bevel119: TBevel
            Left = 1
            Top = 5
            Width = 70
            Height = 20
            Shape = bsFrame
          end
          object Label56: TLabel
            Transparent = False
            Left = 3
            Top = 7
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'È£ÈíÀ½'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel120: TBevel
            Left = 1
            Top = 45
            Width = 69
            Height = 21
            Shape = bsFrame
          end
          object Label57: TLabel
            Transparent = False
            Left = 3
            Top = 47
            Width = 65
            Height = 17
            AutoSize = False
            Caption = 'ºÐºñ¹°»ö±ò'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel121: TBevel
            Left = 1
            Top = 105
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label58: TLabel
            Transparent = False
            Left = 2
            Top = 107
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel122: TBevel
            Left = 1
            Top = 126
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label59: TLabel
            Transparent = False
            Left = 2
            Top = 128
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '¾ç'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel123: TBevel
            Left = 1
            Top = 148
            Width = 69
            Height = 20
            Shape = bsFrame
          end
          object Label60: TLabel
            Transparent = False
            Left = 3
            Top = 150
            Width = 65
            Height = 16
            AutoSize = False
            Caption = 'PT'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel104: TPanel
            ParentBackground = False
            Left = 72
            Top = 5
            Width = 252
            Height = 40
            TabOrder = 0
            object Bevel124: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel125: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel126: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel127: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel128: TBevel
              Left = 86
              Top = 21
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object CheckBox64: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox65: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'crackles'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox66: TCheckBox
              Left = 173
              Top = 4
              Width = 76
              Height = 14
              Caption = 'wheezing'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox67: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'decrease'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox68: TCheckBox
              Left = 89
              Top = 23
              Width = 80
              Height = 14
              Caption = 'coarse'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel105: TPanel
            ParentBackground = False
            Left = 72
            Top = 46
            Width = 252
            Height = 59
            TabOrder = 1
            object Bevel129: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel130: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel131: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel132: TBevel
              Left = 2
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel133: TBevel
              Left = 87
              Top = 21
              Width = 164
              Height = 18
              Shape = bsFrame
            end
            object Bevel134: TBevel
              Left = 1
              Top = 39
              Width = 147
              Height = 19
              Shape = bsFrame
            end
            object Bevel135: TBevel
              Left = 149
              Top = 39
              Width = 102
              Height = 19
              Shape = bsFrame
            end
            object CheckBox69: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'white'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox70: TCheckBox
              Left = 88
              Top = 4
              Width = 80
              Height = 14
              Caption = 'yellow'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox71: TCheckBox
              Left = 173
              Top = 4
              Width = 76
              Height = 14
              Caption = 'green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox72: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'purulent'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox73: TCheckBox
              Left = 89
              Top = 23
              Width = 159
              Height = 14
              Caption = 'bloody'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object CheckBox74: TCheckBox
              Left = 3
              Top = 41
              Width = 143
              Height = 15
              Caption = 'blood tingled'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
            end
            object CheckBox75: TCheckBox
              Left = 151
              Top = 41
              Width = 97
              Height = 15
              Caption = 'pink froth'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
            end
          end
          object Panel106: TPanel
            ParentBackground = False
            Left = 72
            Top = 106
            Width = 251
            Height = 20
            TabOrder = 2
            object Bevel136: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel137: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel138: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox76: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox77: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'thin'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox78: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = 'thick'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel107: TPanel
            ParentBackground = False
            Left = 72
            Top = 127
            Width = 251
            Height = 20
            TabOrder = 3
            object Bevel139: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel140: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel141: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox79: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'small'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox80: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'moderate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox81: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = 'large'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel108: TPanel
            ParentBackground = False
            Left = 72
            Top = 148
            Width = 251
            Height = 20
            TabOrder = 4
            object Bevel142: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel143: TBevel
              Left = 86
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel144: TBevel
              Left = 171
              Top = 1
              Width = 79
              Height = 18
              Shape = bsFrame
            end
            object CheckBox82: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 14
              Caption = 'percussion'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox83: TCheckBox
              Left = 89
              Top = 3
              Width = 80
              Height = 14
              Caption = 'vibrate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox84: TCheckBox
              Left = 173
              Top = 3
              Width = 74
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel114: TPanel
          ParentBackground = False
          Left = 327
          Top = 384
          Width = 326
          Height = 96
          TabOrder = 13
          object Bevel159: TBevel
            Left = 2
            Top = 6
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label67: TLabel
            Transparent = False
            Left = 4
            Top = 8
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'º¹ºÎ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel160: TBevel
            Left = 2
            Top = 27
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label68: TLabel
            Transparent = False
            Left = 4
            Top = 29
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'ÀåÀ½'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel161: TBevel
            Left = 2
            Top = 49
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label69: TLabel
            Transparent = False
            Left = 4
            Top = 51
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'L-tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel162: TBevel
            Left = 2
            Top = 70
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label70: TLabel
            Transparent = False
            Left = 4
            Top = 71
            Width = 64
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel115: TPanel
            ParentBackground = False
            Left = 71
            Top = 28
            Width = 251
            Height = 20
            TabOrder = 0
            object Bevel163: TBevel
              Left = 0
              Top = 1
              Width = 64
              Height = 18
              Shape = bsFrame
            end
            object Bevel167: TBevel
              Left = 64
              Top = 1
              Width = 59
              Height = 18
              Shape = bsFrame
            end
            object Bevel168: TBevel
              Left = 124
              Top = 1
              Width = 62
              Height = 18
              Shape = bsFrame
            end
            object Bevel169: TBevel
              Left = 186
              Top = 1
              Width = 64
              Height = 18
              Shape = bsFrame
            end
            object CheckBox93: TCheckBox
              Left = 2
              Top = 3
              Width = 59
              Height = 14
              Caption = 'normal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox94: TCheckBox
              Left = 67
              Top = 3
              Width = 54
              Height = 14
              Caption = 'inc.'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox95: TCheckBox
              Left = 126
              Top = 3
              Width = 57
              Height = 14
              Caption = 'dic'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox96: TCheckBox
              Left = 188
              Top = 3
              Width = 59
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel116: TPanel
            ParentBackground = False
            Left = 71
            Top = 6
            Width = 251
            Height = 21
            TabOrder = 1
            object Bevel170: TBevel
              Left = 0
              Top = 1
              Width = 124
              Height = 19
              Shape = bsFrame
            end
            object Bevel171: TBevel
              Left = 124
              Top = 1
              Width = 126
              Height = 19
              Shape = bsFrame
            end
            object CheckBox100: TCheckBox
              Left = 2
              Top = 3
              Width = 119
              Height = 15
              Caption = 'soft'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox101: TCheckBox
              Left = 126
              Top = 3
              Width = 121
              Height = 15
              Caption = 'distension'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel117: TPanel
            ParentBackground = False
            Left = 71
            Top = 49
            Width = 251
            Height = 20
            TabOrder = 2
            object Bevel172: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel173: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel174: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox102: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'yellow'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox103: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'bloody'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox104: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel118: TPanel
            ParentBackground = False
            Left = 70
            Top = 70
            Width = 252
            Height = 21
            TabOrder = 3
            object Bevel175: TBevel
              Left = 0
              Top = 1
              Width = 124
              Height = 19
              Shape = bsFrame
            end
            object Bevel176: TBevel
              Left = 124
              Top = 1
              Width = 127
              Height = 19
              Shape = bsFrame
            end
            object CheckBox105: TCheckBox
              Left = 2
              Top = 3
              Width = 119
              Height = 15
              Caption = 'dark green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox106: TCheckBox
              Left = 126
              Top = 3
              Width = 122
              Height = 15
              Caption = 'dark brown'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object Panel119: TPanel
          ParentBackground = False
          Left = 654
          Top = 383
          Width = 326
          Height = 96
          TabOrder = 14
          object Bevel178: TBevel
            Left = 2
            Top = 6
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label72: TLabel
            Transparent = False
            Left = 4
            Top = 8
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'º¹ºÎ'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel179: TBevel
            Left = 2
            Top = 27
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label73: TLabel
            Transparent = False
            Left = 4
            Top = 29
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'ÀåÀ½'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel180: TBevel
            Left = 2
            Top = 49
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label74: TLabel
            Transparent = False
            Left = 4
            Top = 51
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'L-tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel181: TBevel
            Left = 2
            Top = 70
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label75: TLabel
            Transparent = False
            Left = 4
            Top = 71
            Width = 64
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel120: TPanel
            ParentBackground = False
            Left = 71
            Top = 28
            Width = 251
            Height = 20
            TabOrder = 0
            object Bevel182: TBevel
              Left = 0
              Top = 1
              Width = 64
              Height = 18
              Shape = bsFrame
            end
            object Bevel183: TBevel
              Left = 64
              Top = 1
              Width = 59
              Height = 18
              Shape = bsFrame
            end
            object Bevel184: TBevel
              Left = 124
              Top = 1
              Width = 62
              Height = 18
              Shape = bsFrame
            end
            object Bevel185: TBevel
              Left = 186
              Top = 1
              Width = 64
              Height = 18
              Shape = bsFrame
            end
            object CheckBox107: TCheckBox
              Left = 2
              Top = 3
              Width = 59
              Height = 14
              Caption = 'normal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox108: TCheckBox
              Left = 67
              Top = 3
              Width = 54
              Height = 14
              Caption = 'inc.'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox109: TCheckBox
              Left = 126
              Top = 3
              Width = 57
              Height = 14
              Caption = 'dic'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox110: TCheckBox
              Left = 188
              Top = 3
              Width = 59
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel121: TPanel
            ParentBackground = False
            Left = 71
            Top = 6
            Width = 251
            Height = 21
            TabOrder = 1
            object Bevel186: TBevel
              Left = 0
              Top = 1
              Width = 124
              Height = 19
              Shape = bsFrame
            end
            object Bevel187: TBevel
              Left = 124
              Top = 1
              Width = 126
              Height = 19
              Shape = bsFrame
            end
            object CheckBox111: TCheckBox
              Left = 2
              Top = 3
              Width = 119
              Height = 15
              Caption = 'soft'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox112: TCheckBox
              Left = 126
              Top = 3
              Width = 121
              Height = 15
              Caption = 'distension'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel122: TPanel
            ParentBackground = False
            Left = 71
            Top = 49
            Width = 251
            Height = 20
            TabOrder = 2
            object Bevel188: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel189: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel190: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox113: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'yellow'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox114: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'bloody'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox115: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel123: TPanel
            ParentBackground = False
            Left = 70
            Top = 70
            Width = 252
            Height = 21
            TabOrder = 3
            object Bevel191: TBevel
              Left = 0
              Top = 1
              Width = 124
              Height = 19
              Shape = bsFrame
            end
            object Bevel192: TBevel
              Left = 124
              Top = 1
              Width = 127
              Height = 19
              Shape = bsFrame
            end
            object CheckBox116: TCheckBox
              Left = 2
              Top = 3
              Width = 119
              Height = 15
              Caption = 'dark green'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox117: TCheckBox
              Left = 126
              Top = 3
              Width = 122
              Height = 15
              Caption = 'dark brown'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object Panel131: TPanel
          ParentBackground = False
          Left = 327
          Top = 511
          Width = 326
          Height = 71
          TabOrder = 15
          object Bevel221: TBevel
            Left = 2
            Top = 5
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label86: TLabel
            Transparent = False
            Left = 4
            Top = 7
            Width = 64
            Height = 16
            AutoSize = False
            Caption = '¼Òº¯»ö'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel222: TBevel
            Left = 2
            Top = 46
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label87: TLabel
            Transparent = False
            Left = 4
            Top = 48
            Width = 63
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel132: TPanel
            ParentBackground = False
            Left = 70
            Top = 5
            Width = 253
            Height = 40
            TabOrder = 0
            object Bevel223: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel224: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel225: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel226: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel227: TBevel
              Left = 86
              Top = 21
              Width = 165
              Height = 18
              Shape = bsFrame
            end
            object CheckBox135: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox136: TCheckBox
              Left = 88
              Top = 4
              Width = 81
              Height = 14
              Caption = 'amber'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox137: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'straw'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox138: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'hematuria'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox139: TCheckBox
              Left = 88
              Top = 23
              Width = 161
              Height = 14
              Caption = 'bilirubinuria'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel133: TPanel
            ParentBackground = False
            Left = 71
            Top = 47
            Width = 252
            Height = 20
            TabOrder = 1
            object Bevel228: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel229: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel230: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox140: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox141: TCheckBox
              Left = 87
              Top = 3
              Width = 81
              Height = 14
              Caption = 'thin'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox142: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'thick'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel134: TPanel
          ParentBackground = False
          Left = 327
          Top = 612
          Width = 326
          Height = 154
          TabOrder = 16
          object Bevel231: TBevel
            Left = 2
            Top = 5
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label88: TLabel
            Transparent = False
            Left = 4
            Top = 7
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'ÇÇºÎ»ö'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel232: TBevel
            Left = 2
            Top = 45
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label89: TLabel
            Transparent = False
            Left = 4
            Top = 47
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'tugor'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel233: TBevel
            Left = 2
            Top = 67
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label90: TLabel
            Transparent = False
            Left = 4
            Top = 69
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'Lesion'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel234: TBevel
            Left = 2
            Top = 110
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label93: TLabel
            Transparent = False
            Left = 4
            Top = 112
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'IV site'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel135: TPanel
            ParentBackground = False
            Left = 71
            Top = 5
            Width = 252
            Height = 40
            TabOrder = 0
            object Bevel235: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel236: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel237: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel238: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object CheckBox143: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox144: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'pale'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox145: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'anemic'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox146: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'icteric'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel136: TPanel
            ParentBackground = False
            Left = 72
            Top = 46
            Width = 251
            Height = 20
            TabOrder = 1
            object Bevel239: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel240: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel247: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox147: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'good'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox148: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'moderate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox149: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'poor'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel138: TPanel
            ParentBackground = False
            Left = 71
            Top = 68
            Width = 252
            Height = 41
            TabOrder = 2
            object Bevel248: TBevel
              Left = 169
              Top = 21
              Width = 81
              Height = 18
              Shape = bsFrame
            end
            object Bevel249: TBevel
              Left = 1
              Top = 1
              Width = 40
              Height = 19
              Shape = bsFrame
            end
            object Label94: TLabel
              Transparent = False
              Left = 3
              Top = 3
              Width = 36
              Height = 15
              AutoSize = False
              Caption = 'À§Ä¡:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel250: TBevel
              Left = 1
              Top = 20
              Width = 40
              Height = 19
              Shape = bsFrame
            end
            object Label95: TLabel
              Transparent = False
              Left = 3
              Top = 22
              Width = 36
              Height = 15
              AutoSize = False
              Caption = 'Å©±â:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox150: TCheckBox
              Left = 171
              Top = 23
              Width = 77
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object Edit47: TEdit
              Left = 41
              Top = 1
              Width = 209
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 1
            end
            object Edit48: TEdit
              Left = 41
              Top = 20
              Width = 127
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel139: TPanel
            ParentBackground = False
            Left = 71
            Top = 110
            Width = 253
            Height = 40
            TabOrder = 3
            object Bevel251: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel252: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel253: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel254: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel255: TBevel
              Left = 86
              Top = 21
              Width = 165
              Height = 18
              Shape = bsFrame
            end
            object CheckBox155: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox156: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'swelling'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox157: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'pain'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox158: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'redness'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox159: TCheckBox
              Left = 89
              Top = 23
              Width = 160
              Height = 14
              Caption = 'febrile sense'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object Panel140: TPanel
          ParentBackground = False
          Left = 327
          Top = 796
          Width = 326
          Height = 76
          TabOrder = 17
          object Bevel256: TBevel
            Left = 2
            Top = 6
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label96: TLabel
            Transparent = False
            Left = 4
            Top = 8
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'L tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel257: TBevel
            Left = 69
            Top = 29
            Width = 32
            Height = 20
            Shape = bsFrame
          end
          object Label97: TLabel
            Transparent = False
            Left = 70
            Top = 30
            Width = 29
            Height = 16
            AutoSize = False
            Caption = 'tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel258: TBevel
            Left = 69
            Top = 51
            Width = 32
            Height = 20
            Shape = bsFrame
          end
          object Label98: TLabel
            Transparent = False
            Left = 70
            Top = 52
            Width = 29
            Height = 16
            AutoSize = False
            Caption = 'tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel141: TPanel
            ParentBackground = False
            Left = 70
            Top = 6
            Width = 252
            Height = 21
            TabOrder = 0
            object Bevel259: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel260: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel261: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label99: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox160: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox161: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit49: TEdit
              Left = 131
              Top = 1
              Width = 118
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Edit50: TEdit
            Left = 2
            Top = 29
            Width = 66
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 1
          end
          object Panel142: TPanel
            ParentBackground = False
            Left = 102
            Top = 28
            Width = 220
            Height = 21
            TabOrder = 2
            object Bevel262: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel263: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel264: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label100: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox162: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox163: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit56: TEdit
              Left = 131
              Top = 1
              Width = 86
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Edit57: TEdit
            Left = 2
            Top = 51
            Width = 66
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 3
          end
          object Panel143: TPanel
            ParentBackground = False
            Left = 102
            Top = 50
            Width = 220
            Height = 21
            TabOrder = 4
            object Bevel265: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel266: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel267: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label101: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox164: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox165: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit58: TEdit
              Left = 131
              Top = 1
              Width = 86
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel144: TPanel
          ParentBackground = False
          Left = 653
          Top = 511
          Width = 326
          Height = 71
          TabOrder = 18
          object Bevel271: TBevel
            Left = 2
            Top = 5
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label105: TLabel
            Transparent = False
            Left = 4
            Top = 7
            Width = 64
            Height = 16
            AutoSize = False
            Caption = '¼Òº¯»ö'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel272: TBevel
            Left = 2
            Top = 46
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label106: TLabel
            Transparent = False
            Left = 4
            Top = 48
            Width = 63
            Height = 16
            AutoSize = False
            Caption = '¾ç»ó'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel145: TPanel
            ParentBackground = False
            Left = 70
            Top = 5
            Width = 253
            Height = 40
            TabOrder = 0
            object Bevel273: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel274: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel275: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel276: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel277: TBevel
              Left = 86
              Top = 21
              Width = 165
              Height = 18
              Shape = bsFrame
            end
            object CheckBox166: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox167: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'amber'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox168: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'straw'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox169: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'hematuria'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox170: TCheckBox
              Left = 89
              Top = 23
              Width = 160
              Height = 14
              Caption = 'bilirubinuria'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
          object Panel146: TPanel
            ParentBackground = False
            Left = 71
            Top = 47
            Width = 252
            Height = 20
            TabOrder = 1
            object Bevel278: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel279: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel280: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox171: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'clear'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox172: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'thin'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox173: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'thick'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object Panel147: TPanel
          ParentBackground = False
          Left = 653
          Top = 612
          Width = 326
          Height = 154
          TabOrder = 19
          object Bevel281: TBevel
            Left = 2
            Top = 5
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label107: TLabel
            Transparent = False
            Left = 4
            Top = 7
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'ÇÇºÎ»ö'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel282: TBevel
            Left = 2
            Top = 45
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label113: TLabel
            Transparent = False
            Left = 4
            Top = 47
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'tugor'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel283: TBevel
            Left = 2
            Top = 67
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label115: TLabel
            Transparent = False
            Left = 4
            Top = 69
            Width = 63
            Height = 16
            AutoSize = False
            Caption = 'Lesion'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel284: TBevel
            Left = 2
            Top = 110
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label116: TLabel
            Transparent = False
            Left = 4
            Top = 112
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'IV site'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel152: TPanel
            ParentBackground = False
            Left = 71
            Top = 5
            Width = 252
            Height = 40
            TabOrder = 0
            object Bevel285: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel286: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel287: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel300: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object CheckBox174: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox175: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'pale'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox176: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'anemic'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox177: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'icteric'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel153: TPanel
            ParentBackground = False
            Left = 72
            Top = 46
            Width = 251
            Height = 20
            TabOrder = 1
            object Bevel301: TBevel
              Left = 0
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel302: TBevel
              Left = 85
              Top = 1
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel303: TBevel
              Left = 170
              Top = 1
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object CheckBox178: TCheckBox
              Left = 2
              Top = 3
              Width = 80
              Height = 14
              Caption = 'good'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox179: TCheckBox
              Left = 88
              Top = 3
              Width = 80
              Height = 14
              Caption = 'moderate'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox180: TCheckBox
              Left = 172
              Top = 3
              Width = 75
              Height = 14
              Caption = 'poor'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel154: TPanel
            ParentBackground = False
            Left = 71
            Top = 68
            Width = 252
            Height = 41
            TabOrder = 2
            object Bevel304: TBevel
              Left = 169
              Top = 21
              Width = 81
              Height = 18
              Shape = bsFrame
            end
            object Bevel305: TBevel
              Left = 1
              Top = 1
              Width = 40
              Height = 19
              Shape = bsFrame
            end
            object Label117: TLabel
              Transparent = False
              Left = 3
              Top = 3
              Width = 36
              Height = 15
              AutoSize = False
              Caption = 'À§Ä¡:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object Bevel306: TBevel
              Left = 1
              Top = 20
              Width = 40
              Height = 19
              Shape = bsFrame
            end
            object Label118: TLabel
              Transparent = False
              Left = 3
              Top = 22
              Width = 36
              Height = 15
              AutoSize = False
              Caption = 'Å©±â:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox187: TCheckBox
              Left = 171
              Top = 23
              Width = 77
              Height = 14
              Caption = '¹«'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object Edit59: TEdit
              Left = 41
              Top = 1
              Width = 209
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 1
            end
            object Edit60: TEdit
              Left = 41
              Top = 20
              Width = 127
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel155: TPanel
            ParentBackground = False
            Left = 71
            Top = 110
            Width = 253
            Height = 40
            TabOrder = 3
            object Bevel307: TBevel
              Left = 1
              Top = 1
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel308: TBevel
              Left = 86
              Top = 2
              Width = 85
              Height = 18
              Shape = bsFrame
            end
            object Bevel309: TBevel
              Left = 171
              Top = 2
              Width = 80
              Height = 18
              Shape = bsFrame
            end
            object Bevel310: TBevel
              Left = 1
              Top = 20
              Width = 85
              Height = 19
              Shape = bsFrame
            end
            object Bevel311: TBevel
              Left = 86
              Top = 21
              Width = 165
              Height = 18
              Shape = bsFrame
            end
            object CheckBox188: TCheckBox
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Caption = 'nomal'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox189: TCheckBox
              Left = 89
              Top = 4
              Width = 80
              Height = 14
              Caption = 'swelling'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox190: TCheckBox
              Left = 173
              Top = 4
              Width = 75
              Height = 14
              Caption = 'pain'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox191: TCheckBox
              Left = 3
              Top = 22
              Width = 80
              Height = 15
              Caption = 'redness'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox192: TCheckBox
              Left = 89
              Top = 23
              Width = 160
              Height = 14
              Caption = 'febrile sense'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object Panel156: TPanel
          ParentBackground = False
          Left = 653
          Top = 796
          Width = 326
          Height = 76
          TabOrder = 20
          object Bevel312: TBevel
            Left = 2
            Top = 6
            Width = 68
            Height = 20
            Shape = bsFrame
          end
          object Label119: TLabel
            Transparent = False
            Left = 4
            Top = 8
            Width = 64
            Height = 16
            AutoSize = False
            Caption = 'L tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel313: TBevel
            Left = 69
            Top = 29
            Width = 32
            Height = 20
            Shape = bsFrame
          end
          object Label120: TLabel
            Transparent = False
            Left = 70
            Top = 30
            Width = 29
            Height = 16
            AutoSize = False
            Caption = 'tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Bevel314: TBevel
            Left = 69
            Top = 51
            Width = 32
            Height = 20
            Shape = bsFrame
          end
          object Label121: TLabel
            Transparent = False
            Left = 70
            Top = 52
            Width = 29
            Height = 16
            AutoSize = False
            Caption = 'tube'
            Color = 16709615
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = '±¼¸²'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Panel157: TPanel
            ParentBackground = False
            Left = 70
            Top = 6
            Width = 252
            Height = 21
            TabOrder = 0
            object Bevel315: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel316: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel317: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label122: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox193: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox194: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit61: TEdit
              Left = 131
              Top = 1
              Width = 118
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Edit62: TEdit
            Left = 2
            Top = 29
            Width = 66
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 1
          end
          object Panel158: TPanel
            ParentBackground = False
            Left = 102
            Top = 28
            Width = 220
            Height = 21
            TabOrder = 2
            object Bevel318: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel319: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel320: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label123: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox195: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox196: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit63: TEdit
              Left = 131
              Top = 1
              Width = 86
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
          object Edit64: TEdit
            Left = 2
            Top = 51
            Width = 66
            Height = 19
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '±¼¸²Ã¼'
            Font.Style = []
            ImeMode = imSHanguel
            ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
            MaxLength = 100
            ParentFont = False
            TabOrder = 3
          end
          object Panel159: TPanel
            ParentBackground = False
            Left = 102
            Top = 50
            Width = 220
            Height = 21
            TabOrder = 4
            object Bevel321: TBevel
              Left = 1
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel322: TBevel
              Left = 47
              Top = 1
              Width = 46
              Height = 19
              Shape = bsFrame
            end
            object Bevel323: TBevel
              Left = 93
              Top = 1
              Width = 37
              Height = 19
              Shape = bsFrame
            end
            object Label124: TLabel
              Transparent = False
              Left = 95
              Top = 3
              Width = 33
              Height = 15
              AutoSize = False
              Caption = '¾ç»ó:'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = '±¼¸²'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Layout = tlCenter
            end
            object CheckBox197: TCheckBox
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Caption = 'N/D'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox198: TCheckBox
              Left = 49
              Top = 3
              Width = 42
              Height = 15
              Caption = 'I/S'
              Color = 15465210
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object Edit65: TEdit
              Left = 131
              Top = 1
              Width = 86
              Height = 19
              AutoSelect = False
              AutoSize = False
              Color = 16056319
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = '±¼¸²Ã¼'
              Font.Style = []
              ImeMode = imSHanguel
              ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
              MaxLength = 100
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  object bbt_Delete: TBitBtn
    Left = 801
    Top = 634
    Width = 103
    Height = 29
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = ' »è Á¦(&D)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '±¼¸²Ã¼'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF33339993707399933333773337F3777FF3399933000339
      9933377333777F3377F3399333707333993337733337333337FF993333333333
      399377F33333F333377F993333303333399377F33337FF333373993333707333
      333377F333777F333333993333101333333377F333777F3FFFFF993333000399
      999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
      99933773FF777F3F777F339993707399999333773F373F77777F333999999999
      3393333777333777337333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object bbt_Close: TBitBtn
    Left = 904
    Top = 634
    Width = 103
    Height = 29
    Caption = ' Á¾ ·á(&A)'
    TabOrder = 3
    OnClick = bbt_CloseClick
    Glyph.Data = {
      6E040000424D6E04000000000000360000002800000013000000120000000100
      18000000000038040000CE0E0000D80E00000000000000000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
      BFBFFFFFFFBFBFBFFFFFFFFFFFFFBFBFBFFFFFFF000000000000FFFFFFBFBFBF
      FFFFFFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFFFFFFFBFBFBFFFFFFFFFFF
      FFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFF000000FFFF00000000FFFFFFFFFFFFBF
      BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFF
      FFFFFFBFBFBFFFFFFFBFBFBF000000FFFF007F7F00000000BFBFBFFFFFFFFFFF
      FFBFBFBFBFBFBF000000BFBFBF000000000000000000000000000000000000FF
      FFFFFFFFFFBFBFBF000000FFFF007F7F007F7F00000000000000000000BFBFBF
      BFBFBF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF
      BFFFFFFF000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF00
      0000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF7F7F7F7F7F7F7F7F7F
      000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBF
      BFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7F7F7F7F7F7F7F000000FF
      FF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBFFFFFFF
      FFFFFFBFBFBFBFBFBF0000007F7F000000007F7F7F7F7F7F000000FFFF007F7F
      7F7F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBFFFFFFF00000000
      0000000000000000FFFF007F7F000000007F7F7F000000FFFF000000007F7F00
      000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF007F7F00000000000000FFFF007F7F007F7F00000000BF
      BFBFFFFFFFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF007F7F007F7F7F000000FFFF007F7F007F7F00000000BFBFBFFFFF
      FFBFBFBFBFBFBF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF007F
      7F007F7F7F7F7F7F000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBF
      BFBFBF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F007F7F7F7F7F
      7F7F7F7F000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF00
      0000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF7F7F7F7F7F7F7F7F7F
      7F7F7F000000FFFF007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBF
      BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F000000FFFF00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      00000000000000FFFFFFFFFFFFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
  end
  object bbt_Add: TBitBtn
    Left = 698
    Top = 634
    Width = 103
    Height = 29
    Cursor = crHandPoint
    Hint = '¿À´ÃÀÚ ÀúÀåÇÏÁö¾ÊÀº ÀÚ·á·Î º¹»çÇÕ´Ï´Ù.'
    Anchors = [akTop, akRight]
    Caption = ' Àú Àå(&S)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '±¼¸²Ã¼'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object stb_Message: TStatusBar
    Left = 0
    Top = 666
    Width = 1012
    Height = 24
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '±¼¸²'
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        Width = 834
      end
      item
        Width = 50
      end>
    SimplePanel = False
    SizeGrip = False
    UseSystemFont = False
  end
  object bbt_PreView: TBitBtn
    Left = 592
    Top = 634
    Width = 103
    Height = 29
    Caption = ' Ãâ ·Â(&P)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '±¼¸²Ã¼'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object pn_Patinfo: TBiancoPanel
    Left = 199
    Top = 148
    Width = 694
    Height = 304
    BevelInner = bvRaised
    BorderWidth = 15
    Color = 12049132
    FullRepaint = False
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '±¼¸²Ã¼'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnMouseDown = pn_PatinfoMouseDown
    WhatToMove = wmSelf
    MouseButtonMove = mbLeft
    ColorHI = clBtnHighlight
    ColorLO = clBtnShadow
    ButtonAlign = alTop
    CornerDimension = 30
    CornerColor = clAppWorkSpace
    MaxWidth = 0
    MaxHeight = 0
    MinWidth = 0
    MinHeight = 0
    BorderHeight = 20
    JumpButtonSize = 12
    JumpGryps = jgUser
    Allow = [Down, MoveX, MoveY]
    WhatShow = [AtMovingTime]
    JumpButtonPosition = jpBottomLeft
    JumpButtonParent = jtClientArea
    JumpButtonLeft = 0
    JumpButtonTop = 0
    JumpButtonColor = clAppWorkSpace
    PopupMenuAlign = maTop
    PopupMenuPosition = mpLeft
    PopupMenuSize = 15
    PopupMenuBitmap.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000004000
      000080000000FF000000002000004020000080200000FF200000004000004040
      000080400000FF400000006000004060000080600000FF600000008000004080
      000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
      000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
      200080002000FF002000002020004020200080202000FF202000004020004040
      200080402000FF402000006020004060200080602000FF602000008020004080
      200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
      200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
      400080004000FF004000002040004020400080204000FF204000004040004040
      400080404000FF404000006040004060400080604000FF604000008040004080
      400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
      400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
      600080006000FF006000002060004020600080206000FF206000004060004040
      600080406000FF406000006060004060600080606000FF606000008060004080
      600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
      600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
      800080008000FF008000002080004020800080208000FF208000004080004040
      800080408000FF408000006080004060800080608000FF608000008080004080
      800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
      800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
      A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
      A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
      A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
      A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
      C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
      C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
      C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
      C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
      FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
      FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
      FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
      FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00B6B6B6B6B6B6
      B6B6B6B6B6B6B6B6B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6B6B6B6B6
      B6B6B6B6B6B6B6B6FFB6B6B6B6B6B6B6B6B6B6B6B6B6B6B6FFB6B6B6B6B6B6B6
      B600B6B6B6B6B6B6FFB6B6B6B6B6B6B6000000B6B6B6B6B6FFB6B6B6B6B6B6B6
      000000B6B6B6B6B6FFB6B6B6B6B6B60000000000B6B6B6B6FFB6B6B6B6B6B600
      00000000B6B6B6B6FFB6B6B6B6B600000000000000B6B6B6FFB6B6B6B6B60000
      0000000000B6B6B6FFB6B6B6B6000000000000000000B6B6FFB6B6B6B6000000
      000000000000B6B6FFB6B6B60000000000000000000000B6FFB6B6B6B6B6B6B6
      B6B6B6B6B6B6B6B6FFB6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6}
    PopupMenuColor = clAppWorkSpace
    BitmapParent = jtClientArea
    ButtonStyle = bsStandard
    Flat97Color = clGrayText
    object sbt_Min2: TSpeedButton
      Left = 582
      Top = 0
      Width = 32
      Height = 20
      Cursor = crHandPoint
      Hint = 'ÀÛ°Ô'
      Anchors = [akTop, akRight]
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000F0000000F0000000100
        04000000000078000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3330333333333333333033444444444443303344444444444330334444444444
        4330333333333333333033333333333333303333333333333330333333333333
        3330333333333333333033333333333333303333333333333330333333333333
        333033333333333333303333333333333330}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_Min2Click
    end
    object sbt_Exit2: TSpeedButton
      Left = 646
      Top = 0
      Width = 33
      Height = 20
      Cursor = crHandPoint
      Hint = '´Ý±â'
      Anchors = [akTop, akRight]
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      Glyph.Data = {
        C2010000424DC20100000000000036000000280000000B0000000B0000000100
        1800000000008C010000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0C000
        0000C0C0C0800000800000800000C0C0C0C0C0C0C0C0C0800000800000800000
        C0C0C0000000C0C0C0C0C0C0800000800000800000C0C0C08000008000008000
        00C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C080000080000080000080000080
        0000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0800000800000
        800000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08000008000
        00800000800000800000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C080000080
        0000800000C0C0C0800000800000800000C0C0C0C0C0C0000000C0C0C0800000
        800000800000C0C0C0C0C0C0C0C0C0800000800000800000C0C0C0000000C0C0
        C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_Exit2Click
    end
    object sbt_Max2: TSpeedButton
      Left = 614
      Top = 0
      Width = 32
      Height = 20
      Cursor = crHandPoint
      Hint = 'Å©°Ô'
      Anchors = [akTop, akRight]
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0800000800000800000800000800000800000800000800000
        800000800000800000800000800000800000C0C0C0C0C0C00000C0C0C0C0C0C0
        800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0800000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        0000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0
        0000C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C00000C0C0C0C0C0C0
        800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0800000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        0000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0
        0000C0C0C0C0C0C0800000800000800000800000800000800000800000800000
        800000800000800000800000800000800000C0C0C0C0C0C00000C0C0C0C0C0C0
        800000FFFFFFFFFFFF8000008000008000008000008000008000008000008000
        00800000800000800000C0C0C0C0C0C00000C0C0C0C0C0C08000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_Max2Click
    end
    object Bevel3: TBevel
      Left = 167
      Top = 118
      Width = 55
      Height = 21
      Shape = bsFrame
    end
    object Bevel4: TBevel
      Left = 223
      Top = 118
      Width = 16
      Height = 21
      Shape = bsFrame
    end
    object Label1: TLabel
      Transparent = False
      Left = 225
      Top = 120
      Width = 12
      Height = 17
      AutoSize = False
      Caption = '#'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel5: TBevel
      Left = 166
      Top = 141
      Width = 56
      Height = 20
      Shape = bsFrame
    end
    object Bevel6: TBevel
      Left = 223
      Top = 141
      Width = 16
      Height = 20
      Shape = bsFrame
    end
    object Label2: TLabel
      Transparent = False
      Left = 225
      Top = 143
      Width = 12
      Height = 16
      AutoSize = False
      Caption = '#'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel2: TBevel
      Left = 115
      Top = 118
      Width = 52
      Height = 21
      Shape = bsFrame
    end
    object Bevel1: TBevel
      Left = 115
      Top = 164
      Width = 51
      Height = 21
      Shape = bsFrame
    end
    object Label3: TLabel
      Transparent = False
      Left = 117
      Top = 166
      Width = 47
      Height = 17
      AutoSize = False
      Caption = 'mm'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel7: TBevel
      Left = 279
      Top = 163
      Width = 28
      Height = 21
      Shape = bsFrame
    end
    object Label4: TLabel
      Transparent = False
      Left = 281
      Top = 165
      Width = 24
      Height = 17
      AutoSize = False
      Caption = 'cm'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel8: TBevel
      Left = 165
      Top = 187
      Width = 35
      Height = 21
      Shape = bsFrame
    end
    object Label5: TLabel
      Transparent = False
      Left = 167
      Top = 189
      Width = 31
      Height = 17
      AutoSize = False
      Caption = 'cath'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel9: TBevel
      Left = 165
      Top = 208
      Width = 35
      Height = 21
      Shape = bsFrame
    end
    object Label6: TLabel
      Transparent = False
      Left = 167
      Top = 210
      Width = 31
      Height = 17
      AutoSize = False
      Caption = 'cath'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel10: TBevel
      Left = 166
      Top = 250
      Width = 35
      Height = 21
      Shape = bsFrame
    end
    object Label9: TLabel
      Transparent = False
      Left = 168
      Top = 252
      Width = 31
      Height = 17
      AutoSize = False
      Caption = 'tube'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel11: TBevel
      Left = 261
      Top = 187
      Width = 12
      Height = 21
      Shape = bsFrame
    end
    object Label10: TLabel
      Transparent = False
      Left = 263
      Top = 189
      Width = 8
      Height = 17
      AutoSize = False
      Caption = '/'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel15: TBevel
      Left = 261
      Top = 208
      Width = 11
      Height = 20
      Shape = bsFrame
    end
    object Label11: TLabel
      Transparent = False
      Left = 263
      Top = 210
      Width = 7
      Height = 16
      AutoSize = False
      Caption = '/'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel16: TBevel
      Left = 260
      Top = 250
      Width = 13
      Height = 20
      Shape = bsFrame
    end
    object Label12: TLabel
      Transparent = False
      Left = 262
      Top = 252
      Width = 9
      Height = 16
      AutoSize = False
      Caption = '/'
      Color = 16709615
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Bevel327: TBevel
      Left = 21
      Top = 36
      Width = 323
      Height = 242
    end
    object Bevel328: TBevel
      Left = 347
      Top = 36
      Width = 323
      Height = 242
    end
    object Panel43: TPanel
      ParentBackground = False
      Left = 25
      Top = 52
      Width = 57
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Áø´Ü¸í'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel44: TPanel
      ParentBackground = False
      Left = 25
      Top = 73
      Width = 57
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '¼ö¼ú¸í'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object ed_OpName: TEdit
      Left = 83
      Top = 74
      Width = 152
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 2
    end
    object Panel36: TPanel
      ParentBackground = False
      Left = 236
      Top = 73
      Width = 56
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '¼ö¼úÀÏ¼ö'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ed_OPD: TEdit
      Left = 293
      Top = 74
      Width = 43
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 4
    end
    object Panel37: TPanel
      ParentBackground = False
      Left = 25
      Top = 94
      Width = 57
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '½ÄÀÌ'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object ed_Diet: TEdit
      Left = 83
      Top = 95
      Width = 253
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 6
    end
    object Panel164: TPanel
      ParentBackground = False
      Left = 25
      Top = 27
      Width = 114
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'È¯ÀÚ±âº»Á¤º¸'
      Color = 15458008
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Panel34: TPanel
      ParentBackground = False
      Left = 25
      Top = 118
      Width = 89
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Intubation:'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object Panel38: TPanel
      ParentBackground = False
      Left = 25
      Top = 141
      Width = 89
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Tracheostomy'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Panel39: TPanel
      ParentBackground = False
      Left = 25
      Top = 164
      Width = 37
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'ID'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object chk_Intu2: TCheckBox
      Left = 169
      Top = 120
      Width = 51
      Height = 17
      Alignment = taLeftJustify
      Caption = 'OT'
      Color = 16379628
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object ed_Intu: TEdit
      Left = 239
      Top = 118
      Width = 97
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 12
    end
    object Panel40: TPanel
      ParentBackground = False
      Left = 166
      Top = 164
      Width = 73
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '±íÀÌ'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object chk_Trach: TCheckBox
      Left = 168
      Top = 143
      Width = 52
      Height = 16
      Alignment = taLeftJustify
      Color = 16379628
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object ed_Trach: TEdit
      Left = 240
      Top = 140
      Width = 96
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 15
    end
    object Panel42: TPanel
      ParentBackground = False
      Left = 25
      Top = 187
      Width = 37
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'CUFF'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object Panel46: TPanel
      ParentBackground = False
      Left = 25
      Top = 208
      Width = 37
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = ' D'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object Panel47: TPanel
      ParentBackground = False
      Left = 25
      Top = 229
      Width = 37
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = ' E'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object Panel48: TPanel
      ParentBackground = False
      Left = 25
      Top = 250
      Width = 37
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = ' N'
      Color = 15458008
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object chk_Intu1: TCheckBox
      Left = 117
      Top = 120
      Width = 48
      Height = 17
      Alignment = taLeftJustify
      Caption = 'NT'
      Color = 16379628
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
    object ed_ID: TEdit
      Left = 63
      Top = 164
      Width = 52
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 21
    end
    object ed_Deep: TEdit
      Left = 242
      Top = 164
      Width = 37
      Height = 20
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 22
    end
    object ed_Cuff: TEdit
      Left = 63
      Top = 187
      Width = 103
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 23
    end
    object ed_D: TEdit
      Left = 63
      Top = 208
      Width = 103
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 24
    end
    object ed_E: TEdit
      Left = 63
      Top = 229
      Width = 162
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 25
    end
    object ed_N: TEdit
      Left = 63
      Top = 250
      Width = 103
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 26
    end
    object ed_Cuffcate2: TEdit
      Left = 272
      Top = 188
      Width = 64
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 27
    end
    object ed_Dcath2: TEdit
      Left = 271
      Top = 208
      Width = 65
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 28
    end
    object ed_Ntube2: TEdit
      Left = 273
      Top = 250
      Width = 64
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 29
    end
    object ed_Ntube1: TEdit
      Left = 201
      Top = 250
      Width = 57
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 30
    end
    object ed_Dcath1: TEdit
      Left = 200
      Top = 208
      Width = 60
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 31
    end
    object ed_Cuffcate1: TEdit
      Left = 200
      Top = 188
      Width = 59
      Height = 21
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 50
      ParentFont = False
      TabOrder = 32
    end
    object me_comments: TMemo
      Left = 352
      Top = 52
      Width = 311
      Height = 220
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 33
    end
    object Panel32: TPanel
      ParentBackground = False
      Left = 354
      Top = 27
      Width = 71
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'MEMO'
      Color = 15458008
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 34
    end
    object Panel165: TPanel
      ParentBackground = False
      Left = 28
      Top = 2
      Width = 112
      Height = 17
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'È¯ÀÚ»ó¼¼Á¤º¸'
      Color = 15458008
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 35
    end
    object ed_OpDate: TEdit
      Left = 356
      Top = 3
      Width = 75
      Height = 17
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 36
      Visible = False
    end
    object ed_Admdate: TEdit
      Left = 280
      Top = 3
      Width = 75
      Height = 17
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 37
      Visible = False
    end
    object ed_DiagText: TEdit
      Left = 83
      Top = 52
      Width = 253
      Height = 21
      AutoSize = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      ParentFont = False
      TabOrder = 38
    end
  end
  object bpn_PatList: TBiancoPanel
    Left = 115
    Top = 74
    Width = 324
    Height = 417
    BevelInner = bvRaised
    BorderWidth = 10
    FullRepaint = False
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = '±¼¸²'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnMouseDown = bpn_PatListMouseDown
    WhatToMove = wmSelf
    MouseButtonMove = mbLeft
    ColorHI = clBtnHighlight
    ColorLO = clBtnShadow
    ButtonAlign = alTop
    CornerDimension = 30
    CornerColor = clAppWorkSpace
    MaxWidth = 0
    MaxHeight = 0
    MinWidth = 0
    MinHeight = 0
    BorderHeight = 20
    JumpButtonSize = 12
    JumpGryps = jgNone
    Allow = [Down, MoveX, MoveY, ResizeX, ResizeY]
    WhatShow = [AtMovingTime]
    JumpButtonPosition = jpBottomLeft
    JumpButtonParent = jtClientArea
    JumpButtonLeft = 0
    JumpButtonTop = 0
    JumpButtonColor = clAppWorkSpace
    PopupMenuAlign = maTop
    PopupMenuPosition = mpLeft
    PopupMenuSize = 10
    PopupMenuColor = clAppWorkSpace
    BitmapParent = jtClientArea
    ButtonStyle = bsStandard
    Flat97Color = clGrayText
    object sbt_Min1: TSpeedButton
      Left = 250
      Top = 2
      Width = 32
      Height = 17
      Cursor = crHandPoint
      Hint = 'ÀÛ°Ô'
      Anchors = [akTop, akRight]
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000F0000000F0000000100
        04000000000078000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3330333333333333333033444444444443303344444444444330334444444444
        4330333333333333333033333333333333303333333333333330333333333333
        3330333333333333333033333333333333303333333333333330333333333333
        333033333333333333303333333333333330}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_Min1Click
    end
    object sbt_Max1: TSpeedButton
      Left = 282
      Top = 2
      Width = 32
      Height = 17
      Cursor = crHandPoint
      Hint = 'Å©°Ô'
      Anchors = [akTop, akRight]
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0800000800000800000800000800000800000800000800000
        800000800000800000800000800000800000C0C0C0C0C0C00000C0C0C0C0C0C0
        800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0800000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        0000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0
        0000C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C00000C0C0C0C0C0C0
        800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0800000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        0000C0C0C0C0C0C00000C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0
        0000C0C0C0C0C0C0800000800000800000800000800000800000800000800000
        800000800000800000800000800000800000C0C0C0C0C0C00000C0C0C0C0C0C0
        800000FFFFFFFFFFFF8000008000008000008000008000008000008000008000
        00800000800000800000C0C0C0C0C0C00000C0C0C0C0C0C08000008000008000
        0080000080000080000080000080000080000080000080000080000080000080
        0000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_Max1Click
    end
    object Panel161: TPanel
      ParentBackground = False
      Left = 12
      Top = 2
      Width = 75
      Height = 17
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'È¯ÀÚ¸í´Ü'
      Color = 15458008
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel163: TPanel
      ParentBackground = False
      Left = 13
      Top = 22
      Width = 300
      Height = 70
      Color = 14668234
      TabOrder = 1
      object Label7: TLabel
        Transparent = False
        Left = 7
        Top = 22
        Width = 46
        Height = 13
        Caption = 'º´  µ¿'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Transparent = False
        Left = 6
        Top = 40
        Width = 45
        Height = 13
        Caption = 'ÁÖÄ¡ÀÇ'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel329: TBevel
        Left = 146
        Top = 9
        Width = 71
        Height = 57
      end
      object sbt_PtInfo: TSpeedButton
        Left = 219
        Top = 8
        Width = 79
        Height = 30
        Cursor = crHandPoint
        Caption = 'Refresh'
        Flat = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsUnderline]
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777700007777777777788888877700007778888777000000888700007700
          00070000000000870000770FFFFF0B88888880870000770FFFFF0BBBBBBB8087
          0000770FFFFF0000000000770000770FFFFFF0FFFFFF08770000770FFFFFF0F8
          888F08770000777FFFFFF0FFFFFF087700007770000000F8888F08770000770F
          FF6FF0FFFFFF0877000070FFF666F00000000777000070FFF666FFF0FFFF7777
          00007700FF6FF00FFFFF0877000077FF00000FFFFFFF08770000770FFFFFFFFF
          FFFF087700007700000000000000077700007777777777777777777700007777
          77777777777777770000}
        Margin = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Spacing = 5
        OnClick = sbt_PtInfoClick
      end
      object sbt_Act: TSpeedButton
        Left = 219
        Top = 38
        Width = 79
        Height = 28
        Cursor = crHandPoint
        Caption = '°£È£Á¤º¸'
        Flat = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777700007777777777777777777700007778888700077888887700007700
          00070780700008770000770FFFF70F0407FF08770000770F888870FE407F0877
          0000770F8FF7F70FE40708770000770F87777770FE4077770000770F8FF7FFF7
          0FE407770000770F8777777770FE00770000770F8FF7FFFFF70033070000770F
          877777777770B0370000770F8FF7FFFFFFF703770000770F87777777778F7777
          0000770F8FF7FFFFFF8F08770000770F8FF7FFFFFF8F08770000770FF0000000
          00FF08770000777000BBBBBBB000777700007777770000000777777700007777
          77777777777777770000}
        Margin = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Spacing = 5
        OnClick = sbt_ActClick
      end
      object cbx_NowPos: TCheckBox
        Left = 5
        Top = 5
        Width = 64
        Height = 13
        Cursor = crHandPoint
        TabStop = False
        Alignment = taLeftJustify
        Caption = '(ÇöÀ§Ä¡)'
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object combx_WardCd: TComboBox
        Left = 90
        Top = 27
        Width = 38
        Height = 20
        Style = csDropDownList
        ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
        ItemHeight = 12
        TabOrder = 1
        Visible = False
      end
      object combx_WardNm: TComboBox
        Left = 55
        Top = 18
        Width = 90
        Height = 20
        Cursor = crHandPoint
        Style = csDropDownList
        Color = 14729908
        DropDownCount = 40
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
        ItemHeight = 12
        ParentFont = False
        TabOrder = 2
        OnChange = combx_WardNmChange
      end
      object ed_DocNm: TEdit
        Left = 55
        Top = 38
        Width = 64
        Height = 20
        Color = 14729908
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
      end
      object bbt_DocSelect: TBitBtn
        Left = 120
        Top = 39
        Width = 24
        Height = 22
        Cursor = crHandPoint
        Hint = 'ÀÇ»çÁ¶È¸'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000013000000120000000100
          18000000000038040000CE0E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000
          7F7F000000BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F7F7F00BFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F7F7F00BFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000007F7F7F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000007F7F7FBFBFBF
          000000FFFFFF7F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF0000000000007F7F0000
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          000000BFBFBFFFFF00FFFFFFFFFFFFFFFFFFFFFF00000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFFF
          FF00FFFF00BFBFBF7F7F007F7F00FFFFFFFFFF000000007F7F7FBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFF00FFFF
          00FFFF00FFFF00BFBFBF7F7F00FFFFFFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFFFFFFFF00FFFF00
          FFFF00FFFF007F7F00FFFFFFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFFFFFFFF00FFFF00FFFFFFFF
          FF00BFBFBFFFFFFFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFFFFF00FFFFFFFFFF00FFFF00FFFF00FFFF
          00FFFF00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBF000000000000BFBFBFFFFF00FFFFFFFFFFFFFFFFFFFFFF00BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBF000000000000BFBFBFFFFF00FFFF00BFBFBFBFBFBF000000BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBF000000BFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
      end
      object rbt_Gubun1: TRadioButton
        Left = 148
        Top = 12
        Width = 58
        Height = 15
        Cursor = crHandPoint
        Caption = 'º´½Ç¼ø'
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TabStop = True
        OnClick = rbt_Gubun1Click
      end
      object rbt_Gubun3: TRadioButton
        Left = 148
        Top = 46
        Width = 66
        Height = 15
        Cursor = crHandPoint
        Caption = 'Áø·á°ú¼ø'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rbt_Gubun3Click
      end
      object rbt_Gubun2: TRadioButton
        Left = 148
        Top = 30
        Width = 66
        Height = 14
        Cursor = crHandPoint
        Caption = '¼º¸í¼ø'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rbt_Gubun2Click
      end
      object ed_DocCd: TEdit
        Left = 78
        Top = 39
        Width = 25
        Height = 18
        AutoSelect = False
        AutoSize = False
        ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
        TabOrder = 8
        Visible = False
      end
    end
    object pn_PatList: TPanel
      ParentBackground = False
      Left = 13
      Top = 92
      Width = 300
      Height = 305
      BevelInner = bvLowered
      TabOrder = 2
      object ugd_List: TUltraGrid
        DrawingStyle = gdsClassic
        Left = 2
        Top = 2
        Width = 295
        Height = 300
        Cursor = crHandPoint
        BorderStyle = bsNone
        Color = 16383999
        ColCount = 20
        DefaultRowHeight = 20
        FixedColor = 13882323
        FixedCols = 0
        RowCount = 2
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        GridLineWidth = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnClick = ugd_ListClick
        OnDrawCell = ugd_ListDrawCell
        FixedAlignment = taCenter
        FixedFontBold = False
        SelectedRowColor = 16641503
        SelectedRowFontColor = clNavy
        GridRowColor = 15724527
        Title = 'º´½Ç|µî·Ï¹øÈ£|¼º ¸í |Sex/Age|HD|POD|°ú|ÁÖÄ¡ÀÇ|DRG'
        Wrap = False
        ColWidths = (
          26
          50
          45
          46
          21
          24
          22
          38
          23
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
      end
      object StringGrid1: TStringGrid
        DrawingStyle = gdsClassic
        Left = 16
        Top = 440
        Width = 192
        Height = 120
        TabOrder = 0
        Visible = False
      end
    end
  end
  object pn_VS: TPanel
    ParentBackground = False
    Left = 29
    Top = 663
    Width = 590
    Height = 446
    TabOrder = 7
    Visible = False
    object Label193: TLabel
      Transparent = False
      Left = 3
      Top = 40
      Width = 586
      Height = 27
      AutoSize = False
      Color = 33023
      ParentColor = False
    end
    object sgd_VsValue: TStringGrid
      DrawingStyle = gdsClassic
      Left = 4
      Top = 42
      Width = 511
      Height = 23
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16777187
      ColCount = 10
      Ctl3D = False
      DefaultRowHeight = 22
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      ColWidths = (
        70
        54
        35
        54
        54
        50
        50
        40
        35
        59)
    end
    object Panel228: TPanel
      ParentBackground = False
      Left = 1
      Top = 1
      Width = 73
      Height = 39
      Caption = 'ÃøÁ¤½Ã°£'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel229: TPanel
      ParentBackground = False
      Left = 74
      Top = 1
      Width = 55
      Height = 21
      Caption = 'Ã¼¿Â'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel230: TPanel
      ParentBackground = False
      Left = 74
      Top = 22
      Width = 55
      Height = 18
      Caption = ' (¡É)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Panel231: TPanel
      ParentBackground = False
      Left = 129
      Top = 1
      Width = 36
      Height = 39
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label194: TLabel
        Transparent = False
        Left = 3
        Top = 9
        Width = 30
        Height = 24
        Alignment = taCenter
        Caption = 'ÃøÁ¤ °æ·Î'
        Font.Charset = JOHAB_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
    object Panel232: TPanel
      ParentBackground = False
      Left = 165
      Top = 1
      Width = 55
      Height = 21
      Caption = '¸Æ¹Ú'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Panel233: TPanel
      ParentBackground = False
      Left = 165
      Top = 22
      Width = 55
      Height = 18
      Caption = '(È¸/min)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel234: TPanel
      ParentBackground = False
      Left = 220
      Top = 22
      Width = 55
      Height = 18
      Caption = '(È¸/min)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel235: TPanel
      ParentBackground = False
      Left = 220
      Top = 1
      Width = 55
      Height = 21
      Caption = 'È£Èí'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Panel236: TPanel
      ParentBackground = False
      Left = 275
      Top = 1
      Width = 51
      Height = 21
      Caption = 'S.B.P'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object Panel237: TPanel
      ParentBackground = False
      Left = 275
      Top = 22
      Width = 51
      Height = 18
      Caption = '(mmHg)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Panel238: TPanel
      ParentBackground = False
      Left = 326
      Top = 22
      Width = 51
      Height = 18
      Caption = '(mmHg)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object Panel239: TPanel
      ParentBackground = False
      Left = 326
      Top = 1
      Width = 51
      Height = 21
      Caption = 'D.B.P'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Panel240: TPanel
      ParentBackground = False
      Left = 454
      Top = 22
      Width = 136
      Height = 18
      Alignment = taLeftJustify
      Caption = '  (»óÅÂ)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object Panel241: TPanel
      ParentBackground = False
      Left = 377
      Top = 22
      Width = 41
      Height = 18
      Caption = '(È¸)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object Panel242: TPanel
      ParentBackground = False
      Left = 418
      Top = 22
      Width = 36
      Height = 18
      Caption = '(È¸)'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object Panel243: TPanel
      ParentBackground = False
      Left = 377
      Top = 1
      Width = 41
      Height = 21
      Caption = 'Urine'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object Panel244: TPanel
      ParentBackground = False
      Left = 418
      Top = 1
      Width = 172
      Height = 21
      Caption = 'Stool'
      Color = 13882323
      Font.Charset = JOHAB_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object combx_Path2: TComboBox
      Left = 130
      Top = 41
      Width = 34
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 18
      Items.Strings = (
        '    '
        'O'
        'T'
        'R')
    end
    object bbt_PatVsIns: TBitBtn
      Left = 516
      Top = 42
      Width = 34
      Height = 23
      Caption = 'ÀÔ·Â'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object BitBtn1: TBitBtn
      Left = 550
      Top = 42
      Width = 34
      Height = 23
      Caption = '´Ý±â'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
  end
end
