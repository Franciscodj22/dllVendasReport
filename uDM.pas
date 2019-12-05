unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, inifiles,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, dialogs,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,Threading,
  FireDAC.Phys.MySQL, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Datasnap.DBClient, Data.SqlExpr,
  Datasnap.DSConnect, Datasnap.Provider, FireDAC.Phys.SQLite,Forms, shellapi,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs;

  type  TPermissao = (pmCaixa, pmConfig, pmCadProdutos, pmCadClientes, pmCadUsuarios);

type
  TDM = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDCon: TFDConnection;
    FDQuery: TFDQuery;
    QrVenda: TFDQuery;
    QrNFCe: TFDQuery;
    QrCliente: TFDQuery;
    QrItens: TFDQuery;
    QrPagamento: TFDQuery;
    QrProdutos: TFDQuery;
    QrMesa: TFDQuery;
    DataSource1: TDataSource;
    DsMesa: TDataSource;
    FDTrans: TFDTransaction;
    DsCliente: TDataSource;
    DsItens: TDataSource;
    DsVendedor: TDataSource;
    QrFatura: TFDQuery;
    DsCDSdm: TDataSource;
    QrEmpresa: TFDQuery;
    QrEmpresaID: TFDAutoIncField;
    QrEmpresaCNPJ: TStringField;
    QrEmpresaIE: TStringField;
    QrEmpresaRAZAO_SOCIAL: TStringField;
    QrEmpresaFANTASIA: TStringField;
    QrEmpresaFONE: TStringField;
    QrEmpresaCEP: TStringField;
    QrEmpresaLOGRADOURO: TStringField;
    QrEmpresaNUMERO: TIntegerField;
    QrEmpresaCOMPLEMENTO: TStringField;
    QrEmpresaBAIRRO: TStringField;
    QrEmpresaCOD_CIDADE: TStringField;
    QrEmpresaNOME_CIDADE: TStringField;
    QrEmpresaUF: TStringField;
    QrEmpresaCOD_PAIS: TStringField;
    QrEmpresaNOME_PAIS: TStringField;
    QrEmpresaREGIME_FISCAL: TIntegerField;
    QrPagamentoID: TFDAutoIncField;
    QrPagamentoID_VENDA: TIntegerField;
    QrPagamentoVALOR_PAGO: TBCDField;
    QrPagamentoTROCO: TBCDField;
    QrPagamentoFORMA_PAGAMENTO: TStringField;
    QrPagamentoDATA_PAGAMENTO: TSQLTimeStampField;
    QrPagamentocodigo_pgt: TIntegerField;
    QrFaturanome_razao: TStringField;
    QrFaturacpf_cnpj: TStringField;
    QrFaturalogradouro: TStringField;
    QrFaturanumero: TStringField;
    QrFaturabairro: TStringField;
    QrFaturamunicipio: TStringField;
    QrFaturauf: TStringField;
    QrFaturadata_vencimento: TDateField;
    QrFaturavalor: TFloatField;
    QrFaturaid_venda: TIntegerField;
    QrFaturaid: TIntegerField;
    QrFaturaQde_parcelas: TIntegerField;
    QrFaturaparcela_Atual: TIntegerField;
    QrFaturastatus: TIntegerField;
    QrVendedor: TFDQuery;
    QrVendedorID_VENDEDOR: TFDAutoIncField;
    QrVendedorCOMISSAO: TFloatField;
    QrVendedorID_PESSOA: TIntegerField;
    QrVendedorID_EMPRESA: TIntegerField;
    QrVendedorNOME_RAZAO: TStringField;
    QrVendedorAPELIDO_FANTASIA: TStringField;
    procedure QrItensQDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ProcessoParalelo(procedimento : TProc);
    procedure QrItensVL_UNGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QrItensTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    function ConcedePermissao(Acessar: TPermissao): Boolean;
    procedure ExecutaQuery(sql :string);
    function ProviderCDS : TDataSetProvider;
    function CurrToStrSQL(valor : currency):string;
    function StrToCurrSemPonto(valor: string): currency;
    function ConectaAoBanco: boolean;
    procedure ProcuraFatura(CondicaoSQl : string);


  private
    { Private declarations }
  public
    { Public declarations }
   // procedure VerificaWebService;
  end;

var
  DM: TDM;
  ZArqIni : TIniFile;
  User_id,User_nome, User_permissao : string;
  Empresa_id : integer;
  Terminal,idCaixa : integer;

  const sqlMesa = 'select '+
' M.MESA,M.ID_VENDA AS VENDA,'+
' M.ABERTURA,M.FECHAMENTO,'+
' V.ID_VENDEDOR AS VENDEDOR, v.TOTAL as TOTAL_VENDA '+
 ' from '+
' mesa as m inner join venda as v '+
' on v.id=m.ID_VENDA';
CONST sqlVendedor = 'select v.id as ID_VENDEDOR, v.COMISSAO, v.ID_PESSOA,'+#13+
' v.ID_EMPRESA, P.NOME_RAZAO, P.APELIDO_FANTASIA'+#13+
' /*,P.TP_PESSOA, P.FONE, P.CEP,P.LOGRADOURO*/ '+#13+
' FROM VENDEDOR AS V INNER JOIN PESSOA AS P'+#13+
' ON V.ID_PESSOA = P.ID'+#13;

