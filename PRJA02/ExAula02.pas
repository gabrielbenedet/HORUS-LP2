unit ExAula02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    ClientDataSet: TClientDataSet;
    ClientDataSetId: TIntegerField;
    ClientDataSetNome: TStringField;
    ClientDataSetValor: TCurrencyField;
    ClientDataSetQuantidade: TFloatField;
    ClientDataSetTotal: TCurrencyField;
    ClientDataSetProdutosTotal: TAggregateField;
    DataSource: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BtnAdicionarFiltro: TButton;
    BtnRemoverFiltro: TButton;
    GroupBox2: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    BtnLimparDados: TButton;
    BtnIndexarporID: TButton;
    BtnIndexarporNome: TButton;
    GroupBox4: TGroupBox;
    EdtValordoFiltro: TEdit;
    EdtPercorrerLoc: TEdit;
    BtnPercorer: TButton;
    Locate: TGroupBox;
    FindKey: TGroupBox;
    Label2: TLabel;
    DBETotalProdutos: TDBEdit;
    EdtLocate: TEdit;
    BtnLocate: TButton;
    EdtFindKey: TEdit;
    BtnFindKey: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure ClientDataSetCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BtnLimparDadosClick(Sender: TObject);
    procedure BtnIndexarporIDClick(Sender: TObject);
    procedure BtnIndexarporNomeClick(Sender: TObject);
    procedure BtnPercorerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnIndexarporIDClick(Sender: TObject);
begin
ClientDataSet.IndexFieldNames := 'Id';
end;

procedure TForm1.BtnIndexarporNomeClick(Sender: TObject);
begin
ClientDataSet.IndexFieldNames := 'Nome';
end;

procedure TForm1.BtnLimparDadosClick(Sender: TObject);
begin
ClientDataSet.EmptyDataSet;
end;

procedure TForm1.BtnPercorerClick(Sender: TObject);
var
vEncontrou: Boolean;
begin
vEncontrou := False;
ClientDataSet.DisableControls;
  try
    ClientDataSet.First;
    while not ClientDataSet.Eof do
    begin
      if (ClientDataSet.FieldByName('Id').AsString = EdtPercorrerLoc.Text) then
      begin
        vEncontrou := True;
        Break;
      end;
      ClientDataSet.Next;
    end;
  finally
  ClientDataSet.EnableControls;
  end;

end;

procedure TForm1.ClientDataSetCalcFields(DataSet: TDataSet);
begin
// preço coloca valor e quantidade = total
  ClientDataSet.FieldByName('Total').Value :=
  ClientDataSet.FieldByName('Valor').Value * ClientDataSet.FieldByName('Quantidade').Value;
////Realizar o calculo do Total do Produto e jogar no campo TOTAL;
end;

procedure TForm1.FormCreate(Sender: TObject);
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
