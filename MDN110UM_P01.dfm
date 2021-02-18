object MDN110FM_P01: TMDN110FM_P01
  Left = 325
  Top = 92
  Caption = '[MDN110FM_P01] ICU/NICU '#53685#54633' '#44036#54840#44592#47197#51648' '#51088#46041#49828#52884#49436#49885'(A3)'
  ClientHeight = 809
  ClientWidth = 1140
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
  object qr_Icu: TQuickRep
    Left = 14
    Top = 2
    Width = 1123
    Height = 1587
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    BeforePrint = qr_IcuBeforePrint
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
    OnNeedData = qr_IcuNeedData
    Options = []
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A3
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      4200.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      90.000000000000000000
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
      Left = 38
      Top = 533
      Width = 1051
      Height = 16
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = True
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        2780.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrlb_Val0: TQRLabel
        Left = 4
        Top = 2
        Width = 125
        Height = 12
        Size.Values = (
          31.750000000000000000
          10.583333333333300000
          5.291666666666670000
          330.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'SPO2(%)'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape111: TQRShape
        Left = 129
        Top = -2
        Width = 1
        Height = 18
        Size.Values = (
          47.625000000000000000
          341.312500000000000000
          -5.291666666666670000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape112: TQRShape
        Left = 207
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          547.687500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape113: TQRShape
        Left = 247
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          653.520833333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape114: TQRShape
        Left = 287
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          759.354166666667000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape115: TQRShape
        Left = 325
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          859.895833333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape116: TQRShape
        Left = 364
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          963.083333333333000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape117: TQRShape
        Left = 405
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1071.562500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape118: TQRShape
        Left = 445
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1177.395833333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape119: TQRShape
        Left = 484
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1280.583333333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape120: TQRShape
        Left = 523
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1383.770833333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape121: TQRShape
        Left = 560
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1481.666666666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape122: TQRShape
        Left = 597
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1579.562500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape123: TQRShape
        Left = 634
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1677.458333333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape124: TQRShape
        Left = 672
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1778.000000000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape125: TQRShape
        Left = 710
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1878.541666666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape126: TQRShape
        Left = 748
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          1979.083333333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape127: TQRShape
        Left = 785
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2076.979166666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape128: TQRShape
        Left = 823
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2177.520833333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape129: TQRShape
        Left = 860
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2275.416666666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape130: TQRShape
        Left = 897
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2373.312500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Val2: TQRLabel
        Left = 169
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          447.145833333333000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val3: TQRLabel
        Left = 208
        Top = 2
        Width = 39
        Height = 12
        Size.Values = (
          31.750000000000000000
          550.333333333333000000
          5.291666666666670000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val4: TQRLabel
        Left = 248
        Top = 2
        Width = 39
        Height = 12
        Size.Values = (
          31.750000000000000000
          656.166666666667000000
          5.291666666666670000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val5: TQRLabel
        Left = 288
        Top = 2
        Width = 37
        Height = 12
        Size.Values = (
          31.750000000000000000
          762.000000000000000000
          5.291666666666670000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '4'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val6: TQRLabel
        Left = 326
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          862.541666666667000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '5'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val7: TQRLabel
        Left = 365
        Top = 2
        Width = 40
        Height = 12
        Size.Values = (
          31.750000000000000000
          965.729166666667000000
          5.291666666666670000
          105.833333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '6'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val8: TQRLabel
        Left = 405
        Top = 2
        Width = 40
        Height = 12
        Size.Values = (
          31.750000000000000000
          1071.562500000000000000
          5.291666666666670000
          105.833333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '7'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val9: TQRLabel
        Left = 445
        Top = 2
        Width = 40
        Height = 12
        Size.Values = (
          31.750000000000000000
          1177.395833333330000000
          5.291666666666670000
          105.833333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '8'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val10: TQRLabel
        Left = 485
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          1283.229166666670000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '9'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val11: TQRLabel
        Left = 523
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          1383.770833333330000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '10'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val12: TQRLabel
        Left = 561
        Top = 2
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          1484.312500000000000000
          5.291666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '11'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val13: TQRLabel
        Left = 598
        Top = 2
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          1582.208333333330000000
          5.291666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '12'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val14: TQRLabel
        Left = 635
        Top = 2
        Width = 37
        Height = 12
        Size.Values = (
          31.750000000000000000
          1680.104166666670000000
          5.291666666666670000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '13'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val15: TQRLabel
        Left = 673
        Top = 2
        Width = 37
        Height = 12
        Size.Values = (
          31.750000000000000000
          1780.645833333330000000
          5.291666666666670000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '14'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val16: TQRLabel
        Left = 710
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          1878.541666666670000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '15'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val17: TQRLabel
        Left = 749
        Top = 2
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          1981.729166666670000000
          5.291666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '16'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val18: TQRLabel
        Left = 786
        Top = 2
        Width = 37
        Height = 12
        Size.Values = (
          31.750000000000000000
          2079.625000000000000000
          5.291666666666670000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '17'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val19: TQRLabel
        Left = 824
        Top = 2
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          2180.166666666670000000
          5.291666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '18'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val20: TQRLabel
        Left = 861
        Top = 2
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          2278.062500000000000000
          5.291666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '19'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val21: TQRLabel
        Left = 898
        Top = 2
        Width = 35
        Height = 12
        Size.Values = (
          31.750000000000000000
          2375.958333333330000000
          5.291666666666670000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '20'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val22: TQRLabel
        Left = 934
        Top = 2
        Width = 40
        Height = 12
        Size.Values = (
          31.750000000000000000
          2471.208333333330000000
          5.291666666666670000
          105.833333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '21'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 933
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2468.562500000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Val1: TQRLabel
        Left = 130
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          343.958333333333000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape6: TQRShape
        Left = 168
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          444.500000000000000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 974
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2577.041666666670000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 1012
        Top = -1
        Width = 1
        Height = 17
        Size.Values = (
          44.979166666666700000
          2677.583333333330000000
          -2.645833333333330000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Val23: TQRLabel
        Left = 974
        Top = 2
        Width = 38
        Height = 12
        Size.Values = (
          31.750000000000000000
          2577.041666666670000000
          5.291666666666670000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '22'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Val24: TQRLabel
        Left = 1013
        Top = 2
        Width = 36
        Height = 12
        Size.Values = (
          31.750000000000000000
          2680.229166666670000000
          5.291666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '23'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
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
      Left = 1045
      Top = 1591
      Width = 56
      Height = 15
      Size.Values = (
        39.687500000000000000
        2764.895833333330000000
        4209.520833333330000000
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
    object qrlb_UserInfo: TQRLabel
      Left = 987
      Top = 1589
      Width = 97
      Height = 12
      Size.Values = (
        31.750000000000000000
        2611.437500000000000000
        4204.229166666670000000
        256.645833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = #51228#44040#44277#47749' (00234)'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1051
      Height = 476
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1259.416666666667000000
        2780.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object qchart_Icu: TQRChart
        Left = 0
        Top = 69
        Width = 1051
        Height = 409
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          1082.145833333330000000
          0.000000000000000000
          182.562500000000000000
          2780.770833333330000000)
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
        Left = 32
        Top = 32
        Width = 277
        Height = 29
        Size.Values = (
          76.729166666666670000
          84.666666666666670000
          84.666666666666670000
          732.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #51473#54872#51088#49892' '#44036#54840#44592#47197#51648
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 20
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
        Left = 336
        Top = 47
        Width = 93
        Height = 14
        Size.Values = (
          37.041666666666700000
          889.000000000000000000
          124.354166666667000000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#44592#47197#51068#51088#12305
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
      object qrlb_Title3: TQRLabel
        Left = 336
        Top = 10
        Width = 92
        Height = 14
        Size.Values = (
          37.041666666666700000
          889.000000000000000000
          26.458333333333300000
          243.416666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#54872#51088#51221#48372#12305
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
      object qrlb_PatInfo: TQRLabel
        Left = 422
        Top = 10
        Width = 298
        Height = 14
        Size.Values = (
          37.041666666666670000
          1116.541666666667000000
          26.458333333333330000
          788.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '01712345 / '#51076#49352#47196#48120'['#50668',31'#49464',AB+,141'#51068']'
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
      object qrlb_ActDate: TQRLabel
        Left = 422
        Top = 47
        Width = 281
        Height = 14
        Size.Values = (
          37.041666666666670000
          1116.541666666667000000
          124.354166666666700000
          743.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '2001-01-01 06:01 ~ 2001-01-02 06:00'
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
        Left = 55
        Top = 14
        Width = 223
        Height = 16
        Size.Values = (
          42.333333333333330000
          145.520833333333300000
          37.041666666666670000
          590.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = #44256#47140#45824#54617#44368' '#51032#47308#50896' '#50504#50516#48337#50896
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Left = 904
        Top = 3
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666670000
          2391.833333333333000000
          7.937500000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Day'
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
      object QRLabel2: TQRLabel
        Left = 944
        Top = 3
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666700000
          2497.666666666670000000
          7.937500000000000000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Evn'
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
      object QRLabel3: TQRLabel
        Left = 983
        Top = 3
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666700000
          2600.854166666670000000
          7.937500000000000000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ngt'
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
      object QRLabel4: TQRLabel
        Left = 1021
        Top = 3
        Width = 25
        Height = 14
        Size.Values = (
          37.041666666666700000
          2701.395833333330000000
          7.937500000000000000
          66.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tot'
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
      object QRLabel5: TQRLabel
        Left = 844
        Top = 20
        Width = 49
        Height = 14
        Size.Values = (
          37.041666666666670000
          2233.083333333333000000
          52.916666666666670000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Intake'
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
      object QRLabel6: TQRLabel
        Left = 844
        Top = 37
        Width = 49
        Height = 14
        Size.Values = (
          37.041666666666670000
          2233.083333333333000000
          97.895833333333330000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'Output'
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
      object QRLabel7: TQRLabel
        Left = 844
        Top = 53
        Width = 49
        Height = 14
        Size.Values = (
          37.041666666666670000
          2233.083333333333000000
          140.229166666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'In-Out'
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
      object qrlb_InDay: TQRLabel
        Left = 899
        Top = 21
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666670000
          2378.604166666667000000
          55.562500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_InEvn: TQRLabel
        Left = 939
        Top = 21
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2484.437500000000000000
          55.562500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_InNgt: TQRLabel
        Left = 978
        Top = 21
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2587.625000000000000000
          55.562500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_InTot: TQRLabel
        Left = 1016
        Top = 21
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2688.166666666670000000
          55.562500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_OutDay: TQRLabel
        Left = 899
        Top = 37
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666670000
          2378.604166666667000000
          97.895833333333330000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_OutEvn: TQRLabel
        Left = 939
        Top = 37
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2484.437500000000000000
          97.895833333333300000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_OutNgt: TQRLabel
        Left = 978
        Top = 37
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2587.625000000000000000
          97.895833333333300000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_OutTot: TQRLabel
        Left = 1016
        Top = 37
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2688.166666666670000000
          97.895833333333300000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_SumDay: TQRLabel
        Left = 899
        Top = 53
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666670000
          2378.604166666667000000
          140.229166666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_SumEvn: TQRLabel
        Left = 939
        Top = 53
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2484.437500000000000000
          140.229166666667000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_SumNgt: TQRLabel
        Left = 978
        Top = 53
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2587.625000000000000000
          140.229166666667000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object qrlb_SumTot: TQRLabel
        Left = 1016
        Top = 53
        Width = 33
        Height = 14
        Size.Values = (
          37.041666666666700000
          2688.166666666670000000
          140.229166666667000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = '1200'
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
      object QRLabel8: TQRLabel
        Left = 844
        Top = 4
        Width = 50
        Height = 13
        Size.Values = (
          34.395833333333330000
          2233.083333333333000000
          10.583333333333330000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Caption = 'I/O Sum'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape20: TQRShape
        Left = 896
        Top = 0
        Width = 2
        Height = 70
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          185.208333333333000000
          2370.666666666670000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 935
        Top = 0
        Width = 2
        Height = 70
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          185.208333333333000000
          2473.854166666670000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 974
        Top = 0
        Width = 2
        Height = 70
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          185.208333333333000000
          2577.041666666670000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 1013
        Top = 0
        Width = 2
        Height = 70
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          185.208333333333000000
          2680.229166666670000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 841
        Top = 17
        Width = 210
        Height = 2
        Frame.DrawTop = True
        Frame.Width = 2
        Size.Values = (
          5.291666666666670000
          2225.145833333330000000
          44.979166666666700000
          555.625000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 841
        Top = 35
        Width = 209
        Height = 2
        Frame.DrawTop = True
        Frame.Width = 2
        Size.Values = (
          5.291666666666670000
          2225.145833333330000000
          92.604166666666700000
          552.979166666667000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 841
        Top = 51
        Width = 209
        Height = 2
        Frame.DrawTop = True
        Frame.Width = 2
        Size.Values = (
          5.291666666666670000
          2225.145833333330000000
          134.937500000000000000
          552.979166666667000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 839
        Top = 0
        Width = 2
        Height = 70
        Frame.DrawLeft = True
        Frame.Width = 2
        Size.Values = (
          185.208333333333000000
          2219.854166666670000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_NicuTitle_Wgt: TQRLabel
        Left = 716
        Top = 18
        Width = 111
        Height = 14
        Size.Values = (
          37.041666666666700000
          1894.416666666670000000
          47.625000000000000000
          293.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#52404#51473#12305'    g'
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
      object qrlb_NicuTitle_HSize: TQRLabel
        Left = 716
        Top = 33
        Width = 112
        Height = 14
        Size.Values = (
          37.041666666666700000
          1894.416666666670000000
          87.312500000000000000
          296.333333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#46160#50948#12305'    cm'
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
      object qrlb_NicuTitle_BSize: TQRLabel
        Left = 716
        Top = 48
        Width = 112
        Height = 14
        Size.Values = (
          37.041666666666700000
          1894.416666666670000000
          127.000000000000000000
          296.333333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#48373#50948#12305'    cm'
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
      object qrlb_NicuWgt: TQRLabel
        Left = 767
        Top = 18
        Width = 35
        Height = 14
        Size.Values = (
          37.041666666666700000
          2029.354166666670000000
          47.625000000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '2390'
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
      object qrlb_NicuHSize: TQRLabel
        Left = 767
        Top = 33
        Width = 35
        Height = 14
        Size.Values = (
          37.041666666666700000
          2029.354166666670000000
          87.312500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '61'
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
      object qrlb_NicuBSize: TQRLabel
        Left = 767
        Top = 48
        Width = 35
        Height = 14
        Size.Values = (
          37.041666666666700000
          2029.354166666670000000
          127.000000000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = '48'
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
      object qchart_Su: TQRChart
        Left = 80
        Top = 112
        Width = 1051
        Height = 409
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          1082.145833333330000000
          211.666666666667000000
          296.333333333333000000
          2780.770833333330000000)
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
        Left = 336
        Top = 28
        Width = 92
        Height = 14
        Size.Values = (
          37.041666666666700000
          889.000000000000000000
          74.083333333333300000
          243.416666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = #12304#49373#45380#50900#51068#12305
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
      object qrlb_Birtdate: TQRLabel
        Left = 422
        Top = 28
        Width = 81
        Height = 14
        Size.Values = (
          37.041666666666670000
          1116.541666666667000000
          74.083333333333330000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '1999-12-31'
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
      object qrlb_Meddept: TQRLabel
        Left = 572
        Top = 28
        Width = 76
        Height = 14
        Size.Values = (
          37.041666666666670000
          1513.416666666667000000
          74.083333333333330000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = #49548#54868#44592#45236#44284
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
      object qrlb_Wardno: TQRLabel
        Left = 652
        Top = 28
        Width = 57
        Height = 14
        Size.Values = (
          37.041666666666700000
          1725.083333333330000000
          74.083333333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '111W-99'
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
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 514
      Width = 1051
      Height = 19
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        2780.770833333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object qrlb_Head0: TQRLabel
        Left = 14
        Top = 3
        Width = 103
        Height = 13
        Size.Values = (
          34.395833333333300000
          37.041666666666700000
          7.937500000000000000
          272.520833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = #47784#45768#53552#47553#54637#47785
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 207
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          547.687500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 247
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          653.520833333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 287
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          759.354166666667000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 325
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          859.895833333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 364
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          963.083333333333000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 405
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1071.562500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 445
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1177.395833333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 484
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1280.583333333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 523
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1383.770833333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 560
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1481.666666666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 597
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1579.562500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 634
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1677.458333333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 672
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1778.000000000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 710
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1878.541666666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 748
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          1979.083333333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Head2: TQRLabel
        Left = 170
        Top = 3
        Width = 35
        Height = 13
        Size.Values = (
          34.395833333333300000
          449.791666666667000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '08:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head3: TQRLabel
        Left = 210
        Top = 3
        Width = 35
        Height = 13
        Size.Values = (
          34.395833333333300000
          555.625000000000000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '09:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head4: TQRLabel
        Left = 249
        Top = 3
        Width = 35
        Height = 13
        Size.Values = (
          34.395833333333300000
          658.812500000000000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '10:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head5: TQRLabel
        Left = 289
        Top = 3
        Width = 35
        Height = 13
        Size.Values = (
          34.395833333333300000
          764.645833333333000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '11:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head6: TQRLabel
        Left = 328
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          867.833333333333000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '12:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head7: TQRLabel
        Left = 367
        Top = 3
        Width = 36
        Height = 13
        Size.Values = (
          34.395833333333300000
          971.020833333333000000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '13:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head8: TQRLabel
        Left = 407
        Top = 3
        Width = 36
        Height = 13
        Size.Values = (
          34.395833333333300000
          1076.854166666670000000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '14:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head9: TQRLabel
        Left = 448
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1185.333333333330000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '15:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head10: TQRLabel
        Left = 487
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1288.520833333330000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '16:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head11: TQRLabel
        Left = 525
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1389.062500000000000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '17:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head12: TQRLabel
        Left = 562
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1486.958333333330000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '18:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head13: TQRLabel
        Left = 599
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1584.854166666670000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '19:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head14: TQRLabel
        Left = 637
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1685.395833333330000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '20:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head15: TQRLabel
        Left = 674
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1783.291666666670000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '21:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head16: TQRLabel
        Left = 712
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1883.833333333330000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '22:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head17: TQRLabel
        Left = 750
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          1984.375000000000000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '23:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head18: TQRLabel
        Left = 788
        Top = 3
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333300000
          2084.916666666670000000
          7.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '00:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head19: TQRLabel
        Left = 826
        Top = 3
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333300000
          2185.458333333330000000
          7.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '01:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head20: TQRLabel
        Left = 863
        Top = 3
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333300000
          2283.354166666670000000
          7.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '02:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head21: TQRLabel
        Left = 900
        Top = 3
        Width = 32
        Height = 13
        Size.Values = (
          34.395833333333300000
          2381.250000000000000000
          7.937500000000000000
          84.666666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '03:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head22: TQRLabel
        Left = 936
        Top = 3
        Width = 36
        Height = 13
        Size.Values = (
          34.395833333333300000
          2476.500000000000000000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '04:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head1: TQRLabel
        Left = 132
        Top = 3
        Width = 35
        Height = 13
        Size.Values = (
          34.395833333333300000
          349.250000000000000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '07:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape26: TQRShape
        Left = 168
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          444.500000000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 1126
        Top = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2979.208333333330000000
          2.645833333333330000
          171.979166666667000000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qrlb_Head23: TQRLabel
        Left = 977
        Top = 3
        Width = 33
        Height = 13
        Size.Values = (
          34.395833333333300000
          2584.979166666670000000
          7.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '05:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlb_Head24: TQRLabel
        Left = 1014
        Top = 3
        Width = 34
        Height = 13
        Size.Values = (
          34.395833333333300000
          2682.875000000000000000
          7.937500000000000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '06:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape33: TQRShape
        Left = 129
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          341.312500000000000000
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
        Left = 785
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2076.979166666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 823
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2177.520833333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 860
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2275.416666666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 897
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2373.312500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 933
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2468.562500000000000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 974
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2577.041666666670000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 1012
        Top = 0
        Width = 1
        Height = 19
        Size.Values = (
          50.270833333333300000
          2677.583333333330000000
          0.000000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRSysData7: TQRSysData
      Left = 542
      Top = 1551
      Width = 57
      Height = 14
      Size.Values = (
        37.041666666666700000
        1434.041666666670000000
        4103.687500000000000000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Text = ''
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel145: TQRLabel
      Left = 582
      Top = 1551
      Width = 9
      Height = 14
      Size.Values = (
        37.041666666666700000
        1539.875000000000000000
        4103.687500000000000000
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
      Left = 597
      Top = 1551
      Width = 17
      Height = 14
      Size.Values = (
        37.041666666666700000
        1579.562500000000000000
        4103.687500000000000000
        44.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = '##'
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
    object qrlb_PatInfo2: TQRLabel
      Left = 858
      Top = 1565
      Width = 230
      Height = 13
      Size.Values = (
        34.395833333333300000
        2270.125000000000000000
        4140.729166666670000000
        608.541666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = '01712345 / '#51076#49352#47196#48120'['#50668',31'#49464',AB+,141'#51068']'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object qrlb_ActDate2: TQRLabel
      Left = 873
      Top = 1551
      Width = 211
      Height = 14
      Size.Values = (
        37.041666666666700000
        2309.812500000000000000
        4103.687500000000000000
        558.270833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = '2001-01-01 06:01 ~ 2001-01-02 06:00'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object qrlb_ReportNo: TQRLabel
      Left = 40
      Top = 1553
      Width = 261
      Height = 14
      Size.Values = (
        37.041666666666700000
        105.833333333333000000
        4108.979166666670000000
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
    object qrlb_EndMark: TQRLabel
      Left = 524
      Top = 1563
      Width = 118
      Height = 16
      Enabled = False
      Size.Values = (
        42.333333333333300000
        1386.416666666670000000
        4135.437500000000000000
        312.208333333333000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Caption = #12304'  End  of  Report  '#12305
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
  end
end
