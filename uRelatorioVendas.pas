unit uRelatorioVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, frxClass, frxDBSet, frxBarcode, Vcl.WinXCtrls;
  
type
  TFmRelatorio = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    PnTop: TPanel;
    Panel4: TPanel;
    DsVenda: TDataSource;
    cbxStatus: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    LabelInicio: TLabel;
    ChbxVendedor: TCheckBox;
    ChbxEmpresa: TCheckBox;
    ChbxStatus: TCheckBox;
    DtFim: TDateTimePicker;
    DTinicio: TDateTimePicker;
    BtnProcurar: TSpeedButton;
    Label1: TLabel;
    DsEmpresa: TDataSource;
    DsVendedor: TDataSource;
    LbFechar: TLabel;
    ChbxTerminal: TCheckBox;
    SpinEdit1: TSpinEdit;
    BtnConsultanota: TSpeedButton;
    StTop: TStaticText;
    PnCliente: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    ChbxImpimeCarne: TCheckBox;
    btnCriarCarne: TSpeedButton;
    DsFatura: TDataSource;
    frxReport1: TfrxReport;
    frxFatura: TfrxDBDataset;
    BtnImprimeCarne: TSpeedButton;
    CbxPrazo: TComboBox;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    LbVlParcela: TLabel;
    CbxQdeParcelas: TComboBox;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    EdtValorEntrada: TEdit;
    Label5: TLabel;
    StValorTotal: TStaticText;
    Label6: TLabel;
    Bevel1: TBevel;
    TabSheet3: TTabSheet;
    ActivityIndicator1: TActivityIndicator;
    StInformacao: TStaticText;
    BtnImprimirVenda: TSpeedButton;
    procedure pesquizarVenda;
    procedure FormCreate(Sender: TObject);
    procedure ChbxStatusClick(Sender: TObject);
    procedure BtnProcurarClick(Sender: TObject);
    procedure LbFecharClick(Sender: TObject);
    procedure btnCriarCarneClick(Sender: TObject);
    procedure CbxQdeParcelasChange(Sender: TObject);
    procedure BtnImprimeCarneClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdtValorEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorEntradaChange(Sender: TObject);
    procedure BtnConsultanotaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImprimirVendaClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    
  end;

var
  FmRelatorio: TFmRelatorio;
  aQuick : boolean = false;
  Fatura_id_cliente, Fatura_id_venda : string;
   Fatura_data_compra :TDate;
   Fatura_Valor : currency = 0;

implementation

{$R *.dfm}

uses uDM, LibConfigNFE;

{ TForm4 }

procedure TFmRelatorio.BtnImprimeCarneClick(Sender: TObject);
begin
//APPLICATION.MESSAGEBOX('Ser� selecionada a(s) Fatura(s) da ultima Venda','Aten��o',64);
dm.ProcuraFatura(' where f.id_venda='+Fatura_id_venda);
frxFatura.DataSet := dm.QrFatura;
frxReport1.LoadFromFile('Report\Carne002.fr3');

frxReport1.PrepareReport();
frxreport1.ShowReport;

end;

procedure TFmRelatorio.BtnImprimirVendaClick(Sender: TObject);
VAR
L : tsTRINGlIST;
begin
if dm.QrVenda.FieldByName('N_NFCE').Text<>'' then
 BEGIN //fISCAL
   dm.QrNFCe.Open('select *from nfce where id_venda='+dm.QrVenda.FieldByName('venda').Text);
if (dm.QrNFCe.RecordCount=0)or(not FileExists(dm.QrNFCe.FieldByName('path_nota').Text)) then
  raise Exception.Create('Nota Fiscal n�o encontrada');
  TRY
  L := tsTRINGlIST.Create;
  l.Text :=  ImprimeNota(dm.QrNFCe.FieldByName('path_nota').Text{, ZArqIni.ReadString('impressao','impressora',''),TRUE} );
  showmessage(l.Text);
  FINALLY
   l.Free;
  END;
 END
ELSE SHOWMESSAGE('AINDA VOU IMPLEMENTAR A IMPRESSAO PRE-VENDA');

end;

procedure TFmRelatorio.BtnProcurarClick(Sender: TObject);
begin
pesquizarVenda;
end;

