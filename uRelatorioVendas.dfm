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
          OnClick = BtnReceberFaturaClick
        end
        object lbeReceberFatura: TLabeledEdit
          Left = 40
          Top = 128
          Width = 121
          Height = 32
          EditLabel.Width = 142
          EditLabel.Height = 24
          EditLabel.Caption = 'Receber Fatura:'
          TabOrder = 0
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
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Vencimento'
              Width = 64
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
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIAS_PRAZO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_VENDA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Width = 64
              Visible = True
            end>
        end
        object StTroco: TStaticText
          Left = 222
          Top = 128
          Width = 129
          Height = 28
          Caption = 'Troco: R$0,00'
          TabOrder = 2
        end
        object Panel3: TPanel
          Left = 22
          Top = 16
          Width = 338
          Height = 55
          BevelOuter = bvNone
          Color = clNavy
          ParentBackground = False
          TabOrder = 3
          object Label7: TLabel
            Left = 1
            Top = 1
            Width = 119
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Caption = 'Liquido:'
            Color = clInactiveCaption
            ParentColor = False
            Transparent = False
          end
          object Label8: TLabel
            Left = 121
            Top = 1
            Width = 87
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Caption = 'Juros:'
            Color = clSkyBlue
            ParentColor = False
            Transparent = False
          end
          object Label9: TLabel
            Left = 209
            Top = 1
            Width = 128
            Height = 24
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
            Left = 1
            Top = 26
            Width = 119
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = clCream
            ParentColor = False
            TabOrder = 0
            Transparent = False
          end
          object StJurosfatura: TStaticText
            Left = 121
            Top = 26
            Width = 87
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$: 0,00'
            Color = clActiveBorder
            ParentColor = False
            TabOrder = 1
            Transparent = False
          end
          object StTotalFaturaBruto: TStaticText
            Left = 209
            Top = 26
            Width = 128
            Height = 28
            Alignment = taRightJustify
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
      Left = 574
      Top = 86
      Width = 417
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
    Left = 814
    Top = 136
  end
  object DsFatura: TDataSource
    DataSet = DM.QrFatura
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
      
        'procedure Shape1OnPreviewClick(Sender: TfrxView; Button: TMouseB' +
        'utton; Shift: Integer; var Modified: Boolean);'
      'begin'
      ' // showmessage('#39'vc clicou'#39');                            '
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
          OnPreviewClick = 'Shape1OnPreviewClick'
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
    DataSet = DM.QrFatura
    BCDToCurrency = False
    Left = 614
    Top = 195
  end
end
