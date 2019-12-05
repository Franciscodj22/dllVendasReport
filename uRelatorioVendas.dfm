object FmRelatorio: TFmRelatorio
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Relatorios'
  ClientHeight = 490
  ClientWidth = 1235
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 24
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1235
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 2
    Padding.Top = 3
    Padding.Right = 2
    Padding.Bottom = 2
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 2
      Top = 85
      Width = 1231
      Height = 403
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Relat'#243'rio de Vendas'
        object Panel2: TPanel
          Left = 0
          Top = 320
          Width = 1223
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object BtnConsultanota: TSpeedButton
            Left = 17
            Top = 4
            Width = 96
            Height = 35
            Caption = 'Consulta'
            OnClick = BtnConsultanotaClick
          end
          object BtnImprimirVenda: TSpeedButton
            Left = 119
            Top = 4
            Width = 96
            Height = 35
            Caption = 'Imprimir'
            OnClick = BtnImprimirVendaClick
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 320
          Align = alClient
          BorderStyle = bsNone
          DataSource = DsVenda
          DrawingStyle = gdsGradient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Venda'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_NFCE'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TERMINAL'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CLIENTE'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Width = 378
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'status'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROTOCOLO'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 538
          Height = 361
          Align = alLeft
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object btnCriarCarne: TSpeedButton
            Left = 15
            Top = 280
            Width = 193
            Height = 65
            Caption = 'Criar Carn'#234' - F12'
            OnClick = btnCriarCarneClick
          end
          object BtnImprimeCarne: TSpeedButton
            Left = 284
            Top = 280
            Width = 187
            Height = 65
            Caption = 'Imprime Carne'
            OnClick = BtnImprimeCarneClick
          end
          object Label4: TLabel
            Left = 14
            Top = 44
            Width = 111
            Height = 24
            Caption = 'Prazo:(Dias)'
          end
          object SpeedButton2: TSpeedButton
            Left = 310
            Top = 66
            Width = 161
            Height = 33
            OnClick = SpeedButton2Click
          end
          object Label6: TLabel
            Left = 366
            Top = 7
            Width = 23
            Height = 24
            Caption = 'R$'
          end
          object Bevel1: TBevel
            Left = 0
            Top = 0
            Width = 538
            Height = 40
            Align = alTop
          end
          object ChbxImpimeCarne: TCheckBox
            Left = 14
            Top = 3
            Width = 227
            Height = 33
            Caption = 'Imprime Carn'#234' ao criar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object CbxPrazo: TComboBox
            Left = 14
            Top = 74
            Width = 108
            Height = 32
            Style = csDropDownList
            ItemIndex = 2
            TabOrder = 1
            Text = '30'
            Items.Strings = (
              '10'
              '20'
              '30'
              '40'
              '60'
              '90'
              '120')
          end
          object GroupBox1: TGroupBox
            Left = 14
            Top = 200
            Width = 457
            Height = 57
            Color = clMoneyGreen
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object Label2: TLabel
              Left = 20
              Top = 24
              Width = 85
              Height = 24
              Caption = 'Pagar em'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 176
              Top = 24
              Width = 74
              Height = 24
              Caption = 'x de: R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object LbVlParcela: TLabel
              Left = 252
              Top = 10
              Width = 63
              Height = 38
              Caption = '0,00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -33
              Font.Name = ' '
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CbxQdeParcelas: TComboBox
              Left = 114
              Top = 16
              Width = 57
              Height = 32
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = '1'
              OnChange = CbxQdeParcelasChange
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20'
                '21'
                '22'
                '23')
            end
          end
          object GroupBox2: TGroupBox
            Left = 15
            Top = 129
            Width = 456
            Height = 48
            Color = clMoneyGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 3
            object Label5: TLabel
              Left = 20
              Top = 8
              Width = 185
              Height = 24
              Caption = 'Valor da Entrada: R$'
            end
            object EdtValorEntrada: TEdit
              Left = 210
              Top = 8
              Width = 121
              Height = 32
              TabOrder = 0
              OnChange = EdtValorEntradaChange
              OnKeyPress = EdtValorEntradaKeyPress
            end
          end
          object StValorTotal: TStaticText
            Left = 392
            Top = 8
            Width = 43
            Height = 28
            Caption = '0,00'
            TabOrder = 4
          end
        end
        object DBGrid2: TDBGrid
          Left = 538
          Top = 0
          Width = 685
          Height = 361
          Align = alClient
          BorderStyle = bsNone
          DataSource = DsFatura
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 2
        object ActivityIndicator1: TActivityIndicator
          Left = 505
          Top = 160
          IndicatorSize = aisXLarge
          IndicatorType = aitSectorRing
        end
        object StInformacao: TStaticText
          Left = 488
          Top = 230
          Width = 96
          Height = 28
          Caption = 'Aguarde...'
          TabOrder = 1
        end
      end
    end
    object PnTop: TPanel
      Left = 2
      Top = 3
      Width = 1231
      Height = 82
      Align = alTop
      BevelOuter = bvNone
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 50
      Padding.Right = 100
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object LbFechar: TLabel
        Left = 1192
        Top = -8
        Width = 30
        Height = 40
        Cursor = crHandPoint
        Hint = 'Fechar'
        Alignment = taCenter
        AutoSize = False
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = LbFecharClick
      end
      object Panel4: TPanel
        Left = 50
        Top = 34
        Width = 1081
        Height = 48
        Align = alBottom
        BevelOuter = bvNone
        Color = clInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object LabelInicio: TLabel
          Left = 12
          Top = 4
          Width = 32
          Height = 14
          Caption = 'Inicio:'
        end
        object BtnProcurar: TSpeedButton
          Left = 1021
          Top = 0
          Width = 60
          Height = 48
          Cursor = crHandPoint
          Align = alRight
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
            9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
            D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
            E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
            44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
            C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
            F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
            C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
            E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
            91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
            C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
            DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
            F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
            FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
            EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
            76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
            7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
            D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
            D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
            FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
            DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
            98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
            B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
            9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
            91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
            EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
            8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
            E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphBottom
          Spacing = 0
          OnClick = BtnProcurarClick
          ExplicitLeft = 873
        end
        object Label1: TLabel
          Left = 131
          Top = 4
          Width = 27
          Height = 14
          Caption = 'Final:'
        end
        object cbxStatus: TComboBox
          Left = 242
          Top = 20
          Width = 145
          Height = 22
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'AUTORIZADA'
            'NAO ENVIADA'
            'CANCELADA')
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 659
          Top = 20
          Width = 224
          Height = 22
          KeyField = 'ID'
          ListField = 'RAZAO_SOCIAL'
          ListSource = DsEmpresa
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 393
          Top = 20
          Width = 175
          Height = 22
          DropDownRows = 10
          KeyField = 'ID_VENDEDOR'
          ListField = 'NOME_RAZAO'
          ListSource = DsVendedor
          TabOrder = 2
        end
        object ChbxVendedor: TCheckBox
          Left = 393
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Vendedor'
          TabOrder = 3
        end
        object ChbxEmpresa: TCheckBox
          Left = 659
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Empresa'
          TabOrder = 4
        end
        object ChbxStatus: TCheckBox
          Left = 242
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Status'
          TabOrder = 5
          OnClick = ChbxStatusClick
        end
        object DtFim: TDateTimePicker
          Left = 128
          Top = 20
          Width = 103
          Height = 22
          Date = 43780.345814409720000000
          Time = 43780.345814409720000000
          TabOrder = 6
        end
        object DTinicio: TDateTimePicker
          Left = 12
          Top = 20
          Width = 103
          Height = 22
          Date = 43780.345814409720000000
          Time = 43780.345814409720000000
          TabOrder = 7
        end
        object ChbxTerminal: TCheckBox
          Left = 574
          Top = 4
          Width = 63
          Height = 17
          Caption = 'Terminal'
          TabOrder = 8
        end
        object SpinEdit1: TSpinEdit
          Left = 574
          Top = 20
          Width = 62
          Height = 23
          MaxValue = 0
          MinValue = 0
          TabOrder = 9
          Value = 0
        end
      end
      object StTop: TStaticText
        Left = 50
        Top = 0
        Width = 1081
        Height = 28
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSingle
        Caption = 'Francisco Inform'#225'tica'
        Color = 8784672
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Font.Quality = fqProof
        ParentColor = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
      end
    end
    object PnCliente: TPanel
      Left = 238
      Top = 103
      Width = 417
      Height = 33
      BevelOuter = bvNone
      Caption = 'Cliente : 1 - Nome do Cliente'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Left = 25
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object DsVenda: TDataSource
    DataSet = DM.QrVenda
    Left = 940
    Top = 156
  end
  object DsEmpresa: TDataSource
    DataSet = DM.QrEmpresa
    Left = 734
    Top = 144
  end
  object DsVendedor: TDataSource
    DataSet = DM.QrVendedor
    Left = 790
    Top = 88
  end
  object DsFatura: TDataSource
    DataSet = DM.FDQuery
    Left = 772
    Top = 308
  end
  object frxReport1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43783.366313460600000000
    ReportOptions.LastChange = 43784.816844513900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure BarCode1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  barcode1.text := formatfloat('#39'00000'#39', strtofloat(barcode1.text' +
        '));'
      
        '   barcode2.text := barcode1.text;// formatfloat('#39'00000'#39', strtof' +
        'loat(barcode2.text));      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 704
    Top = 227
    Datasets = <
      item
        DataSet = frxFatura
        DataSetName = 'dbFatura'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      HGuides.Strings = (
        '294,80334'
        '706,77211'
        '253,22851'
        '695,43352'
        '120,94496')
      VGuides.Strings = (
        '646,29963'
        '230,55133')
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 325.039580000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxFatura
        DataSetName = 'dbFatura'
        RowCount = 0
        object Shape1: TfrxShapeView
          Left = 222.992270000000000000
          Width = 483.779840000000000000
          Height = 275.905690000000000000
        end
        object dbFaturadata_vencimento: TfrxMemoView
          Left = 83.149660000000000000
          Top = 28.236240000000000000
          Width = 49.133890000000000000
          Height = 177.637910000000000000
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Memo.UTF8W = (
            'Vencimento: [dbFatura."data_vencimento"]')
          Rotation = 90
        end
        object BarCode1: TfrxBarCodeView
          Left = 132.653680000000000000
          Top = 102.047310000000000000
          Width = 79.000000000000000000
          Height = 79.000000000000000000
          OnBeforePrint = 'BarCode1OnBeforePrint'
          BarType = bcCode128
          DataField = 'id'
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Expression = #39'0000'#39
          Rotation = 90
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 241.110390000000000000
          Top = 10.897650000000000000
          Width = 415.748300000000000000
          Height = 26.456710000000000000
          DataField = 'nome_razao'
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbFatura."nome_razao"]')
          ParentFont = False
        end
        object dbFaturacpf_cnpj: TfrxMemoView
          Left = 242.228510000000000000
          Top = 44.354360000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Memo.UTF8W = (
            'CPF: [dbFatura."cpf_cnpj"]')
        end
        object dbFaturalogradouro: TfrxMemoView
          Left = 243.669450000000000000
          Top = 109.606370000000000000
          Width = 207.874150000000000000
          Height = 75.590600000000000000
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Memo.UTF8W = (
            '[dbFatura."logradouro"],[dbFatura."numero"], [dbFatura."bairro"]'
            '[dbFatura."municipio"] - [dbFatura."uf"]')
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object dbFaturaparcela_Atual: TfrxMemoView
          Left = 510.016080000000000000
          Top = 249.228510000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Memo.UTF8W = (
            '[dbFatura."parcela_Atual"] de [dbFatura."Qde_parcelas"]')
        end
        object dbFaturavalor: TfrxMemoView
          Left = 291.921460000000000000
          Top = 199.976500000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DataField = 'valor'
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbFatura."valor"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 245.669450000000000000
          Top = 200.315090000000000000
          Width = 26.456710000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'R$')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 510.236550000000000000
          Top = 209.433210000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Memo.UTF8W = (
            'Vencimento: [dbFatura."data_vencimento"]')
        end
        object BarCode2: TfrxBarCodeView
          Left = 616.433520000000000000
          Top = 102.047310000000000000
          Width = 79.000000000000000000
          Height = 79.000000000000000000
          OnBeforePrint = 'BarCode1OnBeforePrint'
          BarType = bcCode128
          DataField = 'id'
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Expression = #39'0000'#39
          Rotation = 90
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object dbFaturaid_venda: TfrxMemoView
          Left = 245.669450000000000000
          Top = 74.590600000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Venda: [dbFatura."id_venda"]')
          ParentFont = False
        end
        object dbFaturanome_razao: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 196.535560000000000000
          DataField = 'nome_razao'
          DataSet = frxFatura
          DataSetName = 'dbFatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[dbFatura."nome_razao"]')
          ParentFont = False
          Rotation = 90
        end
      end
      object Line1: TfrxLineView
        Left = 151.960730000000000000
        Top = 404.409710000000000000
        Width = 347.716760000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
    end
  end
  object frxFatura: TfrxDBDataset
    UserName = 'dbFatura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_razao=nome_razao'
      'cpf_cnpj=cpf_cnpj'
      'logradouro=logradouro'
      'numero=numero'
      'bairro=bairro'
      'municipio=municipio'
      'uf=uf'
      'data_vencimento=data_vencimento'
      'valor=valor'
      'id_venda=id_venda'
      'id=id'
      'Qde_parcelas=Qde_parcelas'
      'parcela_Atual=parcela_Atual'
      'status=status')
    BCDToCurrency = False
    Left = 614
    Top = 195
  end
end