procedure TFmRelatorio.CbxQdeParcelasChange(Sender: TObject);
begin
LbVlParcela.Caption := formatfloat('0.00',Fatura_Valor/strtocurr(TCombobox(sender).Text));
end;

procedure TFmRelatorio.ChbxStatusClick(Sender: TObject);
begin
if TCheckBox(sender).Checked then
cbxStatus.DroppedDown := cbxStatus.ItemIndex = -1;
end;

procedure TFmRelatorio.EdtValorEntradaChange(Sender: TObject);
begin
if edtValorEntrada.text <>'' then
LbVlParcela.Caption := currtostr(strtocurr(StValorTotal.Caption)-strtocurr(edtValorEntrada.text));
if strtocurr(LbVlParcela.Caption)<=0 then
 begin                  // O Valor da parcela n�o pode ser menor nem igual a 0(zero)
 application.MessageBox('O valor da entrada n�o pode ser igual nem maior que o valor Total','Opera��o n�o permitida',16);
 TEdit(sender).Text := '0,00';
 end;

end;

procedure TFmRelatorio.EdtValorEntradaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#13,#8,#27,',']) then key := #0;

end;

procedure TFmRelatorio.FormCreate(Sender: TObject);
begin
if dm = nil then application.CreateForm(TDm, Dm);
cbxPrazo.ItemIndex := 2;//prazo de 30 dias
PnCliente.Top := PageControl1.Top;
PnCliente.Left := 4;
PnCliente.Width := pnTop.Width;
color := clNavy;
DTinicio.Date := date;
DtFim.DateTime := date+TTime(StrToTime('23:59:59'));

end;

procedure TFmRelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F12 then
if Fatura_Valor>0 then 
 btnCriarCarneClick(sender);

end;

procedure TFmRelatorio.LbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFmRelatorio.pesquizarVenda;
begin
 dm.QrVenda.sql.text :=''+
'SELECT v.id AS Venda, v.Terminal,v.Total, v.id_vendedor, v.id_cliente,p.nome_razao AS Cliente,v.id_caixa AS Prot_Caixa,v.id_empresa, '+#13+
'v.fiscal_prevenda,nfce.N_NFCE, nfce.status, nfce.PROTOCOLO, nfce.CHAVE_ACESSO, nfce.PATH_NOTA '+#13+
'FROM '+#13+
'venda AS v left JOIN nfce '+#13+
'ON v.ID = nfce.ID_VENDA '+#13+
'left JOIN pessoa AS p '+#13+
'ON p.ID = v.id_cliente OR v.id_cliente IS null '+#13+
'WHERE  v.data_venda BETWEEN '+#13+//2015-11-02' AND '2019-11-11 07:49:59'';
''''+formatdatetime('yyyy-mm-dd',DTinicio.Date)+''' and '''+formatdatetime('yyyy-mm-dd',DtFim.Date)+' 23:59:59''';
//filtra vendedor
dm.QrVenda.sql.Add('and v.id_vendedor LIKE ');
 if ChbxVendedor.Checked then
dm.QrVenda.sql.Add(dm.QrVendedorID_VENDEDOR.Text)else dm.QrVenda.sql.Add('''%''');
//filtra terminal
dm.QrVenda.sql.Add('AND v.terminal LIKE ');
if ChbxTerminal.Checked then
 dm.QrVenda.sql.Add(SpinEdit1.Text) else dm.QrVenda.sql.Add('''%''');
