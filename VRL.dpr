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
  dialogs,
  uRelatorioVendas in 'uRelatorioVendas.pas' {FmRelatorio},
  uDM in 'uDM.pas' {DM: TDataModule},
  LibPluginRamo in '..\Vendas\units\LibPluginRamo.pas',
  LibConfigNFE in '..\Vendas\units\LibConfigNFE.pas';

{$R *.res}
procedure ListarVendas(XHandle : THandle;idEmpresa : integer;Terminal : integer = 0);
begin
try
//Application := xApplication;
//showmessage('dll');
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

FmRelatorio.Release;
  //freeandnil(FmRelatorio);
end;
end;
exports
ListarVendas;
procedure GerarFatura(XHandle : THandle;Aid_Venda,Aid_cliente : integer; AValor : Currency;DataCompra : TDate;Quick : boolean=false);
begin
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
     FmRelatorio.Panel4.Hide;
     //showmessage('Quick= '+inttostr(integer(Quick))+' | fat: '+currtostr(Fatura_Valor));
     aQuick := QuiCk;
   //if FormPreviewReport <> nil then FmRelatorio.frxReport1.PreviewForm := FormPreviewReport;


   FmRelatorio.ShowModal;
finally
if dm<>nil then freeandnil(dm);
FmRelatorio.Release;
end;
end;
exports
GerarFatura;
end.