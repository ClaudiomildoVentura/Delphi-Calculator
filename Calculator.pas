unit Calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TRxCalcState = (csFirst, csValid, csError);

type
  TfrmCalculator = class(TForm)
    MainPanel: TPanel;
    BackButton: TSpeedButton;
    ButtonC: TSpeedButton;
    ButtonMC: TSpeedButton;
    ButtonMR: TSpeedButton;
    ButtonMS: TSpeedButton;
    ButtonMP: TSpeedButton;
    Button7: TSpeedButton;
    Button4: TSpeedButton;
    Button1: TSpeedButton;
    Button0: TSpeedButton;
    Button8: TSpeedButton;
    Button5: TSpeedButton;
    Button2: TSpeedButton;
    ButtonPM: TSpeedButton;
    Button9: TSpeedButton;
    Button6: TSpeedButton;
    Button3: TSpeedButton;
    ButtonPnt: TSpeedButton;
    ButtonDiv: TSpeedButton;
    ButtonMul: TSpeedButton;
    ButtonSub: TSpeedButton;
    ButtonAdd: TSpeedButton;
    ButtonSqrt: TSpeedButton;
    ButtonPercent: TSpeedButton;
    ButtonRev: TSpeedButton;
    ButtonResult: TSpeedButton;
    OkButton: TSpeedButton;
    CancelButton: TSpeedButton;
    Panel2: TPanel;
    MemoryLabel: TLabel;
    DisplayPanel: TPanel;
    Panel1: TPanel;
    DisplayLabel: TLabel;
    PopupMenu: TPopupMenu;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
  private
    { Private declarations }
    FStatus: TRxCalcState;
    FOperator: Char;
    FOperand: Double;
    FMemory: Double;
    procedure CalcKey(Key: Char);
    procedure Clear;
    procedure Error;
    procedure SetDisplay(R: Double);
    function GetDisplay: Double;
  public
    { Public declarations }
  end;

var
  frmCalculator: TfrmCalculator;

implementation

{$R *.dfm}

const
  VK_0 = $30;
  VK_1 = $31;
  VK_2 = $32;
  VK_3 = $33;
  VK_4 = $34;
  VK_5 = $35;
  VK_6 = $36;
  VK_7 = $37;
  VK_8 = $38;
  VK_9 = $39;

  { TfrmCalculator }

procedure TfrmCalculator.CalcKey(Key: Char);
var
  R: Double;
begin
  Key := UpCase(Key);
  if (FStatus = csError) and (Key <> 'C') then
    Key := ' ';
  if Key = FormatSettings.DecimalSeparator then
  begin
    CheckFirst;
    if Pos(FormatSettings.DecimalSeparator, DisplayLabel.Caption) = 0 then
      DisplayLabel.Caption := DisplayLabel.Caption +
        FormatSettings.DecimalSeparator;
  end
  else
    case Key of
      '0' .. '9':
        begin
          CheckFirst;
          if DisplayLabel.Caption = '0' then
            DisplayLabel.Caption := '';
          if Pos('E', DisplayLabel.Caption) = 0 then
            DisplayLabel.Caption := DisplayLabel.Caption + Key;
        end;
      #8:
        begin
          CheckFirst;
          if (Length(DisplayLabel.Caption) = 1) or
            ((Length(DisplayLabel.Caption) = 2) and
            (DisplayLabel.Caption[1] = '-')) then
            DisplayLabel.Caption := '0'
          else
            DisplayLabel.Caption := Copy(DisplayLabel.Caption, 1,
              Length(DisplayLabel.Caption) - 1);
        end;
      '_':
        SetDisplay(-GetDisplay);
      '+', '-', '*', '/', '=', '%', #13:
        begin
          if FStatus = csValid then
          begin
            FStatus := csFirst;
            R := GetDisplay;
            if Key = '%' then
              case FOperator of
                '+', '-':
                  R := FOperand * R / 100;
                '*', '/':
                  R := R / 100;
              end;
            case FOperator of
              '+':
                SetDisplay(FOperand + R);
              '-':
                SetDisplay(FOperand - R);
              '*':
                SetDisplay(FOperand * R);
              '/':
                if R = 0 then
                  Error
                else
                  SetDisplay(FOperand / R);
            end;
          end;
          FOperator := Key;
          FOperand := GetDisplay;
        end;
      'C':
        Clear;
    end;
end;

procedure TfrmCalculator.Clear;
begin
  FStatus := csFirst;
  DisplayLabel.Caption := '0';
  FOperator := '=';
end;

procedure TfrmCalculator.Error;
begin
  FStatus := csError;
  DisplayLabel.Caption := 'Error';
end;

function TfrmCalculator.GetDisplay: Double;
begin

end;

procedure TfrmCalculator.SetDisplay(R: Double);
begin

end;

end.
