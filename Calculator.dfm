object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calculator'
  ClientHeight = 249
  ClientWidth = 326
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn7: TButton
    Left = 12
    Top = 70
    Width = 69
    Height = 25
    Caption = '7'
    TabOrder = 0
  end
  object btn4: TButton
    Left = 12
    Top = 118
    Width = 69
    Height = 25
    Caption = '4'
    TabOrder = 1
  end
  object btn1: TButton
    Left = 12
    Top = 165
    Width = 69
    Height = 25
    Caption = '1'
    TabOrder = 2
  end
  object btnLimpar: TButton
    Left = 12
    Top = 213
    Width = 69
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
  end
  object btnAdicao: TButton
    Left = 273
    Top = 70
    Width = 43
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = btnAdicaoClick
  end
  object btnSubtracao: TButton
    Left = 273
    Top = 118
    Width = 43
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicar: TButton
    Left = 273
    Top = 165
    Width = 43
    Height = 25
    Caption = 'X'
    TabOrder = 6
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 273
    Top = 213
    Width = 43
    Height = 25
    Caption = '/'
    TabOrder = 7
  end
  object edtResultado: TEdit
    Left = 13
    Top = 13
    Width = 303
    Height = 27
    Alignment = taRightJustify
    TabOrder = 8
    Text = '0'
  end
  object btn8: TButton
    Left = 96
    Top = 70
    Width = 69
    Height = 25
    Caption = '8'
    TabOrder = 9
  end
  object btn5: TButton
    Left = 96
    Top = 118
    Width = 69
    Height = 25
    Caption = '5'
    TabOrder = 10
  end
  object btn2: TButton
    Left = 96
    Top = 165
    Width = 69
    Height = 25
    Caption = '2'
    TabOrder = 11
  end
  object btn0: TButton
    Left = 96
    Top = 213
    Width = 69
    Height = 25
    Caption = '0'
    TabOrder = 12
  end
  object btn9: TButton
    Left = 179
    Top = 70
    Width = 69
    Height = 25
    Caption = '9'
    TabOrder = 13
  end
  object btn6: TButton
    Left = 179
    Top = 118
    Width = 69
    Height = 25
    Caption = '6'
    TabOrder = 14
  end
  object btn3: TButton
    Left = 179
    Top = 165
    Width = 69
    Height = 25
    Caption = '3'
    TabOrder = 15
  end
  object btnIgualdade: TButton
    Left = 179
    Top = 213
    Width = 69
    Height = 25
    Caption = '='
    TabOrder = 16
  end
end
