object Frm_Padrao: TFrm_Padrao
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Padr'#227'o'
  ClientHeight = 512
  ClientWidth = 695
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Barra_Titulo: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelKind = bkTile
    Caption = 'Barra de T'#237'tulo'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 493
    Width = 695
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object pg_Padrao: TPageControl
    Left = 0
    Top = 89
    Width = 695
    Height = 404
    ActivePage = tb_Pesquisa
    Align = alClient
    TabOrder = 2
    object tb_Cadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnl_Cad_Centro: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 376
        Align = alClient
        BevelInner = bvRaised
        BevelKind = bkTile
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
      end
    end
    object tb_Pesquisa: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object pnl_Pes_Centro: TPanel
        Left = 0
        Top = 0
        Width = 687
        Height = 224
        Align = alClient
        BevelInner = bvRaised
        BevelKind = bkTile
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object lb_Pesquisar: TLabel
          Left = 358
          Top = 27
          Width = 46
          Height = 13
          Caption = 'Pesquisar'
        end
        object rdg_Selecionar: TRadioGroup
          Left = 16
          Top = 27
          Width = 121
          Height = 105
          Cursor = crHandPoint
          Caption = 'Sele'#231#227'o de Pesquisa'
          TabOrder = 0
          OnClick = rdg_SelecionarClick
        end
        object edt_Filtrar: TEdit
          Left = 358
          Top = 46
          Width = 158
          Height = 21
          TabOrder = 1
        end
        object btn_Filtar: TBitBtn
          Left = 522
          Top = 44
          Width = 81
          Height = 25
          Cursor = crHandPoint
          Caption = '&Filtrar'
          Kind = bkYes
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object pnl_grid: TPanel
        Left = 0
        Top = 224
        Width = 687
        Height = 152
        Align = alBottom
        BevelInner = bvRaised
        BevelKind = bkTile
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 1
        object lb_NRegistro: TLabel
          Left = 5
          Top = 17
          Width = 100
          Height = 13
          Caption = 'Numero de Registros'
        end
        object dbg_Dados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 36
          Width = 673
          Height = 107
          Align = alBottom
          DataSource = DS_TB
          DrawingStyle = gdsGradient
          GradientEndColor = clCream
          GradientStartColor = clSkyBlue
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbg_DadosDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'Id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 182
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SobreNome'
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Login'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Senha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Cadastro'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hora_Cadastro'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Nascimento'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Usuario'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Width = 64
              Visible = True
            end>
        end
      end
    end
  end
  object pnl_Botoes: TPanel
    Left = 0
    Top = 41
    Width = 695
    Height = 48
    Align = alTop
    BevelInner = bvRaised
    BevelKind = bkTile
    TabOrder = 3
    object Sbtn_Novo: TSpeedButton
      Left = 2
      Top = 4
      Width = 58
      Height = 29
      Action = actNovo
      Flat = True
    end
    object Sbtn_Editar: TSpeedButton
      Left = 58
      Top = 4
      Width = 58
      Height = 29
      Action = actEditar
      Flat = True
    end
    object Sbtn_Salvar: TSpeedButton
      Left = 114
      Top = 4
      Width = 63
      Height = 29
      Action = actSalvar
      Flat = True
    end
    object Sbtn_Cancelar: TSpeedButton
      Left = 175
      Top = 4
      Width = 70
      Height = 29
      Action = actCancelar
      Flat = True
    end
    object Sbtn_Deletar: TSpeedButton
      Left = 243
      Top = 4
      Width = 63
      Height = 29
      Action = actDeletar
      Flat = True
    end
    object Sbtn_Pesquisar: TSpeedButton
      Left = 304
      Top = 4
      Width = 71
      Height = 29
      Action = actPesquisar
      Flat = True
    end
    object Sbtn_Imprimir: TSpeedButton
      Left = 373
      Top = 4
      Width = 63
      Height = 29
      Action = actImprimir
      Flat = True
    end
    object Sbtn_Sair: TSpeedButton
      Left = 434
      Top = 4
      Width = 63
      Height = 29
      Action = actSair
      Flat = True
    end
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 280
    object IrPara1: TMenuItem
      Caption = 'Ir Para'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 272
    Top = 288
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = actNovoExecute
      OnUpdate = actNovoUpdate
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 1
      ShortCut = 115
      OnExecute = actEditarExecute
      OnUpdate = actEditarUpdate
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 2
      ShortCut = 116
      OnExecute = actSalvarExecute
      OnUpdate = actSalvarUpdate
    end
    object actDeletar: TAction
      Caption = 'Deletar'
      ImageIndex = 3
      ShortCut = 117
      OnExecute = actDeletarExecute
      OnUpdate = actDeletarUpdate
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      ShortCut = 118
      OnExecute = actCancelarExecute
      OnUpdate = actCancelarUpdate
    end
    object actPesquisar: TAction
      Caption = 'Pesquisar'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = actPesquisarExecute
      OnUpdate = actPesquisarUpdate
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 6
      ShortCut = 120
      OnExecute = actImprimirExecute
      OnUpdate = actImprimirUpdate
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 7
      ShortCut = 121
      OnExecute = actSairExecute
      OnUpdate = actSairUpdate
    end
  end
  object ImageList1: TImageList
    Left = 568
    Top = 312
    Bitmap = {
      494C010108001800400010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0FBFF004060E0004040E0004040E0004060E000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004080C00080C0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002B69002D55
      87006A87AA00A1B3CA000000000000000000000000000000000000000000F0FB
      FF004060E0004040E0004040E0004060E0008080E0004060E0004040E0004040
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0FBFF0040A0E0004080C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCF0
      FF001E99FD002DA0FD002DA0FD002DA0FD002DA0FD002DA0FE0000275E000333
      6E00002E6A0000296700002060002E57880000000000000000004040E0004040
      E0004040E0004040E0004040E0004040E0004040E0004040E0008080E0000000
      00004060E0000020C00000000000000000000000000000000000000000000000
      00000000000000000000F0FBFF0000000000000000000000000000000000F0FB
      FF004080C00040A0E000F0FBFF00000000000000000000000000C0A0A000C0A0
      A000C0C0A000C0A0A000C0A0A000C0A0A000C0A0A000C0A0A000C0A0A000C0C0
      A000C0A0A000C0A0A0000000000000000000000000000000000000000000C4E3
      FF001090FD002399FE002399FE002399FE002399FE002399FE00042B5F000837
      71000837710008377100083771000837710000000000F0FBFF004040E0004040
      E0004040E0004040E0004040E0004040E0004040E0004040E0004040E0004040
      E000000000004060E000C0C0C00000000000000000000000000000000000C0C0
      C0008060400040402000404020004040200080604000C0C0A00080A0C0004080
      C00040A0C0004080C000000000000000000000000000C0C0C000C0A0A000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0A0A000C0C0C00000000000000000000000000000000000C4E3
      FF001090FD002399FE002399FE002399FE002399FE002399FE00042B5F000837
      710008377100083771000837710008377100000000004060E0004040E0004040
      E0004040E0004040E0004040E0004040E0004040E0004040E0004040E0004040
      E0004040E000000000000020A000000000000000000000000000806060004040
      20004040200080806000C0A080008080600040404000404020004080C00040A0
      E0004080C000F0FBFF000000000000000000F0FBFF00A4A0A000C0A0A000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0A0A000A4A0A000F0FBFF00000000000000000000000000C4E3
      FF001090FD002299FF001599FF002299FE002399FE002399FE00042B5F000837
      710008377100083771000837710008377100F0FBFF004060E0004040E0004040
      E0004040E0004040E0004040E0004040E0004040E0004040E0004040E0004040
      E0004040E0008080E0000020C000C0C0C0000000000000000000404020008080
      6000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A08000804020004080
      C00080A0E000000000000000000000000000C0C0A000F0CAA600C0808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0808000F0CAA600C0C0A000000000000000000000000000BCED
      FF000091FF00009CFF00829397000A9AFF002299FE002399FE00042B5F000837
      7100083771000837710008377100083771008080E0004040E0004040E0004040
      E0004040E0004040E00000000000F0FBFF00F0FBFF00000000004040E0004040
      E0004040E0004040E0004060E0004040C000F0FBFF004040200000000000F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A080004040
      2000C0C0A000000000000000000000000000F0CAA600C0DCC000806060008060
      6000806060008060600080606000806060008060600080606000806060008060
      60008060600080606000C0DCC000F0CAA600FB891500FC851000FC871300FC88
      1300FE881300FE881300FC881500FF8600007E939A000B9AFF00042B5F00002E
      6C0086859E0056678D0008377100083771008080E0004060E0004040E0004040
      E0004040E0004040E000F0FBFF000000000000000000F0FBFF004040E0004040
      E0004040E0004040E0008080E0004040A000A4A0A00040402000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA6004040
      400080604000000000000000000000000000F0FBFF00F0FBFF00C0DCC000C0DC
      C000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000F0FBFF00F0FBFF00FE831400FE841500FE841500FE84
      1500FE841500FE841500FE841500FE841500FF820000838D960003285A000027
      6400CCABB200968CA00007346C0007346C004060E0008080E0004040E0004040
      E0004040E0004040E000F0FBFF000000000000000000F0FBFF004040E0004040
      E0004040E0004040E0004060E0004040A0008060600080604000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA6008080
      600040402000000000000000000000000000C0DCC000C0DCC000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600C0DCC000C0DCC000E6AE1700E6AE1700E6AE1700E6AE
      1700E6AE1700E6AE1700E6AE1700E6AE1700FCA8000095C88D000A3F93000040
      9600D2CCD7008EA0C2000F4D9C000F4D9C008080E0004060E0004040E0004040
      E0004040E0004040E00000000000F0FBFF00F0FBFF00000000004040E0004040
      E0004040E0004040E0004040E0004040C0008060400080806000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600C0A0
      800040402000F0FBFF000000000000000000C0DCC000F0FBFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000C0C00000FFFF0000F0FBFF00C0DCC000E7AC1700E7AC1700E7AC1700E8AC
      1600E8AB1600E8AB1600E7AC1600FCA6000092C48C002EE1FF00083A8C000143
      940096A3C2006080B1000F4C99000F4C9900F0FBFF004060E0008080E0004040
      E0004040E0004040E0004040E0004040E0004040E0004040E0004040E0004040
      E0004040E0004040E0000020C000C0C0C0008080600040404000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA6008080
      600040402000000000000000000000000000C0DCC000F0FBFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000F0FBFF00C0DCC000EE791000F2641200F8620900BC87
      59001DEAFF0019E6FF0094C38B002CE0FF0040DBFE0041DBFE00093A8C000F4C
      99000F4C99000F4C99000F4C99000F4C9900000000004060E000000000004040
      E0004040E0004040E0004040E0004040E0004040E0004040E0004040E0004040
      E0004040E0004040E0004020A00000000000A4A0A00040402000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA6004040
      2000806040000000000000000000000000000000000000000000C0A06000C0A0
      6000806080008060800080608000806080008060800080608000806080008060
      8000C0A06000C0A060000000000000000000F2742000EF5F0000F65D0000C182
      420031E4FF003FDBFF0035DEFF0040DBFE0041DBFE0041DBFE00093A8C000F4C
      99000F4C99000F4C99000F4C99000F4C990000000000F0FBFF004060E0000000
      00004040E0004040E0004040E0004040E0004040E0004040E0004040E0004040
      E0004040E0004040E000C0C0C00000000000000000004040200000000000F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600808060004040
      2000C0C0C0000000000000000000000000000000000000000000C0A0A000A4A0
      A000806060008060600080606000806060008060600080606000806060008060
      6000A4A0A000C0A0A0000000000000000000FEFFFF00FAD5BB00FFD8BD00CAD9
      D00031DBFF0041DBFE0040DBFE0041DBFE0041DBFE0041DBFE00093A8C000F4C
      99000F4C99000F4C99000F4C99000F4C990000000000000000004040E0004060
      E000000000008080E0004040E0004040E0004040E0004040E0004040E0004040
      E0004040E0004040C000000000000000000000000000A4A0A000808060000000
      0000F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600404020008060
      6000000000000000000000000000000000000000000000000000C0A0A0008080
      8000A4A0A000000000000000000000000000000000000000000000000000A4A0
      A00080808000C0A0A0000000000000000000000000000000000000000000CDF9
      FF0030D7FD0041DBFE0041DBFE0041DBFE0041DBFE0041DBFE00093A8C000F4C
      99000F4C99000F4C99000F4C99000F4C9900000000000000000000000000F0FB
      FF004060E0004040E0004060E0008080E0004060E0004040E0004040E0004040
      C000C0C0C0000000000000000000000000000000000000000000A4A0A0004040
      2000404020004040400080604000806040004040200040402000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4FA
      FF0044DBFD0051DEFD0052DEFD0052DEFD0052DEFD0052DEFE0002378B000948
      960003439400003F910000398E003E70AD000000000000000000000000000000
      000000000000F0FBFF004060E0004040E0004040E0004060E000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A0A000808060008060400080606000A4A0A000F0FBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000094796003A6C
      AB007497C400AABFDA0000000000000000000000000000000000000000000000
      00000000000000000000C0C06000C0C02000C0C02000C0C06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000402020004020
      2000402020004020200040202000402020004020200040202000402020004020
      2000402020004020200040404000000000000000000000000000000000004060
      6000404040004040400040404000404040004040400040404000404040004040
      400080606000000000000000000000000000000000000000000000000000C0C0
      8000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C0
      2000C0C080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040400040202000C0DCC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060600040202000404040000000000000000000A4A0A0004040
      2000404040004040400040404000404040004040400040404000404040004040
      400040404000A4A0A00000000000000000000000000000000000C0C02000C0C0
      2000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C0
      2000C0C02000C0C0200000000000000000000000000000000000000000000000
      0000F0FBFF00F0FBFF00C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF00F0FBFF000000000000000000000000004020200040202000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0A00040202000402020000000000000000000C0A0A000A4A0
      A000A4A0A00080A08000A4A0A000A4A0A000A4A0A000A4A0A00080A08000A4A0
      A000A4A0A000C0C0C000000000000000000000000000C0C08000C0C02000C0C0
      2000C0C02000C0C02000C0C02000C0C06000C0C06000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C08000000000000000000000000000000000008080
      80008080800080A0A000C0C0C000C0DCC000C0DCC000F0FBFF00F0FBFF00F0FB
      FF00F0FBFF000000000000000000000000004020200040202000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0A00040202000402020000000000000000000A4A0A000A4A0
      A00080A0800080808000A4A0A0008080800080808000A4A0A0008080800080A0
      8000A4A0A000C0A0A000000000000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C020000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C02000000000000000000000000000000000004080
      C000406080008040000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004020200040202000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0A0004020200040202000000000000000000080A08000A4A0
      A0008080800080A08000A4A0A0008080800080808000A4A0A00080A080008080
      8000A4A0A000A4A0A000000000000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C020000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C020000000000000000000000000000000000080C0
      E000C0600000C060200040402000000000000000000000000000000000000000
      0000000000000000000000000000000000004020200040202000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0A0004020200040202000000000000000000080808000C0A0
      A00080808000A4A0A000A4A0A0008080800080808000A4A0A000A4A0A0008080
      8000A4A0A000A4A0A0000000000000000000C0C06000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0A000000000000000000000C0A00000C0C02000C0C0
      2000C0C02000C0C02000C0C02000C0C060000000000000000000000000000000
      0000C0C0A00080400000C0602000C060200040200000F0FBFF00000000000000
      0000000000000000000000000000000000004020200040202000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00040202000402020000000000000000000A4A0A000A4A0
      A00080808000A4A0A000A4A0A0008080800080808000A4A0A000A4A0A0008080
      8000A4A0A000A4A0A0000000000000000000C0C02000C0C02000C0C02000C0C0
      6000000000000000000000000000000000000000000000000000000000000000
      0000C0C06000C0C02000C0C02000C0C020000000000000000000000000000000
      000000000000C0C0A000C0802000C0602000C060200040200000000000000000
      0000000000000000000000000000000000004020200040202000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600C0A0800040202000402020000000000000000000A4A0A000A4A0
      A00080808000A4A0A000A4A0A0008080800080808000A4A0A000A4A0A0008080
      8000A4A0A000A4A0A0000000000000000000C0C02000C0C02000C0C02000C0C0
      6000000000000000000000000000000000000000000000000000000000000000
      0000C0C06000C0C02000C0C02000C0C020000000000000000000000000000000
      0000000000000000000080400000C0802000C0602000C0602000C0A0A0000000
      0000000000000000000000000000000000004020200040202000C0C06000C0C0
      6000C0C06000C0C06000C0C06000C0C06000C0C06000C0C06000C0C06000C0C0
      6000C0C060008060400040202000402020000000000000000000A4A0A000A4A0
      A00080808000A4A0A000A4A0A0008080800080808000A4A0A000A4A0A0008080
      8000A4A0A000A4A0A0000000000000000000C0C06000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0A000000000000000000000C0A00000C0C02000C0C0
      2000C0C02000C0C02000C0C02000C0C060000000000000000000000000000000
      00000000000000000000F0CAA60080400000C0802000C0602000406060008080
      8000000000000000000000000000000000004020200040202000402020004040
      2000402020004020200040202000402020004020200040202000402020004020
      2000402020004020200040202000402020000000000000000000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000000000000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C020000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C02000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF0040202000C0DCC000F0FB
      FF00808080004040800000000000000000004020200040202000402020004020
      200080808000FFFFFF00000000000000000000000000FFFFFF00402020000000
      0000FFFFFF00C0C0A000402020004020200000000000C0C0C000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000C0C0C0000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C020000000000000000000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C02000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0FBFF0080808000C0C0
      C0004020E0004060800000000000000000004020200040202000402020004020
      200080808000FFFFFF00000000000000000000000000FFFFFF00402020000000
      0000FFFFFF00C0C0A0004020200040202000C0C0C00040202000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      4000404040004040400040202000C0C0C00000000000C0C08000C0C02000C0C0
      2000C0C02000C0C02000C0C02000C0C06000C0C06000C0C02000C0C02000C0C0
      2000C0C02000C0C02000C0C08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000404020000020
      C000404080000000000000000000000000004020200040202000402020004020
      200080808000FFFFFF00000000000000000000000000FFFFFF00402020000000
      0000FFFFFF00C0C0A0004020200040202000C0C0C00040404000406040004060
      4000406040004060400040604000406040004060400040604000406040004060
      4000406040004060400040404000C0C0C0000000000000000000C0C02000C0C0
      2000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C0
      2000C0C02000C0C0200000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0FBFF008060
      A000000000000000000000000000000000004020200040202000402020004020
      200080808000FFFFFF00000000000000000000000000FFFFFF00402020000000
      0000FFFFFF00C0C0A0004020200040202000C0C0C00040202000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      4000404040004040400040202000C0DCC000000000000000000000000000C0C0
      8000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C02000C0C0
      2000C0C080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040400040202000402020004020
      2000806060000000000000000000000000000000000000000000C0A0A000A4A0
      A000FFFFFF00A4A0A00080606000FFFFFF000000000000000000000000000000
      0000000000004040E000F0FBFF00C0DCC000C0DCC000F0FBFF004040E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C06000C0C02000C0C02000C0C06000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000402020004020
      2000402020004020200040202000402020004020200040202000402020004020
      20004020200040202000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000F0FBFF004040E0004040E0004040E0004040E000F0FBFF000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FFFFCFFFFFFC3E007FFF8FFFFE000
      C013FDE1C003E0008009E0038FF1E0008005C0030FF0E0000000C0070FF0E000
      0240200700000000018000070000000001800007000000000240000300000000
      0000000700000000A0010007C00300009001A007C0030000C803900FC7E3E000
      E007C03FFFFFE000F81FF03FFFFFFFC3FC3FFFFF8001E007E007FFFF1FF8C003
      C003F0071FF8C0038001E0071FF8C0038181E3FF1FF8C0038181E1FF1FF8C003
      0180F03F1FF8C0030FF0F83F0000C0030FF0FC1F0000C0030180FC0F0000C003
      8181FF03038080018181FF83038000008001FFC703800000C003FFCF03800000
      E007FFFF07C0F81FFC3FFFFF8000F81F00000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 376
    Top = 288
  end
  object DS_TB: TDataSource
    DataSet = DM.FQ_tbUsuario
    Left = 176
    Top = 288
  end
end
