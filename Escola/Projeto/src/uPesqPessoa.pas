unit uPesqPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, SimpleDS, ComCtrls, FMTBcd, SqlExpr;

type
  TFormSelecionaPessoa = class(TForm)
    sdsPessoa: TSimpleDataSet;
    sdsPessoaIDALUNO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaENDE: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaFONE: TStringField;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbbPessoa: TComboBox;
    sqlMax: TSQLQuery;
    sdsPessoaCODEMPRESA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cbbPessoaCloseUp(Sender: TObject);
    procedure cbbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbPessoaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sdsPessoaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
   iEmpresa:integer;
    { Public declarations }
  end;

var
  FormSelecionaPessoa: TFormSelecionaPessoa;

implementation

uses uMensalidade, uDm;

{$R *.dfm}

procedure TFormSelecionaPessoa.FormShow(Sender: TObject);
begin
   sdsPessoa.open;
   cbbPessoa.Items.Clear;
   cbbPessoa.Items.Add('<Todos>');
   cbbPessoa.ItemIndex := 0;
   while not sdsPessoa.Eof do
   begin
      cbbPessoa.Items.Add(sdsPessoaNOME.AsString);
      sdsPessoa.next;
   end;
end;

procedure TFormSelecionaPessoa.cbbPessoaCloseUp(Sender: TObject);
begin
   if FormMensalidade = nil then
      Application.CreateForm(TFormMensalidade,FormMensalidade);
   sdsPessoa.Locate('NOME',cbbPessoa.Text,[]);
   FormMensalidade.cdsCadastro.close;


   if cbbPessoa.ItemIndex >=1 then
   begin
      if cbbPessoa.ItemIndex > 0 then
      begin
         FormMensalidade.sqlCadastro.sql.text := ' SELECT * FROM MENSALIDADE ORDER BY VENCIMENTO,PAGAMENTO descending';
         //FormMensalidade.sqlCadastro.Params[0].AsString := sdsPessoaIDALUNO.AsString;
         FormMensalidade.cdsCadastro.open;
         FormMensalidade.cdsCadastro.Filtered := true;
         FormMensalidade.cdsCadastro.Filter   := 'CODALUNO ='+sdsPessoaIDALUNO.AsString;

      end;
   end
   else
   begin
      FormMensalidade.sqlCadastro.sql.text := ' SELECT * FROM MENSALIDADE  ORDER BY VENCIMENTO,PAGAMENTO descending';
      FormMensalidade.cdsCadastro.open;
   end;
   FormMensalidade.cbbAlunos.Items.Clear;
   FormMensalidade.cbbAlunos.Items := cbbPessoa.Items;
   FormMensalidade.cdsCadastro.Filter := 'pagamento is null';
   if cbbPessoa.ItemIndex >0 then
   begin
      FormMensalidade.cbbAlunos.ItemIndex := cbbPessoa.ItemIndex;
      FormMensalidade.cbbAlunos.OnCloseUp(self);
   end;
   FormMensalidade.Show;

end;

procedure TFormSelecionaPessoa.cbbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_RETURN:cbbPessoa.OnCloseUp(self);
   end;
end;

procedure TFormSelecionaPessoa.cbbPessoaChange(Sender: TObject);
begin
   sdsPessoa.Locate('NOME',cbbPessoa.Text,[]);

end;

procedure TFormSelecionaPessoa.FormCreate(Sender: TObject);
begin
   sdsPessoa.Connection := dmGeral.SQLConnection;
  sqlMax.Close;
  sqlMax.SQL.Text := 'select codempresa from parametro ';
  sqlMax.Open;
  iEmpresa := sqlMax.Fields[0].Value;
  sqlMax.close;
  SELF.Color:= $00EAE9CE;
  StatusBar1.Color := Self.Color;
end;

procedure TFormSelecionaPessoa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
   VK_ESCAPE :close;
   end;
end;

procedure TFormSelecionaPessoa.sdsPessoaAfterOpen(DataSet: TDataSet);
begin

   sdsPessoa.Filtered:=true;
   sdsPessoa.Filter := 'CODEMPRESA='+IntToStr(iEmpresa)
end;

end.
