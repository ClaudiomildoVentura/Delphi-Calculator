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
    procedure CheckFirst;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button0Click(Sender: TObject);
    procedure ButtonPntClick(Sender: TObject);
    procedure ButtonDivClick(Sender: TObject);
    procedure ButtonMulClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonResultClick(Sender: TObject);
    procedure ButtonCClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure ButtonPMClick(Sender: TObject);
    procedure ButtonPercentClick(Sender: TObject);
    procedure ButtonRevClick(Sender: TObject);
    procedure ButtonSqrtClick(Sender: TObject);
    procedure ButtonMCClick(Sender: TObject);
    procedure ButtonMRClick(Sender: TObject);
    procedure ButtonMSClick(Sender: TObject);
    procedure ButtonMPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CopyItemClick(Sender: TObject);
    procedure PasteItemClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

{$R *.DFM}

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

procedure TfrmCalculator.Error;
begin
  FStatus := csError;
  DisplayLabel.Caption := 'Error';
end;

procedure TfrmCalculator.SetDisplay(R: Double);
var
  S: string;
begin
  {S := Format('%31.16f', [R]);}
  S := Format('%31.10f', [R]);  { Alterado p/ 10 Casas Decimais }
  while S[Length(S)] = '0' do Delete(S, Length(S), 1);
  if S[Length(S)] = FormatSettings.DecimalSeparator then Delete(S, Length(S), 1);
  DisplayLabel.Caption := Trim(S);
end;

function TfrmCalculator.GetDisplay: Double;
begin
  if FStatus = csError then Result := 0
  else Result := StrToFloat(Trim(DisplayLabel.Caption));
end;

procedure TfrmCalculator.CheckFirst;
begin
  if FStatus = csFirst then begin
    FStatus := csValid;
    DisplayLabel.Caption := '0';
  end;
end;

procedure TfrmCalculator.CalcKey(Key: Char);
var
  R: Double;
begin
  Key := UpCase(Key);
  if (FStatus = csError) and (Key <> 'C') then Key := ' ';
  if Key = FormatSettings.DecimalSeparator then begin
    CheckFirst;
    if Pos(FormatSettings.DecimalSeparator, DisplayLabel.Caption) = 0 then
      DisplayLabel.Caption := DisplayLabel.Caption + FormatSettings.DecimalSeparator;
  end else
    case Key of
      '0'..'9': begin
        CheckFirst;
        if DisplayLabel.Caption = '0' then DisplayLabel.Caption := '';
        if Pos('E', DisplayLabel.Caption) = 0 then
          DisplayLabel.Caption := DisplayLabel.Caption + Key;
      end;
      #8: begin
        CheckFirst;
        if (Length(DisplayLabel.Caption) = 1) or
          ((Length(DisplayLabel.Caption) = 2) and
          (DisplayLabel.Caption[1] = '-'))
        then
          DisplayLabel.Caption := '0'
        else
          DisplayLabel.Caption := Copy(DisplayLabel.Caption, 1,
            Length(DisplayLabel.Caption) - 1);
      end;
      '_': SetDisplay(-GetDisplay);
      '+', '-', '*', '/', '=', '%', #13: begin
        if FStatus = csValid then begin
          FStatus := csFirst;
          R := GetDisplay;
          if Key = '%' then
            case FOperator of
              '+', '-': R := FOperand * R / 100;
              '*', '/': R := R / 100;
            end;
          case FOperator of
            '+': SetDisplay(FOperand + R);
            '-': SetDisplay(FOperand - R);
            '*': SetDisplay(FOperand * R);
            '/': if R = 0 then Error else SetDisplay(FOperand / R);
          end;
        end;
        FOperator := Key;
        FOperand := GetDisplay;
      end;
      'C': Clear;
    end;
end;

procedure TfrmCalculator.Clear;
begin
  FStatus := csFirst;
  DisplayLabel.Caption := '0';
  FOperator := '=';
end;



