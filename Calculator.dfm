object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 164
  ClientWidth = 241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 164
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object BackButton: TSpeedButton
      Left = 146
      Top = 34
      Width = 44
      Height = 22
      Caption = 'CE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonC: TSpeedButton
      Left = 192
      Top = 34
      Width = 44
      Height = 22
      Caption = 'C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonCClick
    end
    object ButtonMC: TSpeedButton
      Left = 6
      Top = 60
      Width = 36
      Height = 22
      Caption = 'MC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonMCClick
    end
    object ButtonMR: TSpeedButton
      Left = 6
      Top = 84
      Width = 36
      Height = 22
      Caption = 'MR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonMRClick
    end
    object ButtonMS: TSpeedButton
      Left = 6
      Top = 108
      Width = 36
      Height = 22
      Caption = 'MS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonMSClick
    end
    object ButtonMP: TSpeedButton
      Left = 6
      Top = 132
      Width = 36
      Height = 22
      Caption = 'M+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonMPClick
    end
    object Button7: TSpeedButton
      Tag = 7
      Left = 48
      Top = 60
      Width = 36
      Height = 22
      Caption = '7'
    end
    object Button4: TSpeedButton
      Tag = 4
      Left = 48
      Top = 84
      Width = 36
      Height = 22
      Caption = '4'
    end
    object Button1: TSpeedButton
      Tag = 1
      Left = 48
      Top = 108
      Width = 36
      Height = 22
      Caption = '1'
      OnClick = Button1Click
    end
    object Button0: TSpeedButton
      Left = 48
      Top = 132
      Width = 36
      Height = 22
      Caption = '0'
      OnClick = Button0Click
    end
    object Button8: TSpeedButton
      Tag = 8
      Left = 86
      Top = 60
      Width = 36
      Height = 22
      Caption = '8'
    end
    object Button5: TSpeedButton
      Tag = 5
      Left = 86
      Top = 84
      Width = 36
      Height = 22
      Caption = '5'
    end
    object Button2: TSpeedButton
      Tag = 2
      Left = 86
      Top = 108
      Width = 36
      Height = 22
      Caption = '2'
    end
    object ButtonPM: TSpeedButton
      Left = 86
      Top = 132
      Width = 36
      Height = 22
      Caption = '+/-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonPMClick
    end
    object Button9: TSpeedButton
      Tag = 9
      Left = 124
      Top = 60
      Width = 36
      Height = 22
      Caption = '9'
    end
    object Button6: TSpeedButton
      Tag = 6
      Left = 124
      Top = 84
      Width = 36
      Height = 22
      Caption = '6'
    end
    object Button3: TSpeedButton
      Tag = 3
      Left = 124
      Top = 108
      Width = 36
      Height = 22
      Caption = '3'
    end
    object ButtonPnt: TSpeedButton
      Left = 124
      Top = 132
      Width = 36
      Height = 22
      Caption = ','
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonDiv: TSpeedButton
      Left = 162
      Top = 60
      Width = 36
      Height = 22
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonMul: TSpeedButton
      Left = 162
      Top = 84
      Width = 36
      Height = 22
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonSub: TSpeedButton
      Left = 162
      Top = 108
      Width = 36
      Height = 22
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonAdd: TSpeedButton
      Left = 162
      Top = 132
      Width = 36
      Height = 22
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonSqrt: TSpeedButton
      Left = 200
      Top = 60
      Width = 36
      Height = 22
      Caption = 'sqrt'
      OnClick = ButtonSqrtClick
    end
    object ButtonPercent: TSpeedButton
      Left = 200
      Top = 84
      Width = 36
      Height = 22
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonPercentClick
    end
    object ButtonRev: TSpeedButton
      Left = 200
      Top = 108
      Width = 36
      Height = 22
      Caption = '1/x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonRevClick
    end
    object ButtonResult: TSpeedButton
      Left = 200
      Top = 132
      Width = 36
      Height = 22
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ButtonResultClick
    end
    object OkButton: TSpeedButton
      Left = 48
      Top = 34
      Width = 36
      Height = 22
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
      Visible = False
    end
    object CancelButton: TSpeedButton
      Left = 86
      Top = 34
      Width = 36
      Height = 22
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Visible = False
    end
    object Panel2: TPanel
      Left = 6
      Top = 34
      Width = 36
      Height = 22
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object MemoryLabel: TLabel
        Left = 3
        Top = 4
        Width = 29
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object DisplayPanel: TPanel
      Left = 6
      Top = 6
      Width = 230
      Height = 23
      BevelOuter = bvLowered
      Color = clWindow
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 228
        Height = 21
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsSingle
        ParentColor = True
        TabOrder = 0
        object DisplayLabel: TLabel
          Left = 5
          Top = 2
          Width = 217
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
        end
      end
    end
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 120
    Top = 28
    object CopyItem: TMenuItem
      Caption = '&Copiar'
      ShortCut = 16451
    end
    object PasteItem: TMenuItem
      Caption = '&Colar'
      ShortCut = 16470
    end
  end
end
