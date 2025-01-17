library VRL;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  vcl.forms,
  System.Classes,
  dialogs, frxClass,
  uRelatorioVendas in 'uRelatorioVendas.pas' {FmRelatorio},
  uDM in 'uDM.pas' {DM: TDataModule},
  LibPluginRamo in '..\Vendas\units\LibPluginRamo.pas',
  LibConfigNFE in '..\Vendas\units\LibConfigNFE.pas';
var
valorRecebidoDaFatura : currency;


{$R *.res}
function VendaTerminal(XHandle : THandle;AidVendedor: integer;id_Cliente : integer = 1):integer;
begin
Application.Handle := XHandle;
Application.MainFormOnTaskBar := False;
        try
  if DM = nil then Application.CreateForm(TDM, DM);
  if FmRelatorio = nil then Application.CreateForm(TFmRelatorio, FmRelatorio);
   try  FmRelatorio.pnpesquisa.visible := false;
   except
   //
       end;
       idVendedor := AidVendedor;
   FmRelatorio.PageControl1.TabIndex := 5;
  // dm.QrCliente.Open('select id, Nome_razao from pessoa where id='+id_cliente.ToString);
  FmRelatorio.PnCliente.Caption := 'Pesquise por um Cliente';
   //dm.QrCliente.Close;
   FmRelatorio.StTop.Caption := 'Vendas e Or�amentos';
   FmRelatorio.ActiveControl := FmRelatorio.SearchBox1;
   FmRelatorio.SearchBox1.Text := inttostr(id_Cliente);
   FmRelatorio.SearchBox1InvokeSearch(FmRelatorio.SearchBox1);
  { FmRelatorio.DsFatura.DataSet := dm.QrFatura;
   FmRelatorio.BtnAtualizarvaloresFaturaClick(FmRelatorio); }
   FmRelatorio.ShowModal;
   {if idVendaTerminal<>0 then }Result := idVendaTerminal;

         finally
          if dm<>nil then freeandnil(dm);
        { FmRelatorio.Release; }
         end;
end;
exports
VendaTerminal;
procedure VerFaturas(XHandle : THandle;ID_Cliente: integer = 0);stdcall;
begin
Application.Handle := XHandle;
Application.MainFormOnTaskBar := False;
         try
  if DM = nil then Application.CreateForm(TDM, DM);
  if FmRelatorio = nil then Application.CreateForm(TFmRelatorio, FmRelatorio);
   try  FmRelatorio.pnpesquisa.visible := false;
   except
   //
    end;
    dm.valorFaturaRecebido := 0;
   FmRelatorio.PageControl1.TabIndex := 3;
   dm.QrCliente.Open('select id, Nome_razao from pessoa where id='+id_cliente.ToString);
   FmRelatorio.PnCliente.Caption := 'Cliente: '+dm.QrCliente.FieldByName('id').text+' - '+dm.QrCliente.FieldByName('nome_razao').Text;
   dm.QrCliente.Close;
   FmRelatorio.StTop.Caption := 'Faturas do Cliente';
   Fatura_id_cliente := id_cliente.ToString;
   FmRelatorio.DsFatura.DataSet := dm.QrFatura;
   FmRelatorio.BtnAtualizarvaloresFaturaClick(FmRelatorio);

   FmRelatorio.ShowModal;
   valorRecebidoDaFatura := dm.valorFaturaRecebido;
         finally
          if dm<>nil then freeandnil(dm);
        { FmRelatorio.Release; }
         end;
end;
exports
VerFaturas;
function ReceberFaturas(XHandle : THandle;ID_Cliente: integer = 0):currency;stdcall;
begin
     VerFaturas(xhandle,id_cliente);
     Result := valorRecebidoDaFatura;
end;
exports
ReceberFaturas;

procedure ListarVendas(XHandle : THandle;idEmpresa : integer;Terminal : integer = 0);
begin
try
Application.Handle := XHandle;
Application.MainFormOnTaskBar := False;

  if DM = nil then Application.CreateForm(TDM, DM);
  if FmRelatorio = nil then Application.CreateForm(TFmRelatorio, FmRelatorio);
  FmRelatorio.PageControl1.TabIndex := 0;
  FmRelatorio.StTop.Caption := 'Relat�rio de Vendas';
   fmRelatorio.PnCliente.Caption := '';
  Application.Handle := xHandle;
  FmRelatorio.SpinEdit1.Value := Terminal;
   FmRelatorio.ChbxTerminal.Checked :=  Terminal>0;

     dm.QrEmpresa.Open('select * from nfe_empresa');
     dm.QrVendedor.Open();                          {
     dm.QrEmpresa.Locate('id',inttostr(idEmpresa),[]);
     FmRelatorio.ChbxEmpresa.Checked := idEmpresa>0 ; }

    FmRelatorio.BtnProcurarClick(FmRelatorio);
   FmRelatorio.ShowModal;
