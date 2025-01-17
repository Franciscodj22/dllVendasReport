unit uRelatorioVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, frxClass, frxDBSet, frxBarcode, Vcl.WinXCtrls, frxChart,
  frxExportPDF, frxExportHTML, frxDMPExport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;
  
type
  TFmRelatorio = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    PnTop: TPanel;
    PnPesquisa: TPanel;
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
    TabSheet4: TTabSheet;
    BtnAtualizarvaloresFatura: TSpeedButton;
    BtnReceberFatura: TSpeedButton;
    lbeReceberFatura: TLabeledEdit;
    DBGrid3: TDBGrid;
    StTroco: TStaticText;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    StValorTotalFaturaLiquido: TStaticText;
    StJurosfatura: TStaticText;
    StTotalFaturaBruto: TStaticText;
    Label9: TLabel;
    Panel4: TPanel;
    Panel6: TPanel;
    frxSaidaProdutos: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    DBGProcuraProdutos: TDBGrid;
    DsprocuraProduto: TDataSource;
    Panel8: TPanel;
    DBGrid4: TDBGrid;
    Panel9: TPanel;
    stTotalCompra: TStaticText;
    stQdeVolumes: TStaticText;
    StVendedor: TStaticText;
    dsItens: TDataSource;
    stVenda: TStaticText;
    Panel10: TPanel;
    sbxProcuraProduto: TSearchBox;
    LbeQde: TLabeledEdit;
    btnImprimirA4: TSpeedButton;
    frxItens: TfrxDBDataset;
    frxVendaA4: TfrxDBDataset;
    QrVendaA4: TFDQuery;
    Panel11: TPanel;
    DbgCliente: TDBGrid;
    SearchBox1: TSearchBox;
    QrVendaTerminal: TFDQuery;
    QrVendaTerminalID: TFDAutoIncField;
    QrVendaTerminalID_CLIENTE: TIntegerField;
    QrVendaTerminalDATA_VENDA: TSQLTimeStampField;
    QrVendaTerminalid_empresa: TIntegerField;
    QrVendaTerminalPAG_CARTAO: TFloatField;
    QrVendaTerminalPAG_DINHEIRO: TFloatField;
    QrVendaTerminalTOTAL: TFloatField;
    QrVendaTerminalN_NOTA: TIntegerField;
    QrVendaTerminalPAG_FIADO: TFloatField;
    QrVendaTerminalOP_CAIXA_ID: TIntegerField;
    QrVendaTerminalTERMINAL: TIntegerField;
    QrVendaTerminalID_CAIXA: TIntegerField;
    QrVendaTerminalFISCAL_PREVENDA: TIntegerField;
    QrVendaTerminalid_vendedor: TIntegerField;
    DsVendaTerminal: TDataSource;
    BitBtn1: TBitBtn;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    BtnImprimeOrcamento: TSpeedButton;
    frxVendaTerminal: TfrxDBDataset;
    frxCliente: TfrxDBDataset;
    frxEmpresa: TfrxDBDataset;
    Panel12: TPanel;
    LbeDesconto_p: TLabeledEdit;
    BtnAplicarDescotoQdeItens: TSpeedButton;
    LbeQdeItens: TLabeledEdit;
    LbDescricaoItem: TLabel;
    Label10: TLabel;
    Timer1: TTimer;
    Panel13: TPanel;
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
    procedure DBGrid3CellClick(Column: TColumn);
    procedure BtnAtualizarvaloresFaturaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnReceberFaturaClick(Sender: TObject);
    procedure lbeReceberFaturaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure sbxProcuraProdutoInvokeSearch(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGProcuraProdutosDblClick(Sender: TObject);
    procedure LbeQdeKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirA4Click(Sender: TObject);
    procedure DbgClienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbgClienteCellClick(Column: TColumn);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnImprimeOrcamentoClick(Sender: TObject);
    function PegarNomeVendedor(id_vendedor : integer):string;
    procedure BtnAplicarDescotoQdeItensClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure lbeReceberFaturaChange(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
  private
    { Private declarations }
   procedure ImprimeCarne(xid_Venda: integer);
  public
    { Public declarations }
     contaTempoCarneF12 : integer;
    procedure ExibirItensVenda(idVenda:integer);
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
ImprimeCarne(strtoint(Fatura_id_venda));

end;

procedure TFmRelatorio.BtnImprimeOrcamentoClick(Sender: TObject);
begin
// sttop.Caption := sttop.Caption+' - '+zArqIni.ReadString('EmpresaEmitente','id','1');
if dm.QrItens.RecordCount=0 then raise Exception.Create('N�oh� tens na venda/or�amento');
dm.QrCliente.Open('select * from cliente where id='+QrVendaTerminalID_CLIENTE.AsString);
frxReport1.LoadFromFile('Report\Orcamento.fr3');
 dm.QrEmpresa.Open('select * from nfe_empresa where id='+ZArqIni.ReadString('EmpresaEmitente','id','1'));
frxReport1.PrepareReport();
frxreport1.ShowReport;
dm.QrCliente.Close;
end;

procedure TFmRelatorio.btnImprimirA4Click(Sender: TObject);
var sql :string;
begin

sql := 'SET @Emitente = ''Francisco inform�tica''; '+
'SET @Logradouro = ''Rua Firmo Cunha 925, bairro de Fatima''; '+
'SET @cidade=''Jose de Freitas - PI''; '+
'SELECT @Emitente,@Logradouro,@cidade,  v.id AS venda,v.data_venda,c.nome_razao FROM '+
'venda AS v LEFT JOIN cliente AS c '+
'ON v.ID_CLIENTE = c.ID '+
'WHERE v.ID='+dm.QrVenda.FieldByName('venda').Text;
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
  l.Text :=  pwchar(ImprimeNota(FmRelatorio.Handle,pwchar(dm.QrNFCe.FieldByName('path_nota').Text), pwchar(ZArqIni.ReadString('impressao','impressora','')),TRUE ));
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

procedure TFmRelatorio.BtnReceberFaturaClick(Sender: TObject);
var
Recebido, TotalAPagar ,Restante,f: currency;
  I: Integer;
  SqlPagamentoParcial : string;
begin

lbeReceberFatura.SetFocus;
if dm.QrFatura.RecordCount=0 then raise Exception.Create('N� h� faturas pendentes desse cliente');

if lbeReceberFatura.Text='' then raise Exception.Create('Informe o Valor');
if application.MessageBox('Confirmar Recebimento da Fatura ?','',mb_iconquestion+mb_yesno)=idno then exit;

Recebido := strtocurr(stringreplace(lbeReceberFatura.Text,'.','',[]));
TotalAPagar := strtocurr(stringreplace(StTotalFaturaBruto.Caption,'.','',[]));
if recebido>=TotalAPagar then//o recebido da pra pagar a fatura completa
 begin
 dm.ExecutaQuery('update fatura_cliente set status=1 where status=0 and id_cliente='+dm.QrFaturaID_CLIENTE.Text);
 StTroco.Caption := 'Troco: R$'+formatfloat('00.00',recebido-TotalAPagar);
 dm.valorFaturaRecebido := TotalAPagar;
  end else //o recebido n�o da pra pagar a fatura completa
   begin
      Restante := Recebido;
   for I := 1 to dm.QrFatura.RecordCount do
    begin
    dm.QrFatura.RecNo := i;
    f := dm.QrFaturaVALOR.Value+strtocurr(stringreplace(dm.QrFaturaJuros.Text,'.',',',[]));
    if Restante>=f then
      begin
    SqlPagamentoParcial :=
    SqlPagamentoParcial+'update fatura_cliente set status=1 where id='+dm.QrFaturaID.Text+';'+#13;
      Restante := Restante-f;
      end else//nao da pra pagar a fatura do id selecionado
       begin
       SqlPagamentoParcial :=
    SqlPagamentoParcial+'update fatura_cliente set valor='+stringreplace(currtostr(
    dm.QrFaturaVALOR.Value-restante),',','.',[])
    +' where id='+dm.QrFaturaID.Text+';'+#13;
       Restante := 0;
       end;
       if Restante<=0 then break;
    end;//fim  do loop

    dm.ExecutaQuery(SqlPagamentoParcial);
    dm.valorFaturaRecebido := Recebido;
   end;

  BtnAtualizarvaloresFaturaClick(sender);
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

procedure TFmRelatorio.DbgClienteCellClick(Column: TColumn);
begin
if DbgCliente.datasource.dataset.recordcount=0 then exit;

if Column.Title.Caption = 'Nova Venda' then
 begin
 QrVendaTerminal.Open('select * from venda where id<0');
QrVendaTerminal.Insert;
QrVendaTerminalID_CLIENTE.Value:= dm.QrCliente.FieldByName('id').AsInteger;
QrVendaTerminalOP_CAIXA_ID.asstring := '0'+User_id;
QrVendaTerminalID_VENDEDOR.Value :=idVendedor;
QrVendaTerminalDATA_VENDA.AsDateTime := date+time;
QrVendaTerminalid_empresa.value := 1;//Empresa_id;
QrVendaTerminalID_CAIXA.Value := 0;//idCaixa;
QrVendaTerminalTERMINAL.Value := Terminal;
QrVendaTerminalTOTAL.Value := 0;
QrVendaTerminal.Post;
idVendaTerminal := QrVendaTerminalID.AsInteger;
stVenda.Caption := 'Venda: '+ QrVendaTerminalID.AsString;
StVendedor.Caption := 'Vendedor: '+idVendedor.tostring+' - '+PegarNomeVendedor(idVendedor);
 PnCliente.Caption :='Cliente: '+dm.QrCliente.FieldByName('id').AsString+' - '+ dm.QrCliente.FieldByName('nome_razao').AsString;
PageControl1.TabIndex := 4;
sbxProcuraProduto.SetFocus;
 end;
end;

procedure TFmRelatorio.DbgClienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var button : integer;
R: TRect;
scapt : string;
begin
if TDBGrid(sender).datasource.dataset.recordcount=0 then exit;

if Column.Title.Caption = 'Nova Venda' then
    begin
    TDBGrid(sender).Canvas.FillRect(Rect);
    BUTTON := 0;
    SCapt := 'Nova Venda'; //'Fechar' ;
    R:=Rect;
    InflateRect(R,-3,-2); //Diminue o tamanho do Bot�o
    DrawFrameControl(TDBGrid(sender).Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    with TDBGrid(Sender).Canvas do
    begin
      Brush.Style := bsClear;
      Font.Color := clBtnText;
      TextRect(Rect, (Rect.Left + Rect.Right - TextWidth(SCapt)) div 2, (Rect.Top + Rect.Bottom - TextHeight(SCapt)) div 2, SCapt);
    end;
  end;


  TDBGrid(Sender).Canvas.FillRect(Rect);
TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFmRelatorio.DBGProcuraProdutosDblClick(Sender: TObject);
var
Pro_ID, Cod_IT : string;
desconto, preco,total,qde : currency;
begin
//showmessage('1');
  if DBGProcuraProdutos.datasource.dataset.recordcount=0 then exit;
if LbeQde.Text='' then LbeQde.Text :='1';
 //showmessage('2');
preco := dm.QrProdutos.FieldByName('preco_venda').AsCurrency;
desconto := 0;
qde := strtocurr(LbeQde.Text);
total := preco*qde;
Cod_IT := inttostr(dm.QrItens.RecordCount+1);
Pro_ID := dm.QrProdutos.FieldByName('id').Text;
      dm.ExecutaQuery('insert into itens(cod_it,id_venda,id_prod,vl_desconto,vl_un,qde,vl_total)'+
              'values('+Cod_IT+','+inttostr(idVendaTerminal)+','+Pro_ID+','+dm.CurrToStrSQL(Desconto)+
              ','+dm.CurrToStrSQL(preco)+','+dm.CurrToStrSQL(qde)+','+dm.CurrToStrSQL(total)+');');
dm.FDCon.ExecSQL('update venda set '+
' total= total+'+dm.CurrToStrSQL(Total)+
' where id='+inttostr(idVendaTerminal));

 LbeQde.Text :='';
 sbxProcuraProduto.SelectAll;
 application.ProcessMessages;
 ExibirItensVenda(idVendaTerminal);
end;

procedure TFmRelatorio.DBGrid3CellClick(Column: TColumn);
var aSQL : string;
begin
aSQL := 'SET @JurosAoDia = 0.0033;-- = 0,099  ou seja 9,9% ao mes'+#13+
  'SELECT p.id, p.nome_razao, p.cpf_cnpj, p.logradouro, p.numero, p.bairro, p.municipio,p.uf,'+#13+
'  case when TIMESTAMPDIFF(DAY,data_vencimento, NOW())-1 <0 then 0 ELSE'+#13+
' TIMESTAMPDIFF(DAY,data_vencimento, NOW())-1 end AS atraso,fc.*,'+
 ' case when valor * @JurosAoDia * TIMESTAMPDIFF(DAY,data_vencimento, NOW())<0 then 0 ELSE'+#13+
 'Format(valor * @JurosAoDia * TIMESTAMPDIFF(DAY,data_vencimento, NOW()),3)  end'+
  ' AS Juros FROM '+#13+
  'fatura_cliente AS fc inner join pessoa as p ON FC.ID_CLIENTE=P.ID'+#13+
  ' WHERE fc.status=0 and fc.ID_CLIENTE=1';


end;

procedure TFmRelatorio.DBGrid4CellClick(Column: TColumn);
var
s: string;
begin
if DBGrid4.datasource.dataset.recordcount=0 then exit;

if Column.Title.Caption = 'Remover' then
    begin
    s:= 'delete from itens where id='+dm.QrItens.FieldByName('id').Text+';'
    +#13+'update venda set total=total-'+stringreplace(dm.QrItens.FieldByName('vl_total').Text,',','.',[])
    +' where id='+inttostr(idVendaTerminal)+';';
    dm.ExecutaQuery(s);
    application.ProcessMessages;
    ExibirItensVenda(idVendaTerminal);
    end;
end;

procedure TFmRelatorio.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var button : integer;
R: TRect;
scapt : string;
begin
if TDBGrid(sender).datasource.dataset.recordcount=0 then exit;

if Column.Title.Caption = 'Remover' then
    begin
    TDBGrid(sender).Canvas.FillRect(Rect);
    BUTTON := 0;
    SCapt := 'Remover'; //'Fechar' ;
    R:=Rect;
    InflateRect(R,-0,-0); //Diminue o tamanho do Bot�o
    DrawFrameControl(TDBGrid(sender).Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    with TDBGrid(Sender).Canvas do
    begin
      Brush.Style := bsClear;
      Font.Color := clBtnText;
      TextRect(Rect, (Rect.Left + Rect.Right - TextWidth(SCapt)) div 2, (Rect.Top + Rect.Bottom - TextHeight(SCapt)) div 2, SCapt);
    end;
  end;


  TDBGrid(Sender).Canvas.FillRect(Rect);
TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
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

procedure TFmRelatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
FmRelatorio := nil;
end;

procedure TFmRelatorio.FormCreate(Sender: TObject);
begin
if dm = nil then application.CreateForm(TDm, Dm);
QrVendaA4.Connection := dm.FDCon;
QrVendaTerminal.Connection := dm.FDCon;
DbgCliente.DataSource := dm.DsCliente;
cbxPrazo.ItemIndex := 2;//prazo de 30 dias
PnCliente.Top := PageControl1.Top;
PnCliente.Left := 4;
PnCliente.Width := pnTop.Width;
dsitens.dataset := dm.qritens;
dsprocuraproduto.dataset := dm.qrprodutos;
color := clNavy;
DTinicio.Date := date;
DtFim.DateTime := date+TTime(StrToTime('23:59:59'));
frxFatura.DataSet := dm.QrFatura;
frxSaidaProdutos.DataSet := dm.QrSaida_Produtos;
 //frxVendaA4.DataSet := QrVendaA4;
 frxItens.DataSet := dm.QrItens;
 frxVendaTerminal.DataSet := QrVendaTerminal;
 frxcliente.DataSet := dm.QrCliente;
 frxEmpresa.DataSet := dm.QrEmpresa;

end;

procedure TFmRelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F12 then
if Fatura_Valor>0 then 
 btnCriarCarneClick(sender);

end;

procedure TFmRelatorio.ImprimeCarne(xid_Venda: integer);
begin
//APPLICATION.MESSAGEBOX('Ser� selecionada a(s) Fatura(s) da ultima Venda','Aten��o',64);
dm.ProcuraFatura(' where f.id_venda='+xid_Venda.ToString {Fatura_id_venda});
frxFatura.DataSet := dm.QrFatura;
 dm.QrEmpresa.Open('select * from nfe_empresa where id='+ZArqIni.ReadString('EmpresaEmitente','id','1'));
frxReport1.LoadFromFile('Report\Carne002.fr3');

frxReport1.PrepareReport();
frxreport1.ShowReport;
end;

procedure TFmRelatorio.LbeQdeKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#13,#27,#8,',']) then key := #0;

end;

procedure TFmRelatorio.lbeReceberFaturaChange(Sender: TObject);
var
recebido,TotalAPagar: currency;
begin
if TEdit(sender).Text='' then exit;
Recebido := dm.StrToCurrSemPonto('0'+TEdit(sender).Text);
TotalAPagar := dm.StrToCurrSemPonto(stringreplace(trim(StTotalFaturaBruto.Caption),'R$','',[]));

 if Recebido>TotalAPagar then
StTroco.Caption := 'Troco: R$'+formatfloat('0.00',recebido-TotalAPagar)
else StTroco.Caption := 'Troco: R$0,00';

end;

procedure TFmRelatorio.lbeReceberFaturaKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',',',#13,#8]) then key := #0;
if (key=',')and(pos(',',lbeReceberFatura.Text)>0) then key := #0;
if key = #13 then BtnReceberFaturaClick(sender);


end;

procedure TFmRelatorio.LbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFmRelatorio.Panel13Click(Sender: TObject);
begin
ImprimeCarne(dm.QrFaturaID_VENDA.Value);
end;

procedure TFmRelatorio.Panel4Click(Sender: TObject);
begin
BtnAtualizarvaloresFaturaClick(sender);
end;

procedure TFmRelatorio.Panel6Click(Sender: TObject);
begin
BtnReceberFaturaClick(sender);
end;

function TFmRelatorio.PegarNomeVendedor(id_vendedor: integer): string;
begin

dm.FDQuery.Open('SELECT p.nome_razao, p.id AS id_pessoa,v.id AS id_vendedor FROM '+#13+
'pessoa AS p RIGHT JOIN vendedor AS v '+#13+
'ON p.id = v.id_pessoa where v.id='+id_vendedor.ToString);
Result := dm.FDQuery.FieldByName('nome_razao').AsString;
dm.FDQuery.Close;
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
    l.Text := ConsultaDanfe(pwchar(dm.QrNFCe.FieldByName('path_nota').Text));
    PnCliente.Caption := 'NFCe: '+dm.QrNFCe.FieldByName('n_nfce').Text+' | Status: '+l.Values['xMotivo']+
    ' | Protocolo: '+l.Values['Protocolo'];
    showmessage(l.Text);
    PageControl1.TabIndex := 0;
end;

procedure TFmRelatorio.ExibirItensVenda(idVenda:integer);
var
nSQL: string;
begin

nSQL:=
'select '+#13+
' v.total as Total_Venda,I.ID_PROD,i.id_venda,i.id,i.cod_it ,p.CD_BARR,p.DESCRICAO,p.UN,i.vl_un,i.QDE,'+#13+
' i.vl_total ,i.vl_desconto, '+#13+
'p.ncm_ as ncm,p.icms'+#13+
' from itens as i inner join produtos as p '+ #13+
' on i.id_prod = p.id '+ #13+
' inner join venda as v on i.id_venda = v.id ';
dm.QrItens.Open(nSQL+
' where i.id_venda='+inttostr(idVenda)+
' ORDER BY I.ID ');
dm.FDQuery.Open(' SET @venda='+inttostr(idVenda)+';SELECT((SELECT SUM(vl_total) FROM itens WHERE id_venda=@venda)-(SELECT SUM(vl_desconto)'
+' FROM itens WHERE id_venda=@venda))AS total_venda;');
stTotalCompra.Caption := formatfloat('0.00', dm.FDQuery.FieldByName('Total_Venda').AsCurrency);
stQdeVolumes.Caption :=  inttostr(dm.QrItens.RecordCount);
end;

procedure TFmRelatorio.BitBtn1Click(Sender: TObject);
var
aIdVenda : integer;
s : string;
  I: Integer;
begin
if not InputQuery('Informe o ID da Venda','Venda: ',s) then  exit;
for I := 1 to length(s) do
if not(s[i] in ['0'..'9']) then raise Exception.Create('Informe um ID numerico v�lido');

aIdVenda := strtoint(s);
stVenda.Caption := 'Venda: '+s;
ExibirItensVenda(aIdVenda);
end;

procedure TFmRelatorio.BtnAplicarDescotoQdeItensClick(Sender: TObject);
label Finalizar;
var desconto : currency;
begin
if dm.QrItens.RecordCount=0 then exit;

if (trim(LbeQdeItens.Text)='')or(StrToCurrDef(LbeQdeItens.Text,0)<=0) then
   begin
   application.MessageBox('A Quantidade nao pode ser igual ou menor que zero','Alterar Quantidade',16);
   goto Finalizar;
   end;
if (StrToCurrDef(LbeDesconto_p.Text,0)<0) then
  begin
   application.MessageBox('O Desconto nao pode ser menor que zero','Desconto',16);
   goto Finalizar;
   end;

dm.FDCon.ExecSQL('update itens set qde='+StringReplace(LbeQdeItens.Text,',','.',[])+',vl_desconto=format(vl_total*'+
StringReplace(LbeDesconto_p.Text,',','.',[])+'/100,2), vl_total=format(vl_un*'+StringReplace(LbeQdeItens.Text,',','.',[])
+',2) where id='+dm.QrItens.FieldByName('id').Text);
Finalizar:
ExibirItensVenda(idVendaTerminal);
end;

procedure TFmRelatorio.BtnAtualizarvaloresFaturaClick(Sender: TObject);
var
vTotal, tJuros : currency;
begin
dm.ProcuraFatura('where f.status=0 and f.id_cliente='+Fatura_id_cliente);
dm.CalcularFaturaTotaleJuros(vTotal, tJuros);
StValorTotalFaturaLiquido.Caption :=  formatfloat('00.00',vTotal);
StJurosfatura.Caption :=  formatfloat('00.00',tJuros);
StTotalFaturaBruto.Caption := formatfloat('0.00',tjuros+vTotal);
 lbeReceberFatura.Clear;
end;

procedure TFmRelatorio.sbxProcuraProdutoInvokeSearch(Sender: TObject);
var
i : integer;
ModoPesq,aMSG : string;

label Alfabetico, GoSQL;
begin
if TEdit(sender).Text = '' then exit;
TEdit(sender).SelectAll;

    for I := 1 to LENGTH(TEdit(sender).Text) do
    if (lowercase(TEdit(sender).Text)[I] IN ['a'..'z',' ']) then GOTO ALFABETICO;

        begin
       ModoPesq := ' cd_barr=''' + FormatFloat('0', strtofloat(TEdit(sender).Text)) + '''';

        self.Tag := 0;
        goto goSQL;
        end;

    alfabetico:
       begin
      ModoPesq := ' DESCRICAO LIKE ''%' + TEdit(sender).Text + '%'' ORDER BY DESCRICAO';

      self.Tag := 1;
    goto goSQL;
       end;

    goSQL:
    dm.QrProdutos.open('select * from PRODUTOS where ' + ModoPesq);
     // showmessage('ee: '+dm.QrProdutos.FieldByName('descricao').Text);
    // Animar := true;
    if dm.QrProdutos.RecordCount=0 then
    begin
   // MostraMensagem('','Produto N�o Localizado...',5);
    aMSG:= 'Produto n�o encontrado';
            //stPreco.Caption := '';
             dm.QrProdutos.Close;
    end else begin
            // stDescricaoProd.Caption := dm.QrProdutos.FieldByName('id').Text+' | '+dm.QrProdutos.FieldByName('descricao').Text;
                   //  stPreco.Caption := 'R$ '+FormatFloat('0.00',dm.QrProdutos.FieldByName('preco_venda').ascurrency);
             end;

end;

procedure TFmRelatorio.SearchBox1InvokeSearch(Sender: TObject);
var
s: string;
i : integer;
begin
 if SearchBox1.Text='' then raise Exception.Create('Digite o CODIGO ou o NOME da PESSOA');
 s := 'p.ID = '+SearchBox1.Text;

 for I := 1 to length(SearchBox1.Text) do
if not (SearchBox1.Text[i] in['0'..'9']) then
  begin //descricao
  s := 'P.nome_razao like ''%'+SearchBox1.Text+'%''';
  break;
  end;

   dm.QrCliente.Open('select * from pessoa as p where '+s);
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

procedure TFmRelatorio.Timer1Timer(Sender: TObject);
begin
inc(contaTempoCarneF12);
if contaTempoCarneF12>1 then
 begin
 btnCriarCarneClick(sender);
 contaTempoCarneF12 := 0;
 timer1.Enabled := false;
 end;

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
