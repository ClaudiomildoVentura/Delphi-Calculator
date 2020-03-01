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
  TfrmCalculator = class(TForm)
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
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnGeralClick(Sender: TObject);
    procedure btnIgualdadeClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    FOperacao: String;
    FTotal: Double;
    FUltimoNumero: Double;
    procedure Calcular;
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  frmCalculator: TfrmCalculator;

implementation

{$R *.DFM}

procedure TfrmCalculator.btnGeralClick(Sender: TObject);
begin
  if FUltimoNumero = 0 then
    edtResultado.Text := TButton(Sender).Caption
  else
    // TypeCasting para pegar todos os dados dos botões.
    edtResultado.Text := edtResultado.Text + TButton(Sender).Caption;

  FUltimoNumero := StrToFloat(edtResultado.Text);
end;

procedure TfrmCalculator.btnIgualdadeClick(Sender: TObject);
begin
  Calcular;
end;

procedure TfrmCalculator.btnLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmCalculator.btnAdicaoClick(Sender: TObject);
begin
  Calcular;
  FOperacao := '+';
end;

procedure TfrmCalculator.btnDividirClick(Sender: TObject);
begin
  Calcular;
  FOperacao := '/';
end;

procedure TfrmCalculator.btnMultiplicarClick(Sender: TObject);
begin
  Calcular;
  FOperacao := '*';
end;

procedure TfrmCalculator.btnSubtracaoClick(Sender: TObject);
begin
  Calcular;
  FOperacao := '-';
end;

procedure TfrmCalculator.Calcular;
begin
  case FOperacao of
    '+':
      FTotal := FTotal + StrToFloat(edtResultado.Text);
    '-':
      FTotal := FTotal - StrToFloat(edtResultado.Text);
    '*':
      FTotal := FTotal * StrToFloat(edtResultado.Text);
    '/':
      FTotal := FTotal / StrToFloat(edtResultado.Text);
  end;
  edtResultado.Text := FloatToStr(FTotal);
  FUltimoNumero := FTotal;
end;

procedure TfrmCalculator.FormCreate(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmCalculator.Limpar;
begin
  FUltimoNumero := 0;
  edtResultado.Text := '0';
  FOperacao := '+';
end;

end.
