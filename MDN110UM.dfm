object MDN110FM: TMDN110FM
  Left = 35
  Top = 200
  Caption = '[MDN110FM] ICU '#53685#54633' '#44036#54840#44592#47197#51648
  ClientHeight = 986
  ClientWidth = 1555
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_ICU: TPanel
    Left = 0
    Top = 0
    Width = 1555
    Height = 963
    Align = alClient
    AutoSize = True
    ParentBackground = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    DesignSize = (
      1555
      963)
    object pn_List1: TPanel
      Left = 1
      Top = 52
      Width = 1560
      Height = 916
      Anchors = [akLeft]
      BevelInner = bvLowered
      ParentBackground = False
      TabOrder = 0
      object asg_IcuMon: TAdvStringGrid
        Left = 2
        Top = 2
        Width = 1556
        Height = 912
        Cursor = crDefault
        Align = alClient
        Color = clWhite
        ColCount = 26
        Ctl3D = False
        DefaultColWidth = 58
        DefaultRowHeight = 20
        DrawingStyle = gdsClassic
        FixedColor = 8763768
        FixedCols = 2
        RowCount = 2
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = Popup_Act
        ScrollBars = ssBoth
        ShowHint = False
        TabOrder = 0
        OnDrawCell = asg_IcuMonDrawCell
        OnExit = asg_IcuMonExit
        OnGetEditMask = asg_IcuMonGetEditMask
        OnKeyPress = asg_IcuMonKeyPress
        OnMouseMove = asg_IcuMonMouseMove
        OnSelectCell = asg_IcuMonSelectCell
        HoverRowCells = [hcNormal, hcSelected]
        OnGetCellColor = asg_IcuMonGetCellColor
        OnGetAlignment = asg_IcuMonGetAlignment
        OnCellChanging = asg_IcuMonCellChanging
        OnClickCell = asg_IcuMonClickCell
        OnGetEditorType = asg_IcuMonGetEditorType
        OnEditingDone = asg_IcuMonEditingDone
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        Bands.SecondaryColor = 12249854
        CellNode.ShowTree = False
        ColumnHeaders.Strings = (
          '')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.ControlStyle = csClassic
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        ControlLook.NoDisabledButtonLook = True
        EnhRowColMove = False
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Larger than'
          'Smaller than'
          'Clear')
        FixedColWidth = 85
        FixedRowHeight = 20
        FixedFont.Charset = HANGEUL_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = #44404#47548#52404
        FixedFont.Style = []
        Flat = True
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glStandard
        MouseActions.WheelIncrement = 1
        MouseActions.WheelAction = waMoveSelection
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
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
        PrintSettings.Centered = False
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 16
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SelectionColor = 8641535
        SelectionTextColor = clNavy
        SizeWithForm = True
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Column = 0
        VAlignment = vtaCenter
        Version = '7.8.6.0'
        ColWidths = (
          85
          85
          54
          54
          54
          54
          52
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          54
          50)
        object pn_Line2: TPanel
          Left = -527
          Top = 39
          Width = 2066
          Height = 2
          BevelOuter = bvNone
          Color = clBlue
          ParentBackground = False
          TabOrder = 2
        end
        object apn_InsActing: TAdvPanel
          Left = 703
          Top = 604
          Width = 314
          Height = 118
          BevelInner = bvLowered
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          UseDockManager = True
          Visible = False
          Version = '2.4.1.0'
          CanMove = True
          Caption.Color = clGreen
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = [fsBold]
          Caption.Height = 28
          Caption.Indent = 7
          Caption.ShadeType = stHShade
          Caption.Text = 'ICU '#49688#54665#50696#51221' '#46321#47197'<B></B>'
          Caption.TopIndent = 6
          Caption.Visible = True
          DoubleBuffered = True
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          Text = ''
          FullHeight = 0
          object Shape2: TShape
            Left = 8
            Top = 62
            Width = 65
            Height = 22
            Brush.Color = 13166834
            Pen.Color = clGray
          end
          object Label12: TLabel
            Left = 15
            Top = 67
            Width = 52
            Height = 12
            Caption = #53945#44592#49324#54637
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Shape1: TShape
            Left = 8
            Top = 36
            Width = 65
            Height = 22
            Brush.Color = 13166834
            Pen.Color = clGray
          end
          object Label15: TLabel
            Left = 15
            Top = 41
            Width = 52
            Height = 12
            Caption = #54637#47785#49440#53469
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Panel2: TPanel
            Left = 2
            Top = 87
            Width = 310
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            ParentBackground = False
            TabOrder = 0
            object bbt_InsActing: TBitBtn
              Left = 186
              Top = 3
              Width = 60
              Height = 25
              Hint = #54644#45817' '#49884#44036#45824' '#49688#54665#50696#51221' '#54637#47785#46321#47197'('#49353#54364#44592')'
              Caption = #46321#47197
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Glyph.Data = {
                E6040000424DE604000000000000360000002800000014000000140000000100
                180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00480000420000440000
                4900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005D0000FFFF1DBA2F005D00FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF004800004000005D003ED5501BB532005D00004400004900
                FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
                5DFFFFFF005D0000FFFF11A1030EA20E0EA6180FAA1B11AE17005D00FFFFFFFF
                FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFF
                005D0000FFFF00FFFF00FFFF1BAF2823BA2700FFFF005D00FFFFFFFFFFFFFFFF
                FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF005D0000
                5D00005D0000FFFF1EAD1C005D00005D00005D00FFFFFFFFFFFFFFFFFFFFFFFF
                0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FF96EDFFFFFFFFFFFFFF005D
                0000FFFF00FFFF005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060932B
                D6FF00CBFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFFFFFFFF005D00005D00
                005D00005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
                FF00C9FF00C9FF00C9FF00CAFF00CCFF00CCFF96EAFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
                FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
                689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
                CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
                008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
                B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
                95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbt_InsActingClick
            end
            object bbt_ActExit: TBitBtn
              Left = 246
              Top = 3
              Width = 60
              Height = 25
              Hint = #49688#54665#50696#51221' '#45803#44592
              Caption = #45803#44592
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Glyph.Data = {
                22050000424D2205000000000000360000002800000014000000150000000100
                180000000000EC04000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093000093FFFFFFFFFFFF00
                0093000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000930029FF0033FF0000930000930033FF0029
                FF000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0029CAFFCCFF0029FF0033FF0033FF0029FFFFCCFF0029CA
                FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
                5D96AEBCFFFFFF0029CA0C4CFF0C4CFF0C4CFF0C4CFF0029CAFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFF96FFFF
                FFFFFF000093146CFF146CFF146CFF146CFF000093FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF00009320
                83FF2083FFFFCCFFFFCCFF2083FF2083FF000093FFFFFFFFFFFFFFFFFFFFFFFF
                0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FFFFFFFF0029CAFFCCFFFFCC
                FF0029CA0029CAFFCCFFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0060932B
                D6FF00CBFF00CCFF00CCFF00CCFF00CCFF96EAFFFEFEFF0029CA0029CAFFFFFF
                FFFFFF0029CA0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
                FF00C9FF00C9FF00C9FF00CAFF00CCFF96EAFFFFFFFFFFFFFF96EAFF96ECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
                FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
                689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
                CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
                008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
                B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
                95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = bbt_ActExitClick
            end
          end
          object ed_ActRemark: TEdit
            Left = 75
            Top = 62
            Width = 235
            Height = 22
            AutoSelect = False
            AutoSize = False
            Color = 16056319
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ImeName = #54620#44397#50612'('#54620#44544')'
            MaxLength = 30
            ParentFont = False
            TabOrder = 1
          end
          object combx_ActList: TComboBox
            Left = 75
            Top = 37
            Width = 236
            Height = 21
            Cursor = crHandPoint
            Style = csDropDownList
            Color = clWhite
            DropDownCount = 20
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ImeName = #54620#44397#50612'('#54620#44544')'
            MaxLength = 30
            ParentFont = False
            TabOrder = 2
            Items.Strings = (
              ''
              #53945#44592#49324#54637#51077#47141
              'B/S '#52769#51221
              '')
          end
        end
        object apn_Bst: TAdvPanel
          Left = 1023
          Top = 604
          Width = 314
          Height = 199
          BevelInner = bvLowered
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          UseDockManager = True
          Visible = False
          Version = '2.4.1.0'
          CanMove = True
          Caption.Color = clGreen
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = [fsBold]
          Caption.Height = 28
          Caption.Indent = 7
          Caption.ShadeType = stHShade
          Caption.Text = 'B/S '#52769#51221#45236#50669' '#51312#54924'<B></B>'
          Caption.TopIndent = 6
          Caption.Visible = True
          DoubleBuffered = True
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          Text = ''
          FullHeight = 0
          object Panel3: TPanel
            Left = 2
            Top = 168
            Width = 310
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            ParentBackground = False
            TabOrder = 0
            object lb_BsStatus: TLabel
              Left = 5
              Top = 9
              Width = 198
              Height = 12
              Caption = #54644#45817#51068#51088#51032' B/S'#45236#50669#51060' '#50630#49845#45768#45796'.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlCenter
            end
            object bbt_BstClose: TBitBtn
              Left = 246
              Top = 3
              Width = 60
              Height = 25
              Hint = 'B/S '#51312#54924' '#45803#44592
              Caption = #45803#44592
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Glyph.Data = {
                22050000424D2205000000000000360000002800000014000000150000000100
                180000000000EC04000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093000093FFFFFFFFFFFF00
                0093000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000930029FF0033FF0000930000930033FF0029
                FF000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0029CAFFCCFF0029FF0033FF0033FF0029FFFFCCFF0029CA
                FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
                5D96AEBCFFFFFF0029CA0C4CFF0C4CFF0C4CFF0C4CFF0029CAFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFF96FFFF
                FFFFFF000093146CFF146CFF146CFF146CFF000093FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF00009320
                83FF2083FFFFCCFFFFCCFF2083FF2083FF000093FFFFFFFFFFFFFFFFFFFFFFFF
                0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FFFFFFFF0029CAFFCCFFFFCC
                FF0029CA0029CAFFCCFFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0060932B
                D6FF00CBFF00CCFF00CCFF00CCFF00CCFF96EAFFFEFEFF0029CA0029CAFFFFFF
                FFFFFF0029CA0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
                FF00C9FF00C9FF00C9FF00CAFF00CCFF96EAFFFFFFFFFFFFFF96EAFF96ECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
                FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
                689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
                CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
                008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
                B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
                95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbt_BstCloseClick
            end
          end
          object ugd_BsData: TUltraGrid
            Left = 2
            Top = 26
            Width = 311
            Height = 142
            Cursor = crHandPoint
            BorderStyle = bsNone
            Color = 15857660
            DefaultRowHeight = 20
            DrawingStyle = gdsClassic
            FixedColor = 13882323
            FixedCols = 0
            RowCount = 2
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            GridLineWidth = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = False
            TabOrder = 1
            OnDblClick = ugd_BsDataDblClick
            OnDrawCell = ugd_BsDataDrawCell
            FixedAlignment = taCenter
            FixedFontBold = False
            GridRowColor = 14740472
            Title = #52769#51221#51068#49884'|'#52769#51221#52824'|'#51064#49808#47536' '#48143' '#44221#44396#54792#45817#44053#54616#51228
            ColWidths = (
              106
              40
              167
              64
              64)
          end
        end
        object apn_IoChk: TAdvPanel
          Left = 1023
          Top = 675
          Width = 315
          Height = 199
          BevelInner = bvLowered
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          UseDockManager = True
          Visible = False
          Version = '2.4.1.0'
          CanMove = True
          Caption.Color = clMaroon
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = [fsBold]
          Caption.Height = 28
          Caption.Indent = 7
          Caption.ShadeType = stHShade
          Caption.Text = 'I/O '#52769#51221#45236#50669' '#51312#54924'<B></B>'
          Caption.TopIndent = 6
          Caption.Visible = True
          DoubleBuffered = True
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          Text = ''
          FullHeight = 0
          object Panel4: TPanel
            Left = 2
            Top = 168
            Width = 311
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            ParentBackground = False
            TabOrder = 0
            object lb_IoStatus: TLabel
              Left = 5
              Top = 9
              Width = 198
              Height = 12
              Caption = #54644#45817#51068#51088#51032' I/O'#45236#50669#51060' '#50630#49845#45768#45796'.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlCenter
            end
            object bbt_IoClose: TBitBtn
              Left = 246
              Top = 3
              Width = 60
              Height = 25
              Hint = 'I/O '#51312#54924' '#45803#44592
              Caption = #45803#44592
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #44404#47548#52404
              Font.Style = []
              Glyph.Data = {
                22050000424D2205000000000000360000002800000014000000150000000100
                180000000000EC04000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093000093FFFFFFFFFFFF00
                0093000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000930029FF0033FF0000930000930033FF0029
                FF000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0029CAFFCCFF0029FF0033FF0033FF0029FFFFCCFF0029CA
                FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
                5D96AEBCFFFFFF0029CA0C4CFF0C4CFF0C4CFF0C4CFF0029CAFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFF96FFFF
                FFFFFF000093146CFF146CFF146CFF146CFF000093FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF00009320
                83FF2083FFFFCCFFFFCCFF2083FF2083FF000093FFFFFFFFFFFFFFFFFFFFFFFF
                0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FFFFFFFF0029CAFFCCFFFFCC
                FF0029CA0029CAFFCCFFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0060932B
                D6FF00CBFF00CCFF00CCFF00CCFF00CCFF96EAFFFEFEFF0029CA0029CAFFFFFF
                FFFFFF0029CA0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
                FF00C9FF00C9FF00C9FF00CAFF00CCFF96EAFFFFFFFFFFFFFF96EAFF96ECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
                FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
                689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
                CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
                008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
                B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
                95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bbt_IoCloseClick
            end
          end
          object ugd_IoData: TUltraGrid
            Left = 3
            Top = 26
            Width = 311
            Height = 142
            Cursor = crHandPoint
            BorderStyle = bsNone
            Color = 15857660
            DefaultRowHeight = 20
            DrawingStyle = gdsClassic
            FixedColor = 13882323
            FixedCols = 0
            RowCount = 2
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            GridLineWidth = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = False
            TabOrder = 1
            OnDblClick = ugd_IoDataDblClick
            OnDrawCell = ugd_IoDataDrawCell
            FixedAlignment = taCenter
            FixedFontBold = False
            GridRowColor = 14740472
            Title = #52769#51221#51068#49884'|'#52769#51221#54637#47785'|'#50857#47049
            ColWidths = (
              106
              149
              57
              64
              64)
          end
        end
      end
    end
    object pn_If: TPanel
      Left = 2
      Top = 54
      Width = 1556
      Height = 454
      Color = clActiveBorder
      ParentBackground = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      object bbt_VS: TBitBtn
        Left = -8
        Top = 76
        Width = 87
        Height = 25
        Cursor = crHandPoint
        Caption = ' V/S '#52769#51221
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
          3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
          000077777777777777773303333333333333337FF333333F33333709333333C3
          333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
          77777777777777777777330339339333C333337FF73373F37F33370C333C3933
          933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
          7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
          33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
          7777777777777777777733333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object chr_VS: TChart
        Left = 1
        Top = 1
        Width = 1554
        Height = 452
        BackWall.Color = 15328747
        BackWall.Transparent = False
        Gradient.EndColor = 8763768
        Gradient.Visible = True
        Legend.Alignment = laLeft
        Legend.ColorWidth = 35
        Legend.HorizMargin = 3
        Legend.LegendStyle = lsSeries
        Legend.Shadow.HorizSize = 1
        Legend.Shadow.VertSize = 1
        Legend.Symbol.Width = 35
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 59
        MarginBottom = 2
        MarginLeft = 2
        MarginRight = 0
        MarginTop = 2
        Title.Text.Strings = (
          '')
        Title.Visible = False
        Title.AdjustFrame = False
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.DateTimeFormat = 'hh:nn'
        BottomAxis.ExactDateTime = False
        BottomAxis.Grid.Style = psDashDotDot
        BottomAxis.Grid.SmallDots = True
        BottomAxis.Increment = 0.041666666666666700
        BottomAxis.LabelsSeparation = 0
        BottomAxis.Maximum = 25.000000000000000000
        ClipPoints = False
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.ExactDateTime = False
        LeftAxis.Increment = 10.000000000000000000
        LeftAxis.LabelsMultiLine = True
        LeftAxis.Maximum = 250.000000000000000000
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        RightAxis.ExactDateTime = False
        RightAxis.Grid.Visible = False
        RightAxis.Increment = 0.500000000000000000
        RightAxis.LabelsFormat.Font.Color = clMaroon
        RightAxis.Maximum = 39.000000000000000000
        RightAxis.Minimum = 34.000000000000000000
        RightAxis.PositionPercent = 100.000000000000000000
        TopAxis.Visible = False
        View3D = False
        Zoom.AnimatedSteps = 6
        OnAfterDraw = chr_VSAfterDraw
        Align = alClient
        BevelOuter = bvNone
        Color = 7252850
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object pn_MoniPrd: TPanel
          Left = 4
          Top = 208
          Width = 82
          Height = 46
          ParentBackground = False
          TabOrder = 0
          object lb_MoniPrd: TLabel
            Left = 1
            Top = 1
            Width = 80
            Height = 20
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = #52769#51221#51452#44592'('#48516')'
            Color = 1082210
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object combx_Moniprd: TComboBox
            Left = 6
            Top = 23
            Width = 43
            Height = 19
            Hint = #51109#48708'Interface '#52769#51221#51452#44592' '#48320#44221#54980', '#48152#46300#49884' ['#51452#44592#48320#44221']'#51012' '#45580#47084#49436' '#51201#50857#54644#51452#49901#49884#50724'.'
            Style = csDropDownList
            DropDownCount = 20
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ImeName = 'Microsoft Office IME 2007'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Items.Strings = (
              '5'
              '10'
              '15'
              '20'
              '25'
              '30'
              '35'
              '40'
              '45'
              '50'
              '55'
              '60')
          end
          object bbt_Moniprd: TBitBtn
            Left = 52
            Top = 22
            Width = 22
            Height = 22
            Hint = #51064#53552#54168#51060#49828' '#47784#45768#53552#47553' '#51452#44592#48320#44221#49884' '#53364#47533#54616#49464#50836'.'
            Glyph.Data = {
              6E040000424D6E04000000000000360000002800000013000000120000000100
              18000000000038040000CE0E0000C40E00000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF5050FFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BF000070000070000070BFBFBF0000FF0000FF5050FF5050FF5050FFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF2F1070000070
              0F008F0F00A04030DF0F10FF0F0FFF2020FF3F3FFF5050FF8080FFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFA09FF00F005F0F006F1F008F1F
              009F0F00DF0000FF1010FF2F2FFF4F4FFF6060FF7F7FFFA0A0FFBFBFBFBFBFBF
              BFBFBF000000BFBFBFBFBFBF8F8FFF8F8FFF3F308F1F106F2F108020109FBFBF
              BF5F5FFF0000FF3F3FFF5F5FFF6060F07F7FF09090F0BFBFBFBFBFBFBFBFBF00
              0000BFBFBFBFBFBF8080FF6F6FFFB0B0FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              5050FF8080FFBFBFBFBFBFBF1F107F1F0F6F1F0F60BFBFBFBFBFBF000000BFBF
              BFB0B0FF5050FF5F5FFF6060FFA0A0FF6F6FFFBFBFBFBFBFBFBFBFBFBFBFBF80
              80FFBFBFBFBFBFBF1F00801000700F0060BFBFBFBFBFBF000000BFBFBFAFAFFF
              3F3FFF4040FF3F3FFF2020FF6060FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BF5F40C010009F10008F4F3F9FBFBFBFBFBFBF000000BFBFBFBFBFBF3030FF20
              20FF2020FF1010FF6060FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF1000BF1000BF
              1F00B01F00A0BFBFBFBFBFBFBFBFBF000000BFBFBF4040FF0000FF0000FF0000
              FF5050FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF2000C05F
              3FCFBFBFBFBFBFBFBFBFBF000000BFBFBF7070FF8080FF7F7FFF8F8FFFBFBFBF
              0F0FFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5F4FCF705FD0BFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4F4FFF0F0FFF60
              60FFBFBFBFBFBFBFBFBFBF5F4FB010009F1000AF705FD0BFBFBFBFBFBFBFBFBF
              BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF2020FF1F1FFF3030FF3F3FFFB0B0
              FFBFBFBF5F4F9F0F007F1F00901F009F1F00AFBFBFBFBFBFBFBFBFBFBFBFBF00
              0000BFBFBFBFBFBFBFBFBF9F9FFF9F9FFF4040FF5F5FFF6060FF7F7FF02F1F6F
              00005F10006F1F00800F005FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBF7070FF7070FF8080FF9090FF706FCF0F00500F
              005F0F005FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBF9F9FFFA0A0FFA0A0FFAFB0FF7F70CF0F005FBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = bbt_MoniprdClick
          end
        end
        object Series2: TLineSeries
          Marks.Style = smsValue
          SeriesColor = clRed
          Title = 'HR'
          Brush.Style = bsFDiagonal
          Brush.BackColor = clDefault
          Dark3D = False
          LineBrush = bsFDiagonal
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Marks.Visible = True
          Marks.Style = smsValue
          SeriesColor = 64
          Title = 'BT'
          VertAxis = aRightAxis
          Brush.BackColor = clDefault
          Pointer.Brush.Color = clGreen
          Pointer.HorizSize = 5
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.VertSize = 5
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series5: TLineSeries
          Marks.Style = smsValue
          SeriesColor = 12615680
          Title = 'SBP'
          Brush.Style = bsClear
          Brush.BackColor = clDefault
          LineBrush = bsClear
          LinePen.Color = 16744448
          LinePen.Visible = False
          Pointer.HorizSize = 5
          Pointer.InflateMargins = True
          Pointer.Style = psDownTriangle
          Pointer.VertSize = 5
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series6: TLineSeries
          Marks.Style = smsValue
          SeriesColor = 12615680
          Title = 'DBP'
          Brush.Style = bsClear
          Brush.BackColor = clDefault
          LineBrush = bsClear
          LinePen.Color = 8454016
          LinePen.Visible = False
          Pointer.Brush.Color = 12615680
          Pointer.HorizSize = 5
          Pointer.InflateMargins = True
          Pointer.Style = psTriangle
          Pointer.VertSize = 5
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series10: TLineSeries
          Active = False
          SeriesColor = 12615680
          Title = 'mean BP'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psStar
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series7: TLineSeries
          Marks.Style = smsValue
          SeriesColor = 4194432
          Title = 'ASBP'
          Brush.BackColor = clDefault
          LinePen.Visible = False
          Pointer.Brush.Color = 8388863
          Pointer.HorizSize = 5
          Pointer.InflateMargins = True
          Pointer.Style = psDownTriangle
          Pointer.VertSize = 5
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series8: TLineSeries
          SeriesColor = 8388863
          Title = 'ADBP'
          Brush.BackColor = clDefault
          LinePen.Color = 4194432
          LinePen.Visible = False
          Pointer.Brush.Color = 8388863
          Pointer.HorizSize = 5
          Pointer.InflateMargins = True
          Pointer.Style = psTriangle
          Pointer.VertSize = 5
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series9: TLineSeries
          Active = False
          SeriesColor = 8388863
          Title = 'mean ABP'
          Brush.BackColor = clDefault
          Pointer.Brush.Color = 8388863
          Pointer.InflateMargins = False
          Pointer.Style = psStar
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object pn_Top: TPanel
      Left = 1
      Top = 1
      Width = 1553
      Height = 84
      Align = alTop
      Anchors = [akRight, akBottom]
      BevelInner = bvLowered
      Color = 8763768
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        1553
        84)
      object sbt_Refresh: TSpeedButton
        Left = 235
        Top = 41
        Width = 99
        Height = 34
        Hint = #52572#49888' Interface '#45236#50669' '#51312#54924'('#8251'DATA'#45716' '#48120#51200#51109')'
        Anchors = [akRight]
        Caption = 'Refresh'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sbt_RefreshClick
      end
      object lb_PatName: TLabel
        Left = 939
        Top = 7
        Width = 90
        Height = 15
        Caption = 'lb_PatName'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object bv_Hemo: TBevel
        Left = 3
        Top = 40
        Width = 120
        Height = 34
        Shape = bsFrame
      end
      object lb_FDietName: TLabel
        Left = 938
        Top = 49
        Width = 74
        Height = 12
        Caption = #9635#49885'    '#51060':'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_DietName: TLabel
        Left = 937
        Top = 67
        Width = 267
        Height = 12
        AutoSize = False
        Caption = 'Tube SFD('#44221#44288#48120#51020')'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FPatInfo: TLabel
        Left = 348
        Top = 10
        Width = 72
        Height = 12
        Caption = #9635#54872#51088#51221#48372':'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_PatInfo: TLabel
        Left = 424
        Top = 11
        Width = 252
        Height = 12
        Caption = '01712345/'#51076#49352#47196#48120' ['#50668',31'#49464',AB+,141'#51068']'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_OpName: TLabel
        Left = 422
        Top = 49
        Width = 258
        Height = 13
        AutoSize = False
        Caption = 'omentecteomy'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FOpName: TLabel
        Left = 348
        Top = 49
        Width = 73
        Height = 12
        Caption = #9635#49688' '#49696' '#47749':'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_SexAge: TLabel
        Left = 940
        Top = 26
        Width = 81
        Height = 15
        Caption = 'lb_SexAge'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object bv_Neuro: TBevel
        Left = 94
        Top = 8
        Width = 141
        Height = 34
        Shape = bsFrame
      end
      object bv_Io: TBevel
        Left = 121
        Top = 40
        Width = 114
        Height = 34
        Shape = bsFrame
      end
      object bv_Interface: TBevel
        Left = 3
        Top = 8
        Width = 93
        Height = 34
        Shape = bsFrame
      end
      object lb_RgtDate: TLabel
        Left = 348
        Top = 30
        Width = 72
        Height = 12
        Caption = #9635#44592#47197#51068#51088':'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_ActTime: TLabel
        Left = 681
        Top = 11
        Width = 46
        Height = 12
        Caption = #9635#49884#44036':'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object sbt_PrevDate: TSpeedButton
        Left = 422
        Top = 25
        Width = 24
        Height = 22
        Cursor = crHandPoint
        Hint = #44592#47197#51068#51088'(yyyy-mm-dd) '#44592#51456' '#51204#51068#51312#54924
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00009900009900009900
          0099000099000099000099000099000099000099000099000099FFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000990000990000990000990000
          99000099000099000099000099000099000099000099FFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FFFFFF000099000099000099000099000099000099
          000099000099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFF000000FFFFFF000099000099000099000099000099FFFFFF00009900
          0099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000FFFFFF000099000099000099000099FFFFFFFFFFFF0000990000990000
          99000099000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFF000099000099000099FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000099
          000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
          99000099000099FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00009900009900
          0099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000099000099
          000099000099FFFFFFFFFFFF000099000099000099000099000099000099FFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00009900009900009900
          0099000099FFFFFF000099000099000099000099000099000099FFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000990000990000990000990000
          99000099000099000099000099000099000099000099FFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FFFFFF000099000099000099000099000099000099
          000099000099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFF000000FFFFFF00009900009900009900009900009900009900009900
          0099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = bbt_PrevDateClick
      end
      object sbt_NextDate: TSpeedButton
        Left = 556
        Top = 25
        Width = 24
        Height = 22
        Cursor = crHandPoint
        Hint = #44592#47197#51068#51088'(yyyy-mm-dd) '#44592#51456' '#51061#51068#51312#54924
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00009900009900009900
          0099000099000099000099000099000099000099000099000099FFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000990000990000990000990000
          99000099000099000099000099000099000099000099FFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FFFFFF000099000099000099000099000099000099
          000099000099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFF000000FFFFFF000099000099000099000099000099000099FFFFFF00
          0099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000FFFFFF000099000099000099000099000099000099FFFFFFFFFFFF0000
          99000099000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF
          FFFF000099000099000099FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000099
          000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
          99000099000099FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00009900009900
          0099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000099000099
          000099000099000099000099FFFFFFFFFFFF000099000099000099000099FFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00009900009900009900
          0099000099000099FFFFFF000099000099000099000099000099FFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000990000990000990000990000
          99000099000099000099000099000099000099000099FFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FFFFFF000099000099000099000099000099000099
          000099000099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFF000000FFFFFF00009900009900009900009900009900009900009900
          0099000099000099000099000099FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = bbt_NextDateClick
      end
      object sbt_AddTime: TSpeedButton
        Left = 777
        Top = 7
        Width = 32
        Height = 22
        Hint = #47784#45768#53552#47553' '#49884#44036#49341#51077
        Caption = #52628#44032
        Flat = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sbt_AddTimeClick
      end
      object sbt_Print: TSpeedButton
        Left = 1527
        Top = 62
        Width = 23
        Height = 19
        Hint = #49436#49885#52636#47141
        Anchors = [akRight]
        Flat = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 14208761
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = bbt_PrintClick
      end
      object sbt_DelTime: TSpeedButton
        Left = 809
        Top = 7
        Width = 33
        Height = 22
        Hint = #47784#45768#53552#47553' '#49884#44036#49325#51228
        Caption = #49325#51228
        Flat = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sbt_DelTimeClick
      end
      object lb_FDgpWks: TLabel
        Left = 348
        Top = 68
        Width = 107
        Height = 12
        Caption = #9635#51116#53468#51452#47161'(wks):'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_DgpWks: TLabel
        Left = 459
        Top = 68
        Width = 49
        Height = 13
        AutoSize = False
        Caption = '36 + 6'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FWgt: TLabel
        Left = 681
        Top = 32
        Width = 67
        Height = 12
        Caption = #9635#52404#51473'(g):'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_Wgt: TLabel
        Left = 756
        Top = 33
        Width = 37
        Height = 13
        AutoSize = False
        Caption = '3820'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FHgt: TLabel
        Left = 681
        Top = 50
        Width = 74
        Height = 12
        Caption = #9635#49888#51109'(cm):'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_Hgt: TLabel
        Left = 756
        Top = 51
        Width = 37
        Height = 13
        AutoSize = False
        Caption = '58'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FHsize: TLabel
        Left = 797
        Top = 32
        Width = 74
        Height = 12
        Caption = #9635#46160#50948'(cm):'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_Hsize: TLabel
        Left = 873
        Top = 32
        Width = 50
        Height = 13
        AutoSize = False
        Caption = '37'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FCsize: TLabel
        Left = 797
        Top = 50
        Width = 74
        Height = 12
        Caption = #9635#55113#50948'(cm):'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_CSize: TLabel
        Left = 873
        Top = 50
        Width = 50
        Height = 13
        AutoSize = False
        Caption = '42.5'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_FBsize: TLabel
        Left = 797
        Top = 68
        Width = 74
        Height = 12
        Caption = #9635#48373#50948'(cm):'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_BSize: TLabel
        Left = 873
        Top = 68
        Width = 50
        Height = 13
        AutoSize = False
        Caption = '41.5'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_NowWks: TLabel
        Left = 508
        Top = 68
        Width = 260
        Height = 13
        Hint = #49440#53469#46108' '#44592#47197#51068#51088' '#44592#51456' '#44368#51221#50672#47161
        AutoSize = False
        Caption = '[38 + 1]'
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object sbt_Printer: TSpeedButton
        Left = 822
        Top = 7
        Width = 48
        Height = 22
        Cursor = crHandPoint
        Hint = #49888#52404#50613#51228#45824' '#44592#47197#51648
        Caption = #50613#51228#45824
        Flat = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sbt_PrinterClick
      end
      object lb_Birtdate: TLabel
        Left = 1328
        Top = 32
        Width = 77
        Height = 13
        Caption = 'lb_Birtdate'
        Transparent = False
      end
      object lb_Meddept: TLabel
        Left = 1328
        Top = 48
        Width = 70
        Height = 13
        Caption = 'lb_Meddept'
        Transparent = False
      end
      object lb_Wardno: TLabel
        Left = 1328
        Top = 64
        Width = 63
        Height = 13
        Caption = 'lb_Wardno'
        Transparent = False
      end
      object bbt_ShowNote: TBitBtn
        Left = 1019
        Top = 5
        Width = 76
        Height = 37
        Cursor = crHandPoint
        Hint = #54644#45817' '#44592#47197#51068#51088#51032' '#45432#53944' '#51204#52404#51312#54924
        Anchors = [akRight, akBottom]
        Caption = #45432#53944#51312#54924
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          22050000424D2205000000000000360000002800000014000000150000000100
          180000000000EC04000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42352A42352A003A
          5D003A5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42352A42352AB3ECFFB3ECFF
          003A5D003A5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005F93E7FAFFCDF3FFB3ECFFA4EBFF52
          CBFFA13400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF005F93F9FFFFE7FAFFCDF3FF52CBFFFF9B00FF9D
          009D3700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF005F93F9FFFF52CBFFE29431FF9B00FF9B00FF9D00
          9D3700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF005F9352CBFFFFFAD1EEBC75E29431F9990BFF9D00FF9D009D
          3700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD76F1DF5D7A5FFFAD1EEBC75DB963BF9990CFF9D00FF9D009D37
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD16F1CF5D7A5FFFAD6EEBC76DB963BF9990CFF9D00FF9D009D3700
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFCE6F1CF4D7A5FFFAD6EEBC76DB963BF9990CFF9D00FF9D009D3700FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFCE6F1CF4D7A5FFFAD6EEBC76DB963BF9990CFF9D00FF9D00A13400FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCE6F1CF4D7A5FFFAD6EEBC76DB963BF9990BFF9B00FF9D00A13400FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFCE6F1CF4D7A5FFFAD6EEBC75DB963BF9990BCC6566FF9797000093FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          CE6F1CF4D7A5FFF8D2EEBC75CC6566FF97970036FF0027CAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE
          6F1DF4D7A5CC6566FFCCCC0036FF0036FF0027CAFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE6F
          1DFFCCCC0036FFFFCCFF0027CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0027CA
          0027CA0027CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 11
        OnClick = bbt_ShowNoteClick
      end
      object dtp_RgtDate: TDateTimePicker
        Left = 446
        Top = 25
        Width = 108
        Height = 21
        Date = 41274.595025543990000000
        Time = 41274.595025543990000000
        Color = 14155775
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        ParentFont = False
        TabOrder = 0
        OnCloseUp = dtp_RgtDateCloseUp
        OnChange = dtp_RgtDateChange
      end
      object cbx_Interface: TCheckBox
        Left = 10
        Top = 16
        Width = 59
        Height = 21
        Caption = #44536#47000#54532
        Checked = True
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 1
        OnClick = cbx_InterfaceClick
      end
      object cbx_Hemo: TCheckBox
        Left = 9
        Top = 47
        Width = 112
        Height = 22
        Caption = 'Hemodynamic'
        Checked = True
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 2
        OnClick = cbx_InterfaceClick
      end
      object cbx_Neuro: TCheckBox
        Left = 100
        Top = 16
        Width = 134
        Height = 21
        Caption = #51032#49885'/'#49888#44221#44228','#54840#55137#44592
        Checked = True
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 3
        OnClick = cbx_InterfaceClick
      end
      object cbx_Io: TCheckBox
        Left = 127
        Top = 47
        Width = 106
        Height = 21
        Caption = #49453#52712#47049'/'#48176#49444#47049
        Checked = True
        Color = 8763768
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 4
        OnClick = cbx_InterfaceClick
      end
      object bbt_MoniSave: TBitBtn
        Left = 959
        Top = 5
        Width = 60
        Height = 36
        Cursor = crHandPoint
        Hint = 
          #47784#45768#53552#47553' '#48143' Interface '#52769#51221#45236#50669' '#51200#51109#13#10'('#8251' '#47784#45768#53552#47553' '#51452#44592'(60'#48516', 15'#48516', 5'#48516' '#46321')'#48320#44221#49884#50640#45716', '#50812#51901' '#51473#44036 +
          #51032' ['#52769#51221#51452#44592#48320#44221'] '#48260#53948#51012' '#51060#50857#54616#49464#50836'.)'
        Anchors = [akRight, akBottom]
        Caption = #51200#51109
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          B6050000424DB605000000000000360000002800000015000000160000000100
          1800000000008005000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          5E534A3F33283E33273E33273F332841352A3F33283E33273E33273F33284135
          2A3F33283E33273E33273F33285E544AFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          756A62FFFFFFFFFFFFFFFFFFFFFFFFD1C7BCFFFFFFFFFFFFFFFFFFFFFFFFD1C7
          BCFFFFFFFFFFFFFFFFFFFFFFFF756A62FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          776D63FFFFFFF6F1ECF7F2EDF9F4F0CCC1B8F9F4F0F7F2EDF7F2EDF9F4F0CCC1
          B8F9F4F0F7F2EDF6F1ECFFFFFF776D63FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          7F736AD5CBC1CEC5BBCFC5BBD0C6BCD2C9BFD0C6BCCFC5BBCFC5BBD0C6BCD2C9
          BFD0C6BCCFC5BBCEC5BBD5CBC17F736AFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          83786DFFFFFFFBF8F6FCF9F7FEFCF9D3C9BFFEFCF9FCF9F7FCF9F7FEFCF9D3C9
          BFFEFCF9FCF9F7FBF8F6FFFFFF83786DFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          887E72FFFFFFFCFAF9FCFBF9FEFDFCD6CDC3FEFDFCFBFAFAFAFAFBFAFAFBFAFA
          FBFAFAFBFAFAFBFAFAFBFCFCFD887E72FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          908379DED5CDD8CFC6D8CFC6D9D0C7DBD3CAECE9E6FAFAFB0066000066000066
          00006600006600006600FAFAFBCEC9C5FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          94887BFFFFFFFFFFFFFFFFFFFFFFFFEEEBE7FAFAFB0066003EDE793EDE793EDE
          793EDE793EDE793EDE79006600FAFAFBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          9A958CFFFFFFFFFFFFFFFFFFFFFFFFFAFAFB0066003EDE790CA51706880B0073
          00058809059E0A0099003EDE79006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          B043008A1C00891B00891B008A1B00FAFAFB00660051ED88098C13007300FFFF
          FF00730007890D07A00E51ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          CB6400FFAF24FFAA1EFFAA1EFFAC22FAFAFB00660051ED88007300FFFFFFFFFF
          FFFFFFFF00730007890D51ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          C96000FFE1AEFFF1CEFFF0CDFFF3D6FAFAFB00660051ED88007300FFFFFF0073
          00FFFFFFFFFFFF00730051ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          CB6400C95F00C85D00C85C00C55A00FAFAFB00660051ED881697280073000E9F
          3F007300FFFFFF00730051ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00660066FF9C31C85C05F7E918E7
          B91596260073000A8D1466FF9C006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00660071FFA971FFA971FF
          A971FFA971FFA971FFA9006600FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0066000066000066
          00006600006600006600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = bbt_MoniSaveClick
      end
      object med_ActTime: TMaskEdit
        Left = 729
        Top = 6
        Width = 45
        Height = 23
        Hint = #53945#51221' '#51060#48292#53944#45208' '#51025#44553#49345#54889' '#48156#49373#49884', '#47784#45768#53552#47553' '#49884#44036#51012' '#52628#44032'/'#49325#51228#54616#50668' '#44592#47197#54616#49901#49884#50724'.'
        Color = 14155775
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeName = 'Microsoft IME 2003'
        MaxLength = 5
        ParentFont = False
        TabOrder = 6
        Text = '  :  '
      end
      object bbt_Quality: TBitBtn
        Left = 1095
        Top = 5
        Width = 89
        Height = 37
        Cursor = crHandPoint
        Hint = 'ICU Quality Checklist'
        Anchors = [akRight, akBottom]
        Caption = #51076#49345#51656#51648#54364
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          36050000424D3605000000000000360000002800000015000000140000000100
          1800000000000005000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFF3E33273E33273E33273E3327FFFFFF3F3328005F93FFFFFFFFFFFFB0AB
          A63E33273E3327FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          5D534A756A60FFFFFFFFFFFFFFFFFFFFFFFF005F93E7FAFF003A5D003A5DFFFF
          FFFFFFFFFFFFFF736960FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          6D645CFFFFFE756A60FFFFFCF2EBE4FFFFFF005F93E7FAFFD0F9FF52CBFFA134
          00FFFFFFFFFFFF736960FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          7168606D635B756A60FFFFFFF4EEE8FBF9F7FFFFFF005F9352CBFFE29431FF9D
          00A13400FFFFFFC6C2BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF796F65FFFFFFF6F1ECC6BBB0FFFFFF005F93F4D7A5FFFAD1E294
          31FF9D00A13400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF7B7066FFFFFFF6F2EDFAF7F3FEFCFAFFFFFFD56B03F4D7A5FFFA
          D1E29431FF9D00A13400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF7E7368FFFFFFF8F4F0CEC4BAD0C6BCECE8E3FFFFFFD06906F4D7
          A5FFFAD1E29431FF9D00A13400FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF81756BFFFFFFF8F5F1FCF9F6FDFBF7FDFBF7FEFDFCFFFFFFCC69
          08F4D7A5FFFAD1E294310024F60015C8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF83786EFFFFFFFAF7F5D6CDC4D8CFC6D8CFC6D8CFC6EFEBE8FFFF
          FFCD6C0CF4D7A5FFFFFF0024F60015C8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF877A70FFFFFFFAF8F6FDFCFAFEFDFCFEFDFCFEFDFCFEFCFBFEFD
          FDFFFFFFCD6C0C0024F6FFCCFF153ACFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF8A7E72FFFFFFFCFAF9E0D6CEE0D8D0E0D8D0E0D8D0E0D6CEFCFB
          FAFDFDFCFFFFFF0B32CD0013C5FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF8C8074FFFFFFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF8F8377FFFFFFFFFFFF655A50675D53655C51655C51655C51655C
          51655C51675D536C635971685E776D64FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF93867AFFFFFFFFFFFF74695EFFFFFCFEFAF5FEFAF5FEFAF5FEFA
          F5FEFAF5FEFAF5FFFBF6FFFFFF7F756AFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF93867AFFFFFF9B9289FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF93867AFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9B90849B9084998E82978B7E968A7D968A7D968A7D968A
          7D968A7D968A7D978B7E93867AFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        ParentFont = False
        TabOrder = 7
        OnClick = bbt_QualityClick
      end
      object bbt_Ass: TBitBtn
        Left = 1095
        Top = 42
        Width = 89
        Height = 37
        Cursor = crHandPoint
        Hint = 'ICU '#44036#54840#49324#51221
        Anchors = [akRight, akBottom]
        Caption = #44036#54840#49324#51221
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          1E060000424D1E06000000000000360000002800000017000000150000000100
          180000000000E805000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF003B5A003B5A19709EFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF003B5A0099CC00BFF219709EFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF99330099330099330099330025597000C4FC009CD019709EFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF993300FFE19BFFF7C1FFF6C4FFE19B993300305A6B1873A3
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF5D534A3F33
          283E33273E33273E3327FAFAFBCC6600DFC8A5C5C2C2FFE093FFEDB6FFFED3FF
          F0B8CC6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF746961FFFFFFFFFFFFFFFFFFFFFFFFFAFAFBCC6600FFE19BF3F3F8FFC6
          5DFFE3A2FFFEDDFFF0B8CC6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFF746960FFFFFFF1EBE5F2EBE6F2EBE6FAFAFBCC6600
          FFD288F1F1F6FFBB50FFC761FFDA8CFFD075CC6600FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF786E64FFFFFFF4EFE9F5F0EBF5
          F0EBFAFAFBCC6600FFD288F2F5FAFFF6E7FF9100FFA717FFD075CC6600FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF7E7368FFFF
          FFF6F2EEF7F3EFF7F3EFF9F7F6FAFAFBCC6600FEB852FEB852FEB852FEB852CC
          6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF82776DFFFFFFF9F5F2F9F6F3F9F6F3F9F6F3FAF9F8FAFAFBCC6600CC66
          00CC6600CC6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFF877C70FFFFFFFAF8F5FAF8F6FAF8F6FBF9F7FFFFFD
          F8F6F5FAFAFBFAFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF8C8074FFFFFFFCFBFAFCFBFAFC
          FBFAFFFFFFBD9B9A5D554C645A5292887EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF908478FFFF
          FFFEFEFDFEFEFDFEFEFDFFFFFFC88C8CFFFFFFFFFFFFAB9F94FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF978A7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB8F90FFFFFFAB9F94FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFA094879B8F829A8D809A8D809A8D809B8F819D9385
          AB9F94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentFont = False
        TabOrder = 8
        OnClick = bbt_AssClick
      end
      object bbt_Close: TBitBtn
        Left = 1244
        Top = 5
        Width = 60
        Height = 74
        Hint = #54868#47732#51333#47308
        Anchors = [akRight, akBottom]
        Caption = #51333#47308
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          BA040000424DBA04000000000000360000002800000016000000110000000100
          1800000000008404000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736A62FFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736A62FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00049B00
          0091000091000091000092000096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736A62
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00039B
          002EFF0033FF0034FF0032FF0036FF0028D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF736A62FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000940000910000
          92002EFF002FFF3DADFF0026FF3DADFF002DFF0023D07C6F5A736A62736A62FF
          FFFFFFFFFF736A62FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0029CD00
          2EFF002EFF002EFF0029FF3BA8FF0023FF3BA8FF002BFF0023D0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF736A62FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          0021C9FFCCFFFFCCFF0036FF0036FF37A5FF0136FF39A6FF053FFF0022D0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF736A62FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF0027CB001FC90019C6FFCCFF0C63FF239BFF0C63FF279DFF0C63FF00
          1ED07C6F5A736A62736A62FFFFFFFFFFFF736A62FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A35CDFFCCFFFFCCFFFFCCFFFFCCFF
          FFCCFF001CD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736A62FFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1534CD001DC8001D
          C8001DC8001FC90026CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736A62FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736A62
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF736A62FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        ParentFont = False
        TabOrder = 9
        OnClick = bbt_CloseClick
      end
      object bbt_Print: TBitBtn
        Left = 1184
        Top = 5
        Width = 60
        Height = 74
        Cursor = crHandPoint
        Hint = #44036#54840#44592#47197#51648' '#52636#47141'[A4]'
        Anchors = [akRight, akBottom]
        Caption = #52636#47141
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000014000000120000000100
          1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F544A42372B4236
          2B42362B42362B42362B42362B42362B42362B42362B42362B42362B42362B42
          362B42372B5F544AFFFFFFFFFFFFFFFFFFFFFFFF736960FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF736960FFFFFFFFFFFFFFFFFFFFFFFF756A61FFFFFFC6BBAFC9BFB4C8BDB3C8
          BDB3C9BFB4C8BDB3C8BDB3C9BFB4C8BDB3C8BDB3C9BFB4C6BBAFFFFFFF756A61
          FFFFFFFFFFFFFFFFFFFFFFFF786D64FFFFFFF7F2EDCDC2B9F8F3EFF8F3EFCDC2
          B9F8F3EFF8F3EFCDC2B9F8F3EFF8F3EFCDC2B9F7F2EDFFFFFF786D64FFFFFFFF
          FFFFFFFFFFFFFFFF7B7067FFFFFF663333CEC5BCF9F5F0F9F5F0CEC5BCF9F5F0
          F9F5F0CEC5BCF9F5F0F9F5F0CEC5BCF8F4EFFFFFFF7B7067FFFFFFFFFFFFFFFF
          FFFFFFFF7F756AFFFFFFD0C6BC663333D2C8BFD2C8BFD4CBC2663333D2C8BFD4
          CBC2D2C8BFD2C8BFD4CBC2D0C6BCFFFFFF7F756AFFFFFFFFFFFFFFFFFFFFFFFF
          82786DFFFFFFFBF8F4D4CBC2663333FCF9F5663333FCF9F5663333D4CBC2FCF9
          F5FCF9F5D4CBC2FBF8F4FFFFFF82786DFFFFFFFFFFFFFFFFFFFFFFFF877B70FF
          FFFFFCFAF7D7CDC5FCFBF8663333D7CDC5FCFBF8FCFBF8663333FCFBF8FCFBF8
          D7CDC5FCFAF7FFFFFF877B70FFFFFFFFFFFFFFFFFFFFFFFF8A7E73FFFFFFD8CF
          C6DBD3CBD9D0C8D9D0C8DBD3CBD9D0C8D9D0C8DBD3CB663333D9D0C8DBD3CBD8
          CFC6FFFFFF8A7E73FFFFFFFFFFFFFFFFFFFFFFFF8E8277FFFFFFFFFDFDDCD3CB
          FFFEFDFFFEFDDCD3CBFFFEFDFFFEFDDCD3CBFFFEFD663333DCD3CBFFFDFDFFFF
          FF8E8277FFFFFFFFFFFFFFFFFFFFFFFF91867AFFFFFFFFFFFFDFD6CEFFFFFFFF
          FFFFDFD6CEFFFFFFFFFFFFDFD6CEFFFFFFFFFFFF663333663333FFFFFF91867A
          FFFFFFFFFFFFFFFFFFFFFFFF95897DFFFFFFE0D8CFE2DBD2E1DAD1E1DAD1E2DB
          D2E1DAD1E1DAD1E2DBD2E1DAD1E1DAD1E2DBD2E0D8CFFFFFFF95897DFFFFFFFF
          FFFFFFFFFFFFFFFF998D81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF998D81FFFFFFFFFFFFFFFF
          FFFFFFFFA094899D90849C8F849C8F849C8F849C8F849C8F849C8F849C8F849C
          8F849C8F849C8F849C8F849C8F849D9084A09489FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = bbt_PrintClick
      end
      object bbt_Monitor: TBitBtn
        Left = 1019
        Top = 42
        Width = 76
        Height = 37
        Cursor = crHandPoint
        Hint = #47784#45768#53552#47553' '#54637#47785' '#52628#44032'/'#49325#51228' '#44288#47532
        Anchors = [akRight, akBottom]
        Caption = #54637#47785#44288#47532
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00480000420000440000
          4900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005D0000FFFF1DBA2F005D00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF004800004000005D003ED5501BB532005D00004400004900
          FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
          5DFFFFFF005D0000FFFF11A1030EA20E0EA6180FAA1B11AE17005D00FFFFFFFF
          FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFF
          005D0000FFFF00FFFF00FFFF1BAF2823BA2700FFFF005D00FFFFFFFFFFFFFFFF
          FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF005D0000
          5D00005D0000FFFF1EAD1C005D00005D00005D00FFFFFFFFFFFFFFFFFFFFFFFF
          0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FF96EDFFFFFFFFFFFFFF005D
          0000FFFF00FFFF005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060932B
          D6FF00CBFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFFFFFFFF005D00005D00
          005D00005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
          FF00C9FF00C9FF00C9FF00CAFF00CCFF00CCFF96EAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
          FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
          689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
          CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
          008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
          B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
          95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = bbt_MonitorClick
      end
      object combx_DiagName: TComboBox
        Left = 1310
        Top = 5
        Width = 231
        Height = 20
        Style = csDropDownList
        Color = 15395562
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544')'
        ParentFont = False
        TabOrder = 13
        Visible = False
      end
      object bbt_ShowNoteSearch: TBitBtn
        Left = 873
        Top = 5
        Width = 86
        Height = 37
        Cursor = crHandPoint
        Hint = #54644#45817' '#44592#47197#51068#51088#51032' '#45432#53944' '#51204#52404#51312#54924
        Anchors = [akRight, akBottom]
        Caption = 'I/O Flowsheet'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Visible = False
        OnClick = bbt_ShowNoteSearchClick
      end
      object bbt_NurseWrite: TBitBtn
        Left = 873
        Top = 42
        Width = 86
        Height = 37
        Cursor = crHandPoint
        Hint = 
          #47784#45768#53552#47553' '#48143' Interface '#52769#51221#45236#50669' '#51200#51109#13#10'('#8251' '#47784#45768#53552#47553' '#51452#44592'(60'#48516', 15'#48516', 5'#48516' '#46321')'#48320#44221#49884#50640#45716', '#50812#51901' '#51473#44036 +
          #51032' ['#52769#51221#51452#44592#48320#44221'] '#48260#53948#51012' '#51060#50857#54616#49464#50836'.)'
        Anchors = [akRight, akBottom]
        Caption = #44036#54840#44592#47197
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888880000888777777777778888880000880000000000008008880000880F
          FFFFFFFFFF0008880000880FFFFFF0000F0088880000880F8888077770FF8888
          0000880FFFF0F888770F07880000880F8880F888870F07880000880FFFF0F888
          870F07880000880F8880FF88870F07880000880FFFFF0FFFF0FF07880000880F
          8888F0000FFF07880000880FFFFFFFFFFFFF07880000880FFFFFFFFFFFFF0788
          0000880FF777777777FF07880000880FFFFFFFFFFFFF07880000880FFF000000
          0FFF078800008880000BBBBB0000788800008888888000008888888800008888
          88888888888888880000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = bbt_NurseWriteClick
      end
      object bbt_Crrt: TBitBtn
        Left = 959
        Top = 42
        Width = 60
        Height = 37
        Cursor = crHandPoint
        Hint = 
          #47784#45768#53552#47553' '#48143' Interface '#52769#51221#45236#50669' '#51200#51109#13#10'('#8251' '#47784#45768#53552#47553' '#51452#44592'(60'#48516', 15'#48516', 5'#48516' '#46321')'#48320#44221#49884#50640#45716', '#50812#51901' '#51473#44036 +
          #51032' ['#52769#51221#51452#44592#48320#44221'] '#48260#53948#51012' '#51060#50857#54616#49464#50836'.)'
        Anchors = [akRight, akBottom]
        Caption = 'CRRT'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888888880000888777777777778888880000880000000000008008880000880F
          FFFFFFFFFF0008880000880FFFFFF0000F0088880000880F8888077770FF8888
          0000880FFFF0F888770F07880000880F8880F888870F07880000880FFFF0F888
          870F07880000880F8880FF88870F07880000880FFFFF0FFFF0FF07880000880F
          8888F0000FFF07880000880FFFFFFFFFFFFF07880000880FFFFFFFFFFFFF0788
          0000880FF777777777FF07880000880FFFFFFFFFFFFF07880000880FFF000000
          0FFF078800008880000BBBBB0000788800008888888000008888888800008888
          88888888888888880000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        Visible = False
        OnClick = bbt_CrrtClick
      end
    end
  end
  object stb_Message: TStatusBar
    Left = 0
    Top = 963
    Width = 1555
    Height = 23
    Panels = <
      item
        Width = 50
      end>
  end
  object pn_Loading: TPanel
    Left = 640
    Top = 400
    Width = 385
    Height = 57
    BevelInner = bvLowered
    BorderWidth = 2
    Color = 8763768
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object lb_LoadingBar: TLabel
      Left = 69
      Top = 13
      Width = 294
      Height = 12
      Caption = #51088#47308#47484' '#51312#54924#54616#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49901#49884#50724'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object ani_setuser: TAnimate
      Left = 11
      Top = 9
      Width = 40
      Height = 40
      Cursor = crHourGlass
      Active = True
      CommonAVI = aviFindFile
      Constraints.MinHeight = 40
      Constraints.MinWidth = 40
      StopFrame = 8
    end
    object pb_DataLoading: TProgressBar
      Left = 64
      Top = 32
      Width = 305
      Height = 17
      BorderWidth = 1
      Step = 1
      TabOrder = 1
    end
  end
  object Advpn_Log: TAdvPanel
    Left = 1118
    Top = 197
    Width = 318
    Height = 324
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UseDockManager = True
    Version = '2.4.1.0'
    AutoHideChildren = False
    CanMove = True
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.Height = 25
    Caption.Indent = 5
    Caption.MinMaxButton = True
    Caption.Text = 'Log'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 730
    object Memo1: TMemo
      Left = 1
      Top = 24
      Width = 312
      Height = 281
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 0
      OnChange = asg_IcuMonEditingDone
    end
  end
  object asg_Print: TAdvStringGrid
    Left = 707
    Top = 569
    Width = 1017
    Height = 89
    Cursor = crDefault
    ColCount = 26
    DefaultRowHeight = 21
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 5
    Visible = False
    OnDblClick = asg_PrintDblClick
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    CellNode.ShowTree = False
    ColumnHeaders.Strings = (
      'asg_Print1')
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.ControlStyle = csClassic
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    ControlLook.NoDisabledButtonLook = True
    EnhRowColMove = False
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Larger than'
      'Smaller than'
      'Clear')
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    Look = glSoft
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
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
    PrintSettings.Centered = False
    PrintSettings.PageNumSep = '/'
    ScrollWidth = 16
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.Column = 0
    Version = '7.8.6.0'
    WordWrap = False
    ColWidths = (
      64
      35
      36
      36
      39
      37
      43
      40
      36
      38
      41
      38
      37
      31
      35
      34
      33
      36
      36
      28
      34
      37
      42
      38
      37
      45)
  end
  object apn_InsTempl: TAdvPanel
    Left = 1110
    Top = 84
    Width = 315
    Height = 111
    BevelInner = bvLowered
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    UseDockManager = True
    Visible = False
    Version = '2.4.1.0'
    CanMove = True
    Caption.Color = 9396927
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = [fsBold]
    Caption.Height = 28
    Caption.Indent = 7
    Caption.ShadeType = stHShade
    Caption.Text = #45432#53944' '#50696#47928#46321#47197'<B></B>'
    Caption.TopIndent = 6
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 0
    object Shape5: TShape
      Left = 8
      Top = 31
      Width = 65
      Height = 22
      Brush.Color = 13166834
      Pen.Color = clGray
    end
    object Shape3: TShape
      Left = 8
      Top = 55
      Width = 65
      Height = 22
      Brush.Color = 13166834
      Pen.Color = clGray
    end
    object Label10: TLabel
      Left = 15
      Top = 60
      Width = 52
      Height = 12
      Caption = #50696#47928#51228#47785
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Label22: TLabel
      Left = 15
      Top = 36
      Width = 52
      Height = 12
      Caption = #50696#47928#44396#48516
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Panel5: TPanel
      Left = 2
      Top = 80
      Width = 311
      Height = 29
      Align = alBottom
      BevelInner = bvLowered
      ParentBackground = False
      TabOrder = 0
      object bbt_SetInsert: TBitBtn
        Left = 186
        Top = 3
        Width = 60
        Height = 25
        Hint = 'ICU'#45432#53944' '#50696#47928#51200#51109'('#49688#51221'/'#49325#51228#45716' '#44592#48376#51221#48372'-'#44036#54840#44288#47532'('#50696#47928#50857')'#50640#49436')'
        Caption = #46321#47197
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00480000420000440000
          4900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005D0000FFFF1DBA2F005D00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF004800004000005D003ED5501BB532005D00004400004900
          FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
          5DFFFFFF005D0000FFFF11A1030EA20E0EA6180FAA1B11AE17005D00FFFFFFFF
          FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFF
          005D0000FFFF00FFFF00FFFF1BAF2823BA2700FFFF005D00FFFFFFFFFFFFFFFF
          FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF005D0000
          5D00005D0000FFFF1EAD1C005D00005D00005D00FFFFFFFFFFFFFFFFFFFFFFFF
          0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FF96EDFFFFFFFFFFFFFF005D
          0000FFFF00FFFF005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060932B
          D6FF00CBFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFFFFFFFF005D00005D00
          005D00005D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
          FF00C9FF00C9FF00C9FF00CAFF00CCFF00CCFF96EAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
          FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
          689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
          CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
          008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
          B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
          95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bbt_SetInsertClick
      end
      object bbt_SetExit: TBitBtn
        Left = 246
        Top = 3
        Width = 60
        Height = 25
        Hint = #46321#47197#52712#49548
        Caption = #52712#49548
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          22050000424D2205000000000000360000002800000014000000150000000100
          180000000000EC04000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093000093FFFFFFFFFFFF00
          0093000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000930029FF0033FF0000930000930033FF0029
          FF000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0029CAFFCCFF0029FF0033FF0033FF0029FFFFCCFF0029CA
          FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
          5D96AEBCFFFFFF0029CA0C4CFF0C4CFF0C4CFF0C4CFF0029CAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFF96FFFF
          FFFFFF000093146CFF146CFF146CFF146CFF000093FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF00009320
          83FF2083FFFFCCFFFFCCFF2083FF2083FF000093FFFFFFFFFFFFFFFFFFFFFFFF
          0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FFFFFFFF0029CAFFCCFFFFCC
          FF0029CA0029CAFFCCFFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0060932B
          D6FF00CBFF00CCFF00CCFF00CCFF00CCFF96EAFFFEFEFF0029CA0029CAFFFFFF
          FFFFFF0029CA0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
          FF00C9FF00C9FF00C9FF00CAFF00CCFF96EAFFFFFFFFFFFFFF96EAFF96ECFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
          FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
          689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
          CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
          008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
          B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
          95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbt_SetExitClick
      end
    end
    object ed_SetTitle: TEdit
      Left = 75
      Top = 55
      Width = 235
      Height = 22
      AutoSelect = False
      AutoSize = False
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      MaxLength = 30
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 75
      Top = 32
      Width = 234
      Height = 21
      BevelOuter = bvLowered
      Color = 6451355
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object rbt_Ward: TRadioButton
        Left = 103
        Top = 4
        Width = 84
        Height = 16
        Caption = #48512#49436#48324
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rbt_Nrs: TRadioButton
        Left = 9
        Top = 4
        Width = 85
        Height = 16
        Caption = #44060#51064#48324
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
  end
  object apn_PatList: TAdvPanel
    Left = 961
    Top = 83
    Width = 138
    Height = 480
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UseDockManager = True
    Version = '2.4.1.0'
    AutoHideChildren = False
    CanMove = True
    Caption.Color = 12615680
    Caption.ColorTo = 16777088
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.Height = 25
    Caption.Indent = 5
    Caption.MinMaxButton = True
    Caption.ShadeType = stDiagShade
    Caption.Text = '<FONT  size="8"  size="72"></FONT>ICU '#54872#51088#51312#54924
    Caption.TopIndent = 4
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 480
    object pn_PatList: TPanel
      Left = 0
      Top = 24
      Width = 263
      Height = 458
      BevelInner = bvLowered
      Color = 8758628
      ParentBackground = False
      TabOrder = 0
      object Bevel33: TBevel
        Left = 3
        Top = 76
        Width = 130
        Height = 35
      end
      object ugd_PatList: TUltraGrid
        Left = 3
        Top = 111
        Width = 134
        Height = 342
        Cursor = crHandPoint
        BorderStyle = bsNone
        Color = 8758628
        ColCount = 15
        DefaultRowHeight = 20
        DrawingStyle = gdsClassic
        FixedColor = 13882323
        FixedCols = 0
        RowCount = 2
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        GridLineWidth = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = ugd_PatListClick
        OnDrawCell = ugd_PatListDrawCell
        OnMouseMove = ugd_PatListMouseMove
        FixedAlignment = taCenter
        FixedFontBold = False
        SelectedRowColor = 16043387
        GridRowColor = 8758628
        Title = #48337#49892'|'#54872#51088#47749'|'#49457#48324'/'#45208#51060'||||||'#44284
        Wrap = False
        ColWidths = (
          25
          51
          58
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
      object cbx_NowPos: TCheckBox
        Left = 2
        Top = 40
        Width = 108
        Height = 13
        Cursor = crHandPoint
        TabStop = False
        Alignment = taLeftJustify
        Caption = '('#54788#50948#52824')'
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
        OnClick = cbx_DschClick
      end
      object combx_WardNm: TComboBox
        Left = 3
        Top = 55
        Width = 131
        Height = 20
        Cursor = crHandPoint
        Style = csDropDownList
        Color = 16578812
        DropDownCount = 40
        Enabled = False
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544')'
        ParentFont = False
        TabOrder = 2
        OnChange = combx_WardNmChange
      end
      object combx_WardCd: TComboBox
        Left = 4
        Top = 55
        Width = 38
        Height = 21
        Style = csDropDownList
        ImeName = #54620#44397#50612'('#54620#44544')'
        TabOrder = 3
        Visible = False
      end
      object cbx_Dsch: TCheckBox
        Left = 2
        Top = 6
        Width = 108
        Height = 14
        Cursor = crHandPoint
        TabStop = False
        Alignment = taLeftJustify
        Caption = '('#45817#51068#53748#50896#54252#54632')'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = cbx_DschClick
      end
      object cbx_Cancel: TCheckBox
        Left = 2
        Top = 23
        Width = 108
        Height = 14
        Cursor = crHandPoint
        TabStop = False
        Alignment = taLeftJustify
        Caption = '('#45817#51068#51077#50896#52712#49548')'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cbx_DschClick
      end
      object rbt_SortDept: TRadioButton
        Left = 68
        Top = 78
        Width = 68
        Height = 15
        Cursor = crHandPoint
        Caption = #51652#47308#44284#49692
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
      end
      object rbt_SortName: TRadioButton
        Left = 10
        Top = 96
        Width = 68
        Height = 14
        Cursor = crHandPoint
        Caption = #49457#47749#49692
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rbt_SortNameClick
      end
      object rbt_SortRoom: TRadioButton
        Left = 10
        Top = 78
        Width = 58
        Height = 16
        Cursor = crHandPoint
        Caption = #48337#49892#49692
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = True
        OnClick = rbt_SortNameClick
      end
    end
  end
  object pn_EmrList: TPanel
    Left = 325
    Top = 613
    Width = 351
    Height = 263
    Caption = 'pn_EmrList'
    Color = 3492410
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object Panel14: TPanel
      Left = 3
      Top = 3
      Width = 345
      Height = 46
      BevelInner = bvLowered
      Caption = 'ICU/NICU '#44592#47197#51648' '#51088#46041#49436#49885#48320#54872' '#47532#49828#53944'('#45236#48512#47196#51649')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel18: TPanel
      Left = 4
      Top = 221
      Width = 344
      Height = 39
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object bbt_Ok: TBitBtn
        Left = 177
        Top = 5
        Width = 81
        Height = 30
        Cursor = crHandPoint
        Caption = ' '#49440' '#53469
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000013000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004600004600FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0046002AC7542AC754004600FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0046001BB6361BB6361BB636004600FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0046000046000046
          000046000046000046001BB6361BB6361BB636004600FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0064000EA70E0DA30B0DA30B
          0DA30B0DA30C0CA30F0AA3120CA50E04A14D004600FFFFFFFFFFFF000000FFFF
          FFFFFFFF5E544B42372B42362BFAFAFB00600000FFFF00FFFF00FFFF00FFFF00
          FFFF1DAF1B1DAF1B1DAF1B00FFFF005D00FFFFFFFFFFFF000000FFFFFFFFFFFF
          756A62FFFFFFFFFFFFFAFAFB005700005700005600005700005B000056001BB6
          361BB63600FFFF005D00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF776C63FF
          FFFFF1EBE6F8F5F3FAFAFBFAFAFBFAFAFBFAFAFB005D002AC7542AC75400FFFF
          005D00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF7B7067FFFFFFF5EF
          EAF5F0EBF5F0EBF5F0EBF7F1EDFAFAFB005D002AC75400FFFF005D00FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF80766BFFFFFFF7F2EEF7F3EF
          F7F3EFF7F3EFF7F3EFFAF8F7FAFAFB005D00005D00FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFF857A6FFFFFFFF9F6F2F9F6F3F9F6F3F9
          F6F3F9F6F3FAF7F4FAF9F8FAFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFF897E72FFFFFFFAF8F6FAF8F6FAF8F6FAF9F7FEFD
          FCF2EEEAD5CFC9897E72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF8E8277FFFFFFFCFBFAFCFBFAFCFBFAFFFFFEBE9E9D625A51
          675E5695897EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFF92877BFFFFFFFEFEFDFEFEFDFEFEFDFFFFFFC88F8FFFFFFFFFFFFFAB
          9F94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          988C80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9192FFFFFFAB9F94FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA194889D
          90839C8F829C8F829C8F829C90839E9387AB9F94FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000}
        ParentFont = False
        TabOrder = 0
        OnClick = bbt_OkClick
      end
      object bbt_ListExit: TBitBtn
        Left = 258
        Top = 5
        Width = 81
        Height = 30
        Cursor = crHandPoint
        Caption = ' '#45803' '#44592
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000093000093000093000093000093000093000093000093FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093
          002EFF0036FF0036FF0036FF0036FF0036FF0036FF002EFF000093FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093002EFF002EFF00
          33FF0033FF0033FF0033FF0033FF0033FF0035FF002EFF000093FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093002EFF0034FF002EFF002EFF0032
          FF0033FF0033FF0032FF002EFF002EFF0034FF002EFF000093FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000930035FF0035FF002EFFFFCCFFFFCCFF0029FF0032FF
          0032FF0029FFFFCCFFFFCCFF002EFF0035FF0035FF000093FFFFFFFFFFFFFFFF
          FFFFFFFF0029CA0035FF0033FF002EFFFFFFFFFFFFFFFFCCFF0028FF0028FFFF
          CCFFFFFFFFFFFFFF002EFF0033FF0035FF0029CAFFFFFFFFFFFFFFFFFFFFFFFF
          0029CA0033FF0033FF0033FF0029C9FFFFFFFFFFFFFFCCFFFFCCFFFFFFFFFFFF
          FF0029C90033FF0033FF0033FF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0029C900
          33FF0033FF0033FF0033FF0029C9FFFFFFFFFFFFFFFFFFFFFFFF0029C90033FF
          0033FF0033FF0033FF0029C9FFFFFFFFFFFFFFFFFFFFFFFF0028C90538FF0538
          FF0538FF0437FF002EFFFFCCFFFFFFFFFFFFFFFFCCFF002EFF0437FF0538FF05
          38FF0538FF0028C9FFFFFFFFFFFFFFFFFFFFFFFF0027C90C41FF0F42FF0F41FF
          0539FFFFCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCFF0539FF0F41FF0F42FF0C41
          FF0027C9FFFFFFFFFFFFFFFFFFFFFFFF0024C91146FF1146FF1547FFFFCCFFFF
          FFFFFFFFFF0029C90029C9FFFFFFFFFFFFFFCCFF1547FF1146FF1146FF0024C9
          FFFFFFFFFFFFFFFFFFFFFFFF0029CAFFCCFF184EFF184EFFFFCCFFFFFFFF0029
          C92757FF2757FF0029C9FFFFFFFFCCFF184EFF184EFFFFCCFF0029CAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF0029CAFFCCFF3060FF0029C90029C93162FF3060FF
          3060FF3162FF0029C90029C93060FFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0029CAFFCCFF3165FF2F65FF3165FF3165FF3165FF31
          65FF2F65FF3165FFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0029CAFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCC
          FFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0029CA0029CA0029CA0029CA0029CA0029CA0029CA0029CA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 1
      end
      object bbt_Select: TBitBtn
        Left = 96
        Top = 5
        Width = 80
        Height = 30
        Cursor = crHandPoint
        Caption = ' '#51312' '#54924
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Glyph.Data = {
          1E060000424D1E06000000000000360000002800000017000000150000000100
          180000000000E805000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF003B5A003B5A19709EFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF003B5A0099CC00BFF219709EFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF99330099330099330099330025597000C4FC009CD019709EFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF993300FFE19BFFF7C1FFF6C4FFE19B993300305A6B1873A3
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF5D534A3F33
          283E33273E33273E3327FAFAFBCC6600DFC8A5C5C2C2FFE093FFEDB6FFFED3FF
          F0B8CC6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF746961FFFFFFFFFFFFFFFFFFFFFFFFFAFAFBCC6600FFE19BF3F3F8FFC6
          5DFFE3A2FFFEDDFFF0B8CC6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFF746960FFFFFFF1EBE5F2EBE6F2EBE6FAFAFBCC6600
          FFD288F1F1F6FFBB50FFC761FFDA8CFFD075CC6600FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF786E64FFFFFFF4EFE9F5F0EBF5
          F0EBFAFAFBCC6600FFD288F2F5FAFFF6E7FF9100FFA717FFD075CC6600FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF7E7368FFFF
          FFF6F2EEF7F3EFF7F3EFF9F7F6FAFAFBCC6600FEB852FEB852FEB852FEB852CC
          6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF82776DFFFFFFF9F5F2F9F6F3F9F6F3F9F6F3FAF9F8FAFAFBCC6600CC66
          00CC6600CC6600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFF877C70FFFFFFFAF8F5FAF8F6FAF8F6FBF9F7FFFFFD
          F8F6F5FAFAFBFAFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF8C8074FFFFFFFCFBFAFCFBFAFC
          FBFAFFFFFFBD9B9A5D554C645A5292887EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF908478FFFF
          FFFEFEFDFEFEFDFEFEFDFFFFFFC88C8CFFFFFFFFFFFFAB9F94FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF978A7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB8F90FFFFFFAB9F94FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFA094879B8F829A8D809A8D809A8D809B8F819D9385
          AB9F94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ParentFont = False
        TabOrder = 2
        OnClick = bbt_SelectClick
      end
    end
    object Panel27: TPanel
      Left = 3
      Top = 49
      Width = 345
      Height = 172
      BevelInner = bvLowered
      Caption = 'Panel27'
      ParentBackground = False
      TabOrder = 2
      object ugd_EmrList: TUltraGrid
        Left = 2
        Top = 2
        Width = 341
        Height = 169
        BorderStyle = bsNone
        Color = 16383999
        ColCount = 4
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        FixedColor = 13882323
        FixedCols = 0
        RowCount = 2
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        GridLineWidth = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = False
        TabOrder = 0
        FixedAlignment = taCenter
        FixedFontBold = False
        GridRowColor = 15724527
        Title = #45824#49345#54872#51088'|'#51077#50896#51068#51088'|'#44592#47197#51068#51088'|'#44592#47197#44396#48516'(MON/NIC)'
        Wrap = False
        MaxCol = 80
        ColWidths = (
          69
          84
          85
          103)
      end
    end
  end
  object pn_If_Su: TPanel
    Left = 111
    Top = 198
    Width = 1556
    Height = 454
    Color = clActiveBorder
    ParentBackground = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    Visible = False
    object BitBtn1: TBitBtn
      Left = -8
      Top = 76
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Caption = ' V/S '#52769#51221
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
        3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
        000077777777777777773303333333333333337FF333333F33333709333333C3
        333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
        77777777777777777777330339339333C333337FF73373F37F33370C333C3933
        933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
        7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
        33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object chr_VS_Su: TChart
      Left = 1
      Top = 1
      Width = 1554
      Height = 452
      BackWall.Color = 15328747
      BackWall.Transparent = False
      Gradient.EndColor = 4637161
      Gradient.Visible = True
      Legend.Alignment = laLeft
      Legend.ColorWidth = 35
      Legend.HorizMargin = 3
      Legend.LegendStyle = lsSeries
      Legend.Shadow.HorizSize = 1
      Legend.Shadow.VertSize = 1
      Legend.Symbol.Width = 35
      Legend.TextStyle = ltsPlain
      Legend.TopPos = 59
      MarginBottom = 2
      MarginLeft = 2
      MarginRight = 0
      MarginTop = 2
      Title.Text.Strings = (
        '')
      Title.Visible = False
      Title.AdjustFrame = False
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.DateTimeFormat = 'hh:nn'
      BottomAxis.ExactDateTime = False
      BottomAxis.Grid.Style = psDashDotDot
      BottomAxis.Grid.SmallDots = True
      BottomAxis.Increment = 0.041666666666666700
      BottomAxis.LabelsSeparation = 0
      BottomAxis.Maximum = 25.000000000000000000
      ClipPoints = False
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 10.000000000000000000
      LeftAxis.LabelsMultiLine = True
      LeftAxis.Maximum = 250.000000000000000000
      RightAxis.Automatic = False
      RightAxis.AutomaticMaximum = False
      RightAxis.AutomaticMinimum = False
      RightAxis.ExactDateTime = False
      RightAxis.Grid.Visible = False
      RightAxis.Increment = 0.500000000000000000
      RightAxis.LabelsFormat.Font.Color = clMaroon
      RightAxis.Maximum = 39.000000000000000000
      RightAxis.Minimum = 34.000000000000000000
      RightAxis.PositionPercent = 100.000000000000000000
      TopAxis.Visible = False
      View3D = False
      Zoom.AnimatedSteps = 6
      OnAfterDraw = chr_VS_SuAfterDraw
      Align = alClient
      BevelOuter = bvNone
      Color = 4637161
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object TPanel
        Left = 4
        Top = 200
        Width = 82
        Height = 46
        ParentBackground = False
        TabOrder = 0
        object lb_MoniPrd_Su: TLabel
          Left = 1
          Top = 1
          Width = 80
          Height = 20
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = #52769#51221#51452#44592'('#48516')'
          Color = 964567
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object combx_Moniprd_Su: TComboBox
          Left = 6
          Top = 23
          Width = 43
          Height = 19
          Hint = #51109#48708'Interface '#52769#51221#51452#44592' '#48320#44221#54980', '#48152#46300#49884' ['#51452#44592#48320#44221']'#51012' '#45580#47084#49436' '#51201#50857#54644#51452#49901#49884#50724'.'
          Style = csDropDownList
          DropDownCount = 20
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = 'Microsoft Office IME 2007'
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Items.Strings = (
            '5'
            '10'
            '15'
            '20'
            '25'
            '30'
            '35'
            '40'
            '45'
            '50'
            '55'
            '60')
        end
        object BitBtn2: TBitBtn
          Left = 52
          Top = 22
          Width = 22
          Height = 22
          Hint = #51452#44592#48320#44221
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000013000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF5050FFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF000070000070000070BFBFBF0000FF0000FF5050FF5050FF5050FFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF2F1070000070
            0F008F0F00A04030DF0F10FF0F0FFF2020FF3F3FFF5050FF8080FFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFA09FF00F005F0F006F1F008F1F
            009F0F00DF0000FF1010FF2F2FFF4F4FFF6060FF7F7FFFA0A0FFBFBFBFBFBFBF
            BFBFBF000000BFBFBFBFBFBF8F8FFF8F8FFF3F308F1F106F2F108020109FBFBF
            BF5F5FFF0000FF3F3FFF5F5FFF6060F07F7FF09090F0BFBFBFBFBFBFBFBFBF00
            0000BFBFBFBFBFBF8080FF6F6FFFB0B0FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            5050FF8080FFBFBFBFBFBFBF1F107F1F0F6F1F0F60BFBFBFBFBFBF000000BFBF
            BFB0B0FF5050FF5F5FFF6060FFA0A0FF6F6FFFBFBFBFBFBFBFBFBFBFBFBFBF80
            80FFBFBFBFBFBFBF1F00801000700F0060BFBFBFBFBFBF000000BFBFBFAFAFFF
            3F3FFF4040FF3F3FFF2020FF6060FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF5F40C010009F10008F4F3F9FBFBFBFBFBFBF000000BFBFBFBFBFBF3030FF20
            20FF2020FF1010FF6060FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF1000BF1000BF
            1F00B01F00A0BFBFBFBFBFBFBFBFBF000000BFBFBF4040FF0000FF0000FF0000
            FF5050FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF2000C05F
            3FCFBFBFBFBFBFBFBFBFBF000000BFBFBF7070FF8080FF7F7FFF8F8FFFBFBFBF
            0F0FFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5F4FCF705FD0BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4F4FFF0F0FFF60
            60FFBFBFBFBFBFBFBFBFBF5F4FB010009F1000AF705FD0BFBFBFBFBFBFBFBFBF
            BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF2020FF1F1FFF3030FF3F3FFFB0B0
            FFBFBFBF5F4F9F0F007F1F00901F009F1F00AFBFBFBFBFBFBFBFBFBFBFBFBF00
            0000BFBFBFBFBFBFBFBFBF9F9FFF9F9FFF4040FF5F5FFF6060FF7F7FF02F1F6F
            00005F10006F1F00800F005FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBF7070FF7070FF8080FF9090FF706FCF0F00500F
            005F0F005FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF9F9FFFA0A0FFA0A0FFAFB0FF7F70CF0F005FBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbt_MoniprdClick
        end
      end
      object LineSeries7: TLineSeries
        SeriesColor = 8388863
        Title = 'SpO2'
        Brush.BackColor = clDefault
        LinePen.Color = 4194432
        LinePen.Visible = False
        Pointer.Brush.Color = 8388863
        Pointer.HorizSize = 5
        Pointer.InflateMargins = True
        Pointer.Style = psDiamond
        Pointer.VertSize = 5
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object LineSeries6: TLineSeries
        Marks.Style = smsValue
        SeriesColor = 4194432
        Title = 'RR'
        Brush.BackColor = clDefault
        LinePen.Visible = False
        Pointer.Brush.Color = 8388863
        Pointer.HorizSize = 5
        Pointer.InflateMargins = True
        Pointer.Style = psStar
        Pointer.VertSize = 5
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object LineSeries1: TLineSeries
        Marks.Style = smsValue
        SeriesColor = clRed
        Title = 'HR'
        Brush.Style = bsFDiagonal
        Brush.BackColor = clDefault
        Dark3D = False
        LineBrush = bsFDiagonal
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object LineSeries2: TLineSeries
        Marks.Visible = True
        Marks.Style = smsValue
        SeriesColor = 64
        Title = 'BT'
        VertAxis = aRightAxis
        Brush.BackColor = clDefault
        Pointer.Brush.Color = clGreen
        Pointer.HorizSize = 5
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.VertSize = 5
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object LineSeries3: TLineSeries
        Marks.Style = smsValue
        SeriesColor = 12615680
        Title = 'SBP'
        Brush.Style = bsClear
        Brush.BackColor = clDefault
        LineBrush = bsClear
        LinePen.Color = 16744448
        LinePen.Visible = False
        Pointer.HorizSize = 5
        Pointer.InflateMargins = True
        Pointer.Style = psDownTriangle
        Pointer.VertSize = 5
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object LineSeries4: TLineSeries
        Marks.Style = smsValue
        SeriesColor = 12615680
        Title = 'DBP'
        Brush.Style = bsClear
        Brush.BackColor = clDefault
        LineBrush = bsClear
        LinePen.Color = 8454016
        LinePen.Visible = False
        Pointer.Brush.Color = 12615680
        Pointer.HorizSize = 5
        Pointer.InflateMargins = True
        Pointer.Style = psTriangle
        Pointer.VertSize = 5
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
  end
  object apn_Note: TAdvPanel
    Left = 316
    Top = 93
    Width = 374
    Height = 515
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Visible = False
    Version = '2.4.1.0'
    AutoSize.Height = False
    AutoSize.Width = False
    AutoHideChildren = False
    CanMove = True
    Caption.Color = clPurple
    Caption.ColorTo = clFuchsia
    Caption.CloseButton = True
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.Indent = 10
    Caption.MinMaxButton = True
    Caption.Shape = csSemiRounded
    Caption.Text = '<FONT face="'#44404#47548#52404'"></FONT>ICU NOTE'
    Caption.TopIndent = 2
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 515
    object asg_IoSum: TAdvStringGrid
      Left = 1
      Top = 19
      Width = 372
      Height = 124
      Cursor = crDefault
      Ctl3D = False
      DefaultColWidth = 40
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      RowCount = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      CellNode.ShowTree = False
      ColumnHeaders.Strings = (
        #44396#48516
        'Day'
        'Evening'
        'Night'
        'Total')
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.ControlStyle = csClassic
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      ControlLook.NoDisabledButtonLook = True
      EnhRowColMove = False
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 68
      FixedRowHeight = 17
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      Flat = True
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
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
      PrintSettings.Centered = False
      PrintSettings.PageNumSep = '/'
      RowHeaders.Strings = (
        'Duty'#48324' I/O'
        'Intake'
        'Output'
        'In - Out'
        'Feeding/kg'
        'Urine/kg/h')
      ScrollWidth = 16
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SelectionColor = clCaptionText
      SelectionTextColor = clWindowText
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Column = 0
      Version = '7.8.6.0'
      ColWidths = (
        68
        77
        75
        75
        74)
      RowHeights = (
        17
        21
        21
        21
        21
        21)
    end
    object pn_SelNote: TPanel
      Left = 0
      Top = 142
      Width = 374
      Height = 373
      Caption = 'pn_SelNote'
      ParentBackground = False
      TabOrder = 1
      object lb_BgSelNote: TLabel
        Left = 1
        Top = 1
        Width = 372
        Height = 16
        AutoSize = False
        Color = clPurple
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = 13
        Font.Name = #44032#45716#44033#51652#51228#47785#52404
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lb_SelNote: TLabel
        Left = 11
        Top = 4
        Width = 61
        Height = 12
        Caption = 'NOTE '#51312#54924
        Color = clPurple
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object asg_Note: TAdvStringGrid
        Left = 1
        Top = 18
        Width = 372
        Height = 210
        Cursor = crDefault
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 40
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'MS Sans Serif'
        ActiveCellFont.Style = [fsBold]
        CellNode.ShowTree = False
        ColumnHeaders.Strings = (
          #51068#49884
          #51060#48292#53944
          #51089#49457#51088)
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.ControlStyle = csClassic
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        ControlLook.NoDisabledButtonLook = True
        EnhRowColMove = False
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Larger than'
          'Smaller than'
          'Clear')
        FixedColWidth = 42
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        Flat = True
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glSoft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
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
        PrintSettings.Centered = False
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          '')
        ScrollWidth = 16
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Column = 0
        Version = '7.8.6.0'
        ColWidths = (
          42
          267
          42)
        RowHeights = (
          21
          21)
      end
      object pn_InsNote: TPanel
        Left = 0
        Top = 228
        Width = 374
        Height = 144
        BevelInner = bvLowered
        ParentBackground = False
        TabOrder = 1
        object sbt_Nrrec: TSpeedButton
          Left = 287
          Top = 20
          Width = 40
          Height = 40
          Cursor = crHandPoint
          Hint = #45432#53944' --> '#48337#46041#44036#54840#44592#47197' '#51200#51109
          BiDiMode = bdLeftToRight
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000013000000140000000100
            180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004600004600FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0046002AC7542AC754004600FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0046001BB6361BB6361BB636004600FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0046000046000046
            000046000046000046001BB6361BB6361BB636004600FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0064000EA70E0DA30B0DA30B
            0DA30B0DA30C0CA30F0AA3120CA50E04A14D004600FFFFFFFFFFFF000000FFFF
            FFFFFFFF5E544B42372B42362BFAFAFB00600000FFFF00FFFF00FFFF00FFFF00
            FFFF1DAF1B1DAF1B1DAF1B00FFFF005D00FFFFFFFFFFFF000000FFFFFFFFFFFF
            756A62FFFFFFFFFFFFFAFAFB005700005700005600005700005B000056001BB6
            361BB63600FFFF005D00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF776C63FF
            FFFFF1EBE6F8F5F3FAFAFBFAFAFBFAFAFBFAFAFB005D002AC7542AC75400FFFF
            005D00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF7B7067FFFFFFF5EF
            EAF5F0EBF5F0EBF5F0EBF7F1EDFAFAFB005D002AC75400FFFF005D00FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF80766BFFFFFFF7F2EEF7F3EF
            F7F3EFF7F3EFF7F3EFFAF8F7FAFAFB005D00005D00FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFF857A6FFFFFFFF9F6F2F9F6F3F9F6F3F9
            F6F3F9F6F3FAF7F4FAF9F8FAFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF000000FFFFFFFFFFFF897E72FFFFFFFAF8F6FAF8F6FAF8F6FAF9F7FEFD
            FCF2EEEAD5CFC9897E72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFF8E8277FFFFFFFCFBFAFCFBFAFCFBFAFFFFFEBE9E9D625A51
            675E5695897EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
            FFFFFFFF92877BFFFFFFFEFEFDFEFEFDFEFEFDFFFFFFC88F8FFFFFFFFFFFFFAB
            9F94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            988C80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB9192FFFFFFAB9F94FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA194889D
            90839C8F829C8F829C8F829C90839E9387AB9F94FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000}
          Layout = blGlyphTop
          Margin = 6
          ParentFont = False
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 6
          OnClick = sbt_NrrecClick
        end
        object Bevel17: TBevel
          Left = 88
          Top = 19
          Width = 88
          Height = 20
        end
        object Bevel18: TBevel
          Left = 2
          Top = 19
          Width = 86
          Height = 20
        end
        object Label19: TLabel
          Left = 25
          Top = 23
          Width = 36
          Height = 12
          Caption = #51068'  '#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object Label20: TLabel
          Left = 115
          Top = 23
          Width = 36
          Height = 12
          Caption = #49884'  '#44036
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object Bevel19: TBevel
          Left = 176
          Top = 19
          Width = 109
          Height = 20
        end
        object Label21: TLabel
          Left = 208
          Top = 23
          Width = 48
          Height = 12
          Caption = #51089' '#49457' '#51088
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object lb_InsUp: TLabel
          Left = 309
          Top = 71
          Width = 56
          Height = 13
          Caption = 'lb_InsUp'
          Transparent = False
          Visible = False
        end
        object lb_ActDate: TLabel
          Left = 374
          Top = 86
          Width = 70
          Height = 13
          Caption = 'lb_ActDate'
          Transparent = False
          Visible = False
        end
        object lb_ActSeqNo: TLabel
          Left = 375
          Top = 94
          Width = 77
          Height = 13
          Caption = 'lb_ActSeqNo'
          Transparent = False
          Visible = False
        end
        object Bevel22: TBevel
          Left = 285
          Top = 19
          Width = 3
          Height = 40
        end
        object bbt_Cancel: TSpeedButton
          Left = 328
          Top = 20
          Width = 44
          Height = 40
          Cursor = crHandPoint
          Hint = #45432#53944#51077#47141' '#52712#49548
          BiDiMode = bdLeftToRight
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000093000093000093000093000093000093000093000093FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093
            002EFF0036FF0036FF0036FF0036FF0036FF0036FF002EFF000093FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093002EFF002EFF00
            33FF0033FF0033FF0033FF0033FF0033FF0035FF002EFF000093FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093002EFF0034FF002EFF002EFF0032
            FF0033FF0033FF0032FF002EFF002EFF0034FF002EFF000093FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000930035FF0035FF002EFFFFCCFFFFCCFF0029FF0032FF
            0032FF0029FFFFCCFFFFCCFF002EFF0035FF0035FF000093FFFFFFFFFFFFFFFF
            FFFFFFFF0029CA0035FF0033FF002EFFFFFFFFFFFFFFFFCCFF0028FF0028FFFF
            CCFFFFFFFFFFFFFF002EFF0033FF0035FF0029CAFFFFFFFFFFFFFFFFFFFFFFFF
            0029CA0033FF0033FF0033FF0029C9FFFFFFFFFFFFFFCCFFFFCCFFFFFFFFFFFF
            FF0029C90033FF0033FF0033FF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0029C900
            33FF0033FF0033FF0033FF0029C9FFFFFFFFFFFFFFFFFFFFFFFF0029C90033FF
            0033FF0033FF0033FF0029C9FFFFFFFFFFFFFFFFFFFFFFFF0028C90538FF0538
            FF0538FF0437FF002EFFFFCCFFFFFFFFFFFFFFFFCCFF002EFF0437FF0538FF05
            38FF0538FF0028C9FFFFFFFFFFFFFFFFFFFFFFFF0027C90C41FF0F42FF0F41FF
            0539FFFFCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCFF0539FF0F41FF0F42FF0C41
            FF0027C9FFFFFFFFFFFFFFFFFFFFFFFF0024C91146FF1146FF1547FFFFCCFFFF
            FFFFFFFFFF0029C90029C9FFFFFFFFFFFFFFCCFF1547FF1146FF1146FF0024C9
            FFFFFFFFFFFFFFFFFFFFFFFF0029CAFFCCFF184EFF184EFFFFCCFFFFFFFF0029
            C92757FF2757FF0029C9FFFFFFFFCCFF184EFF184EFFFFCCFF0029CAFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF0029CAFFCCFF3060FF0029C90029C93162FF3060FF
            3060FF3162FF0029C90029C93060FFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF0029CAFFCCFF3165FF2F65FF3165FF3165FF3165FF31
            65FF2F65FF3165FFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF0029CAFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCCFFFFCC
            FFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0029CA0029CA0029CA0029CA0029CA0029CA0029CA0029CA
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          Margin = 6
          ParentFont = False
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 6
          OnClick = bbt_CancelClick
        end
        object lb_Flag: TLabel
          Left = 276
          Top = 65
          Width = 49
          Height = 13
          Caption = 'lb_Flag'
          Transparent = False
          Visible = False
        end
        object lb_BgInsNote: TLabel
          Left = 1
          Top = 0
          Width = 372
          Height = 18
          AutoSize = False
          Color = clPurple
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = 13
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lb_InsNote: TLabel
          Left = 11
          Top = 3
          Width = 61
          Height = 12
          Caption = 'NOTE '#51077#47141
          Color = clPurple
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Bevel2: TBevel
          Left = 2
          Top = 60
          Width = 494
          Height = 2
        end
        object sbt_TemplSel: TSpeedButton
          Left = 255
          Top = 1
          Width = 58
          Height = 16
          Cursor = crHandPoint
          Hint = #45432#53944' '#50696#47928#47784#51020' '#51312#54924'('#49688#51221'/'#49325#51228#45716' '#44592#48376#51221#48372'-'#44036#54840#44288#47532'('#50696#47928#50857'))'
          Caption = #50696#47928#51312#54924
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 13565927
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = sbt_TemplSelClick
        end
        object sbt_TemplIns: TSpeedButton
          Left = 312
          Top = 1
          Width = 60
          Height = 16
          Cursor = crHandPoint
          Hint = #45432#53944' '#51077#47141#45236#50669' '#50696#47928' '#46321#47197'('#49688#51221'/'#49325#51228#45716' '#44592#48376#51221#48372'-'#44036#54840#44288#47532'('#50696#47928#50857'))'
          Caption = #50696#47928#51200#51109
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 14208761
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          Margin = 6
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 6
          OnClick = sbt_TemplInsClick
        end
        object sbt_SelVs: TSpeedButton
          Left = 226
          Top = 1
          Width = 30
          Height = 16
          Cursor = crHandPoint
          Hint = #54644#45817' '#49884#44036#45824' V/S '#45432#53944#51077#47141#52285#51004#47196' '#48373#49324
          Caption = 'V/S'
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clAqua
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = sbt_SelVsClick
        end
        object sbt_SelResp: TSpeedButton
          Left = 75
          Top = 1
          Width = 69
          Height = 16
          Cursor = crHandPoint
          Hint = #54644#45817' '#49884#44036#45824' '#51064#44277#54840#55137#44592' '#45432#53944#51077#47141#52285#51004#47196' '#48373#49324
          Caption = #51064#44277#54840#55137#44592
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 7855357
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = sbt_SelRespClick
        end
        object sbt_SelBst: TSpeedButton
          Left = 197
          Top = 1
          Width = 30
          Height = 16
          Cursor = crHandPoint
          Hint = #54644#45817' '#49884#44036#45824' BST/BST'#52376#52824' '#45432#53944#51077#47141#52285#51004#47196' '#48373#49324
          Caption = 'BST'
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = sbt_SelBstClick
        end
        object sbt_SelO2: TSpeedButton
          Left = 143
          Top = 1
          Width = 55
          Height = 16
          Cursor = crHandPoint
          Hint = #54644#45817' '#49884#44036#45824' '#49328#49548#50836#48277' '#45432#53944#51077#47141#52285#51004#47196' '#48373#49324
          Caption = #49328#49548#50836#48277
          Flat = True
          Font.Charset = HANGEUL_CHARSET
          Font.Color = 4227327
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = sbt_SelO2Click
        end
        object dtp_RecDate: TDateTimePicker
          Left = 3
          Top = 39
          Width = 86
          Height = 20
          Date = 36949.789714120400000000
          Time = 36949.789714120400000000
          Color = 16383999
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544')'
          ParentFont = False
          TabOrder = 0
        end
        object ed_RecName: TEdit
          Left = 175
          Top = 39
          Width = 57
          Height = 20
          AutoSelect = False
          AutoSize = False
          Color = 16056319
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544')'
          MaxLength = 30
          ParentFont = False
          TabOrder = 3
          OnKeyDown = ed_RecNameKeyDown
        end
        object ed_RecDept: TEdit
          Left = 232
          Top = 39
          Width = 52
          Height = 20
          AutoSelect = False
          AutoSize = False
          Color = 15000804
          Enabled = False
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544')'
          MaxLength = 30
          ParentFont = False
          TabOrder = 5
        end
        object me_Content: TMemo
          Left = 3
          Top = 62
          Width = 370
          Height = 79
          Color = 16056319
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544')'
          Lines.Strings = (
            #44036#54840#44592#47197' '#51088#46041#50672#46041' '#44060#48156'/'#53580#49828#53944' '#51473#51077#45768#45796'.'
            #51312#44552#47564' '#44592#45796#47140#51452#49901#49884#50724'. - '#44060#48156#51088' '#50732#47548' -')
          MaxLength = 3000
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 4
        end
        object pn_UserList: TPanel
          Left = 144
          Top = 102
          Width = 209
          Height = 90
          BevelInner = bvLowered
          BorderWidth = 3
          ParentBackground = False
          TabOrder = 6
          Visible = False
          object ugd_UserList: TUltraGrid
            Left = 5
            Top = 5
            Width = 199
            Height = 80
            Cursor = crHandPoint
            BorderStyle = bsNone
            Color = 15463162
            DefaultRowHeight = 20
            DrawingStyle = gdsClassic
            FixedColor = 13882323
            FixedCols = 0
            RowCount = 2
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            GridLineWidth = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            OnDblClick = ugd_UserListDblClick
            FixedAlignment = taCenter
            FixedFontBold = False
            GridRowColor = 15463162
            Title = #49457#47749'|'#51649#44553'|'#49548#49549
            Wrap = False
            ColWidths = (
              57
              71
              71
              64
              64)
          end
        end
        object ed_RecId: TEdit
          Left = 259
          Top = 20
          Width = 23
          Height = 18
          AutoSelect = False
          AutoSize = False
          Color = 16056319
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeName = #54620#44397#50612'('#54620#44544')'
          MaxLength = 30
          ParentFont = False
          TabOrder = 7
          Visible = False
        end
        object ed_Hour: TEdit
          Left = 89
          Top = 39
          Width = 44
          Height = 20
          Color = 16056319
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544')'
          MaxLength = 2
          ParentFont = False
          TabOrder = 1
        end
        object ed_Min: TEdit
          Left = 132
          Top = 39
          Width = 44
          Height = 20
          Color = 16056319
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ImeMode = imSHanguel
          ImeName = #54620#44397#50612'('#54620#44544')'
          MaxLength = 2
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  object pn_Note: TPanel
    Left = 1171
    Top = 449
    Width = 361
    Height = 165
    BevelInner = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 10
    Visible = False
    object lb_NoteTitle: TLabel
      Left = 5
      Top = 5
      Width = 351
      Height = 20
      Align = alTop
      AutoSize = False
      Caption = ' Note '#51077#47141
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object me_Note: TMemo
      Left = 5
      Top = 25
      Width = 351
      Height = 112
      Align = alTop
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = #54620#44397#50612'('#54620#44544')'
      Lines.Strings = (
        '1String'
        '2'
        '3'
        '4')
      MaxLength = 1000
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object bbt_ConfirmInputNote: TBitBtn
      Left = 229
      Top = 138
      Width = 55
      Height = 22
      Cursor = crHandPoint
      Caption = #51200#51109
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      OnClick = bbt_ConfirmInputNoteClick
    end
    object bbt_CancelInputNote: TBitBtn
      Left = 284
      Top = 138
      Width = 55
      Height = 22
      Cursor = crHandPoint
      Caption = #52712#49548
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = bbt_CancelInputNoteClick
    end
  end
  object apn_NoteSearch: TAdvPanel
    Left = 690
    Top = 92
    Width = 270
    Height = 300
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    UseDockManager = True
    Visible = False
    Version = '2.4.1.0'
    CanMove = True
    Caption.Color = clPurple
    Caption.ColorTo = clFuchsia
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.Indent = 10
    Caption.MinMaxButton = True
    Caption.Shape = csSemiRounded
    Caption.Text = '<FONT face="'#44404#47548#52404'"></FONT>ICU NOTE'
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    FullHeight = 300
    object Label1: TLabel
      Left = 95
      Top = 24
      Width = 7
      Height = 12
      Caption = '~'
      Color = clSilver
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object asd_NoteSearch: TAdvStringGrid
      Left = 2
      Top = 41
      Width = 266
      Height = 257
      Cursor = crDefault
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 40
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      OnGetAlignment = asd_NoteSearchGetAlignment
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      CellNode.ShowTree = False
      ColumnHeaders.Strings = (
        #44592#47197#51068#51088
        #52509#49453#52712#47049
        #52509#48176#49444#47049
        #45824#48320#54943#49688)
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.ControlStyle = csClassic
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      ControlLook.NoDisabledButtonLook = True
      EnhRowColMove = False
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 68
      FixedRowHeight = 17
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      Flat = True
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
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
      PrintSettings.Centered = False
      PrintSettings.PageNumSep = '/'
      ScrollWidth = 16
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SelectionColor = clCaptionText
      SelectionTextColor = clWindowText
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Column = 0
      Version = '7.8.6.0'
      ColWidths = (
        68
        65
        65
        65)
      RowHeights = (
        17
        21
        21
        21
        21
        21)
    end
    object dtp_Fromdate: TDateTimePicker
      Left = 1
      Top = 20
      Width = 93
      Height = 20
      Date = 41274.595025543990000000
      Time = 41274.595025543990000000
      Color = 14155775
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 1
    end
    object dtp_Todate: TDateTimePicker
      Left = 105
      Top = 20
      Width = 94
      Height = 20
      Date = 41274.595025543990000000
      Time = 41274.595025543990000000
      Color = 14155775
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 2
    end
    object bbt_NoteSearch: TBitBtn
      Left = 198
      Top = 21
      Width = 71
      Height = 18
      Cursor = crHandPoint
      Caption = #51312' '#54924
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbt_NoteSearchClick
    end
  end
  object apn_Crrt: TAdvPanel
    Left = 686
    Top = 266
    Width = 377
    Height = 302
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    UseDockManager = True
    Visible = False
    Version = '2.4.1.0'
    CanMove = True
    Caption.Color = clPurple
    Caption.ColorTo = clFuchsia
    Caption.CloseButton = True
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.Indent = 10
    Caption.MinMaxButton = True
    Caption.Shape = csSemiRounded
    Caption.Text = '<FONT face="'#44404#47548#52404'"></FONT>CRRT '#44036#54840#44592#47197
    Caption.Visible = True
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    DesignSize = (
      377
      302)
    FullHeight = 300
    object lb_Crrt: TLabel
      Left = 184
      Top = 24
      Width = 7
      Height = 13
      Caption = 'N'
      Transparent = False
      Visible = False
    end
    object lb_CrrtTime: TLabel
      Left = 184
      Top = 24
      Width = 35
      Height = 13
      Caption = '00:00'
      Transparent = False
      Visible = False
    end
    object asg_Crrt: TAdvStringGrid
      Left = 2
      Top = 41
      Width = 374
      Height = 229
      Cursor = crDefault
      ColCount = 2
      Ctl3D = False
      DefaultColWidth = 40
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      RowCount = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnKeyDown = asg_CrrtKeyDown
      OnKeyPress = asg_CrrtKeyPress
      HoverRowCells = [hcNormal, hcSelected]
      OnCanEditCell = asg_CrrtCanEditCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      CellNode.ShowTree = False
      ColumnHeaders.Strings = (
        #44396#48516
        'Data'
        '')
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.ControlStyle = csClassic
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      ControlLook.NoDisabledButtonLook = True
      EnhRowColMove = False
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 202
      FixedRowHeight = 17
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      Flat = True
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glSoft
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
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
      PrintSettings.Centered = False
      PrintSettings.PageNumSep = '/'
      RowHeaders.Strings = (
        #44396#48516
        '(1) BLOOD FLOW (ML/MIN)'
        '(2) REPLACEMENT (ML/HR)'
        '     REPLACEMENT MIX (meq/5L)'
        '(3) DIALYSATE (ML/HR)'
        '(4) PBP  (ML/HR)'
        '(5) REMOVAL  (ML/HR)'
        '(6) ANTICOAGULANT : FUTHAN (ML/HR)'
        '                                     '#50857#47049
        '     ANTICOAGULANT : HEPARIN (ML/HR)'
        '                                     '#50857#47049)
      ScrollWidth = 16
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SelectionColor = clCaptionText
      SelectionTextColor = clWindowText
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Column = 0
      Version = '7.8.6.0'
      ColWidths = (
        202
        169)
      RowHeights = (
        17
        21
        21
        21
        21
        21
        21
        21
        21
        21
        21)
    end
    object dtb_Crrt: TDateTimePicker
      Left = 3
      Top = 20
      Width = 93
      Height = 20
      Date = 41274.595025543990000000
      Time = 41274.595025543990000000
      Color = 14155775
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
      ParentFont = False
      TabOrder = 1
      OnChange = dtb_CrrtChange
    end
    object bbt_CrrtBefor: TBitBtn
      Left = 255
      Top = 22
      Width = 60
      Height = 18
      Cursor = crHandPoint
      Caption = #51060' '#51204
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbt_CrrtBeforClick
    end
    object bbt_CrrtClose: TBitBtn
      Left = 304
      Top = 272
      Width = 70
      Height = 27
      Hint = 'CRRT '#44036#54840#44592#47197' '#45803#44592
      Caption = #45803#44592
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      Glyph.Data = {
        22050000424D2205000000000000360000002800000014000000150000000100
        180000000000EC04000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000093000093FFFFFFFFFFFF00
        0093000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000930029FF0033FF0000930000930033FF0029
        FF000093FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0029CAFFCCFF0029FF0033FF0033FF0029FFFFCCFF0029CA
        FFFFFFFFFFFFFFFFFFFFFFFF00547E003C5D003A5D003A5D003A5D003A5D003A
        5D96AEBCFFFFFF0029CA0C4CFF0C4CFF0C4CFF0C4CFF0029CAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF00629600D6FF00FFFF00FFFF00FFFF00FFFF00FFFF96FFFF
        FFFFFF000093146CFF146CFF146CFF146CFF000093FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00609308D1FF00E6FF00E5FF00E5FF00E5FF00E5FFFFFFFF00009320
        83FF2083FFFFCCFFFFCCFF2083FF2083FF000093FFFFFFFFFFFFFFFFFFFFFFFF
        0060931BD4FF00D4FF00D4FF00D4FF00D4FF00D4FFFFFFFF0029CAFFCCFFFFCC
        FF0029CA0029CAFFCCFFFFCCFF0029CAFFFFFFFFFFFFFFFFFFFFFFFF0060932B
        D6FF00CBFF00CCFF00CCFF00CCFF00CCFF96EAFFFEFEFF0029CA0029CAFFFFFF
        FFFFFF0029CA0029CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060933BD7FF00C9
        FF00C9FF00C9FF00C9FF00CAFF00CCFF96EAFFFFFFFFFFFFFF96EAFF96ECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00609345D8FFFFFFFFFFFFFF
        FFFFFFFFFFFF8CEBFF00CAFF00CCFF00CCFF00CCFF00CCFF00D2FF006093FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0060935FDEFF00669C006AA0006AA000
        689E3DAAD092EDFF00C8FF00C9FF00C9FF00C9FF00CFFF006093FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF00609372E0FF0097CB009BCE009BCE009ACD0099
        CD3AB0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF005E94FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF00609383E0FF009DD100A1D400A1D400A1D400A0D300A3D7
        008ABF008AC0008AC0008AC0008EC3006296FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00609395E2FF00B1E400B3E600B3E600B3E600B6E900B8EB00B9EC00
        B9EC00B9EC00B9EC00BDF0006295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        006094AEE7FF00C9FD00CAFD00CAFD00CCFF00CCFF0060930062950062950062
        95006295006295006598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        6094006094006194006194006194006194FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbt_CrrtCloseClick
    end
    object bbt_CrrtSave: TBitBtn
      Left = 231
      Top = 272
      Width = 70
      Height = 27
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #51200#51109
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      Glyph.Data = {
        B6050000424DB605000000000000360000002800000015000000160000000100
        1800000000008005000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        5E534A3F33283E33273E33273F332841352A3F33283E33273E33273F33284135
        2A3F33283E33273E33273F33285E544AFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        756A62FFFFFFFFFFFFFFFFFFFFFFFFD1C7BCFFFFFFFFFFFFFFFFFFFFFFFFD1C7
        BCFFFFFFFFFFFFFFFFFFFFFFFF756A62FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        776D63FFFFFFF6F1ECF7F2EDF9F4F0CCC1B8F9F4F0F7F2EDF7F2EDF9F4F0CCC1
        B8F9F4F0F7F2EDF6F1ECFFFFFF776D63FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        7F736AD5CBC1CEC5BBCFC5BBD0C6BCD2C9BFD0C6BCCFC5BBCFC5BBD0C6BCD2C9
        BFD0C6BCCFC5BBCEC5BBD5CBC17F736AFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        83786DFFFFFFFBF8F6FCF9F7FEFCF9D3C9BFFEFCF9FCF9F7FCF9F7FEFCF9D3C9
        BFFEFCF9FCF9F7FBF8F6FFFFFF83786DFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        887E72FFFFFFFCFAF9FCFBF9FEFDFCD6CDC3FEFDFCFBFAFAFAFAFBFAFAFBFAFA
        FBFAFAFBFAFAFBFAFAFBFCFCFD887E72FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        908379DED5CDD8CFC6D8CFC6D9D0C7DBD3CAECE9E6FAFAFB0066000066000066
        00006600006600006600FAFAFBCEC9C5FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        94887BFFFFFFFFFFFFFFFFFFFFFFFFEEEBE7FAFAFB0066003EDE793EDE793EDE
        793EDE793EDE793EDE79006600FAFAFBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        9A958CFFFFFFFFFFFFFFFFFFFFFFFFFAFAFB0066003EDE790CA51706880B0073
        00058809059E0A0099003EDE79006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        B043008A1C00891B00891B008A1B00FAFAFB00660051ED88098C13007300FFFF
        FF00730007890D07A00E51ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        CB6400FFAF24FFAA1EFFAA1EFFAC22FAFAFB00660051ED88007300FFFFFFFFFF
        FFFFFFFF00730007890D51ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C96000FFE1AEFFF1CEFFF0CDFFF3D6FAFAFB00660051ED88007300FFFFFF0073
        00FFFFFFFFFFFF00730051ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        CB6400C95F00C85D00C85C00C55A00FAFAFB00660051ED881697280073000E9F
        3F007300FFFFFF00730051ED88006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00660066FF9C31C85C05F7E918E7
        B91596260073000A8D1466FF9C006600FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00660071FFA971FFA971FF
        A971FFA971FFA971FFA9006600FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0066000066000066
        00006600006600006600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbt_CrrtSaveClick
    end
    object me_CrrtNrrec: TMemo
      Left = 16
      Top = 272
      Width = 113
      Height = 25
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = 'Microsoft IME 2010'
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object ed_CrrtHour: TEdit
      Left = 95
      Top = 20
      Width = 44
      Height = 20
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = #54620#44397#50612'('#54620#44544')'
      MaxLength = 2
      ParentFont = False
      TabOrder = 6
    end
    object ed_CrrtMin: TEdit
      Left = 138
      Top = 20
      Width = 44
      Height = 20
      Color = 16056319
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = #54620#44397#50612'('#54620#44544')'
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
    end
    object bbt_CrrtClear: TBitBtn
      Left = 164
      Top = 272
      Width = 70
      Height = 27
      Caption = #49888#44508
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
      OnClick = bbt_CrrtClearClick
    end
    object bbt_CrrtAfter: TBitBtn
      Left = 315
      Top = 22
      Width = 60
      Height = 18
      Cursor = crHandPoint
      Caption = #51060' '#54980
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clPurple
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = bbt_CrrtAfterClick
    end
  end
  object bt_print: TButton
    Left = 1475
    Top = 53
    Width = 75
    Height = 25
    Caption = 'bt_print'
    TabOrder = 13
    Visible = False
    OnClick = bt_printClick
  end
  object cds_MonItem: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cds_MonItemIndex1'
        Fields = 'setcode;itemcode'
      end>
    Params = <>
    StoreDefs = True
    Left = 27
    Top = 603
    object cds_MonItemsetcode: TStringField
      DisplayWidth = 10
      FieldName = 'setcode'
      Size = 10
    end
    object cds_MonItemsetname: TStringField
      FieldName = 'setname'
      Size = 100
    end
    object cds_MonIteminputtyp: TStringField
      FieldName = 'inputtyp'
      Size = 2
    end
    object cds_MonItemlimit: TStringField
      FieldName = 'limit'
      Size = 4
    end
    object cds_MonItemupcode: TStringField
      FieldName = 'upcode'
      Size = 4
    end
    object cds_MonItemitemcode: TStringField
      FieldName = 'itemcode'
      Size = 10
    end
    object cds_MonItemitemname: TStringField
      FieldName = 'itemname'
      Size = 100
    end
    object cds_MonItemdispseq: TStringField
      FieldName = 'dispseq'
      Size = 2
    end
  end
  object cds_SaveItem: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cds_MonItemIndex1'
        Fields = 'setcode;acttime'
      end>
    Params = <>
    StoreDefs = True
    Left = 27
    Top = 551
    object cds_SaveItemsetcode: TStringField
      DisplayWidth = 10
      FieldName = 'setcode'
      Size = 10
    end
    object cds_SaveItemacttime: TStringField
      FieldName = 'acttime'
      Size = 5
    end
    object cds_SaveItemitemvalue: TStringField
      FieldName = 'itemvalue'
      Size = 100
    end
    object cds_SaveItemmodflag: TStringField
      FieldName = 'modflag'
      Size = 1
    end
    object cds_SaveItemintflag: TStringField
      FieldName = 'intflag'
      Size = 1
    end
    object cds_SaveItemaddinfo: TStringField
      FieldName = 'addinfo'
      Size = 100
    end
  end
  object Popup_Act: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = Popup_ActPopup
    Left = 26
    Top = 654
    object mi_InsBsData: TMenuItem
      Caption = 'B/S '#45236#50669#51312#54924
      OnClick = mi_InsBsDataClick
    end
    object mi_InsBsAct: TMenuItem
      Caption = 'B/S '#49688#54665#50696#51221
      Visible = False
      OnClick = mi_InsBsActClick
    end
    object mi_InsCvpAct: TMenuItem
      Caption = 'CVP '#49688#54665#50696#51221
      Visible = False
      OnClick = mi_InsCvpActClick
    end
    object mi_InsIoData: TMenuItem
      Caption = 'I/O '#45236#50669#51312#54924
      OnClick = mi_InsIoDataClick
    end
    object mi_InsVsAct: TMenuItem
      Caption = #49688#54665#50696#51221
      Visible = False
      OnClick = mi_InsVsActClick
    end
    object mi_DelAct: TMenuItem
      Caption = #49688#54665#50696#51221' '#54644#51228
      Visible = False
      OnClick = mi_DelActClick
    end
  end
end
