object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 457
  Width = 1054
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'libmysql.dll'
    Left = 188
    Top = 20
  end
  object FDCon: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'database=pdv'
      'User_Name=francisco'
      'Password=1234567890'
      'Port='
      'UseSSL='
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Transaction = FDTrans
    Left = 44
    Top = 20
  end
  object FDQuery: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    Left = 24
    Top = 136
  end
  object QrVenda: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      
        ' SELECT p.nome_razao, p.cpf_cnpj, p.logradouro, p.numero, p.bair' +
        'ro, p.municipio,p.uf,'
      
        '       f.data_vencimento, f.valor, f.id_venda, f.id,f.Qde_parcel' +
        'as, f.parcela_Atual,f.status'
      '       from '
      '   pessoa AS p INNER JOIN fatura_cliente AS f '
      '   ON f.ID_CLIENTE = p.ID      '
      ''
      '')
    Left = 188
    Top = 136
  end
  object QrNFCe: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    Left = 267
    Top = 136
  end
  object QrCliente: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      'select * from pessoa')
    Left = 342
    Top = 136
  end
  object QrItens: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      'select'
      
        'v.total as Total_Venda,I.ID_PROD, i.id_venda, i.ID,i.cod_it as I' +
        'TEM ,p.CD_BARR,p.DESCRICAO,p.UN,i.VL_UN,i.QDE, '
      ' i.vl_total as TOTAL,i.vl_desconto as DESCONTO '
      ' from'
      ' itens as i inner join produtos as p '
      ' on i.id_prod = p.id '
      ''
      'inner join venda as v '
      'on i.id_venda = v.id'
      ''
      ' where i.id_venda=8 ORDER BY I.ID')
    Left = 103
    Top = 136
  end
  object QrPagamento: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      'select * from pagamento')
    Left = 418
    Top = 136
    object QrPagamentoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QrPagamentoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      Required = True
    end
    object QrPagamentoVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object QrPagamentoTROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 15
      Size = 2
    end
    object QrPagamentoFORMA_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 17
    end
    object QrPagamentoDATA_PAGAMENTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object QrPagamentocodigo_pgt: TIntegerField
      FieldName = 'codigo_pgt'
      Origin = 'codigo_pgt'
      Required = True
    end
  end
  object QrProdutos: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      'select * from produtos')
    Left = 496
    Top = 136
  end
  object QrMesa: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      'select '
      'm.MESA,M.ID_VENDA AS VENDA,'
      'M.ABERTURA,M.FECHAMENTO,'
      'V.ID_VENDEDOR AS VENDEDOR, v.TOTAL as TOTAL_VENDA'
      ' from '
      'mesa as m inner join venda as v'
      'on v.id=m.ID_VENDA '
      ''
      ''
      '/*'
      'SELECT '
      'EP.PROTOCOLO, EP.HORA_COLETA, EP.STATUS, '
      'E.`DESCRICAO` AS exames FROM '
      '`exame_paciente` AS EP'
      '  INNER JOIN '
      '`exames` AS E ON EP.`ID_EXAME` = E.`ID_EXAME`*/')
    Left = 565
    Top = 136
  end
  object DataSource1: TDataSource
    Left = 240
    Top = 352
  end
  object DsMesa: TDataSource
    DataSet = QrMesa
    Left = 568
    Top = 192
  end
  object FDTrans: TFDTransaction
    Connection = FDCon
    Left = 96
    Top = 24
  end
  object DsCliente: TDataSource
    DataSet = QrCliente
    Left = 344
    Top = 184
  end
  object DsItens: TDataSource
    DataSet = QrItens
    Left = 104
    Top = 184
  end
  object DsVendedor: TDataSource
    DataSet = QrVendedor
    Left = 632
    Top = 192
  end
  object QrFatura: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      
        'SELECT p.nome_razao, p.cpf_cnpj, p.logradouro, p.numero, p.bairr' +
        'o, p.municipio,p.uf,'
      
        '       f.data_vencimento, f.valor, f.id_venda, f.id,f.Qde_parcel' +
        'as, f.parcela_Atual,f.status'
      '       from'
      ' pessoa AS p INNER JOIN fatura_cliente AS f'
      ' ON f.ID_CLIENTE = p.ID      ')
    Left = 775
    Top = 138
    object QrFaturanome_razao: TStringField
      FieldName = 'nome_razao'
      Origin = 'NOME_RAZAO'
      Required = True
      Size = 100
    end
    object QrFaturacpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'CPF_CNPJ'
      Required = True
      Size = 14
    end
    object QrFaturalogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'LOGRADOURO'
      Required = True
      Size = 70
    end
    object QrFaturanumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'NUMERO'
      Size = 10
    end
    object QrFaturabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'BAIRRO'
      Size = 50
    end
    object QrFaturamunicipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipio'
      Origin = 'MUNICIPIO'
      Size = 45
    end
    object QrFaturauf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'UF'
      Size = 2
    end
    object QrFaturadata_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_vencimento'
      Origin = 'Data_Vencimento'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrFaturavalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrFaturaid_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_venda'
      Origin = 'ID_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrFaturaid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object QrFaturaQde_parcelas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Qde_parcelas'
      Origin = 'QDE_PARCELAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrFaturaparcela_Atual: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parcela_Atual'
      Origin = 'PARCELA_ATUAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QrFaturastatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`STATUS`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DsCDSdm: TDataSource
    Left = 104
    Top = 336
  end
  object QrEmpresa: TFDQuery
    Connection = FDCon
    Transaction = FDTrans
    SQL.Strings = (
      'select * from nfe_empresa')
    Left = 704
    Top = 136
    object QrEmpresaID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QrEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 14
    end
    object QrEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Required = True
      Size = 9
    end
    object QrEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 40
    end
    object QrEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 30
    end
    object QrEmpresaFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object QrEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 8
    end
    object QrEmpresaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Required = True
      Size = 40
    end
    object QrEmpresaNUMERO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QrEmpresaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object QrEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 30
    end
    object QrEmpresaCOD_CIDADE: TStringField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
      Required = True
      Size = 7
    end
    object QrEmpresaNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Required = True
      Size = 30
    end
    object QrEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 10
    end
    object QrEmpresaCOD_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
      Size = 7
    end
    object QrEmpresaNOME_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PAIS'
      Origin = 'NOME_PAIS'
      Size = 30
    end
    object QrEmpresaREGIME_FISCAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REGIME_FISCAL'
      Origin = 'REGIME_FISCAL'
    end
  end
  object QrVendedor: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      
        'select v.id as ID_VENDEDOR, v.COMISSAO, v.ID_PESSOA, v.ID_EMPRES' +
        'A,'
      'P.NOME_RAZAO, P.APELIDO_FANTASIA'
      ' /*,P.TP_PESSOA, P.FONE, P.CEP,P.LOGRADOURO*/'
      ''
      ''
      'FROM VENDEDOR AS V INNER JOIN PESSOA AS P'
      'ON V.ID_PESSOA = P.ID'
      ' '
      '-- WHERE V.ID>3')
    Left = 626
    Top = 136
    object QrVendedorID_VENDEDOR: TFDAutoIncField
      FieldName = 'ID_VENDEDOR'
      Origin = 'id'
    end
    object QrVendedorCOMISSAO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO'
      Origin = 'comissao'
    end
    object QrVendedorID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'id_pessoa'
      Required = True
    end
    object QrVendedorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'id_empresa'
      Required = True
    end
    object QrVendedorNOME_RAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_RAZAO'
      Origin = 'NOME_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QrVendedorAPELIDO_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APELIDO_FANTASIA'
      Origin = 'APELIDO_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
end
