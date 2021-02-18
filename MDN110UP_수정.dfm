object MDN110FP: TMDN110FP
  Left = 592
  Top = 193
  BorderStyle = bsSingle
  Caption = 'MDN110FP ÁßÈ¯ÀÚ½Ç Monitoring Ç×¸ñ'
  ClientHeight = 592
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = '±¼¸²Ã¼'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    ParentBackground = False
    Left = 284
    Top = 40
    Width = 509
    Height = 488
    TabOrder = 3
    object Bevel4: TBevel
      Left = 2
      Top = 60
      Width = 284
      Height = 427
    end
    object Bevel1: TBevel
      Left = 2
      Top = 1
      Width = 284
      Height = 59
    end
    object Label1: TLabel
      Transparent = False
      Left = 88
      Top = 34
      Width = 99
      Height = 13
      Caption = '¢Â Àû¿ë Ç×¸ñ ¢Â'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_SetTypeName: TLabel
      Transparent = False
      Left = 76
      Top = 16
      Width = 123
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'lb_SetTypeName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ugd_Monitoring: TUltraGrid
      DrawingStyle = gdsClassic
      Left = 4
      Top = 62
      Width = 280
      Height = 424
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 50
      DefaultColWidth = 50
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnDrawCell = ugd_MonitoringDrawCell
      OnKeyDown = ugd_MonitoringKeyDown
      FixedAlignment = taCenter
      FixedFontBold = False
      GridRowColor = 15724527
      Wrap = False
      ColWidths = (
        278
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50
        50)
    end
    object ed_Input: TEdit
      Left = 3
      Top = 166
      Width = 283
      Height = 21
      AutoSelect = False
      Color = 16773887
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeMode = imSAlpha
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
      MaxLength = 300
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnEnter = ed_InputEnter
      OnExit = ed_InputExit
      OnKeyDown = ed_InputKeyDown
      OnKeyPress = ed_InputKeyPress
    end
    object ugd_DayList: TUltraGrid
      DrawingStyle = gdsClassic
      Left = 45
      Top = 256
      Width = 148
      Height = 49
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 50
      DefaultColWidth = 100
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
      Visible = False
      OnDrawCell = ugd_MonitoringDrawCell
      OnKeyDown = ugd_MonitoringKeyDown
      FixedAlignment = taCenter
      FixedFontBold = False
      GridRowColor = 15724527
      Wrap = False
      ColWidths = (
        144
        34
        29
        28
        27
        29
        53
        49
        55
        37
        31
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100
        100)
    end
  end
  object stb_Message: TStatusBar
    Left = 0
    Top = 568
    Width = 572
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
  object pn_Monitor: TPanel
    ParentBackground = False
    Left = 0
    Top = 114
    Width = 283
    Height = 413
    TabOrder = 0
    object ugd_Monitor: TUltraGrid
      DrawingStyle = gdsClassic
      Left = 2
      Top = 32
      Width = 279
      Height = 379
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 15660283
      ColCount = 50
      DefaultRowHeight = 19
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      Options = [goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 0
      OnDblClick = ugd_MonitorDblClick
      OnDrawCell = ugd_MonitorDrawCell
      OnMouseDown = ugd_MonitorMouseDown
      OnMouseUp = ugd_MonitorMouseUp
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 15660283
      SelectedRowFontColor = clWindowText
      GridRowColor = 15660283
      MaxCol = 80
      ColWidths = (
        141
        43
        38
        33
        66
        81
        79
        75
        94
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
    object Panel3: TPanel
      ParentBackground = False
      Left = 0
      Top = 1
      Width = 282
      Height = 29
      TabOrder = 1
      object sbt_MonitorCopyAll: TSpeedButton
        Left = 191
        Top = 1
        Width = 56
        Height = 26
        Cursor = crHandPoint
        Hint = 'Copy All [Alt+A]'
        Anchors = [akRight, akBottom]
        Glyph.Data = {
          EA070000424DEA07000000000000360000002800000026000000110000000100
          180000000000B4070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000
          00000000000000C0C0C000000000000000000000000000000000000000000000
          0000000000000000000000000000000000C0C0C00000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFF000000C0C0C00000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C00000000000BF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000C0C0C00000C0C0
          C00000000000000000000000000000000000000000000000000000000000BF00
          00BF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000C0C0C00000C0C0C00000000000BF0000BF0000
          BF0000BF0000BF0000BF0000BF0000BF0000BF0000FF0000BF000000C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000
          00C0C0C00000C0C0C00000000000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000BF000000C0C0C0C0C0C0C0C0C0C0C0C000
          0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000C0C0C00000C0C0C0000000
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000BF000000C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFF00
          0000FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000C0C0C00000C0C0C00000000000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000C0C0C0
          0000C0C0C00000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFF000000C0C0C00000C0C0C000000000000000
          00000000000000000000000000000000000000000000FF0000FF000000C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFF
          FF000000000000C0C0C0000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C00000000000FF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C00000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000C0C0C00000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
          000000000000000000000000C0C0C0C0C0C00000000000000000000000000000
          00000000000000000000000000C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C00000}
        ParentShowHint = False
        ShowHint = True
        OnClick = sbt_MonitorCopyAllClick
      end
      object sbt_MonitorCopy: TSpeedButton
        Left = 247
        Top = 1
        Width = 32
        Height = 26
        Cursor = crHandPoint
        Hint = 'Copy [Alt+C]'
        Anchors = [akRight, akBottom]
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC000000C40E0000C40E00001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777777770777777700000007777
          7777700777777000000077777777701077777000000070000000001107777000
          0000701111111119107770000000709999999999910770000000709999999999
          9910700000007099999999999907700000007099999999999077700000007000
          0000009907777000000077777777709077777000000077777777700777777000
          0000777777777077777770000000777777777777777770000000777777777777
          777770000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = sbt_MonitorCopyClick
      end
      object Bevel5: TBevel
        Left = 6
        Top = 4
        Width = 63
        Height = 21
      end
      object Label2: TLabel
        Transparent = False
        Left = 7
        Top = 5
        Width = 61
        Height = 19
        AutoSize = False
        Caption = ' '
        Color = 13882323
        ParentColor = False
        Visible = False
      end
      object cbx_All: TCheckBox
        Left = 12
        Top = 7
        Width = 50
        Height = 16
        Caption = 'Àü Ã¼'
        Color = 13882323
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = cbx_AllClick
      end
    end
  end
  object pc_Monitor: TPageControl
    Left = 0
    Top = 40
    Width = 283
    Height = 75
    ActivePage = TabSheet2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '±¼¸²Ã¼'
    Font.Style = [fsBold]
    ParentFont = False
    TabHeight = 23
    TabOrder = 1
    TabWidth = 140
    OnChange = pc_MonitorChange
    object TabSheet1: TTabSheet
      Caption = 'ÀÏÀÚº° Àû¿ë³»¿ª'
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 275
        Height = 42
        Align = alClient
      end
      object bbt_FirstDate: TBitBtn
        Left = 52
        Top = 11
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = 'First'
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = bbt_FirstDateClick
        Glyph.Data = {
          2A010000424D2A010000000000007600000028000000110000000F0000000100
          040000000000B4000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007766677777776677700000007766
          6777777666777000000077666777776666777000000077666777766666777000
          0000776667776666667770000000776667766666667770000000776667766666
          6677700000007766677766666677700000007766677776666677700000007766
          6777776666777000000077666777777666777000000077666777777766777000
          0000777777777777777770000000}
      end
      object bbt_PrevDate: TBitBtn
        Left = 75
        Top = 11
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = 'Prev'
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = bbt_FirstDateClick
        Glyph.Data = {
          EE000000424DEE0000000000000076000000280000000E0000000F0000000100
          04000000000078000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7700777777777777770077777777667777007777777666777700777777666677
          7700777776666677770077776666667777007776666666777700777666666677
          7700777766666677770077777666667777007777776666777700777777766677
          770077777777667777007777777777777700}
      end
      object ed_PreOrdDate: TEdit
        Left = 98
        Top = 12
        Width = 86
        Height = 21
        Cursor = crHandPoint
        TabStop = False
        Anchors = [akLeft, akBottom]
        AutoSelect = False
        AutoSize = False
        Color = 15003384
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 12386304
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ImeName = 'ÇÑ±¹¾î(ÇÑ±Û)'
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '2001-02-03'
      end
      object bbt_NextDate: TBitBtn
        Left = 185
        Top = 11
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = 'Next'
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = bbt_FirstDateClick
        Glyph.Data = {
          EE000000424DEE0000000000000076000000280000000E0000000F0000000100
          04000000000078000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7700777777777777770077766777777777007776667777777700777666677777
          7700777666667777770077766666677777007776666666777700777666666677
          7700777666666777770077766666777777007776666777777700777666777777
          770077766777777777007777777777777700}
      end
      object bbt_LastDate: TBitBtn
        Left = 208
        Top = 11
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = 'Last'
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        OnClick = bbt_FirstDateClick
        Glyph.Data = {
          2A010000424D2A010000000000007600000028000000110000000F0000000100
          040000000000B4000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007766777777766677700000007766
          6777777666777000000077666677777666777000000077666667777666777000
          0000776666667776667770000000776666666776667770000000776666666776
          6677700000007766666677766677700000007766666777766677700000007766
          6677777666777000000077666777777666777000000077667777777666777000
          0000777777777777777770000000}
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'S E T'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 275
        Height = 42
        Align = alClient
      end
      object rbt_Moni: TRadioButton
        Left = 178
        Top = 22
        Width = 86
        Height = 17
        Caption = 'Monitor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = rbt_MoniClick
      end
      object rbt_Hemo: TRadioButton
        Left = 4
        Top = 4
        Width = 102
        Height = 17
        Caption = 'Hemodynamic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbt_MoniClick
      end
      object rbt_Set2: TRadioButton
        Left = 4
        Top = 22
        Width = 150
        Height = 17
        Caption = 'ÀÇ½Ä/½Å°æ°è,È£Èí±â'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rbt_MoniClick
      end
      object rbt_Set3: TRadioButton
        Left = 150
        Top = 5
        Width = 114
        Height = 17
        Caption = '¼·Ãë·®/¹è¼³·®'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '±¼¸²Ã¼'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = rbt_MoniClick
      end
    end
  end
  object Panel1: TPanel
    ParentBackground = False
    Left = 0
    Top = 527
    Width = 572
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 4
    object bbt_Add: TBitBtn
      Left = 378
      Top = 5
      Width = 96
      Height = 32
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = ' Àû ¿ë(&S)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = '±¼¸²'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbt_AddClick
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
    object bbt_Delete: TBitBtn
      Left = 282
      Top = 5
      Width = 96
      Height = 32
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = ' Ç×¸ñ»èÁ¦'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbt_DeleteClick
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
      Left = 474
      Top = 5
      Width = 95
      Height = 32
      Caption = ' Á¾ ·á(&A)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '±¼¸²'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
  end
  object Panel5: TPanel
    ParentBackground = False
    Left = 0
    Top = 0
    Width = 572
    Height = 40
    Align = alTop
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 5
    object dtp_RgtDate: TDateTimePicker
      Left = 77
      Top = 6
      Width = 110
      Height = 23
      CalAlignment = dtaLeft
      Date = 38280.595025544
      Time = 38280.595025544
      DateFormat = dfShort
      DateMode = dmComboBox
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ImeName = 'ÇÑ±¹¾î(ÇÑ±Û) (MS-IME98)'
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 0
      OnChange = dtp_RgtDateChange
    end
    object Panel31: TPanel
      ParentBackground = False
      Left = 6
      Top = 6
      Width = 70
      Height = 23
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Àû¿ëÀÏÀÚ'
      Color = 15458008
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pn_PatNo: TPanel
      ParentBackground = False
      Left = 187
      Top = 6
      Width = 76
      Height = 23
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object pn_SexAge: TPanel
      ParentBackground = False
      Left = 341
      Top = 6
      Width = 89
      Height = 23
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object pn_PatName: TPanel
      ParentBackground = False
      Left = 264
      Top = 6
      Width = 76
      Height = 23
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '±¼¸²Ã¼'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
end
