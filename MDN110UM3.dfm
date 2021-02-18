object MDN110FM3: TMDN110FM3
  Position = poDesigned
  Left = 438
  Top = 100
  BorderStyle = bsSingle
  Caption = 'MDN110FM3 - 중환자실 환자 통합관리'
  ClientHeight = 639
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = '굴림체'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    ParentBackground = False
    Left = 0
    Top = 0
    Width = 426
    Height = 63
    Align = alTop
    Color = 14668234
    TabOrder = 0
    object Label18: TLabel
      Transparent = False
      Left = 5
      Top = 22
      Width = 46
      Height = 13
      Caption = '병  동'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbt_Refresh: TSpeedButton
      Left = 230
      Top = 4
      Width = 67
      Height = 19
      Cursor = crHandPoint
      Caption = 'Refresh'
      Flat = True
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsUnderline]
      Layout = blGlyphTop
      ParentFont = False
    end
    object Label1: TLabel
      Transparent = False
      Left = 5
      Top = 42
      Width = 45
      Height = 13
      Caption = '주치의'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 151
      Top = 4
      Width = 75
      Height = 56
    end
    object sbt_PtInfo: TSpeedButton
      Left = 337
      Top = 4
      Width = 84
      Height = 26
      Cursor = crHandPoint
      Caption = '간호정보'
      Flat = True
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
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
      Left = 337
      Top = 34
      Width = 84
      Height = 26
      Cursor = crHandPoint
      Caption = '간호기록'
      Flat = True
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
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
    object rbt_Gubun1: TRadioButton
      Left = 156
      Top = 8
      Width = 58
      Height = 15
      Cursor = crHandPoint
      Caption = '병실순'
      Checked = True
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
    object rbt_Gubun2: TRadioButton
      Left = 156
      Top = 27
      Width = 68
      Height = 14
      Cursor = crHandPoint
      Caption = '성명순'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object rbt_Gubun3: TRadioButton
      Left = 156
      Top = 44
      Width = 68
      Height = 15
      Cursor = crHandPoint
      Caption = '진료과순'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ed_DocNm: TEdit
      Left = 53
      Top = 39
      Width = 67
      Height = 20
      Color = 14729908
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = '한국어(한글)'
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
    end
    object ed_DocCd: TEdit
      Left = 84
      Top = 40
      Width = 25
      Height = 18
      AutoSelect = False
      AutoSize = False
      ImeName = '한국어(한글)'
      TabOrder = 6
      Visible = False
    end
    object combx_WardNm: TComboBox
      Left = 53
      Top = 18
      Width = 93
      Height = 20
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 14729908
      DropDownCount = 40
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ImeName = '한국어(한글)'
      ItemHeight = 12
      ParentFont = False
      TabOrder = 0
    end
    object combx_WardCd: TComboBox
      Left = 83
      Top = 17
      Width = 38
      Height = 21
      Style = csDropDownList
      ImeName = '한국어(한글)'
      ItemHeight = 13
      TabOrder = 5
      Visible = False
    end
    object bbt_DocSelect: TBitBtn
      Left = 121
      Top = 37
      Width = 24
      Height = 22
      Cursor = crHandPoint
      Hint = '의사조회'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
    object cbx_NowPos: TCheckBox
      Left = 2
      Top = 4
      Width = 64
      Height = 13
      Cursor = crHandPoint
      TabStop = False
      Alignment = taLeftJustify
      Caption = '(현위치)'
      Checked = True
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
  end
  object pn_PatList: TPanel
    ParentBackground = False
    Left = 0
    Top = 63
    Width = 333
    Height = 520
    BevelInner = bvLowered
    TabOrder = 1
    object ugd_List: TUltraGrid
      DrawingStyle = gdsClassic
      Left = 2
      Top = 2
      Width = 328
      Height = 515
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 10
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      Title = '병실|등록번호|성명|Sex/Age|HD|POD|과|주치의'
      Wrap = False
      ColWidths = (
        34
        53
        47
        50
        28
        30
        22
        64
        64
        64)
    end
  end
  object Panel1: TPanel
    ParentBackground = False
    Left = 333
    Top = 63
    Width = 93
    Height = 520
    BevelInner = bvLowered
    TabOrder = 2
    object ugd_OrdDate: TUltraGrid
      DrawingStyle = gdsClassic
      Left = 2
      Top = 2
      Width = 88
      Height = 515
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 15463162
      ColCount = 1
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15463162
      Title = '재원일자'
      Wrap = False
      ColWidths = (
        87)
    end
  end
  object stb_Message: TStatusBar
    Left = 0
    Top = 615
    Width = 426
    Height = 24
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '굴림'
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
  object Panel3: TPanel
    ParentBackground = False
    Left = 0
    Top = 583
    Width = 426
    Height = 32
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 4
    object bbt_Close: TBitBtn
      Left = 320
      Top = 2
      Width = 102
      Height = 28
      Caption = ' 종 료(&A)'
      TabOrder = 0
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
end