finally
if dm<>nil then freeandnil(dm);

  //freeandnil(FmRelatorio);
end;
end;
exports
ListarVendas;
procedure GerarFatura(XHandle : THandle;Aid_Venda,Aid_cliente : integer; AValor : Currency;DataCompra : TDate;Quick : boolean=false);
begin
Application.Handle := XHandle;
try
  if FmRelatorio = nil then application.CreateForm(TFmRelatorio, FmRelatorio);
  FmRelatorio.PageControl1.TabIndex := 1;
  FmRelatorio.StTop.Caption := 'Carn�s e Faturas';
  dm.QrCliente.Open('select id, nome_razao from pessoa where id='+inttostr(aid_cliente));
  fmRelatorio.PnCliente.Caption := dm.QrCliente.FieldByName('id').Text+' - '+dm.QrCliente.FieldByName('nome_razao').Text;
  Application.Handle := xHandle;
   Fatura_id_venda := inttostr(Aid_venda);
   Fatura_id_cliente := inttostr(aid_cliente);
     Fatura_Valor := AValor;
     FmRelatorio.LbVlParcela.Caption := currtostr(Fatura_Valor);
     FmRelatorio.StValorTotal.Caption := currtostr(Fatura_Valor);
      FmRelatorio.EdtValorEntrada.Text := '0,00';
     FmRelatorio.StTop.Color := $00860B20;
     Fatura_data_compra := DataCompra;
     FmRelatorio.PnPesquisa.Hide;
     //showmessage('Quick= '+inttostr(integer(Quick))+' | fat: '+currtostr(Fatura_Valor));
     aQuick := QuiCk;
     if zArqIni.readinteger('root','PularConfirmacaoCarneF12',0)=1 then
     begin
     FmRelatorio.contaTempoCarneF12 := 0;
     FmRelatorio.Timer1.Enabled := true;
     end;
   { if zArqIni.readinteger('root','PularConfirmacaoCarneF12',0)=1 then
    begin
    FmRelatorio.Show;
    try FmRelatorio.btnCriarCarneClick(FmRelatorio.btnCriarCarne);
    finally


     try FmRelatorio.close except end;
    if dm<>nil then freeandnil(dm);
     end;
    exit;
    end; }
   //if FormPreviewReport <> nil then FmRelatorio.frxReport1.PreviewForm := FormPreviewReport;


   FmRelatorio.ShowModal;
  finally
  if dm<>nil then freeandnil(dm);
  end;
end;
exports
GerarFatura;
procedure SaidaDeProdutos(XHandle : THandle;DataIni, DataFin: TDate;limiteRegistros : integer = 0);
var
aSQL, arq : string;
begin
Application.Handle := XHandle;
Application.MainFormOnTaskBar := False;
   try
  if DM = nil then Application.CreateForm(TDM, DM);
  if FmRelatorio = nil then Application.CreateForm(TFmRelatorio, FmRelatorio);
aSQL := 'set @informacao=''Produtos que mais sairam de '+datetostr(dataini)+' a '+datetostr(DataFin)+''';'+#13+
'SELECT @informacao as cabecalho, v.id AS venda,v.data_venda, p.DESCRICAO , i.ID_PROD,p.un , sum(i.qde) AS Qde,SUM((i.VL_Total- i.VL_DESCONTO)) AS valor FROM '+#13+
'itens AS i LEFT JOIN produtos AS p '+#13+
'ON i.ID_PROD=p.id'+#13+
'LEFT JOIN venda AS v ON'+#13+
'i.ID_VENDA = v.ID '+#13+
'WHERE v.data_venda between '''+FORMATDATETIME('YYYY-MM-DD',DataIni)+' 00:00:00'' AND '''+
FORMATDATETIME('YYYY-MM-DD',DataFin)+' 23:59:59'''+#13+
' GROUP BY  i.ID_PROD'+#13+
'ORDER BY QDE desc';
//showmessage(aSQL);
if limiteRegistros>0 then aSQL := aSQl+' limit '+inttostr(limiteRegistros);
dm.QrSaida_Produtos.Open(aSQL);
 with FmRelatorio do
 begin
  arq := extractfilepath(paramstr(0))+'tmp.tmp';
  if FileExists(arq) then deletefile(arq);
  frxReport1.LoadFromFile('report\saida_produtos.fr3');
  frxReport1.PrepareReport();
  {frxDotMatrixExport1.FileName := arq;
  frxDotMatrixExport1.ShowDialog := false;
  frxDotMatrixExport1.ShowProgress := true; }
  //frxHTMLExport1.ShowDialog := false;



  frxReport1.PreviewPages.SaveToFile('arq');
     frxreport1.ShowReport();
 end;
      //FmRelatorio.ShowModal;
  finally
  if dm<>nil then freeandnil(dm);
  end;
end;
exports
SaidaDeProdutos;
end.