//filtra empresa
dm.QrVenda.sql.Add('AND v.id_empresa LIKE ');
if ChbxEmpresa.Checked then
dm.QrVenda.sql.Add(dm.QrEmpresaID.Text)else dm.QrVenda.sql.Add('''%''');
//filtra status da nota
if ChbxStatus.Checked then
 begin
 if cbxStatus.Text<>'' then
   dm.QrVenda.sql.Add('AND nfce.status LIKE '''+cbxStatus.Text+'''');
 end;
 dm.QrVenda.Open();
end;

procedure TFmRelatorio.BtnConsultanotaClick(Sender: TObject);
var
 l : tStringList;
begin
if dm.QrVenda.FieldByName('n_nfce').Text='' then  raise Exception.Create('Venda sem nota');

dm.QrNFCe.Open('select *from nfce where id_venda='+dm.QrVenda.FieldByName('venda').Text);

if (dm.QrNFCe.RecordCount=0)or(not FileExists(dm.QrNFCe.FieldByName('path_nota').Text)) then
  raise Exception.Create('Nota Fiscal n�o encontrada');
  PageControl1.TabIndex := 2;
  ActivityIndicator1.Animate := true;
  StInformacao.Caption := 'Consultando...';
  application.ProcessMessages;
  l := tStringList.Create;
    l.Text := ConsultaDanfe(dm.QrNFCe.FieldByName('path_nota').Text);
    PnCliente.Caption := 'NFCe: '+dm.QrNFCe.FieldByName('n_nfce').Text+' | Status: '+l.Values['xMotivo']+
    ' | Protocolo: '+l.Values['Protocolo'];
    showmessage(l.Text);
    PageControl1.TabIndex := 0;
end;

procedure TFmRelatorio.SpeedButton2Click(Sender: TObject);
var
DiaDaSemana : Array of string;
x : integer;
begin
DiaDaSemana := ['Domingo','Segunda','Ter�a','Quarta', 'Quinta','Sexta','S�bado'];
x := DayOfWeek(date);
showmessage(inttostr(x)+' - '+DiaDaSemana[x]);
end;

procedure TFmRelatorio.btnCriarCarneClick(Sender: TObject);
var
  I, Qde: Integer;
 //DiasPrazoCadaParcela : integer;//teste para cada mes da prestacao
  Vencimento,Diav ,s: string;   
  Valor_Parcela : currency;
  prazo, Incremento : integer;
  //ComEntrada : boolean;
begin
   try
Prazo := strtoint(CbxPrazo.Text);
diaV := formatdatetime('dd',date);
Qde := CbxQdeParcelas.ItemIndex;
if Fatura_id_cliente = '' then raise Exception.Create('Cliente n�o informado');
if Fatura_id_venda = '' then raise Exception.Create('Venda n�o Informada');
 Valor_Parcela := strtocurr(stringreplace(LbVlParcela.Caption, '.','',[rfreplaceall]));
 s:= '';
  Incremento := 1; //sem entrada
 //Entrada
 if EdtValorEntrada.Text<>'' then
if strtocurr(EdtValorEntrada.Text)>0 then
   begin
   Incremento := 2;//com entrada

   Vencimento := formatdatetime('yyyy-mm-dd',date);
    s := 'insert into fatura_cliente(id_cliente, data_compra, '+
'data_vencimento, valor,Qde_parcelas, parcela_atual,id_venda)values'+#13+'('+
 Fatura_id_cliente+','''+formatdatetime('yyyy-mm-dd',Fatura_data_compra)+''','''+Vencimento+''','+
 dm.CurrToStrSQL(strtocurr(EdtValorEntrada.Text) {Fatura_valor})+','+inttostr(Qde+Incremento)+','+inttostr(1)+','+Fatura_id_venda
+');'+#13;

   end;

for I := 0 to Qde do
 begin

 Vencimento :=  datetostr(date+(prazo*(i+1)));
 Vencimento := formatdatetime('yyyy-mm-',strtodate(Vencimento))+diaV;
s:= s+'insert into fatura_cliente(id_cliente, data_compra, '+
'data_vencimento, valor,Qde_parcelas, parcela_atual,id_venda)values'+#13+'('+
 Fatura_id_cliente+','''+formatdatetime('yyyy-mm-dd',Fatura_data_compra)+''','''+Vencimento+''','+
 dm.CurrToStrSQL(Valor_Parcela{Fatura_valor})+','+inttostr(Qde+Incremento)+','+inttostr(i+Incremento)+','+Fatura_id_venda
+');'+#13;
 //o valor tem que estar de acordo com a parcela
 end;
// showmessage(s);
 dm.ExecutaQuery(s);
 //Fatura_id_venda := inttostr();
 dm.FDQuery.Open('select * from fatura_Cliente where id_venda='+Fatura_id_venda);
  if ChbxImpimeCarne.Checked then BtnImprimeCarneClick(self);
  application.ProcessMessages;
   finally 
 if aQuick then close;
   end;
end;

end.
