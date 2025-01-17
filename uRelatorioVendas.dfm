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
  OnClose = FormClose
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
      ActivePage = TabSheet4
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
            Enabled = False
            OnClick = BtnImprimirVendaClick
          end
          object btnImprimirA4: TSpeedButton
            Left = 272
            Top = 6
            Width = 137
            Height = 32
            Caption = 'Imprimir A4'
            Enabled = False
            OnClick = btnImprimirA4Click
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
        Caption = 'Gerar Fatura'
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
        Caption = 'Espera'
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
      object TabSheet4: TTabSheet
        Caption = 'Faturas'
        ImageIndex = 3
        object BtnAtualizarvaloresFatura: TSpeedButton
          Left = 3
          Top = 199
          Width = 137
          Height = 57
          Caption = 'Atualizar'
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EB
            DE248B3F1F883A98C8A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFEFEA5D2B4279E583AB37621974E62AD77FFFFFFE7F3EAFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFEFEA3D2B333AB6853CD9745BF85249A52359753
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF7FCFAD9F1E635AE6D52CD9751
            CD9546C28829A15C349854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F3EA59AF772D9D57289E572AA25D33AB
            6939B4744AC68F48C58E48C58E45C18828A15F5DAD78FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF5EE5EB17B28A05A3AB47547C388
            48C58C45C38A44C28944C28B40BE873FBD863FBC853DBB8441BE8728A3624EA6
            6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0E735A05D38B47447
            C58C42C1893EBC853DBB833CBA833BB98139B88038B77F38B67E37B57E36B47C
            34B27A37B57D199049FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F9F537A0
            5F3BB77A40BF8738B77F37B67E36B57D35B57C34B37B33B37A32B17931B07830
            AF772EAE752EAD752DAC7426A56B148943FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF7BBE922DA8663ABA8130B07831B1782FAF752BAA6F27A467219D5D209D
            5E209C5B29A97029A97027A76F28A86F1C995E12894397C9A9FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF27985233B2752AAB722AAB7223A1641B9651198E47
            27934F50A76F3C9E61148E4A23A46B22A36A21A26A1392541A8B458DC6A183BD
            97E1EFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1891492BAC7223A56B1A965627
            935090C6A2F6FBF8FFFFFFFEFEFE9DCDAE108C481EA0671B9D640D8B4B298C4D
            FFFFFF70B489097D378AC29DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF138D461EA0
            6615935258AB75FFFFFFD3E7DA4297600978325EA7779BCBAB0C88441495580C
            854352A36EFFFFFF99CBA9198A4910884768B283FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF138A4313915242A063FEFEFEB5D7C01E85450D85490E8A4C36975CB5D8
            C01C864318834185BE98FFFFFFB6D9C223904F17925818915564B181FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF349858138642F3F9F592C5A30B7C39118F531C9861
            169155389A5EDFEEE4FFFFFFFFFFFFD0E7D853A770168C471C975C25A16A229C
            5E67B483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DAC576B98D68B1810C864218
            965C209E67229F681A965A1F8F4C4EA56D419F631C8D46158D461D975725A269
            27A56D2EAB7326A15E7BBE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
            67108B4A22A06728A66E27A56E28A76F25A2661F9959209A5B229D5F28A46A2C
            AA702FAD752FAD7533B27A37B3783AA464C5E2CEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF1893522CAC742EAD752EAD752FAE7630AF7732B17933B27A33B3
            7A35B47C36B57D36B57D37B67E3BBA8240BF862DA76384C399FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF25A16139B98035B57D37B77F39B98039B980
            3ABA813BBB833CBC843DBD853EBE8541C18847C78E44C1862CA56078BE90FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF28995637B77A43C48B3F
            C08841C28941C28945C58D46C78E46C78D49CA904BCA9043C28432AE6B33A15D
            A2D1B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9DC
            C4319E5B39B7794CCE954BCD944CCE9546C68A36B26F30AB6629A35B279E5638
            A25F99CDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFA3D0B01B91453BB97951D49956D9A04ACB8E64C08CF1FB
            F7FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4D0B0198F4136B37055D89E
            4BCC8F4EB174E0EFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F8F4FEFEFEC2
            DFCA2F985132AE6B37B5734DAE73E1F0E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDBECDF55A56A0A7D2874B685FDFEFDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Visible = False
          OnClick = BtnAtualizarvaloresFaturaClick
        end
        object BtnReceberFatura: TSpeedButton
          Left = 195
          Top = 199
          Width = 137
          Height = 57
          Caption = 'Receber'
          Flat = True
          Glyph.Data = {
            B60D0000424DB60D000000000000360000002800000030000000180000000100
            180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFB5C9DD3B6A9B3B6A9B3B6A9B3B6A9B3B6A9B3F6FA0B5C9DD
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D89A9A9A9A9A9A9A9A9A9A9A9A9A
            9A9A9B9B9BD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4676A8628FBD78A4
            D17AA6D3729ECC628FBD4D7BAB3E6EA3B5C9DDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            9D9D9DA3A3A3A9A9A9A9A9A9A7A7A7A3A3A39E9E9E9B9B9BD8D8D8FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF4676A8628FBD78A4D178A4D178A4D178A4D178A4D184AEDA3E6EA3
            3E6EA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DA3A3A3A9A9A9A9A9A9A9A9A9A9A9A9A9
            A9A9ABABAB9B9B9B9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4676A878A4D178A4D195BC
            E595BCE595BCE595BCE595BCE578A4D13E6EA3FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9D
            A9A9A9A9A9A9AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA9A9A99B9B9BFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF3E6EA378A4D1A8CAED95BCE595BCE595BCE595BCE596BDE59BC0E786AFD8
            3E6EA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF9B9B9BA9A9A9B2B2B2AFAFAFAFAFAFAFAFAFAFAFAFAF
            AFAFB0B0B0ABABAB9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF19905C18905C19905C19905C3E6EA3A8CAED4C7CAC9CC2E9A1C5
            EA9DC2EAA1C5EAA2C5EBA2C5EBA1C5EA3F6FA4198F5C198F5C18905C19905CFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF9595959595959595959595959B9B9BB2B2B2
            9F9F9FB0B0B0B1B1B1B0B0B0B1B1B1B1B1B1B1B1B1B1B1B19C9C9C9595959595
            95959595959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19925E32BC7E32BC7E44
            74A7A8CAEDA8CAED4E7FADA8CAEDBFD8F2AECEEEBFD8F2A9CBEDB9D5F0A4C8EC
            406FA532BC7E32BC7E32BC7E1A925EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
            969E9E9E9E9E9E9D9D9DB2B2B2B2B2B29F9F9FB2B2B2B6B6B6B3B3B3B6B6B6B2
            B2B2B5B5B5B2B2B29C9C9C9E9E9E9E9E9E9E9E9E969696FFFFFFFFFFFFFFFFFF
            19905C18905C19905C19905C198F5C4474A7A8CAED4676A85181AFABCEEFABCE
            EFACCEEFABCEEFABCEEFABCEEFAACDEF3B6BA118905C19905C40C1881A945FFF
            FFFFFFFFFFFFFFFF9595959595959595959595959595959D9D9DB2B2B29D9D9D
            A0A0A0B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B39B9B9B9595959595
            95A0A0A0969696FFFFFFFFFFFFFFFFFF19925E32BC7E32BC7E32BC7E32BC7E3A
            A08F4474A73AA08F5383B0B3D3F24B7AADB0D2F33A69A0B0D2F33F6EA3AACDEF
            4171A532BC7E1A925E52C7931B9761FFFFFFFFFFFFFFFFFF9696969E9E9E9E9E
            9E9E9E9E9E9E9E9E9E9E9D9D9D9E9E9EA0A0A0B4B4B49E9E9EB4B4B49A9A9AB4
            B4B49C9C9CB3B3B39C9C9C9E9E9E969696A3A3A3969696FFFFFFFFFFFFFFFFFF
            1A955F40C1882DAB742DAB742DAB742DAB742DAB742EAB745586B2B7D7F64676
            A8B0D2F33A69A0B0D2F33F6EA3AACDEF3E6EA340C1881A945F65CEA01C9A63FF
            FFFFFFFFFFFFFFFF969696A0A0A09B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
            A1A1A1B5B5B59D9D9DB4B4B49A9A9AB4B4B49C9C9CB3B3B39B9B9BA0A0A09696
            96A6A6A6979797FFFFFFFFFFFFFFFFFF1C976152C79337AF7A52C79352C79352
            C79352C79352C7935787B3BDDBF94676A8B0D2F33A69A0B0D2F33A69A05282B0
            3D988C52C7931B976179D5AD1D9D66FFFFFFFFFFFFFFFFFF979797A3A3A39D9D
            9DA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A1A1A1B6B6B69D9D9DB4B4B49A9A9AB4
            B4B49A9A9AA0A0A09D9D9DA3A3A3969696AAAAAA989898FFFFFFFFFFFFFFFFFF
            1C9A6365CEA041B48265CEA065CEA019905C65CEA065CEA0598AB5C9E2FB4878
            A9B0D2F332619AAACDEF2D5D9765CEA041B48265CEA01C9A638EDDBB1FA067FF
            FFFFFFFFFFFFFFFF979797A6A6A69F9F9FA6A6A6A6A6A6959595A6A6A6A6A6A6
            A2A2A2B8B8B89E9E9EB4B4B4999999B3B3B3989898A6A6A69F9F9FA6A6A69797
            97ADADAD989898FFFFFFFFFFFFFFFFFF1D9D6579D5AD4CB98979D5AD79D5AD19
            905C79D5AD19905C5B8CB6D0E4F34271A5B7D7F64676A8497AAA65AFAB79D5AD
            4CB98979D5AD1D9D66A1E4C820A46AFFFFFFFFFFFFFFFFFF979797AAAAAAA1A1
            A1AAAAAAAAAAAA959595AAAAAA959595A2A2A2B8B8B89C9C9CB5B5B59D9D9D9E
            9E9EA5A5A5AAAAAAA1A1A1AAAAAA989898B1B1B1999999FFFFFFFFFFFFFFFFFF
            1FA0688EDDBB57BF918EDDBB19905C19905C8EDDBB19905C71B4B34676A84473
            A6B7D7F65886B48EDDBB8EDDBB8EDDBB57BF928EDDBB1FA067B3EAD321A86CFF
            FFFFFFFFFFFFFFFF989898ADADADA3A3A3ADADAD959595959595ADADAD959595
            A7A7A79D9D9D9D9D9DB5B5B5A1A1A1ADADADADADADADADADA3A3A3ADADAD9898
            98B4B4B4999999FFFFFFFFFFFFFFFFFF20A46AA1E4C861C49AA1E4C8A1E4C819
            905CA1E4C8A1E4C819905C19905CA1E4C8497AAA7DB8BBA1E4C8A1E4C8A1E4C8
            61C49AA1E4C820A46AC1EFDD23AB6EFFFFFFFFFFFFFFFFFF999999B1B1B1A5A5
            A5B1B1B1B1B1B1959595B1B1B1B1B1B1959595959595B1B1B19E9E9EA9A9A9B1
            B1B1B1B1B1B1B1B1A5A5A5B1B1B1999999B6B6B69A9A9AFFFFFFFFFFFFFFFFFF
            22A76CB3EAD36BC9A1B3EAD3B3EAD3B3EAD3B3EAD3B3EAD3B3EAD3B3EAD3B3EA
            D3B3EAD3B3EAD3B3EAD3B3EAD3B3EAD36BC9A0B3EAD321A86CCCF3E423AE71FF
            FFFFFFFFFFFFFFFF999999B4B4B4A7A7A7B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4
            B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4A7A7A7B4B4B49999
            99B8B8B89A9A9AFFFFFFFFFFFFFFFFFF22AA6EC1EFDD73CDA672CDA773CDA673
            CDA773CDA673CDA672CDA672CDA773CDA773CDA773CDA772CDA772CDA773CDA7
            72CDA7C1EFDD23AB6E25B27325B173FFFFFFFFFFFFFFFFFF9A9A9AB6B6B6A8A8
            A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A8A8A8A8A8A8A8B6B6B69A9A9A9B9B9B9B9B9BFFFFFFFFFFFFFFFFFF
            24AE70CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3
            E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E4CCF3E423AE71FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF9A9A9AB8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
            B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B89A9A
            9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF25B17325B17325B17325B17325B17325
            B17325B17325B17325B17325B17325B27325B17325B17325B17325B17325B173
            25B17325B27325B173FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B9B9B9B9B9B
            9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
            9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          NumGlyphs = 2
          Visible = False
          OnClick = BtnReceberFaturaClick
        end
        object lbeReceberFatura: TLabeledEdit
          Left = 40
          Top = 168
          Width = 121
          Height = 32
          EditLabel.Width = 142
          EditLabel.Height = 24
          EditLabel.Caption = 'Receber Fatura:'
          TabOrder = 0
          OnChange = lbeReceberFaturaChange
          OnKeyPress = lbeReceberFaturaKeyPress
        end
        object DBGrid3: TDBGrid
          Left = 416
          Top = 0
          Width = 807
          Height = 361
          Align = alRight
          BorderStyle = bsNone
          DataSource = DsFatura
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_CLIENTE'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpf_cnpj'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_COMPRA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Vencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'atraso'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Juros'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QDE_PARCELAS'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA_ATUAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIAS_PRAZO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_VENDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Visible = True
            end>
        end
        object StTroco: TStaticText
          Left = 222
          Top = 168
          Width = 129
          Height = 28
          Caption = 'Troco: R$0,00'
          TabOrder = 2
        end
        object Panel3: TPanel
          Left = 0
          Top = 16
          Width = 410
          Height = 59
          BevelOuter = bvNone
          Color = clBackground
          ParentBackground = False
          TabOrder = 3
          object Label7: TLabel
            Left = 2
            Top = 2
            Width = 135
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'Liquido:'
            Color = clInactiveCaption
            ParentColor = False
            Transparent = False
          end
          object Label8: TLabel
            Left = 140
            Top = 2
            Width = 120
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'Juros:'
            Color = clSkyBlue
            ParentColor = False
            Transparent = False
          end
          object Label9: TLabel
            Left = 263
            Top = 2
            Width = 145
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'Toltal:'
            Color = clActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object StValorTotalFaturaLiquido: TStaticText
            Left = 2
            Top = 29
            Width = 135
            Height = 28
            Alignment = taCenter
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = clCream
            ParentColor = False
            TabOrder = 0
            Transparent = False
          end
          object StJurosfatura: TStaticText
            Left = 140
            Top = 29
            Width = 120
            Height = 28
            Alignment = taCenter
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = clActiveBorder
            ParentColor = False
            TabOrder = 1
            Transparent = False
          end
          object StTotalFaturaBruto: TStaticText
            Left = 263
            Top = 29
            Width = 145
            Height = 28
            Alignment = taCenter
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = clMoneyGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Transparent = False
          end
        end
        object Panel4: TPanel
          Left = 39
          Top = 304
          Width = 129
          Height = 41
          Cursor = crHandPoint
          Caption = 'Atualizar'
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          OnClick = Panel4Click
        end
        object Panel6: TPanel
          Left = 230
          Top = 304
          Width = 129
          Height = 41
          Cursor = crHandPoint
          Caption = 'Receber '
          Color = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
          OnClick = Panel6Click
        end
        object Panel13: TPanel
          Left = 39
          Top = 81
          Width = 320
          Height = 41
          Cursor = crHandPoint
          Caption = 'Imprime Carn'#234
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 6
          OnClick = Panel13Click
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Venda Terminal'
        ImageIndex = 4
        object TPanel
          Left = 0
          Top = 0
          Width = 1223
          Height = 361
          Align = alClient
          BevelOuter = bvNone
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 457
            Height = 361
            Align = alLeft
            Caption = 'Panel7'
            Padding.Left = 10
            Padding.Top = 5
            Padding.Right = 10
            Padding.Bottom = 10
            TabOrder = 0
            object DBGProcuraProdutos: TDBGrid
              Left = 11
              Top = 57
              Width = 435
              Height = 293
              Margins.Top = 0
              Align = alClient
              DataSource = DsprocuraProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = DBGProcuraProdutosDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Width = 201
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRECO_VENDA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MARCA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UN'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ICMS'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_FABRICANTE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_GRUPO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRECO_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LUCRO_AV'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ESTOQUE_MIN'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ESTOQUE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CD_BARR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NCM_'
                  Visible = True
                end>
            end
            object Panel10: TPanel
              Left = 11
              Top = 6
              Width = 435
              Height = 51
              Margins.Bottom = 5
              Align = alTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              Padding.Left = 1
              Padding.Top = 20
              Padding.Bottom = 2
              ParentFont = False
              TabOrder = 1
              object sbxProcuraProduto: TSearchBox
                Left = 2
                Top = 21
                Width = 255
                Height = 27
                Margins.Left = 50
                Margins.Top = 10
                Margins.Bottom = 60
                Align = alLeft
                TabOrder = 0
                OnInvokeSearch = sbxProcuraProdutoInvokeSearch
              end
              object LbeQde: TLabeledEdit
                Left = 263
                Top = 21
                Width = 82
                Height = 27
                EditLabel.Width = 81
                EditLabel.Height = 19
                EditLabel.Caption = 'Quantidade'
                TabOrder = 1
                OnKeyPress = LbeQdeKeyPress
              end
            end
          end
          object Panel8: TPanel
            Left = 457
            Top = 0
            Width = 761
            Height = 361
            Align = alLeft
            TabOrder = 1
            object Label10: TLabel
              Left = 58
              Top = 1
              Width = 128
              Height = 45
              Align = alLeft
              AutoSize = False
            end
            object DBGrid4: TDBGrid
              Left = 1
              Top = 95
              Width = 759
              Height = 217
              Margins.Top = 0
              Align = alBottom
              DataSource = dsItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnCellClick = DBGrid4CellClick
              OnDrawColumnCell = DBGrid4DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_IT'
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CD_BARR'
                  Width = 95
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UN'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_UN'
                  Width = 49
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QDE'
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_TOTAL'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_DESCONTO'
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Remover'
                  Visible = True
                end>
            end
            object Panel9: TPanel
              Left = 1
              Top = 46
              Width = 759
              Height = 49
              Align = alBottom
              TabOrder = 1
              object BtnImprimeOrcamento: TSpeedButton
                Left = 345
                Top = 1
                Width = 136
                Height = 47
                Align = alLeft
                Caption = 'Imprimir'
                Glyph.Data = {
                  B60D0000424DB60D000000000000360000002800000030000000180000000100
                  180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF8F8F8F8
                  F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
                  FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
                  FCFCFCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFDFDFDEDEDEDCECECEB58158B48056B48055B47F55B47F55B48055B480
                  55B47F55B38056B48056B48056B58158CECECEEDEDEDFDFDFDFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E7E7E7A2A2A2A0A0A0A0A0A0A0A0A0
                  A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A2A2A2E7E7E7F7F7F7FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFAAABAB7171716E6F6F5B5B5B333333B18057F3
                  DEC5F4DEC5F3DDC5F3DEC5F4DDC5F4DEC5F3DEC5F4DEC5F3DDC5F3DEC7B27F57
                  3333335A5B5B6E6F6F7171719E9F9FFFFFFFFFFFFFC6C6C6A1A1A1A0A0A09B9B
                  9B8F8F8FA0A0A0B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
                  B7B7B7B7B7A0A0A08F8F8F9A9A9AA0A0A0A1A1A1BEBEBEFFFFFFFFFFFF686868
                  6162625E5F5F4849491B1B1BB38158F9EADAF8EADAF8EADAF8E9DAF8EADAF8EA
                  DAF9EADAF9E9D9F8EADAF8E9DAB381581B1B1B4849495E5F5F616262646565FF
                  FFFFFFFFFF9B9B9B989898979797929292868686A1A1A1BABABABABABABABABA
                  BABABABABABABABABABABABABABABABABABABABABAA1A1A18686869292929797
                  979898989A9A9AFFFFFFFFFFFF8E8F8F878888838484636464232323B4845BFB
                  F1E7FBF2E7FBF1E7FBF1E7FBF1E8FBF1E8FBF1E7FBF1E7FBF1E7FBF1E7B4835B
                  2323236364648384848788888B8C8CFFFFFFFFFFFFA7A7A7A1A1A1A0A0A09898
                  98888888A1A1A1BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBC
                  BCBCBCBCBCA1A1A1888888989898A0A0A0A1A1A1A4A4A4FFFFFFFFFFFF949495
                  8D8D8E89898A69696A272727B6875FFBF2E7FBF1E7FBF1E7FBF2E7FBF1E8FBF1
                  E8FBF2E7FBF1E8FBF1E7FBF1E8B6865E27272769696A89898A8D8D8E919192FF
                  FFFFFFFFFFA9A9A9A3A3A3A2A2A29A9A9A898989A2A2A2BCBCBCBCBCBCBCBCBC
                  BCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCA2A2A28989899A9A9AA2A2
                  A2A3A3A3A6A6A6FFFFFFFFFFFF9B9B9C95959692929378787943434429292A26
                  262726262726262726262726262726262726262726262726262726262729292A
                  43434478787992929395959699999AFFFFFFFFFFFFAAAAAAA5A5A5A4A4A49E9E
                  9E9090908A8A8A89898989898989898989898989898989898989898989898989
                  89898989898A8A8A9090909E9E9EA4A4A4A5A5A5A8A8A8FFFFFFFFFFFFA9A9AA
                  A4A4A5A3A3A49898998484857A7A7B7979797979797979797979797979797979
                  797979797979797979797979797A7A7B848485989899A3A3A4A4A4A5A7A7A8FF
                  FFFFFFFFFFAEAEAEA9A9A9A8A8A8A6A6A6A1A1A19E9E9E9E9E9E9E9E9E9E9E9E
                  9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9EA1A1A1A6A6A6A8A8
                  A8A9A9A9ACACACFFFFFFFFFFFFBCBCBCB8B8B8B8B8B8B7B7B7B4B4B4B3B3B3B3
                  B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B30ACE220F8F1EB3B3B30ACE220F8F1E
                  B4B4B4B7B7B7B8B8B8B8B8B8BBBBBBFFFFFFFFFFFFB3B3B3AEAEAEAEAEAEADAD
                  ADADADADACACACACACACACACACACACACACACACACACACACACAC9494948F8F8FAC
                  ACAC9494948F8F8FADADADADADADAEAEAEAEAEAEB1B1B1FFFFFFFFFFFFCFCFCF
                  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEAEAEAEAEAEACECECEFF
                  FFFFFFFFFFB8B8B8B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3
                  B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3BABA
                  BABABABAB6B6B6FFFFFFFFFFFFDDDDDDDADADADADADADADADA3F3F3F3F3F3F3F
                  3F3F3F3F3F3E3F3F3E3F3F3F3F3E3F3F3F3F3F3E3F3F3F3F3F3F3E3F3F3F3F3F
                  3E3F3FDADADAC4C4C4C4C4C5DCDCDCFFFFFFFFFFFFBBBBBBB6B6B6B6B6B6B6B6
                  B68F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
                  8F8F8F8F8F8F8F8F8F8F8FB6B6B6B1B1B1B1B1B1B9B9B9FFFFFFFFFFFFE0E0E0
                  DEDEDEDEDEDEDEDEDE494949626262747474909090B0B0B0CECECFE3E4E3EBEB
                  EBE0E0E0C7C8C7A8A8A88D8D8C7C7C7C494949DEDEDE8B8C8B8B8B8BE0E0E0FF
                  FFFFFFFFFFBBBBBBB7B7B7B7B7B7B7B7B79292929898989D9D9DA4A4A4ACACAC
                  B3B3B3B8B8B8BABABAB8B8B8B1B1B1AAAAAAA3A3A39F9F9F929292B7B7B7A2A2
                  A2A2A2A2BABABAFFFFFFFFFFFFD0D0D0CDCDCDCDCDCDCDCDCD53545462626275
                  7574909090B0B0B0CECECFE4E4E4EBEBEBE0E0E0C8C7C8A8A8A98C8D8D7C7C7C
                  535354CDCDCDCDCDCDCDCDCDCFCFCFFFFFFFFFFFFFB8B8B8B3B3B3B3B3B3B3B3
                  B39494949898989D9D9DA4A4A4ACACACB3B3B3B9B9B9BABABAB8B8B8B1B1B1AA
                  AAAAA3A3A39F9F9F949494B3B3B3B3B3B3B3B3B3B6B6B6FFFFFFFFFFFF979797
                  7070707070706F6F6F5E5E5E5E5D5E5D5D5D5E5E5E5E5E5E5E5E5E5E5E5E5E5D
                  5D5E5E5E5E5E5D5E5D5E5E5E5E5E5E5E5E5E5E6F6F6F7070707070708E8E8EFF
                  FFFFFFFFFFB3B3B39D9D9D9D9D9D9C9C9C979797979797979797979797979797
                  9797979797979797979797979797979797979797979797979797979C9C9C9D9D
                  9D9D9D9DAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090777777CDA882F6
                  EDE6F5EEE6F6EDE7F5EEE7F6EEE7F6EDE7F6EEE7F5EEE6F6EDE7F5EEE6CDA782
                  777777909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF
                  AF9D9D9DA9A9A9BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
                  BBBBBBBBBBA9A9A99D9D9DAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF8C8C8C7A7A7ACFAB86F4EDE5F4EDE6F4EDE5F4EDE5F5EDE5F4ED
                  E6F4EDE6F5EDE5F4EDE6F5EDE6CFAA867A7A7A8C8C8CFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB9E9E9EAAAAAABBBBBBBBBBBBBBBBBB
                  BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAA9E9E9EABABABFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7C7B7CD1AD89F4
                  ECE5F4ECE4F4ECE5F4ECE5F4ECE5F4ECE4F4ECE5F4ECE4F4ECE4F4ECE4D1AD89
                  7C7B7C8A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9
                  A99E9E9EABABABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
                  BBBBBBBBBBABABAB9E9E9EA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF8888887C7C7CD3B08CF3EBE3F3EBE3F3EBE3F3EBE4F4EBE4F3EC
                  E4F4ECE3F3EBE4F3EBE3F4EBE3D3B18C7C7C7C888888FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A89F9F9FABABABBABABABABABABABABA
                  BABABABABABABABABABABABABABABABABABABABABAACACAC9F9F9FA8A8A8FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393937C7C7CD4B38FF1
                  E9E0F2E9DFF2E9E0F2E9DFF2E8DFF2E9DFF2E9DFF1E9E0F2E9E0F2E9DFD5B38F
                  7C7C7C939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0
                  B09F9F9FACACACBABABABABABABABABABABABABABABABABABABABABABABABABA
                  BABABABABAACACAC9F9F9FB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFF9F9F9868686D5B591EFE3D5F0E3D5F0E3D5EFE3D5EFE3D5EFE3
                  D5F0E3D6EFE3D5F0E3D6F0E3D5D6B691868686F9F9F9FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA7A7A7ACACACB8B8B8B8B8B8B8B8B8
                  B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8ADADADA7A7A7FBFBFBFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D9BA96EE
                  DFCDEEDFCDEEDFCDEEDFCDEEDFCDEEDECEEEDFCDEEDFCDEEDFCEEEDFCED9BB96
                  F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFF9F9F9AFAFAFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
                  B7B7B7B7B7AFAFAFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFDBBC99DABA96DABA96DABA96DABA96DABA96DABA
                  96DABA96DABA96DABA96DABA96DBBC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0AEAEAEAEAEAEAEAEAE
                  AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEB0B0B0FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                NumGlyphs = 2
                OnClick = BtnImprimeOrcamentoClick
                ExplicitLeft = 393
                ExplicitTop = 9
              end
              object stTotalCompra: TStaticText
                Left = 1
                Top = 1
                Width = 184
                Height = 47
                Align = alLeft
                Alignment = taCenter
                AutoSize = False
                BevelInner = bvNone
                BevelOuter = bvNone
                Caption = '0,00'
                Color = clActiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                Transparent = False
              end
              object stQdeVolumes: TStaticText
                Left = 185
                Top = 1
                Width = 160
                Height = 47
                Align = alLeft
                Alignment = taCenter
                AutoSize = False
                BevelInner = bvNone
                Caption = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                Transparent = False
              end
              object stVenda: TStaticText
                Left = 569
                Top = 1
                Width = 189
                Height = 47
                Align = alRight
                AutoSize = False
                Caption = 'Venda: Nenhuma'
                TabOrder = 2
                Transparent = False
              end
            end
            object StVendedor: TStaticText
              Left = 658
              Top = 1
              Width = 102
              Height = 45
              Align = alRight
              Caption = 'Vendedor: '
              TabOrder = 2
            end
            object BitBtn1: TBitBtn
              Left = 570
              Top = 23
              Width = 107
              Height = 33
              Caption = 'BitBtn1'
              TabOrder = 3
              Visible = False
              OnClick = BitBtn1Click
            end
            object StaticText2: TStaticText
              Left = 1
              Top = 1
              Width = 57
              Height = 45
              Align = alLeft
              Caption = 'Total:'
              Color = clActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
              Transparent = False
            end
            object StaticText3: TStaticText
              Left = 186
              Top = 1
              Width = 87
              Height = 45
              Align = alLeft
              Caption = 'Volumes:'
              TabOrder = 5
              Transparent = False
            end
            object Panel12: TPanel
              Left = 1
              Top = 312
              Width = 759
              Height = 48
              Align = alBottom
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              Padding.Left = 2
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              ParentFont = False
              TabOrder = 6
              object BtnAplicarDescotoQdeItens: TSpeedButton
                Left = 660
                Top = 6
                Width = 93
                Height = 36
                Align = alRight
                Caption = 'Aplicar'
                OnClick = BtnAplicarDescotoQdeItensClick
                ExplicitLeft = 299
                ExplicitTop = 38
              end
              object LbDescricaoItem: TLabel
                Left = 229
                Top = 23
                Width = 376
                Height = 19
                AutoSize = False
                Caption = 'Nenhum Produto'
                Color = clInactiveCaption
                ParentColor = False
                Transparent = False
              end
              object LbeDesconto_p: TLabeledEdit
                Left = 124
                Top = 19
                Width = 100
                Height = 27
                EditLabel.Width = 98
                EditLabel.Height = 19
                EditLabel.Caption = 'Desconto (%)'
                TabOrder = 0
                OnKeyPress = LbeQdeKeyPress
              end
              object LbeQdeItens: TLabeledEdit
                Left = 5
                Top = 19
                Width = 84
                Height = 27
                EditLabel.Width = 81
                EditLabel.Height = 19
                EditLabel.Caption = 'Quantidade'
                TabOrder = 1
                OnKeyPress = LbeQdeKeyPress
              end
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Cliente_Terminal'
        ImageIndex = 5
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1223
          Height = 41
          Align = alTop
          Padding.Left = 5
          Padding.Top = 5
          Padding.Bottom = 5
          TabOrder = 0
          object SearchBox1: TSearchBox
            Left = 6
            Top = 6
            Width = 312
            Height = 29
            Align = alLeft
            TabOrder = 0
            OnInvokeSearch = SearchBox1InvokeSearch
            ExplicitHeight = 32
          end
        end
        object DbgCliente: TDBGrid
          Left = 0
          Top = 41
          Width = 1223
          Height = 320
          Align = alClient
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DbgClienteCellClick
          OnDrawColumnCell = DbgClienteDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TP_PESSOA'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_RAZAO'
              Width = 296
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Nova Venda'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUNICIPIO'
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF_CNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APELIDO_FANTASIA'
              Width = 192
              Visible = True
            end>
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
      object PnPesquisa: TPanel
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
      Left = 856
      Top = 86
      Width = 287
      Height = 33
      BevelOuter = bvNone
      Caption = 'Cliente : 1 - Nome do Cliente'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
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
    Left = 900
    Top = 148
  end
  object DsEmpresa: TDataSource
    Left = 734
    Top = 144
  end
  object DsVendedor: TDataSource
    Left = 814
    Top = 144
  end
  object DsFatura: TDataSource
    DataSet = DM.QrFatura
    Left = 556
    Top = 148
  end
  object frxReport1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43841.004137349500000000
    ReportOptions.LastChange = 43852.613602754630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '                                        '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                               '
      
        '//  memo1.text := strtofloat(memo1.text)+<dbItens."vl_TOTAL">-<d' +
        'bItens."vl_desconto">;  '
      'end;'
      ''
      'begin'
      '     '
      ''
      'end.')
    Left = 936
    Top = 195
    Datasets = <
      item
        DataSet = frxCliente
        DataSetName = 'dbCliente'
      end
      item
        DataSet = frxEmpresa
        DataSetName = 'dbEmpresa'
      end
      item
        DataSet = frxItens
        DataSetName = 'dbItens'
      end
      item
        DataSet = frxVendaTerminal
        DataSetName = 'dbVendaTerminal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      MirrorMargins = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object dbVendaTerminalEmitente: TfrxMemoView
          Align = baWidth
          Top = 68.913420000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          DataSet = frxVendaA4
          DataSetName = 'dbVendaA4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEmpresa."razao_social"]')
          ParentFont = False
        end
        object dbVendaTerminalLogradouro: TfrxMemoView
          Align = baWidth
          Top = 98.149660000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          DataSet = frxVendaA4
          DataSetName = 'dbVendaA4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbEmpresa."Logradouro"], [dbEmpresa."numero"]'
            
              '[dbEmpresa."bairro"] - [dbEmpresa."nome_cidade"] - [dbEmpresa."U' +
              'F"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object dbVendaTerminalcidade: TfrxMemoView
          Align = baWidth
          Top = 20.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxVendaA4
          DataSetName = 'dbVendaA4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object dbVendaTerminaldata_venda: TfrxMemoView
          Left = 3.779530000000000000
          Top = 152.063080000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataSet = frxVendaA4
          DataSetName = 'dbVendaA4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data: [dbVendaTerminal."data_venda"]')
          ParentFont = False
        end
        object dbVendaTerminalnome_razao: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxVendaA4
          DataSetName = 'dbVendaA4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            
              'Or'#231'amento/Venda: [dbItens."id_venda"] | Cliente: [dbcliente."nom' +
              'e_razao"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object dbItensA4id_venda: TfrxMemoView
          Left = 3.779530000000000000
          Top = 178.519790000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataSet = frxItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Or'#231'amento/Venda: [dbItens."id_venda"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -64.252010000000000000
          Top = 49.133890000000000000
          Width = 876.850960000000000000
          Color = clBlack
          Frame.Style = fsDash
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 219.212740000000000000
          Top = 178.637910000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataSet = frxItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor: [dbVendaTerminal."id_vendedor"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxItens
        DataSetName = 'dbItens'
        RowCount = 0
        object dbItensA4ITEM: TfrxMemoView
          Align = baLeft
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbItens."COD_IT"] ')
          ParentFont = False
        end
        object dbItensA4DESCRICAO: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataSet = frxItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' [dbItens."DESCRICAO"]')
          ParentFont = False
        end
        object dbItensA4un: TfrxMemoView
          Align = baLeft
          Left = 359.055350000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'un'
          DataSet = frxItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItens."un"]')
          ParentFont = False
        end
        object dbItensA4VL_UN: TfrxMemoView
          Align = baLeft
          Left = 396.850650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'VL_UN'
          DataSet = frxItens
          DataSetName = 'dbItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItens."VL_UN"]')
          ParentFont = False
        end
        object dbItensA4qde: TfrxMemoView
          Align = baLeft
          Left = 487.559370000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'qde'
          DataSet = frxItens
          DataSetName = 'dbItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItens."qde"]')
          ParentFont = False
        end
        object dbItensA4TOTAL: TfrxMemoView
          Align = baLeft
          Left = 551.811380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VL_TOTAL'
          DataSet = frxItens
          DataSetName = 'dbItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItens."VL_TOTAL"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxItens
          DataSetName = 'dbItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbItens."VL_DESCONTO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 124.724490000000000000
          Top = 18.897650000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebi os Produtos acima listados')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 22.677180000000000000
          Top = 7.559060000000000000
          Width = 657.638220000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 551.811380000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'R$ [SUM(<dbItens."VL_TOTAL">,MasterData1)-SUM(<dbItens."VL_desco' +
              'nto">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 487.559370000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<dbItens."qde">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Top = 7.559060000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 359.055350000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UN')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 396.850650000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Valor Unitario')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 487.559370000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qde')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 551.811380000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 631.181510000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
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
    DataSet = DM.QrFatura
    BCDToCurrency = False
    Left = 830
    Top = 283
  end
  object frxSaidaProdutos: TfrxDBDataset
    UserName = 'dbSaidaProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cabecalho=cabecalho'
      'venda=venda'
      'data_venda=data_venda'
      'DESCRICAO=DESCRICAO'
      'ID_PROD=ID_PROD'
      'un=un'
      'Qde=qde'
      'valor=valor')
    BCDToCurrency = False
    Left = 816
    Top = 225
  end
  object frxChartObject1: TfrxChartObject
    Left = 944
    Top = 296
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43841.014618263890000000
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 950
    Top = 251
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 942
    Top = 355
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 942
    Top = 419
  end
  object DsprocuraProduto: TDataSource
    DataSet = DM.QrProdutos
    Left = 630
    Top = 147
  end
  object dsItens: TDataSource
    DataSet = DM.QrItens
    Left = 504
    Top = 154
  end
  object frxItens: TfrxDBDataset
    UserName = 'dbItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CDBARR=CDBARR'
      'ICMS=ICMS'
      'ID_VENDA=id_venda'
      'ID_PROD=ID_PROD'
      'VL_UN=VL_UN'
      'QDE=qde'
      'VL_TOTAL=VL_TOTAL'
      'COD_IT=COD_IT'
      'DESCRICAO=DESCRICAO'
      'UN=un'
      'Ncm=Ncm'
      'VL_DESCONTO=VL_DESCONTO')
    DataSet = DM.QrItens
    BCDToCurrency = False
    Left = 824
    Top = 393
  end
  object frxVendaA4: TfrxDBDataset
    UserName = 'dbVendaA4'
    CloseDataSource = False
    FieldAliases.Strings = (
      '@Emitente=@Emitente'
      '@Logradouro=@Logradouro'
      '@cidade=@cidade'
      'venda=venda'
      'data_venda=data_venda'
      'nome_razao=nome_razao')
    BCDToCurrency = False
    Left = 824
    Top = 337
  end
  object QrVendaA4: TFDQuery
    SQL.Strings = (
      'SET @Emitente = '#39'Francisco inform'#225'tica'#39';'
      'SET @Logradouro = '#39'Rua Firmo Cunha 925, bairro de Fatima'#39';'
      'SET @cidade='#39'Jose de Freitas - PI'#39';'
      
        'SELECT @Emitente,@Logradouro,@cidade,  v.id AS venda,v.data_vend' +
        'a,c.nome_razao FROM'
      'venda AS v LEFT JOIN cliente AS c'
      'ON v.ID_CLIENTE = c.ID'
      'WHERE v.ID=40')
    Left = 438
    Top = 163
  end
  object QrVendaTerminal: TFDQuery
    SQL.Strings = (
      'select * from venda where id=307')
    Left = 600
    Top = 232
    object QrVendaTerminalID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QrVendaTerminalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object QrVendaTerminalDATA_VENDA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_VENDA'
      Origin = 'DATA_VENDA'
    end
    object QrVendaTerminalid_empresa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
    end
    object QrVendaTerminalPAG_CARTAO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_CARTAO'
      Origin = 'PAG_CARTAO'
    end
    object QrVendaTerminalPAG_DINHEIRO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_DINHEIRO'
      Origin = 'PAG_DINHEIRO'
    end
    object QrVendaTerminalTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QrVendaTerminalN_NOTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_NOTA'
      Origin = 'N_NOTA'
    end
    object QrVendaTerminalPAG_FIADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_FIADO'
      Origin = 'PAG_FIADO'
    end
    object QrVendaTerminalOP_CAIXA_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OP_CAIXA_ID'
      Origin = 'OP_CAIXA_ID'
    end
    object QrVendaTerminalTERMINAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
    end
    object QrVendaTerminalID_CAIXA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
    end
    object QrVendaTerminalFISCAL_PREVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FISCAL_PREVENDA'
      Origin = 'FISCAL_PREVENDA'
    end
    object QrVendaTerminalid_vendedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
    end
  end
  object DsVendaTerminal: TDataSource
    DataSet = QrVendaTerminal
    Left = 342
    Top = 243
  end
  object frxVendaTerminal: TfrxDBDataset
    UserName = 'dbVendaTerminal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTE=ID_CLIENTE'
      'DATA_VENDA=DATA_VENDA'
      'id_empresa=id_empresa'
      'PAG_CARTAO=PAG_CARTAO'
      'PAG_DINHEIRO=PAG_DINHEIRO'
      'TOTAL=TOTAL'
      'N_NOTA=N_NOTA'
      'PAG_FIADO=PAG_FIADO'
      'OP_CAIXA_ID=OP_CAIXA_ID'
      'TERMINAL=TERMINAL'
      'ID_CAIXA=ID_CAIXA'
      'FISCAL_PREVENDA=FISCAL_PREVENDA'
      'id_vendedor=id_vendedor')
    DataSet = QrVendaTerminal
    BCDToCurrency = False
    Left = 832
    Top = 449
  end
  object frxCliente: TfrxDBDataset
    UserName = 'dbCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TP_PESSOA=TP_PESSOA'
      'FONE=FONE'
      'CEP=CEP'
      'LOGRADOURO=LOGRADOURO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'COD_MUNICIPIO=COD_MUNICIPIO'
      'UF=UF'
      'NOME_RAZAO=NOME_RAZAO'
      'MUNICIPIO=MUNICIPIO'
      'CPF_CNPJ=CPF_CNPJ'
      'RG_IE=RG_IE'
      'DIVIDA_ATUAL=DIVIDA_ATUAL'
      'LIMITE_CREDITO=LIMITE_CREDITO'
      'APELIDO_FANTASIA=APELIDO_FANTASIA')
    DataSet = DM.QrCliente
    BCDToCurrency = False
    Left = 744
    Top = 409
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'dbEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CNPJ=CNPJ'
      'IE=IE'
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'FANTASIA=FANTASIA'
      'FONE=FONE'
      'CEP=CEP'
      'LOGRADOURO=LOGRADOURO'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'BAIRRO=BAIRRO'
      'COD_CIDADE=COD_CIDADE'
      'NOME_CIDADE=NOME_CIDADE'
      'UF=UF'
      'COD_PAIS=COD_PAIS'
      'NOME_PAIS=NOME_PAIS'
      'REGIME_FISCAL=REGIME_FISCAL')
    BCDToCurrency = False
    Left = 752
    Top = 361
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 574
    Top = 331
  end
end
