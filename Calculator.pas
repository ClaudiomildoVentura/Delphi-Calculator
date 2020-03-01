unit Calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Clipbrd;

type
  TRxCalcState = (csFirst, csValid, csError);

type
  TfrmCalculator  = class(TForm)
    btn7: TButton;
    btn4: TButton;
    btn1: TButton;
    btnLimpar: TButton;
    btnAdicao: TButton;
    btnSubtracao: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    edtResultado: TEdit;
    btn8: TButton;
    btn5: TButton;
    btn2: TButton;
    btn0: TButton;
    btn9: TButton;
    btn6: TButton;
    btn3: TButton;
    btnIgualdade: TButton;

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCalculator: TfrmCalculator;

implementation

{$R *.DFM}

end.
