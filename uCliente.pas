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
    btn_limpar: TButton;
    btn_tirarCarteira: TButton;
    procedure btn_gravarClick(Sender: TObject);
    procedure validarCampos();
    procedure limparCampos();
    procedure btn_limparClick(Sender: TObject);
    procedure btn_tirarCarteiraClick(Sender: TObject);
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

  validarCampos;

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

  ShowMessage('Olá sr ' + nome + #13 +
              'Sobrenome: ' + sobrenome + #13 +
              'Idade ' + IntToStr(idade)+ #13 +
               'Cidade: ' + cidade);

end;


procedure Tfrm_cliente.btn_limparClick(Sender: TObject);
begin

  limparCampos;

end;

procedure Tfrm_cliente.btn_tirarCarteiraClick(Sender: TObject);
begin

  if idade >= 18 then
    ShowMessage('Pode tirar carteira')
  else
    ShowMessage('Não pode tirar carteira.');

end;

procedure Tfrm_cliente.limparCampos;
begin

  edt_codigo.Text := '';
  edt_nome.Text := '';
  edt_sobrenome.Text := '';
  edt_salario.Text := '';
  edt_cidade.Text := '';

end;

procedure Tfrm_cliente.validarCampos;
begin
  if edt_codigo.Text = '' then
  begin
    ShowMessage('Campo codigo é obrigatorio!');
    edt_codigo.SetFocus;
    abort;
  end;

  if edt_nome.Text = '' then
  begin
    ShowMessage('Campo nome é obrigatorio!');
    edt_nome.SetFocus;
    abort;
  end;

  if edt_sobrenome.Text = '' then
  begin
    ShowMessage('Campo sobrenome é obrigatorio!');
    edt_sobrenome.SetFocus;
    abort;
  end;

  if edt_cidade.Text = '' then
  begin
    ShowMessage('Campo cidade é obrigatorio!');
    edt_cidade.SetFocus;
    abort;
  end;

  if edt_salario.Text = '' then
  begin
    ShowMessage('Campo salario é obrigatorio!');
    edt_salario.SetFocus;
    abort;
  end;


  if edt_idade.Text = '' then
  begin
    ShowMessage('Campo idade é obrigatorio!');
    edt_idade.SetFocus;
    abort;
  end;


end;

end.
