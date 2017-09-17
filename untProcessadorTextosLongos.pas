unit untProcessadorTextosLongos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ClipBrd, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  Memo2.Lines.Clear;

  for i := 0 to Memo1.Lines.Count - 1 do
    Memo2.Lines.Add(Trim(LabeledEdit1.Text) + Memo1.Lines[i] + Trim(LabeledEdit2.Text));

  PageControl1.ActivePageIndex := 1;
  Clipboard.AsText := Memo2.Lines.Text;
  Application.MessageBox('Processamento concluído.' + sLineBreak + 'Texto transferido automaticamente para área de transferência.', 'Informação', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F6 then
    Memo1.SelectAll
  else if Key = VK_F7 then
    Memo2.SelectAll;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if LabeledEdit1.CanFocus then
    LabeledEdit1.SetFocus;

  PageControl1.ActivePageIndex := 0;
end;

end.

