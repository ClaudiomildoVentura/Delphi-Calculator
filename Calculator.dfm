object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calculator'
  ClientHeight = 228
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn7: TButton
    Left = 12
    Top = 77
    Width = 69
    Height = 25
    Caption = '7'
    TabOrder = 0
    OnClick = btnGeralClick
  end
  object btn4: TButton
    Left = 12
    Top = 117
    Width = 69
    Height = 25
    Caption = '4'
    TabOrder = 1
    OnClick = btnGeralClick
  end
  object btn1: TButton
    Left = 12
    Top = 156
    Width = 69
    Height = 25
    Caption = '1'
    TabOrder = 2
    OnClick = btnGeralClick
  end
  object btnLimpar: TButton
    Left = 12
    Top = 195
    Width = 69
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btnLimparClick
  end
  object btnAdicao: TButton
    Left = 244
    Top = 77
    Width = 36
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnAdicaoClick
  end
  object btnSubtracao: TButton
    Left = 244
    Top = 117
    Width = 36
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicar: TButton
    Left = 244
    Top = 156
    Width = 36
    Height = 25
    Caption = 'X'
    TabOrder = 6
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 244
    Top = 195
    Width = 36
    Height = 25
    Caption = '/'
    TabOrder = 7
    OnClick = btnDividirClick
  end
  object edtResultado: TEdit
    Left = 13
    Top = 13
    Width = 267
    Height = 27
    Alignment = taRightJustify
    TabOrder = 8
    Text = '0'
  end
  object btn8: TButton
    Left = 88
    Top = 77
    Width = 69
    Height = 25
    Caption = '8'
    TabOrder = 9
    OnClick = btnGeralClick
  end
  object btn5: TButton
    Left = 88
    Top = 117
    Width = 69
    Height = 25
    Caption = '5'
    TabOrder = 10
    OnClick = btnGeralClick
  end
  object btn2: TButton
    Left = 88
    Top = 156
    Width = 69
    Height = 25
    Caption = '2'
    TabOrder = 11
    OnClick = btnGeralClick
  end
  object btn0: TButton
    Left = 88
    Top = 195
    Width = 69
    Height = 25
    Caption = '0'
    TabOrder = 12
    OnClick = btnGeralClick
  end
  object btn9: TButton
    Left = 165
    Top = 77
    Width = 69
    Height = 25
    Caption = '9'
    TabOrder = 13
    OnClick = btnGeralClick
  end
  object btn6: TButton
    Left = 165
    Top = 117
    Width = 69
    Height = 25
    Caption = '6'
    TabOrder = 14
    OnClick = btnGeralClick
  end
  object btn3: TButton
    Left = 165
    Top = 156
    Width = 69
    Height = 25
    Caption = '3'
    TabOrder = 15
    OnClick = btnGeralClick
  end
  object btnIgualdade: TButton
    Left = 165
    Top = 195
    Width = 69
    Height = 25
    Caption = '='
    TabOrder = 16
    OnClick = btnIgualdadeClick
  end
end
