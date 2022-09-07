unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtlivro: TEdit;
    Label2: TLabel;
    edtValor: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtTotal: TEdit;
    Label5: TLabel;
    edtTotal2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtTrib: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    procedure edtTotalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtTotalChange(Sender: TObject);

  var
qtd : integer;
Total : double;

begin

qtd :=  StrtoInt(edtlivro.Text) * strToInt(edtvalor.Text);
Total :=  (qtd * 20.11)/100;
edtTotal.Text := IntToStr(qtd);
edtTotal2.Text := IntToStr(qtd);
edtTrib.Text := FloatToStr(Total);
end;

end.
