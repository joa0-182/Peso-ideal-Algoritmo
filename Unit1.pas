unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    rgpSexo: TRadioGroup;
    edtAltura: TEdit;
    Label1: TLabel;
    edtPesoIdeal: TEdit;
    edtPi: TLabel;
    btnCalcular: TButton;
    btnLimpar: TButton;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var pi,alt: real;
begin
    alt := StrToFloat(edtAltura.Text);
    if rgpSexo.Itemindex = 0 then
    begin
      pi := (62.1*alt)-44.7;
    end
    else if rgpSexo.ItemIndex = 1 then
    begin
      pi := (72.7 * alt) - 58;
    end;
    edtPesoIdeal.Text := FloatToStr(pi);
end;

procedure TForm1.btnFecharClick(Sender: TObject);
begin
      close;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
      rgpSexo.ItemIndex := -1;
      edtAltura.Clear;
      edtPesoIdeal.Clear;
end;

end.
