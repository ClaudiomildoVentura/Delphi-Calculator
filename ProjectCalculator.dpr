program ProjectCalculator;

uses
  Vcl.Forms,
  Calculator in 'Calculator.pas' {frmCalculator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Calculator';
  Application.CreateForm(TfrmCalculator, frmCalculator);
  Application.Run;
end.