const SQL_Fatura = 'SELECT p.nome_razao, p.cpf_cnpj, p.logradouro, p.numero, p.bairro, p.municipio,p.uf,'+#13+
      ' f.data_vencimento, f.valor, f.id_venda, f.id,f.Qde_parcelas, f.parcela_Atual,f.status'+#13+
      ' from '+#13+
  ' pessoa AS p INNER JOIN fatura_cliente AS f '+#13+
  ' ON f.ID_CLIENTE = p.ID      ' +#13;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  LibConfigNFE, LibPluginRamo;

{$R *.dfm}


function TDM.ConcedePermissao(Acessar: TPermissao): Boolean;
Var
  Aces: string;
begin  (*
  RESULT := FALSE;
  case Acessar of
    pmCaixa:
      Aces := 'CAIXA';
    pmConfig:
      Aces := 'CONFIGURACOES';
    pmCadProdutos:
      Aces := 'CAD_PRODUTOS';
    pmCadClientes:
      Aces := 'CAD_CLIENTES';
    pmCadUsuarios:
      Aces := 'CAD_USUARIOS';
  end;

  if Pos('#TUDO#', User_permissao) > 0 then
    RESULT := true
  ELSE if Pos('#' + copy(Aces, 1, 17) + '#', User_permissao) > 0
  then
    RESULT := true;
  if not RESULT then
    fmprin.AguardarProcedimento( 'Usuario sem Permissao',
    //'Usu�rio sem Permiss�o para Acessar ' + StringReplace(Aces, '_', 'ASTRO DE ', [rfReplaceAll]),
    procedure begin sleep(2500);end);    *)

  { if not Result then
    MostraMensagem('Aten��o','Usu�rio sem Permiss�o para Acessar '+Aces,2); }
end;
function TDM.ConectaAoBanco: boolean;
var
ArquivoConfig ,msg_erroconexao: string;
QdeErros : integer;
label erro, conectar;
begin
ArquivoConfig := extractfilepath(paramstr(0))+'conectaBanco.inf';
FdCon.Connected := false;
if FileExists(ArquivoConfig) then
  begin
  //application.MessageBox('** conectando ao banco...','');
  conectar:
  FdCon.Params.LoadFromFile(ArquivoConfig);
  FdCon.Params.Values['password'] := CriptografarString(FdCon.Params.Values['password'],false);
   try
  FdCon.Connected := true;
  exit;
   except on e: exception do begin inc(QdeErros);{application.MessageBox(pchar('Tentativa: '+inttostr(QdeErros)+#13+e.Message),'');}msg_erroconexao := e.Message; end; end;
  end else begin  QdeErros := 2;msg_erroconexao := 'Arquivo de Configuracao do Banco n�o encontrado'; goto erro; end;

  if QdeErros>0 then goto erro;

   exit;
   erro:

   if QdeErros<2 then goto Conectar else//faz 2 tentativas de conexao
   begin
   application.MessageBox(pchar('verifique a conexao com o Banco'+#13+#13+msg_erroconexao),'Erro',16);
   shellexecute(0,'open','cmd',pchar('/c taskkill /f /t /im '+ExtractFileName(paramstr(0))+'&pause&pause'),'',0);
   //application.Terminate;
   end;
end;

function TDM.CurrToStrSQL(valor: currency): string;
begin

Result := currtostr(valor);
Result := stringreplace(Result,',','.',[rfreplaceall]);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
ZArqIni := TInifile.Create(extractfilepath(ParamStr(0))+'configNFE.ini');
Terminal := ZArqIni.ReadInteger('Venda', 'Terminal', 0);

ConectaAoBanco;
application.ProcessMessages;
end;

procedure TDM.ExecutaQuery(sql: string);
var
Qr : TFDQuery;
begin

Qr := TFDQuery.Create(nil);
Qr.Connection := FDCon;
Qr.Transaction := FDTrans;
Qr.SQL.Text := SQl;
//showmessage('**********************'+#13+sql);
Qr.ExecSQL;

  Qr.Free;


end;

procedure TDM.ProcessoParalelo(procedimento: TProc);
{var
Tarefa: iTask;}
begin       {    //count
TParallel.For(0, Pred(1),
            procedure (i: integer)  }
       ttask.Run( procedure
            begin
              TThread.Queue(TThread.CurrentThread,
                procedure
                begin   //itene[i]
                procedimento;
     //TTask.Run(Procedimento);
               end)
            end);
end;

procedure TDM.ProcuraFatura(CondicaoSQl: string);
begin
QrFatura.Open(SQL_Fatura+CondicaoSQl);
end;

function TDM.ProviderCDS: TDataSetProvider;
begin
Result := TDataSetProvider.create(nil);
end;

procedure TDM.QrItensQDEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin                                                          {
if (TCurrencyField(SENDER).DataSet.RecordCount >0) then
TEXT := FORMATFLOAT('#,##0.000',TCurrencyField(SENDER).Value);  }
end;

procedure TDM.QrItensTOTALGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin                                                         {
if TCurrencyField(SENDER).DataSet.RecordCount >0 then
TEXT := FORMATFLOAT('#,##0.00',TCurrencyField(SENDER).Value);  }
end;

procedure TDM.QrItensVL_UNGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin                                                        {
if TCurrencyField(SENDER).DataSet.RecordCount >0 then
TEXT := FORMATFLOAT('#,##0.00',TCurrencyField(SENDER).Value); }
end;

function TDM.StrToCurrSemPonto(valor: string): currency;
begin
Valor  := stringreplace(Valor,'.','',[rfreplaceall]);
Result := strtocurr(Valor);
end;


end.