procedure TfrmCalculator.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_0..VK_9: CalcKey(Char(Key));
    VK_NUMPAD0..VK_NUMPAD9: CalcKey(Char(Key - VK_NUMPAD0 + Ord('0')));
    VK_BACK: BackButtonClick(Self);
    VK_ESCAPE: Close;
    VK_DELETE: ButtonCClick(Self);
    187, VK_RETURN: ButtonResultClick(Self);
    VK_DIVIDE: ButtonDivClick(Self);
    VK_MULTIPLY: ButtonMulClick(Self);
    VK_SUBTRACT	: ButtonSubClick(Self);
    VK_ADD: ButtonAddClick(Self);
    188, 190, VK_DECIMAL: ButtonPntClick(Self);
  end;
end;

procedure TfrmCalculator.Button0Click(Sender: TObject);
begin
  CalcKey(Char(TComponent(Sender).Tag + Ord('0')));
end;

procedure TfrmCalculator.ButtonPntClick(Sender: TObject);
begin
  CalcKey(FormatSettings.DecimalSeparator);
end;

procedure TfrmCalculator.ButtonDivClick(Sender: TObject);
begin
  CalcKey('/');
end;

procedure TfrmCalculator.ButtonMulClick(Sender: TObject);
begin
  CalcKey('*');
end;

procedure TfrmCalculator.ButtonSubClick(Sender: TObject);
begin
  CalcKey('-');
end;

procedure TfrmCalculator.ButtonAddClick(Sender: TObject);
begin
  CalcKey('+');
end;

procedure TfrmCalculator.ButtonResultClick(Sender: TObject);
begin
  CalcKey('=');
end;

procedure TfrmCalculator.ButtonCClick(Sender: TObject);
begin
  CalcKey('C');
end;

procedure TfrmCalculator.BackButtonClick(Sender: TObject);
begin
  CalcKey(#8);
end;

procedure TfrmCalculator.ButtonPMClick(Sender: TObject);
begin
  CalcKey('_');
end;

procedure TfrmCalculator.ButtonPercentClick(Sender: TObject);
begin
  CalcKey('%');
end;

procedure TfrmCalculator.ButtonRevClick(Sender: TObject);
begin
  FStatus := csFirst;
  if GetDisplay = 0 then Error else SetDisplay(1.0 / GetDisplay);
end;

procedure TfrmCalculator.ButtonSqrtClick(Sender: TObject);
begin
  FStatus := csFirst;
  if GetDisplay < 0 then Error else SetDisplay(Sqrt(GetDisplay));
end;

procedure TfrmCalculator.ButtonMCClick(Sender: TObject);
begin
  FMemory := 0.0;
  MemoryLabel.Caption := '';
end;

procedure TfrmCalculator.ButtonMRClick(Sender: TObject);
begin
  if (FStatus = csValid) or (FStatus = csFirst) then begin
    FStatus := csFirst;
    CheckFirst;
    SetDisplay(FMemory);
  end;
end;

procedure TfrmCalculator.ButtonMSClick(Sender: TObject);
begin
  if (FStatus = csValid) or (FStatus = csFirst) then begin
    FStatus := csFirst;
    FMemory := GetDisplay;
    if FMemory <> 0 then MemoryLabel.Caption := 'M'
    else MemoryLabel.Caption := '';
  end;
end;

procedure TfrmCalculator.ButtonMPClick(Sender: TObject);
begin
  if (FStatus = csValid) or (FStatus = csFirst) then begin
    FStatus := csFirst;
    FMemory := FMemory + GetDisplay;
    if FMemory <> 0 then MemoryLabel.Caption := 'M'
    else MemoryLabel.Caption := '';
  end;
end;

procedure TfrmCalculator.FormCreate(Sender: TObject);
begin
  FMemory := 0.0;
end;

procedure TfrmCalculator.CopyItemClick(Sender: TObject);
begin
  Clipboard.AsText := DisplayLabel.Caption;
end;

procedure TfrmCalculator.PasteItemClick(Sender: TObject);
begin
  try
    SetDisplay(StrToFloat(Trim(Clipboard.AsText)));
  except
    DisplayLabel.Caption := '0';
  end;
end;

procedure TfrmCalculator.PopupMenuPopup(Sender: TObject);
begin
  PasteItem.Enabled := Clipboard.HasFormat(CF_TEXT);
end;

procedure TfrmCalculator.OkButtonClick(Sender: TObject);
begin
  StrToFloat(Trim(DisplayLabel.Caption)); { to raise exception on error }
  ModalResult := mrOk;
end;

procedure TfrmCalculator.CancelButtonClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCalculator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
