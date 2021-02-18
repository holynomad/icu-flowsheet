object MDN110FT: TMDN110FT
  Position = poDesigned
  Left = 404
  Top = 240
  BorderStyle = bsSingle
  Caption = '[MDN110FT] 중환자실 통합 기록지 - 간호사정'
  ClientHeight = 696
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    ParentBackground = False
    Left = 0
    Top = 0
    Width = 721
    Height = 36
    Align = alTop
    BevelInner = bvLowered
    Color = clBackground
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 7
      Width = 84
      Height = 21
      Caption = '간호사정'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = '견고딕'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object sbt_Previous: TSpeedButton
      Left = 544
      Top = 8
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        F6030000424DF603000000000000360000002800000014000000100000000100
        180000000000C0030000C40E0000C40E00000000000000000000EFE8EFEFE8EF
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1D1D1D1D1D1D1D1D1D1D1D1D1D1D
        1D1B1B1B1B1B1B1B1B1B1B1B1B1B1B1BEFE8EFEFE8EFEFE8EF1E1E1EDEDFDFF3
        F3F3F9F9FAFBFBFBFCFBFBFBFAFAFBFBFBFBFBFBFCFBFBFCFBFBFBFBFAFBFBFA
        FAFAFAF3F4F4E1E1E1BABABA1B1B1BEFE8EF1E1E1EDCDCDCFCFCFCFAFAFAFCFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBF8F8F8E1E1E1BFBFBE1B1B1B212121ECECECFBFBFBF8F8F8F8F8F8F8F8F8
        F7F7F6F6F6F6F6F6F7F6F6F6BE6200BE6200F6F6F6F6F7F6F6F7F7F8F8F8FAF9
        F9EDEDEDD3D3D31B1B1B212121EEEEEEF6F6F6F5F5F5F5F5F5F5F5F5F4F5F5F4
        F5F5F4F4F5BE6200BE6200BE6200F4F5F5F4F5F5F5F4F5F5F4F5F5F5F4F4F5F5
        D5D5D51B1B1B212121ECECECF4F4F4F1F2F1F1F1F1F1F2F1F2F1F2F0F0F0BE62
        00BE6200BE6200BE6200F0F0F0F0F0F0EFF0F0F0F0F0F0F0F0F0F0F0D5D5D51C
        1C1C2B2B2BE9E9E9F0F0F0ECEDECECEDECEDECECECECEDBE6200BE6200BE6200
        BE6200BE6200EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEBEAD5D5D51C1C1C3C3C
        3CE6E7E7ECEDECE7E8E7E7E8E8E7E7E8BE6200BE6200BE6200BE6200BE6200BE
        6200E4E5E5E4E5E4E4E5E5E4E4E5E4E5E5E4E4E4D3D3D31C1C1C4E4E4ED9D9D9
        DEDEDFE2E3E2E2E2E2E2E2E3BE6200BE6200BE6200BE6200BE6200BE6200DEDF
        DFDFDFDFDEDEDFDFDFDFDEDFDFDEDFDFC8C8C81D1D1D4E4E4ED6D6D6DCDCDCDD
        DEDDDDDEDEDDDDDEDDDEDDBE6200BE6200BE6200BE6200BE6200D9DBDBD9DBDB
        D9DADAD9DADADADADAD9DADAC6C6C61E1E1E4E4E4ED1D0D0D9D9D9D9D9D9D6D7
        D7D6D7D7D6D7D7D6D7D7BE6200BE6200BE6200BE6200D6D7D7D6D7D7D6D7D7D6
        D7D7D6D7D7D6D7D7C3C3C31D1D1D4E4E4ECDCECDD6D6D6D6D7D7D6D7D7D6D7D7
        D6D7D7D6D7D7D6D7D7BE6200BE6200BE6200D6D7D7D6D7D7D6D7D7D6D7D7D6D7
        D7D6D7D7C3C3C31E1E1E4E4E4EC6C6C6D7D7D7E1E1E2E7E7E7E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6BE6200BE6200E6E6E6E6E6E6E6E6E6E6E6E6DEDEDECDCDCD
        C4C4C41E1E1E4E4E4EC1C1C0D1D0D0E3E3E3EDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEAEAE9DCDCDCC6C6C6AFAFAF2B
        2B2BEFE8EF4E4E4EBFBFBECDCDCDE0DFDFE7E5E7E7E8E7E7E8E7E7E7E7E8E8E8
        E7E7E7E7E8E8E8E8E8E7E7E7E5E5E5D9D9D9C5C6C5AFAFAF363636EFE8EFEFE8
        EFEFE8EF4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
        4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EEFE8EFEFE8EF}
      OnClick = sbt_PreviousClick
    end
    object sbt_Next: TSpeedButton
      Left = 691
      Top = 8
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        F6030000424DF603000000000000360000002800000014000000100000000100
        180000000000C0030000C40E0000C40E00000000000000000000EFE8EFEFE8EF
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1D1D1D1D1D1D1D1D1D1D1D1D1D1D
        1D1B1B1B1B1B1B1B1B1B1B1B1B1B1B1BEFE8EFEFE8EFEFE8EF1E1E1EDEDFDFF3
        F3F3F9F9FAFBFBFBFCFBFBFBFAFAFBFBFBFBFBFBFCFBFBFCFBFBFBFBFAFBFBFA
        FAFAFAF3F4F4E1E1E1BABABA1B1B1BEFE8EF1E1E1EDCDCDCFCFCFCFAFAFAFCFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBF8F8F8E1E1E1BFBFBE1B1B1B212121ECECECFBFBFBF8F7F8F8F8F8F8F8F8
        F7F7F6F6F6F6BE6200BE6200F7F6F6F7F6F7F6F6F6F6F7F6F6F7F7F8F8F8FAF9
        F9EDEDEDD3D3D31B1B1B212121EEEEEEF6F6F6F4F4F4F4F4F5F5F5F5F4F5F5F4
        F5F5BE6200BE6200BE6200F5F5F4F4F5F5F4F5F5F5F4F5F5F4F5F5F5F4F4F5F5
        D5D5D51B1B1B212121ECECECF4F4F4F0F0F0F0F0F0F0F0F0EFF0F0F0F0F0BE62
        00BE6200BE6200BE6200F0F0F0F0F0F0EFF0F0F0F0F0F0F0F0F0F0F0D5D5D51C
        1C1C2B2B2BE9E9E9F0F0F0EAEAEBEAEBEBEAEAEBEAEBEBEAEBEABE6200BE6200
        BE6200BE6200BE6200EAEAEAEAEAEAEAEAEAEAEAEAEAEBEAD5D5D51C1C1C3C3C
        3CE6E7E7ECEDECE4E4E5E4E4E5E4E5E5E4E5E4E4E5E4BE6200BE6200BE6200BE
        6200BE6200BE6200E4E5E5E4E4E5E4E5E5E4E4E4D3D3D31C1C1C4E4E4ED9D9D9
        DEDEDFDFDFDEDEDFDFDEDFDFDEDFDFDEDFDFBE6200BE6200BE6200BE6200BE62
        00BE6200DEDEDFDFDFDFDEDFDFDEDFDFC8C8C81D1D1D4E4E4ED6D6D6DCDCDCD9
        DBDAD9DADAD9DBDAD9DBDAD9DBDBBE6200BE6200BE6200BE6200BE6200D9DBDB
        D9DADAD9DADADADADAD9DADAC6C6C61E1E1E4E4E4ED1D0D0D9D9D9D6D7D7D6D7
        D7D6D7D7D6D7D7D6D7D7BE6200BE6200BE6200BE6200D6D7D7D6D7D7D6D7D7D6
        D7D7D6D7D7D6D7D7C3C3C31D1D1D4E4E4ECDCECDD6D6D6D6D7D7D6D7D7D6D7D7
        D6D7D7D6D7D7BE6200BE6200BE6200D6D7D7D6D7D7D6D7D7D6D7D7D6D7D7D6D7
        D7D6D7D7C3C3C31E1E1E4E4E4EC6C6C6D7D7D7E1E1E2E7E7E7E6E6E6E6E6E6E6
        E6E6BE6200BE6200E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6DEDEDECDCDCD
        C4C4C41E1E1E4E4E4EC1C1C0D1D0D0E3E3E3EDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEAEAE9DCDCDCC6C6C6AFAFAF2B
        2B2BEFE8EF4E4E4EBFBFBECDCDCDE0DFDFE7E5E7E7E8E7E7E8E7E7E7E7E8E8E8
        E7E7E7E7E8E8E8E8E8E7E7E7E5E5E5D9D9D9C5C6C5AFAFAF363636EFE8EFEFE8
        EFEFE8EF4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
        4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EEFE8EFEFE8EF}
      OnClick = sbt_NextClick
    end
    object Label20: TLabel
      Left = 460
      Top = 12
      Width = 76
      Height = 13
      Caption = '사정일자 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dtp_ActDate: TDateTimePicker
      Left = 572
      Top = 8
      Width = 113
      Height = 21
      CalAlignment = dtaLeft
      Date = 40547.8745006829
      Time = 40547.8745006829
      Color = 13171199
      DateFormat = dfShort
      DateMode = dmComboBox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ImeName = 'Microsoft Office IME 2007'
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 0
      OnCloseUp = dtp_ActDateCloseUp
    end
  end
  object Panel2: TPanel
    ParentBackground = False
    Left = 0
    Top = 640
    Width = 721
    Height = 37
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object bbt_Close: TBitBtn
      Left = 647
      Top = 4
      Width = 69
      Height = 28
      Cursor = crHandPoint
      Caption = '종료'
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
  object stb_Message: TStatusBar
    Left = 0
    Top = 677
    Width = 721
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end>
    SimplePanel = False
  end
  object asg_Header: TAdvStringGrid
    Look = glSoft
    EnableWheel = True
    ControlLook.NoDisabledButtonLook = True
    Left = 0
    Top = 89
    Width = 721
    Height = 45
    Cursor = crDefault
    Align = alTop
    Color = 15269864
    ColCount = 6
    Ctl3D = False
    DefaultRowHeight = 22
    DefaultDrawing = False
    FixedColor = clActiveBorder
    FixedCols = 3
    RowCount = 2
    FixedRows = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = '굴림체'
    Font.Style = [fsBold]
    GridLineWidth = 1
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
    OnGetEditMask = asg_HeaderGetEditMask
    GridLineColor = clSilver
    ActiveCellShow = False
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = clGray
    Bands.PrimaryColor = clInfoBk
    Bands.PrimaryLength = 1
    Bands.SecondaryColor = clWindow
    Bands.SecondaryLength = 1
    Bands.Print = False
    AutoNumAlign = False
    AutoSize = False
    VAlignment = vtaCenter
    EnhTextSize = False
    EnhRowColMove = False
    SizeWithForm = False
    Multilinecells = False
    OnGetAlignment = asg_HeaderGetAlignment
    DragDropSettings.OleAcceptFiles = True
    DragDropSettings.OleAcceptText = True
    SortSettings.AutoColumnMerge = False
    SortSettings.Column = 0
    SortSettings.Show = False
    SortSettings.IndexShow = False
    SortSettings.IndexColor = clYellow
    SortSettings.Full = True
    SortSettings.SingleColumn = False
    SortSettings.IgnoreBlanks = False
    SortSettings.BlankPos = blFirst
    SortSettings.AutoFormat = True
    SortSettings.Direction = sdAscending
    SortSettings.FixedCols = False
    SortSettings.NormalCellsOnly = False
    SortSettings.Row = 0
    FloatingFooter.Color = clBtnFace
    FloatingFooter.Column = 0
    FloatingFooter.FooterStyle = fsFixedLastRow
    FloatingFooter.Visible = False
    ControlLook.Color = clBlack
    ControlLook.CheckSize = 15
    ControlLook.RadioSize = 10
    ControlLook.ControlStyle = csClassic
    ControlLook.FlatButton = False
    EnableBlink = False
    EnableHTML = True
    EnableWheel = True
    Flat = True
    Look = glStandard
    HintColor = clInfoBk
    SelectionColor = 13823231
    SelectionTextColor = clNavy
    SelectionRectangle = False
    SelectionResizer = False
    SelectionRTFKeep = False
    HintShowCells = False
    HintShowLargeText = False
    HintShowSizing = False
    PrintSettings.FooterSize = 0
    PrintSettings.HeaderSize = 0
    PrintSettings.Time = ppNone
    PrintSettings.Date = ppNone
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.PageNr = ppNone
    PrintSettings.Title = ppNone
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.Borders = pbNoborder
    PrintSettings.BorderStyle = psSolid
    PrintSettings.Centered = False
    PrintSettings.RepeatFixedRows = False
    PrintSettings.RepeatFixedCols = False
    PrintSettings.LeftSize = 0
    PrintSettings.RightSize = 0
    PrintSettings.ColumnSpacing = 0
    PrintSettings.RowSpacing = 0
    PrintSettings.TitleSpacing = 0
    PrintSettings.Orientation = poPortrait
    PrintSettings.PageNumberOffset = 0
    PrintSettings.MaxPagesOffset = 0
    PrintSettings.FixedWidth = 0
    PrintSettings.FixedHeight = 0
    PrintSettings.UseFixedHeight = False
    PrintSettings.UseFixedWidth = False
    PrintSettings.FitToPage = fpNever
    PrintSettings.PageNumSep = '/'
    PrintSettings.NoAutoSize = False
    PrintSettings.NoAutoSizeRow = False
    PrintSettings.PrintGraphics = False
    HTMLSettings.Width = 100
    HTMLSettings.XHTML = False
    Navigation.AdvanceDirection = adLeftRight
    Navigation.InsertPosition = pInsertBefore
    Navigation.HomeEndKey = heFirstLastColumn
    Navigation.TabToNextAtEnd = False
    Navigation.TabAdvanceDirection = adLeftRight
    ColumnSize.Section = '111'
    ColumnSize.Stretch = True
    ColumnSize.StretchColumn = 5
    ColumnSize.SynchWithGrid = True
    ColumnSize.Location = clRegistry
    CellNode.Color = clSilver
    CellNode.NodeColor = clBlack
    CellNode.ShowTree = False
    MaxEditLength = 0
    IntelliPan = ipVertical
    URLColor = clBlue
    URLShow = False
    URLFull = False
    URLEdit = False
    ScrollType = ssNormal
    ScrollColor = clNone
    ScrollWidth = 17
    ScrollSynch = False
    ScrollProportional = False
    ScrollHints = shNone
    OemConvert = False
    FixedFooters = 0
    FixedRightCols = 0
    FixedColWidth = 80
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -12
    FixedFont.Name = '굴림체'
    FixedFont.Style = [fsBold]
    FixedAsButtons = False
    FloatFormat = '%.2f'
    IntegralHeight = False
    WordWrap = False
    ColumnHeaders.Strings = (
      '대분류'
      '중분류'
      '소분류'
      'D : OOO'
      'E : OOO'
      'N : OOO')
    Lookup = False
    LookupCaseSensitive = False
    LookupHistory = False
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
    ColWidths = (
      80
      120
      80
      145
      145
      148)
  end
  object asg_Data: TAdvStringGrid
    Look = glSoft
    EnableWheel = True
    ControlLook.NoDisabledButtonLook = True
    Left = 0
    Top = 134
    Width = 721
    Height = 506
    Cursor = crDefault
    Align = alClient
    ColCount = 6
    Ctl3D = False
    DefaultRowHeight = 22
    DefaultDrawing = False
    FixedColor = 15132364
    FixedCols = 3
    RowCount = 20
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = '굴림체'
    Font.Style = []
    GridLineWidth = 1
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    GridLineColor = clSilver
    ActiveCellShow = False
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = clGray
    Bands.PrimaryColor = clInfoBk
    Bands.PrimaryLength = 1
    Bands.SecondaryColor = clWindow
    Bands.SecondaryLength = 1
    Bands.Print = False
    AutoNumAlign = False
    AutoSize = False
    VAlignment = vtaCenter
    EnhTextSize = False
    EnhRowColMove = False
    SizeWithForm = False
    Multilinecells = False
    OnGetAlignment = asg_DataGetAlignment
    OnCanEditCell = asg_DataCanEditCell
    OnGetEditorType = asg_DataGetEditorType
    DragDropSettings.OleAcceptFiles = True
    DragDropSettings.OleAcceptText = True
    SortSettings.AutoColumnMerge = False
    SortSettings.Column = 0
    SortSettings.Show = False
    SortSettings.IndexShow = False
    SortSettings.IndexColor = clYellow
    SortSettings.Full = True
    SortSettings.SingleColumn = False
    SortSettings.IgnoreBlanks = False
    SortSettings.BlankPos = blFirst
    SortSettings.AutoFormat = True
    SortSettings.Direction = sdAscending
    SortSettings.FixedCols = False
    SortSettings.NormalCellsOnly = False
    SortSettings.Row = 0
    FloatingFooter.Color = clBtnFace
    FloatingFooter.Column = 0
    FloatingFooter.FooterStyle = fsFixedLastRow
    FloatingFooter.Visible = False
    ControlLook.Color = clBlack
    ControlLook.CheckSize = 15
    ControlLook.RadioSize = 10
    ControlLook.ControlStyle = csClassic
    ControlLook.FlatButton = False
    EnableBlink = False
    EnableHTML = True
    EnableWheel = False
    Flat = True
    Look = glStandard
    HintColor = clInfoBk
    SelectionColor = 13823231
    SelectionTextColor = clNavy
    SelectionRectangle = False
    SelectionResizer = False
    SelectionRTFKeep = False
    HintShowCells = False
    HintShowLargeText = False
    HintShowSizing = False
    PrintSettings.FooterSize = 0
    PrintSettings.HeaderSize = 0
    PrintSettings.Time = ppNone
    PrintSettings.Date = ppNone
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.PageNr = ppNone
    PrintSettings.Title = ppNone
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.Borders = pbNoborder
    PrintSettings.BorderStyle = psSolid
    PrintSettings.Centered = False
    PrintSettings.RepeatFixedRows = False
    PrintSettings.RepeatFixedCols = False
    PrintSettings.LeftSize = 0
    PrintSettings.RightSize = 0
    PrintSettings.ColumnSpacing = 0
    PrintSettings.RowSpacing = 0
    PrintSettings.TitleSpacing = 0
    PrintSettings.Orientation = poPortrait
    PrintSettings.PageNumberOffset = 0
    PrintSettings.MaxPagesOffset = 0
    PrintSettings.FixedWidth = 0
    PrintSettings.FixedHeight = 0
    PrintSettings.UseFixedHeight = False
    PrintSettings.UseFixedWidth = False
    PrintSettings.FitToPage = fpNever
    PrintSettings.PageNumSep = '/'
    PrintSettings.NoAutoSize = False
    PrintSettings.NoAutoSizeRow = False
    PrintSettings.PrintGraphics = False
    HTMLSettings.Width = 100
    HTMLSettings.XHTML = False
    Navigation.AdvanceDirection = adLeftRight
    Navigation.InsertPosition = pInsertBefore
    Navigation.HomeEndKey = heFirstLastColumn
    Navigation.TabToNextAtEnd = False
    Navigation.TabAdvanceDirection = adLeftRight
    ColumnSize.Section = '111'
    ColumnSize.Stretch = True
    ColumnSize.StretchColumn = 5
    ColumnSize.SynchWithGrid = True
    ColumnSize.Location = clRegistry
    CellNode.Color = clSilver
    CellNode.NodeColor = clBlack
    CellNode.ShowTree = False
    MaxEditLength = 0
    IntelliPan = ipVertical
    URLColor = clBlue
    URLShow = False
    URLFull = False
    URLEdit = False
    ScrollType = ssNormal
    ScrollColor = clNone
    ScrollWidth = 17
    ScrollSynch = False
    ScrollProportional = False
    ScrollHints = shNone
    OemConvert = False
    FixedFooters = 0
    FixedRightCols = 0
    FixedColWidth = 80
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -12
    FixedFont.Name = '굴림체'
    FixedFont.Style = []
    FixedAsButtons = False
    FloatFormat = '%.2f'
    IntegralHeight = False
    WordWrap = False
    Lookup = False
    LookupCaseSensitive = False
    LookupHistory = False
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
    ColWidths = (
      80
      120
      80
      145
      145
      148)
    RowHeights = (
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22)
  end
  object Panel3: TPanel
    ParentBackground = False
    Left = 0
    Top = 36
    Width = 721
    Height = 53
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 5
    object Label2: TLabel
      Transparent = False
      Left = 8
      Top = 9
      Width = 12
      Height = 12
      Caption = '▣'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Transparent = False
      Left = 24
      Top = 9
      Width = 66
      Height = 12
      Caption = '등록번호 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Transparent = False
      Left = 96
      Top = 9
      Width = 56
      Height = 12
      Caption = '01234567'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Transparent = False
      Left = 192
      Top = 9
      Width = 53
      Height = 12
      Caption = '환자명 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Transparent = False
      Left = 248
      Top = 9
      Width = 39
      Height = 12
      Caption = '홍길동'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Transparent = False
      Left = 176
      Top = 9
      Width = 12
      Height = 12
      Caption = '▣'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Transparent = False
      Left = 320
      Top = 9
      Width = 12
      Height = 12
      Caption = '▣'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Transparent = False
      Left = 336
      Top = 9
      Width = 73
      Height = 12
      Caption = '성별/나이 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Transparent = False
      Left = 416
      Top = 9
      Width = 41
      Height = 12
      Caption = 'F/23세'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Transparent = False
      Left = 480
      Top = 9
      Width = 12
      Height = 12
      Caption = '▣'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Transparent = False
      Left = 496
      Top = 9
      Width = 53
      Height = 12
      Caption = '진료과 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Transparent = False
      Left = 552
      Top = 9
      Width = 65
      Height = 12
      Caption = '소화기내과'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Transparent = False
      Left = 8
      Top = 30
      Width = 12
      Height = 12
      Caption = '▣'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Transparent = False
      Left = 24
      Top = 30
      Width = 112
      Height = 12
      Caption = '담당교수/주치의 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Transparent = False
      Left = 144
      Top = 30
      Width = 56
      Height = 12
      Caption = '01234567'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Transparent = False
      Left = 216
      Top = 30
      Width = 12
      Height = 12
      Caption = '▣'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Transparent = False
      Left = 232
      Top = 30
      Width = 53
      Height = 12
      Caption = '진단명 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Transparent = False
      Left = 288
      Top = 30
      Width = 119
      Height = 12
      Caption = 'abcd efg hijk lmn'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object AdvPanel1: TAdvPanel
    ParentFont = False
    Left = 328
    Top = 224
    Width = 273
    Height = 281
    TabOrder = 6
    UseDockManager = True
    AnchorHint = False
    AutoSize.Enabled = False
    AutoSize.Height = True
    AutoSize.Width = True
    AutoHideChildren = True
    BackgroundPosition = bpTopLeft
    BorderColor = clBlack
    BorderShadow = False
    Buffered = True
    CanMove = True
    CanSize = False
    Caption.ButtonPosition = cbpRight
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseColor = clBtnFace
    Caption.CloseButton = True
    Caption.CloseButtonColor = clWhite
    Caption.Flat = False
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.Height = 25
    Caption.Indent = 5
    Caption.MinMaxButton = True
    Caption.MinMaxButtonColor = clWhite
    Caption.ShadeLight = 200
    Caption.ShadeGrain = 32
    Caption.ShadeType = stNormal
    Caption.Shape = csRectangle
    Caption.Text = 'Log'
    Caption.TopIndent = 2
    Caption.Visible = True
    Collaps = False
    CollapsColor = clGray
    CollapsDelay = 20
    CollapsSteps = 0
    ColorTo = clNone
    FixedTop = False
    FixedLeft = False
    FixedHeight = False
    FixedWidth = False
    FreeOnClose = False
    Hover = False
    HoverColor = clNone
    HoverFontColor = clNone
    Indent = 0
    Position.Save = False
    Position.Location = clRegistry
    ShadowColor = clGray
    ShadowOffset = 2
    ShowMoveCursor = False
    TextVAlign = tvaTop
    TopIndent = 0
    URLColor = clBlue
    FullHeight = 0
    object Memo1: TMemo
      Left = 8
      Top = 32
      Width = 257
      Height = 241
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
  end
  object cds_ItemValues: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cds_ItemValuesIndex1'
        Fields = 'setcode;itemcode'
      end>
    Params = <>
    StoreDefs = True
    Left = 616
    Top = 591
    object cds_ItemValuessetcode: TStringField
      FieldName = 'setcode'
      Size = 10
    end
    object cds_ItemValuesitemcode: TStringField
      FieldName = 'itemcode'
      Size = 4
    end
    object cds_ItemValuesvaluecd: TStringField
      FieldName = 'valuecd'
      Size = 3
    end
    object cds_ItemValuesvaluenm: TStringField
      FieldName = 'valuenm'
      Size = 50
    end
    object cds_ItemValuesdispseq: TStringField
      FieldName = 'dispseq'
      Size = 2
    end
  end
end
