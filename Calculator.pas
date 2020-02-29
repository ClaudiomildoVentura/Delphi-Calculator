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
  public
    { Public declarations }
  end;

var
  frmCalculator: TfrmCalculator;

implementation

{$R *.dfm}

end.
