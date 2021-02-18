object MDN110FM_P02: TMDN110FM_P02
  Left = 471
  Top = 15
  Caption = '[MDN110FM_P02] ICU/NICU '#53685#54633' '#44036#54840#44592#47197#51648' '#49436#49885'(A4)'
  ClientHeight = 1062
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object qr_Icu_A4: TQuickRep
    Left = 8
    Top = -6
    Width = 794
    Height = 1123
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    BeforePrint = qr_Icu_A4BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      '')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    OnNeedData = qr_Icu_A4NeedData
    Options = []
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      70.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand2: TQRBand
      Left = 19
      Top = 368
      Width = 756
      Height = 12
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = True
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrlb_Val0: TQRLabel
        Left = 2
        Top = 2
        Width = 97
        Height = 8
        Size.Values = (
          21.166666666666700000
          5.291666666666670000
          5.291666666666670000
          256.645833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'SPO2(%)'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 5
      end
      object QRShape111: TQRShape
        Left = 98
        Top = -2
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          259.291666666667000000
          -5.291666666666670000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape112: TQRShape
        Left = 154
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          407.458333333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape113: TQRShape
        Left = 181
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          478.895833333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape114: TQRShape
        Left = 209
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          552.979166666667000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape115: TQRShape
        Left = 237
        Top = -1
        Width = 2
        Height = 12
        Size.Values = (
          31.750000000000000000
          627.062500000000000000
          -2.645833333333330000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape116: TQRShape
        Left = 265
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          701.145833333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape117: TQRShape
        Left = 293
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          775.229166666667000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape118: TQRShape
        Left = 321
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          849.312500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape119: TQRShape
        Left = 349
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          923.395833333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape120: TQRShape
        Left = 376
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          994.833333333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape121: TQRShape
        Left = 403
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1066.270833333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape122: TQRShape
        Left = 431
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1140.354166666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape123: TQRShape
        Left = 458
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1211.791666666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape124: TQRShape
        Left = 485
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1283.229166666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape125: TQRShape
        Left = 513
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1357.312500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape126: TQRShape
        Left = 540
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1428.750000000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape127: TQRShape
        Left = 567
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1500.187500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape128: TQRShape
        Left = 594
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1571.625000000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape129: TQRShape
        Left = 621
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1643.062500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape130: TQRShape
        Left = 648
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1714.500000000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Val2: TQRLabel
        Left = 127
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          336.020833333333000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val3: TQRLabel
        Left = 154
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          407.458333333333000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val4: TQRLabel
        Left = 181
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          478.895833333333000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val5: TQRLabel
        Left = 209
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          552.979166666667000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val6: TQRLabel
        Left = 237
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          627.062500000000000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val7: TQRLabel
        Left = 265
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          701.145833333333000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val8: TQRLabel
        Left = 293
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          775.229166666667000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val9: TQRLabel
        Left = 321
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          849.312500000000000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val10: TQRLabel
        Left = 349
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          923.395833333333000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val11: TQRLabel
        Left = 376
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          994.833333333333000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '10'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val12: TQRLabel
        Left = 403
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          1066.270833333330000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '11'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val13: TQRLabel
        Left = 431
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1140.354166666670000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val14: TQRLabel
        Left = 458
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1211.791666666670000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '13'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val15: TQRLabel
        Left = 485
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          1283.229166666670000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '14'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val16: TQRLabel
        Left = 513
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1357.312500000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '15'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val17: TQRLabel
        Left = 540
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1428.750000000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '16'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val18: TQRLabel
        Left = 567
        Top = 1
        Width = 29
        Height = 9
        Size.Values = (
          23.812500000000000000
          1500.187500000000000000
          2.645833333333330000
          76.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '17'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val19: TQRLabel
        Left = 594
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1571.625000000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '18'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val20: TQRLabel
        Left = 621
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1643.062500000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '19'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val21: TQRLabel
        Left = 648
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1714.500000000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '20'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val22: TQRLabel
        Left = 675
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1785.937500000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '21'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape1: TQRShape
        Left = 675
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1785.937500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Val1: TQRLabel
        Left = 98
        Top = 1
        Width = 30
        Height = 9
        Size.Values = (
          23.812500000000000000
          259.291666666667000000
          2.645833333333330000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape6: TQRShape
        Left = 127
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          336.020833333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 702
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1857.375000000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 729
        Top = -1
        Width = 1
        Height = 12
        Size.Values = (
          31.750000000000000000
          1928.812500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Val23: TQRLabel
        Left = 702
        Top = 1
        Width = 28
        Height = 9
        Size.Values = (
          23.812500000000000000
          1857.375000000000000000
          2.645833333333330000
          74.083333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '22'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Val24: TQRLabel
        Left = 729
        Top = 1
        Width = 27
        Height = 9
        Size.Values = (
          23.812500000000000000
          1928.812500000000000000
          2.645833333333330000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '23'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape30: TQRShape
        Left = 1528
        Top = 1
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          4042.833333333330000000
          2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRSysData22: TQRSysData
      Left = 717
      Top = 1132
      Width = 56
      Height = 15
      Size.Values = (
        39.687500000000000000
        1897.062500000000000000
        2995.083333333330000000
        148.166666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsDateTime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Text = ''
      Transparent = False
      ExportAs = exptText
      FontSize = 8
    end
    object TitleBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 336
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        889.000000000000000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object qchart_Icu: TQRChart
        Left = 0
        Top = 48
        Width = 756
        Height = 290
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          767.291666666667000000
          0.000000000000000000
          127.000000000000000000
          2000.250000000000000000)
        XLColumn = 0
        object QRDBChart1: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Style = bsClear
          BackWall.Color = clWhite
          BackWall.Dark3D = False
          BackWall.Size = 3
          Gradient.EndColor = 8454143
          MarginBottom = 2
          MarginLeft = 0
          MarginRight = 0
          MarginTop = 1
          Title.Brush.Color = clSilver
          Title.Color = clSilver
          Title.Text.Strings = (
            'TQRDBChart')
          Title.Visible = False
          BottomAxis.Automatic = False
          BottomAxis.AutomaticMaximum = False
          BottomAxis.AutomaticMinimum = False
          BottomAxis.DateTimeFormat = 'hh:nn'
          BottomAxis.Grid.Color = clBlack
          BottomAxis.LabelsAngle = 90
          BottomAxis.LabelsFormat.Font.Charset = ANSI_CHARSET
          BottomAxis.Maximum = 23.000000000000000000
          BottomAxis.TickOnLabelsOnly = False
          ClipPoints = False
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Axis.Style = psDot
          LeftAxis.ExactDateTime = False
          LeftAxis.Grid.Color = clBlack
          LeftAxis.LabelsFormat.Font.Charset = ANSI_CHARSET
          LeftAxis.LabelsFormat.Font.Height = -12
          LeftAxis.LabelsFormat.Font.Name = #44404#47548#52404
          LeftAxis.Maximum = 250.000000000000000000
          LeftAxis.MinorGrid.Style = psDot
          LeftAxis.Ticks.Color = clBlack
          LeftAxis.TickOnLabelsOnly = False
          LeftAxis.Title.Font.Charset = ANSI_CHARSET
          LeftAxis.Title.Font.Height = -12
          LeftAxis.Title.Font.Name = #44404#47548#52404
          Legend.Alignment = laTop
          Legend.ColorWidth = 100
          Legend.Symbol.Width = 100
          Legend.TopPos = 0
          Pages.MaxPointsPerPage = 24
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          RightAxis.Axis.Style = psDot
          RightAxis.Axis.Width = 1
          RightAxis.Axis.Visible = False
          RightAxis.Grid.Color = clBlack
          RightAxis.Grid.Visible = False
          RightAxis.Maximum = 39.000000000000000000
          RightAxis.Minimum = 34.000000000000000000
          RightAxis.PositionPercent = 100.000000000000000000
          RightAxis.TickOnLabelsOnly = False
          TopAxis.Automatic = False
          TopAxis.AutomaticMaximum = False
          TopAxis.AutomaticMinimum = False
          TopAxis.Visible = False
          View3D = False
          BevelWidth = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series2: TLineSeries
            Marks.Style = smsValue
            Marks.Callout.Length = 0
            SeriesColor = clBlack
            Title = 'HR'
            Brush.BackColor = clDefault
            LinePen.Width = 2
            Pointer.Brush.Color = clRed
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = True
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series1: TLineSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Visible = True
            Marks.Style = smsValue
            SeriesColor = clBlack
            Title = 'BT'
            VertAxis = aRightAxis
            Brush.BackColor = clDefault
            LinePen.Width = 2
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
          object Series3: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'SBP'
            ClickableLine = False
            Pointer.Brush.Color = 12615680
            Pointer.InflateMargins = True
            Pointer.Style = psDownTriangle
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series4: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'DBP'
            ClickableLine = False
            Pointer.Brush.Color = 12615680
            Pointer.InflateMargins = True
            Pointer.Style = psTriangle
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series5: TPointSeries
            Active = False
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'mean BP'
            ClickableLine = False
            Pointer.Brush.Color = clBlack
            Pointer.InflateMargins = False
            Pointer.Style = psDiagCross
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series7: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clWhite
            Title = 'ASBP'
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psDownTriangle
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series6: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'ADBP'
            ClickableLine = False
            Pointer.InflateMargins = True
            Pointer.Style = psTriangle
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series8: TPointSeries
            Active = False
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'mean ABP'
            ClickableLine = False
            Pointer.Brush.Color = clFuchsia
            Pointer.InflateMargins = True
            Pointer.Style = psCross
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object qrlb_ReportName: TQRLabel
        Left = 18
        Top = 23
        Width = 201
        Height = 23
        Size.Values = (
          60.854166666666670000
          47.625000000000000000
          60.854166666666670000
          531.812500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = #51473#54872#51088#49892' '#44036#54840#44592#47197#51648
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object qrlb_Title4: TQRLabel
        Left = 1261
        Top = 27
        Width = 77
        Height = 14
        Size.Values = (
          37.041666666666700000
          3336.395833333330000000
          71.437500000000000000
          203.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#54872#51088#47749#12305
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlb_Title1: TQRLabel
        Left = 233
        Top = 26
        Width = 67
        Height = 10
        Size.Values = (
          26.458333333333300000
          616.479166666667000000
          68.791666666666700000
          177.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#44592#47197#51068#51088#12305
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_Title3: TQRLabel
        Left = 233
        Top = 2
        Width = 67
        Height = 11
        Size.Values = (
          29.104166666666700000
          616.479166666667000000
          5.291666666666670000
          177.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#54872#51088#51221#48372#12305
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_PatInfo: TQRLabel
        Left = 294
        Top = 2
        Width = 222
        Height = 11
        Size.Values = (
          29.104166666666670000
          777.875000000000000000
          5.291666666666667000
          587.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '01712345 / '#51076#49352#47196#48120'['#50668',31'#49464',AB+,141'#51068']'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_ActDate: TQRLabel
        Left = 294
        Top = 26
        Width = 211
        Height = 12
        Size.Values = (
          31.750000000000000000
          777.875000000000000000
          68.791666666666670000
          558.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '2001-01-01 06:01 ~ 2001-01-02 06:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_PatName: TQRLabel
        Left = 1332
        Top = 27
        Width = 67
        Height = 14
        Size.Values = (
          37.041666666666700000
          3524.250000000000000000
          71.437500000000000000
          177.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #45348#44404#51088#47749
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlb_Title5: TQRLabel
        Left = 1410
        Top = 27
        Width = 88
        Height = 14
        Size.Values = (
          37.041666666666700000
          3730.625000000000000000
          71.437500000000000000
          232.833333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304'Sex/Age'#12305
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlb_SexAge: TQRLabel
        Left = 1493
        Top = 27
        Width = 60
        Height = 14
        Size.Values = (
          37.041666666666700000
          3950.229166666670000000
          71.437500000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'M/2'#44060#50900
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 1314
        Top = 7
        Width = 91
        Height = 14
        Size.Values = (
          37.041666666666700000
          3476.625000000000000000
          18.520833333333300000
          240.770833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#51452#48124#48264#54840#12305
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlb_Resno: TQRLabel
        Left = 1408
        Top = 7
        Width = 114
        Height = 14
        Size.Values = (
          37.041666666666700000
          3725.333333333330000000
          18.520833333333300000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '811111-111****'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlb_LocateNm: TQRLabel
        Left = 31
        Top = 9
        Width = 171
        Height = 13
        Size.Values = (
          34.395833333333330000
          82.020833333333330000
          23.812500000000000000
          452.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = #44256#47140#45824#54617#44368' '#51032#47308#50896' '#50504#50516#48337#50896
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 626
        Top = 1
        Width = 19
        Height = 11
        Size.Values = (
          29.104166666666670000
          1656.291666666667000000
          2.645833333333333000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Day'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 659
        Top = 1
        Width = 19
        Height = 11
        Size.Values = (
          29.104166666666670000
          1743.604166666667000000
          2.645833333333333000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Evn'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 692
        Top = 1
        Width = 19
        Height = 11
        Size.Values = (
          29.104166666666670000
          1830.916666666667000000
          2.645833333333333000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ngt'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 727
        Top = 1
        Width = 19
        Height = 11
        Size.Values = (
          29.104166666666670000
          1923.520833333333000000
          2.645833333333333000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tot'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 572
        Top = 13
        Width = 37
        Height = 11
        Size.Values = (
          29.104166666666670000
          1513.416666666667000000
          34.395833333333330000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Intake'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 572
        Top = 25
        Width = 37
        Height = 11
        Size.Values = (
          29.104166666666670000
          1513.416666666667000000
          66.145833333333330000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Output'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 572
        Top = 37
        Width = 37
        Height = 11
        Size.Values = (
          29.104166666666670000
          1513.416666666667000000
          97.895833333333330000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'In-Out'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_InDay: TQRLabel
        Left = 622
        Top = 13
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1645.708333333333000000
          34.395833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_InEvn: TQRLabel
        Left = 655
        Top = 13
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          34.395833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_InNgt: TQRLabel
        Left = 688
        Top = 13
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1820.333333333333000000
          34.395833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_InTot: TQRLabel
        Left = 723
        Top = 13
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1912.937500000000000000
          34.395833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_OutDay: TQRLabel
        Left = 622
        Top = 25
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1645.708333333333000000
          66.145833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_OutEvn: TQRLabel
        Left = 655
        Top = 25
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          66.145833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_OutNgt: TQRLabel
        Left = 688
        Top = 25
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1820.333333333333000000
          66.145833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_OutTot: TQRLabel
        Left = 723
        Top = 25
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1912.937500000000000000
          66.145833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_SumDay: TQRLabel
        Left = 622
        Top = 37
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1645.708333333333000000
          97.895833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_SumEvn: TQRLabel
        Left = 655
        Top = 37
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1733.020833333333000000
          97.895833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_SumNgt: TQRLabel
        Left = 688
        Top = 37
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1820.333333333333000000
          97.895833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_SumTot: TQRLabel
        Left = 723
        Top = 37
        Width = 25
        Height = 11
        Size.Values = (
          29.104166666666670000
          1912.937500000000000000
          97.895833333333330000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel8: TQRLabel
        Left = 570
        Top = 2
        Width = 43
        Height = 10
        Size.Values = (
          26.458333333333330000
          1508.125000000000000000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'I/O Sum'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape25: TQRShape
        Left = 564
        Top = 0
        Width = 2
        Height = 48
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          127.000000000000000000
          1492.250000000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 618
        Top = 0
        Width = 2
        Height = 48
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          127.000000000000000000
          1635.125000000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 651
        Top = 0
        Width = 2
        Height = 48
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          127.000000000000000000
          1722.437500000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 684
        Top = 0
        Width = 2
        Height = 48
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          127.000000000000000000
          1809.750000000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 717
        Top = 0
        Width = 2
        Height = 48
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          127.000000000000000000
          1897.062500000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 565
        Top = 11
        Width = 194
        Height = 2
        Frame.DrawTop = True
        Frame.Width = 2
        Size.Values = (
          5.291666666666670000
          1494.895833333330000000
          29.104166666666700000
          513.291666666667000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 565
        Top = 23
        Width = 194
        Height = 2
        Frame.DrawTop = True
        Frame.Width = 2
        Size.Values = (
          5.291666666666670000
          1494.895833333330000000
          60.854166666666700000
          513.291666666667000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 565
        Top = 35
        Width = 194
        Height = 2
        Frame.DrawTop = True
        Frame.Width = 2
        Size.Values = (
          5.291666666666670000
          1494.895833333330000000
          92.604166666666700000
          513.291666666667000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlb_NicuTitle_Wgt: TQRLabel
        Left = 233
        Top = 37
        Width = 84
        Height = 11
        Size.Values = (
          29.104166666666700000
          616.479166666667000000
          97.895833333333300000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#52404#51473#12305'    g'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_NicuWgt: TQRLabel
        Left = 270
        Top = 37
        Width = 26
        Height = 11
        Size.Values = (
          29.104166666666700000
          714.375000000000000000
          97.895833333333300000
          68.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '2390'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_NicuTitle_HSize: TQRLabel
        Left = 319
        Top = 37
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666700000
          844.020833333333000000
          97.895833333333300000
          224.895833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#46160#50948#12305'    cm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_NicuHSize: TQRLabel
        Left = 358
        Top = 37
        Width = 24
        Height = 10
        Size.Values = (
          26.458333333333300000
          947.208333333333000000
          97.895833333333300000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '61'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_NicuTitle_BSize: TQRLabel
        Left = 406
        Top = 37
        Width = 85
        Height = 11
        Size.Values = (
          29.104166666666700000
          1074.208333333330000000
          97.895833333333300000
          224.895833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#48373#50948#12305'    cm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_NicuBSize: TQRLabel
        Left = 445
        Top = 37
        Width = 24
        Height = 10
        Size.Values = (
          26.458333333333300000
          1177.395833333330000000
          97.895833333333300000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '48'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qchart_Su: TQRChart
        Left = 80
        Top = 80
        Width = 756
        Height = 290
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          767.291666666667000000
          211.666666666667000000
          211.666666666667000000
          2000.250000000000000000)
        XLColumn = 0
        object QRDBChart2: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Style = bsClear
          BackWall.Color = clWhite
          BackWall.Dark3D = False
          BackWall.Size = 3
          Gradient.EndColor = 8454143
          MarginBottom = 2
          MarginLeft = 0
          MarginRight = 0
          MarginTop = 1
          Title.Brush.Color = clSilver
          Title.Color = clSilver
          Title.Text.Strings = (
            'TQRDBChart')
          Title.Visible = False
          BottomAxis.Automatic = False
          BottomAxis.AutomaticMaximum = False
          BottomAxis.AutomaticMinimum = False
          BottomAxis.DateTimeFormat = 'hh:nn'
          BottomAxis.Grid.Color = clBlack
          BottomAxis.LabelsAngle = 90
          BottomAxis.LabelsFormat.Font.Charset = ANSI_CHARSET
          BottomAxis.Maximum = 23.000000000000000000
          BottomAxis.TickOnLabelsOnly = False
          ClipPoints = False
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Axis.Style = psDot
          LeftAxis.ExactDateTime = False
          LeftAxis.Grid.Color = clBlack
          LeftAxis.LabelsFormat.Font.Charset = ANSI_CHARSET
          LeftAxis.LabelsFormat.Font.Height = -12
          LeftAxis.LabelsFormat.Font.Name = #44404#47548#52404
          LeftAxis.Maximum = 250.000000000000000000
          LeftAxis.MinorGrid.Style = psDot
          LeftAxis.Ticks.Color = clBlack
          LeftAxis.TickOnLabelsOnly = False
          LeftAxis.Title.Font.Charset = ANSI_CHARSET
          LeftAxis.Title.Font.Height = -12
          LeftAxis.Title.Font.Name = #44404#47548#52404
          Legend.Alignment = laTop
          Legend.ColorWidth = 100
          Legend.Symbol.Width = 100
          Legend.TopPos = 0
          Pages.MaxPointsPerPage = 24
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          RightAxis.Axis.Style = psDot
          RightAxis.Axis.Width = 1
          RightAxis.Axis.Visible = False
          RightAxis.Grid.Color = clBlack
          RightAxis.Grid.Visible = False
          RightAxis.Maximum = 39.000000000000000000
          RightAxis.Minimum = 34.000000000000000000
          RightAxis.PositionPercent = 100.000000000000000000
          RightAxis.TickOnLabelsOnly = False
          TopAxis.Automatic = False
          TopAxis.AutomaticMaximum = False
          TopAxis.AutomaticMinimum = False
          TopAxis.Visible = False
          View3D = False
          BevelWidth = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object PointSeries4: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clWhite
            Title = 'SpO2'
            ClickableLine = False
            Pointer.HorizSize = 5
            Pointer.InflateMargins = True
            Pointer.Style = psDiamond
            Pointer.VertSize = 5
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object PointSeries6: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'RR'
            ClickableLine = False
            Pointer.Brush.Color = clFuchsia
            Pointer.InflateMargins = True
            Pointer.Style = psStar
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object LineSeries1: TLineSeries
            Marks.Style = smsValue
            Marks.Callout.Length = 0
            SeriesColor = clBlack
            Title = 'HR'
            Brush.BackColor = clDefault
            LinePen.Width = 2
            Pointer.Brush.Color = clRed
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
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Visible = True
            Marks.Style = smsValue
            SeriesColor = clBlack
            Title = 'BT'
            VertAxis = aRightAxis
            Brush.BackColor = clDefault
            LinePen.Width = 2
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
          object PointSeries1: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'SBP'
            ClickableLine = False
            Pointer.Brush.Color = 12615680
            Pointer.InflateMargins = True
            Pointer.Style = psDownTriangle
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object PointSeries2: TPointSeries
            Marks.Font.Charset = ANSI_CHARSET
            Marks.Font.Height = -12
            Marks.Font.Name = #44404#47548#52404
            Marks.Frame.Visible = False
            Marks.Transparent = True
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = clBlack
            Title = 'DBP'
            ClickableLine = False
            Pointer.Brush.Color = 12615680
            Pointer.InflateMargins = True
            Pointer.Style = psTriangle
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object qrlb_Title6: TQRLabel
        Left = 233
        Top = 14
        Width = 67
        Height = 11
        Size.Values = (
          29.104166666666700000
          616.479166666667000000
          37.041666666666700000
          177.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#49373#45380#50900#51068#12305
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_Birtdate: TQRLabel
        Left = 294
        Top = 14
        Width = 61
        Height = 11
        Size.Values = (
          29.104166666666670000
          777.875000000000000000
          37.041666666666670000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '1999-12-31'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_Wardno: TQRLabel
        Left = 469
        Top = 14
        Width = 50
        Height = 11
        Size.Values = (
          29.104166666666700000
          1240.895833333330000000
          37.041666666666700000
          132.291666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '111W-99'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlb_Meddept: TQRLabel
        Left = 409
        Top = 14
        Width = 56
        Height = 11
        Size.Values = (
          29.104166666666670000
          1082.145833333333000000
          37.041666666666670000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = #49548#54868#44592#45236#44284
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 19
      Top = 355
      Width = 756
      Height = 13
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object qrlb_Head0: TQRLabel
        Left = 19
        Top = 2
        Width = 62
        Height = 9
        Size.Values = (
          23.812500000000000000
          50.270833333333300000
          5.291666666666670000
          164.041666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #47784#45768#53552#47553#54637#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape4: TQRShape
        Left = 154
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          407.458333333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 181
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          478.895833333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 209
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          552.979166666667000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 237
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          627.062500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 265
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          701.145833333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 293
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          775.229166666667000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 321
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          849.312500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 349
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          923.395833333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 376
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          994.833333333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 403
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1066.270833333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 431
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1140.354166666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 458
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1211.791666666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 485
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1283.229166666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 513
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1357.312500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 540
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1428.750000000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Head2: TQRLabel
        Left = 129
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          341.312500000000000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '08:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head3: TQRLabel
        Left = 156
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          412.750000000000000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '09:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head4: TQRLabel
        Left = 183
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          484.187500000000000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '10:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head5: TQRLabel
        Left = 211
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          558.270833333333000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '11:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head6: TQRLabel
        Left = 239
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          632.354166666667000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '12:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head7: TQRLabel
        Left = 267
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          706.437500000000000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '13:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head8: TQRLabel
        Left = 295
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          780.520833333333000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '14:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head9: TQRLabel
        Left = 323
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          854.604166666667000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '15:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head10: TQRLabel
        Left = 351
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          928.687500000000000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '16:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head11: TQRLabel
        Left = 378
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1000.125000000000000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '17:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head12: TQRLabel
        Left = 405
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          1071.562500000000000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '18:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head13: TQRLabel
        Left = 433
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1145.645833333330000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '19:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head14: TQRLabel
        Left = 460
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1217.083333333330000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '20:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head15: TQRLabel
        Left = 487
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          1288.520833333330000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '21:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head16: TQRLabel
        Left = 515
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1362.604166666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '22:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head17: TQRLabel
        Left = 542
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1434.041666666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '23:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head18: TQRLabel
        Left = 569
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1505.479166666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '00:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head19: TQRLabel
        Left = 596
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1576.916666666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head20: TQRLabel
        Left = 623
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1648.354166666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '02:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head21: TQRLabel
        Left = 650
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1719.791666666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '03:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head22: TQRLabel
        Left = 677
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1791.229166666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '04:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head1: TQRLabel
        Left = 101
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          267.229166666667000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '07:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape26: TQRShape
        Left = 127
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          336.020833333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Head23: TQRLabel
        Left = 704
        Top = 2
        Width = 24
        Height = 9
        Size.Values = (
          23.812500000000000000
          1862.666666666670000000
          5.291666666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '05:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlb_Head24: TQRLabel
        Left = 730
        Top = 2
        Width = 25
        Height = 9
        Size.Values = (
          23.812500000000000000
          1931.458333333330000000
          5.291666666666670000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '06:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRShape33: TQRShape
        Left = 98
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          259.291666666667000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 1528
        Top = 1
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          4042.833333333330000000
          2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 567
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1500.187500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 594
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1571.625000000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 621
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1643.062500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 648
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1714.500000000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 675
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1785.937500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 702
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1857.375000000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 729
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1928.812500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRSysData7: TQRSysData
      Left = 369
      Top = 1096
      Width = 50
      Height = 14
      Size.Values = (
        37.041666666666700000
        976.312500000000000000
        2899.833333333330000000
        132.291666666667000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Text = ''
      Transparent = False
      ExportAs = exptText
      FontSize = 8
    end
    object QRLabel145: TQRLabel
      Left = 405
      Top = 1095
      Width = 9
      Height = 14
      Size.Values = (
        37.041666666666700000
        1071.562500000000000000
        2897.187500000000000000
        23.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = '-'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object qrlb_PrtIdx: TQRLabel
      Left = 421
      Top = 1096
      Width = 15
      Height = 14
      Size.Values = (
        37.041666666666700000
        1113.895833333330000000
        2899.833333333330000000
        39.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = '##'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object qrlb_PatInfo2: TQRLabel
      Left = 623
      Top = 1107
      Width = 156
      Height = 10
      Size.Values = (
        26.458333333333300000
        1648.354166666670000000
        2928.937500000000000000
        412.750000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = '01712345 / '#51076#49352#47196#48120'['#50668',31'#49464',AB+,141'#51068']'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 6
    end
    object qrlb_ActDate2: TQRLabel
      Left = 633
      Top = 1097
      Width = 141
      Height = 9
      Size.Values = (
        23.812500000000000000
        1674.812500000000000000
        2902.479166666670000000
        373.062500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = '2001-01-01 06:01 ~ 2001-01-02 06:00'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 6
    end
    object qrlb_ReportNo: TQRLabel
      Left = 21
      Top = 1097
      Width = 261
      Height = 14
      Size.Values = (
        37.041666666666700000
        55.562500000000000000
        2902.479166666670000000
        690.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #44256#47140#45824#54617#44368#51032#47308#50896' '#50504#50516#48337#50896' MR 0000-0000-0000-00000000'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
  end
end
