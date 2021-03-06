unit ControleDeEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    Panel1: TPanel;
    ClientDataSetCodigo: TIntegerField;
    ClientDataSetDescricao: TStringField;
    ClientDataSetUnidade: TStringField;
    ClientDataSetFornecedor: TStringField;
    ClientDataSetData: TDateField;
    ClientDataSetQuantidade: TFloatField;
    ClientDataSetUnitario: TCurrencyField;
    ClientDataSetTotal: TCurrencyField;
    ClientDataSetEstoqueQtd: TAggregateField;
    ClientDataSetEstoqueVlr: TAggregateField;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    DBEdtCodigo: TDBEdit;
    DBEdtData: TDBEdit;
    DBEdtUnitario: TDBEdit;
    DBEdtQuantidade: TDBEdit;
    DBEdtDescricao: TDBEdit;
    DBEdtFornecedor: TDBEdit;
    DBEdtTotal: TDBEdit;
    DBEdtUnidade: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    CBoxCampo: TComboBox;
    CBoxAcao: TComboBox;
    EdtValor: TEdit;
    BtnExecutar: TButton;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    DBEdtQntEmEstoque: TDBEdit;
    DBEdtVlrEmEstoque: TDBEdit;
    procedure ClientDataSetCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSetBeforePost(DataSet: TDataSet);
    procedure CBoxAcaoChange(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnExecutarClick(Sender: TObject);
var
vOk: boolean;
begin
//ORGANIZA POR ORDEM ESCOLHIDA
if CBoxAcao.ItemIndex = 0 then
begin
  if CBoxCampo.ItemIndex = 0 then
    ClientDataSet.IndexFieldNames := 'Codigo';
  if CBoxCampo.ItemIndex = 1 then
    ClientDataSet.IndexFieldNames := 'Descricao';
  if CBoxCampo.ItemIndex = 2 then
    ClientDataSet.IndexFieldNames := 'Unidade';
  if CBoxCampo.ItemIndex = 3 then
    ClientDataSet.IndexFieldNames := 'Fornecedor';
  if CBoxCampo.ItemIndex = 4 then
    ClientDataSet.IndexFieldNames := 'Data';
  if CBoxCampo.ItemIndex = 5 then
    ClientDataSet.IndexFieldNames := 'Quantidade';
  if CBoxCampo.ItemIndex = 6 then
    ClientDataSet.IndexFieldNames := 'Unitario';
  if CBoxCampo.ItemIndex = 7 then
    ClientDataSet.IndexFieldNames := 'Total';
end;

  //LIMPAR TUDO! MAS TUDO MESMO, CADASTROS, EDTS, TUDO!
  if CBoxAcao.ItemIndex = 3 then
  begin
    ClientDataSet.EmptyDataSet;
  end;

  //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO O CODIGO
  if CBoxCampo.ItemIndex = 0 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Codigo').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end
            else;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;

    //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO A DESCRICAO
    if CBoxCampo.ItemIndex = 1 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Descricao').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;

    //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO A UNIDADE
     if CBoxCampo.ItemIndex = 2 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Unidade').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;

    //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO A FORNECEDOR
     if CBoxCampo.ItemIndex = 3 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Fornecedor').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;


    //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO A DATA
     if CBoxCampo.ItemIndex = 4 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Data').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;


      //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO A QUANTIDADE
     if CBoxCampo.ItemIndex = 5 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Quantidade').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;


        //PROCURA OQUE FOR DIGITADO NO VALOR, BUSCANDO COMO PARAMETRO A UNITARIO
     if CBoxCampo.ItemIndex = 6 then
    begin
      vOk := false;
      ClientDataSet.DisableControls;
       try
         ClientDataSet.First;
          while not ClientDataSet.Eof do
          begin
            if (ClientDataSet.FieldByName('Unitario').AsString = EdtValor.Text) then
            begin
              ShowMessage('Registro Encontrado');
              vOk := True;
              break;
            end;
            ClientDataSet.Next
            end;
       finally
          ClientDataSet.EnableControls;
       end;
    end;



end;

procedure TForm1.CBoxAcaoChange(Sender: TObject);
begin
//Item 12 da folha;
if (CBoxAcao.ItemIndex = 0) or (CBoxAcao.ItemIndex = 3) or (CBoxAcao.ItemIndex = 6)  then
EdtValor.Enabled := False
else
EdtValor.Enabled := True;
end;

procedure TForm1.ClientDataSetBeforePost(DataSet: TDataSet);
begin
//Item 10 da folha;
IF (DBEdtCodigo.Text = '') or (DBEdtData.text = '') or (DBEdtUnitario.Text = '') or
(DBEdtQuantidade.Text = '') or (DBEdtDescricao.Text = '') or (DBEdtFornecedor.Text = '') or
(DBEdtTotal.Text = '') or (DBEdtUnidade.Text = '') then
   Begin
     ShowMessage('Campos Incompletos');
   End;

end;

procedure TForm1.ClientDataSetCalcFields(DataSet: TDataSet);
begin

 ClientDataSet.FieldByName('Total').Value :=
 ClientDataSet.FieldByName('Unitario').Value * ClientDataSet.FieldByName('Quantidade').Value;
//Item 6 na folha;
end;

procedure TForm1.FormCreate(Sender: TObject);
//Extrai pra dentro da pasta onde esta o porjeto, um arquivo XML com os dados.
const
cDataFile = 'Dados.XML';
begin
ClientDataSet.FileName := ExtractFilePath(Application.ExeName) + cDataFile;
if FileExists(ClientDataSet.FileName) then
 ClientDataSet.Open
 else
 ClientDataSet.CreateDataSet;
end;

end.
