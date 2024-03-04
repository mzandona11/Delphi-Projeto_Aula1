unit uCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  Tfrm_cliente = class(TForm)
    Label1: TLabel;
    edt_codigo: TEdit;
    Label2: TLabel;
    edt_nome: TEdit;
    Label3: TLabel;
    edt_idade: TEdit;
    Label4: TLabel;
    edt_salario: TEdit;
    Label5: TLabel;
    edt_cidade: TEdit;
    Label8: TLabel;
    edt_sobrenome: TEdit;
    cbSexo: TComboBox;
    Label6: TLabel;
    cbAtivo: TCheckBox;
    btn_gravar: TButton;
    procedure btn_gravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;
  nome, sobrenome, cidade, sexo : string;
  codigo, idade : Integer;
  salario : Float32;
  ativo : Boolean;

implementation

{$R *.fmx}

procedure Tfrm_cliente.btn_gravarClick(Sender: TObject);
begin

  codigo := StrToInt(edt_codigo.Text);
  nome := edt_nome.Text;
  sobrenome := edt_sobrenome.Text;
  idade := StrToInt(edt_idade.Text);
  salario := StrToFloat(edt_salario.Text);
  ativo := cbAtivo.IsChecked;
  cidade := edt_cidade.Text;

  if cbSexo.ItemIndex = 0 then
    sexo := 'Masculino'
  else
    sexo := 'Feminino';

  ShowMessage('Ol� sr ' + nome);


end;

end.