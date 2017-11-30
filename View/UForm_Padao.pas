unit UForm_Padao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.ToolWin, Data.DB,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_Padrao = class(TForm)
    DS_TB: TDataSource;
    MainMenu1: TMainMenu;
    IrPara1: TMenuItem;
    ActionList1: TActionList;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    ActNovo: TAction;
    ActEditar: TAction;
    ActDeletar: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActPesquisar: TAction;
    ActImprimir: TAction;
    ActSair: TAction;
    Pnl_Titulo: TPanel;
    Pnl_CadBotoes: TPanel;
    Sbtn_Novo: TSpeedButton;
    Sbtn_Editar: TSpeedButton;
    Sbtn_Deletar: TSpeedButton;
    Sbtn_Salvar: TSpeedButton;
    Sbtn_Cancelar: TSpeedButton;
    Sbtn_Imprimir: TSpeedButton;
    Sbtn_Pesquisar: TSpeedButton;
    Sbtn_Sair: TSpeedButton;
    Timer1: TTimer;
    PGC_1: TPageControl;
    TBS_Cadastro: TTabSheet;
    DBGrid1: TDBGrid;
    Sair1: TMenuItem;
    TBS_Pesquisa: TTabSheet;
    Pnl_PesqCentral: TPanel;
    lb_Pesq: TLabel;
    Pnl_PesqGrid: TPanel;
    Pnl_CadCentral: TPanel;
    Btn_Filtar: TButton;
    Edt_Filtrar: TEdit;
    lb_Nun_reg: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure ActNovoUpdate(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure ActDeletarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActPesquisarExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
//    procedure TBS_PesquisaShow(Sender: TObject);
    procedure ActNovoExecute(Sender: TObject);
    procedure ActEditarUpdate(Sender: TObject);
    procedure ActDeletarUpdate(Sender: TObject);
    procedure ActSalvarUpdate(Sender: TObject);
    procedure ActCancelarUpdate(Sender: TObject);
    procedure ActImprimirUpdate(Sender: TObject);
    procedure ActSairUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
    Imodo: Integer;
    Procedure LimparTudo;
    procedure ColocarFoco(Sender: TObject);
    procedure SairFoco(Sender: TObject);
    Procedure HabilitaCampos;
    Procedure DesabilitaCampos;

  public
    { Public declarations }
  end;

var
  Frm_Padrao: TFrm_Padrao;

implementation

{$R *.dfm}

uses UDm, UTela_Inicial;
//-------------------Procedure--------------------------------------------------
procedure TFrm_Padrao.LimparTudo;
var
  I: Integer;

begin
  for I := 0 to ComponentCount -1 do
  Begin
    if (Components[i] is TEdit) then
       TEdit(Components[i]).Text := '';

  End;
    if PGC_1.ActivePage = TBS_Cadastro then
       PGC_1.ActivePage := TBS_Pesquisa;
end;


procedure TFrm_Padrao.ColocarFoco(Sender: TObject);
begin
  //Procedure Colocar em Foco
   if Sender is TDBEdit then
    TDBEdit(Sender).Color := $00E6FED8
  else if Sender is TEdit then
    TEdit(Sender).Color := $00E6FED8
  else if Sender is TDBLookupComboBox then
    TDBLookupComboBox(Sender).Color := $00E6FED8
  else if Sender is TDBComboBox then
    TDBComboBox(Sender).Color := $00E6FED8
  else if Sender is TDBMemo then
    TDBMemo(Sender).Color := $00E6FED8;
end;



procedure TFrm_Padrao.SairFoco(Sender: TObject);
begin
   //Procedure Sair de Foco
  if Sender is TDBEdit then
    TDBEdit(Sender).Color := clWindow
  else if Sender is TEdit then
    TEdit(Sender).Color := clWindow
  else if Sender is TDBLookupComboBox then
    TDBLookupComboBox(Sender).Color := clWindow
  else if Sender is TDBComboBox then
    TDBComboBox(Sender).Color := clWindow
  else if Sender is TDBMemo then
end;

procedure TFrm_Padrao.HabilitaCampos;
 Var I:Integer;
begin
  //Procedure Habilita Campos

    for I := 0 to ComponentCount -1 do
      begin
        if (Components[i] is TEdit) then
       TEdit(Components[i]).Enabled := True;
      end;
end;



procedure TFrm_Padrao.DesabilitaCampos;
Var I:Integer;
begin
  //Procedure desabilita Campos

    for I := 0 to ComponentCount -1 do
      begin
        if (Components[i] is TEdit) then
       TEdit (Components[i]).Enabled := False;
      end;
end;



//********************Fecha Procedure*******************************************


//--------------------Eventos dos Bot�es----------------------------------------




procedure TFrm_Padrao.ActNovoUpdate(Sender: TObject);
begin
 //Evento OnUpdate Bot�o Novo
  ActNovo.Enabled := DS_TB.State in [dsBrowse, dsInactive];
end;

procedure TFrm_Padrao.ActEditarUpdate(Sender: TObject);
begin
 //Configura��o Evento OnUpdate Bot�o Editar
  If (DS_TB.State in [DSBrowse]) and (not TClientDataSet(DS_TB.DataSet).IsEmpty) then
  ActEditar.Enabled := DS_TB.State in [DSBrowse];
end;


procedure TFrm_Padrao.ActDeletarUpdate(Sender: TObject);
begin
  //Evento OnUpdate Bot�o Deletar
  If (DS_TB.State in [DSBrowse]) and (not TClientDataSet(DS_TB.DataSet).IsEmpty) then
  ActDeletar.Enabled := DS_TB.State in [DSBrowse];
end;

procedure TFrm_Padrao.ActSalvarUpdate(Sender: TObject);
begin
 //Configura��o Evento OnUpdate Bot�o SALVAR
  ActSalvar.Enabled := DS_TB.State in [DSInsert, DSEdit];

end;

procedure TFrm_Padrao.ActCancelarUpdate(Sender: TObject);
begin
 //Evento OnUpdate - Cancelar S� Ativado Quando Bot�o Novo for Clicado.
  ActCancelar.Enabled := ActSalvar.Enabled = True;
end;

procedure TFrm_Padrao.ActImprimirUpdate(Sender: TObject);
begin
 //Configura��o Evento OnUpdate Bot�o Imprimir
  If (DS_TB.State in [DSBrowse]) and (not TClientDataSet(DS_TB.DataSet).IsEmpty) then
  ActImprimir.Enabled := DS_TB.State in [DSBrowse];
end;

procedure TFrm_Padrao.ActSairUpdate(Sender: TObject);
begin

end;


//********************Fecha Eventos Bot�es**************************************

//---------------------Eventos PageControl--------------------------------------


{procedure TFrm_Padrao.TBS_PesquisaShow(Sender: TObject);
begin
//Configura��o Evento OnShow TBS_PESQUISA
  PGC_1.ActivePage := TBS_Pesquisa;
  TClientDataSet(DS_TB.DataSet).Close;
  TClientDataSet(DS_TB.DataSet).Open;
end;}
//********************Fecha Eventos PageControl*********************************



//---------------------A��o Execute Bot�es--------------------------------------

 procedure TFrm_Padrao.ActNovoExecute(Sender: TObject);
begin
  // Configura��o Bot�o Novo
  Imodo := 0;
  //if PGC_1.ActivePage = TBS_Pesquisa then
  //PGC_1.ActivePage := TBS_Cadastro;

  if not TClientDataSet(DS_TB).Active then
  TClientDataSet(DS_TB.DataSet).Open;
  TClientDataSet(DS_TB.DataSet).Insert;
  PGC_1.TabIndex     := 0;
  TBS_Cadastro.TabVisible := True;
  TBS_Pesquisa.TabVisible := False;
  HabilitaCampos;
  Sbtn_Editar.Enabled:=False;
  Sbtn_Deletar.Enabled:=False;
  Sbtn_Pesquisar.Enabled:=False;
  Sbtn_Imprimir.Enabled:=False;
end;

procedure TFrm_Padrao.ActEditarExecute(Sender: TObject);
begin
 //Configura��o Bot�o Editar
  Imodo:= 1;
  if PGC_1.ActivePage = TBS_Pesquisa then
  PGC_1.ActivePage := TBS_Cadastro;
  TClientDataSet(DS_TB.DataSet).Edit;
  HabilitaCampos;
  Sbtn_Pesquisar.Enabled:=False;
  Sbtn_Imprimir.Enabled:=False;
end;


procedure TFrm_Padrao.ActDeletarExecute(Sender: TObject);
begin
  //Configura��o Bot�o Deletar
  if Application.MessageBox ('Deseja Realmente Excluir os Registros?', 'Informa��o', MB_YESNO+MB_ICONQUESTION) = mrYes  then
    Begin
      Try
        TClientDataSet(DS_TB.DataSet).Delete;
        TClientDataSet(DS_TB.DataSet).ApplyUpdates(0);
        Application.MessageBox('Registro Excluido com Sucesso!', 'Informa��o', MB_OK+MB_ICONINFORMATION);
        TClientDataSet(DS_TB.DataSet).Open;//Limpa os Registros

        Except on E: Exception do
        raise Exception.Create('Erro ao Excluir Registro ' +E.Message);

      End;
    End;
    Limpartudo;
    DesabilitaCampos;
end;

procedure TFrm_Padrao.ActSalvarExecute(Sender: TObject);
begin
   // Configura��o Bot�o Salvar
  try
  TClientDataSet(DS_TB.DataSet).Post;
  TclientDataSet(DS_TB.DataSet).ApplyUpdates(0);
    case imodo of
      1   : Application.MessageBox('Registro Atualizado com Sucesso!', 'Informa��o', MB_OK+MB_ICONINFORMATION);
      0 : Application.MessageBox('Registro Criado com Sucesso!', 'Informa��o', MB_OK+MB_ICONINFORMATION);
    end;


    LimparTudo;
    TClientDataSet(DS_TB.DataSet).Open;


    Except on E : Exception do
    raise exception.create ('Erro ao Salvar o Registro : ' + E.Message);

  end;
  PGC_1.TabIndex     := 0; //Inserido
  TBS_Cadastro.TabVisible := False; //Inserido
  TBS_Pesquisa.TabVisible := True; //Inserido
  Desabilitacampos;
end;



procedure TFrm_Padrao.ActCancelarExecute(Sender: TObject);
begin
  //Configura��o Bot�o Cancelar

  TClientDataSet(DS_TB.DataSet).Cancel;
  PGC_1.TabIndex     := 0; //Inserido
  TBS_Cadastro.TabVisible := False; //Inserido
  TBS_Pesquisa.TabVisible := True; //Inserido
  LimparTudo;
  DesabilitaCampos;
  Sbtn_Novo.Enabled:=True;
  Sbtn_Editar.Enabled:=True;
  Sbtn_Deletar.Enabled:=True;
  Sbtn_Pesquisar.Enabled:=True;
  Sbtn_Imprimir.Enabled:=True;
end;

 procedure TFrm_Padrao.ActPesquisarExecute(Sender: TObject);
begin
 //Configura��o Bot�o Pesquisar
  PGC_1.ActivePage := TBS_Pesquisa;
  TClientDataSet(DS_TB.DataSet).Close;
  TClientDataSet(DS_TB.DataSet).Open;
  Edt_Filtrar.Enabled:=True;
  Edt_Filtrar.SetFocus;
end;



procedure TFrm_Padrao.ActImprimirExecute(Sender: TObject);
begin
 //Configura��o bot�o Imprimir
    Application.MessageBox('Em Desenvolvimento Man�!!', 'Informa��o', MB_OK+MB_ICONINFORMATION)
end;



procedure TFrm_Padrao.ActSairExecute(Sender: TObject);
begin
 //Configura��o Bot�o Sair
  TClientDataSet(DS_TB.DataSet).Cancel;
  TClientDataSet(DS_TB.DataSet).Close;
  Close;
end;



//********************Fecha A��o Execute Bot�es*********************************


//----------------------Eventos Form--------------------------------------------


procedure TFrm_Padrao.FormClose(Sender: TObject; var Action: TCloseAction);

begin
  //Evento OnClose, Fecha o Form.
  TClientDataSet(DS_TB.DataSet).Cancel;
  TClientDataSet(DS_TB.DataSet).Close;

end;

procedure TFrm_Padrao.FormCreate(Sender: TObject);
//
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
    begin
      TDBEdit(Components[I]).OnEnter  := ColocarFoco;
      TDBEdit(Components[I]).OnExit   := SairFoco;
    end
    Else
    if Components[I] is TEdit then
    begin
      TEdit(Components[I]).OnEnter  := ColocarFoco;
      TEdit(Components[I]).OnExit   := SairFoco;
    end
    else
    if Components[I] is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Components[I]).OnEnter := ColocarFoco;
      TDBLookupComboBox(Components[I]).OnExit  := SairFoco;
    end
    else
    if Components[I] is TDBComboBox then
    begin
      TDBComboBox(Components[I]).OnEnter := ColocarFoco;
      TDBComboBox(Components[I]).OnExit  := SairFoco;
    end
    else
    if Components[I] is TDBMemo then
    begin
      TDBMemo(Components[I]).OnEnter   := ColocarFoco;
      TDBMemo(Components[I]).OnExit    := SairFoco;
    end
  end;
  DesabilitaCampos;
  PGC_1.TabIndex     := 0; //Inserido
  TBS_Cadastro.TabVisible := False; //Inserido
  TBS_Pesquisa.TabVisible := True; //Inserido
end;

procedure TFrm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
//Configura��o Evento OnKeyPress - Sair da Tela pelo Bot�o ESC
  If Key = #27 then
      Close;
 //Ap�s Clicar no Enter o Cursor Avan�a para o pr�ximo Edit
  if Key = #13 then
    begin
      Key := #0;
      self.Perform(WM_NEXTDLGCTL,0,0);
    end;
end;



//********************Fecha Eventos Form****************************************

//----------------------Main Menu-----------------------------------------------
procedure TFrm_Padrao.Sair1Click(Sender: TObject);
begin
  //Configura��o MainMenu Bot�o -> Sair
  TClientDataSet(DS_TB.DataSet).Cancel;
  TClientDataSet(DS_TB.DataSet).Close;
  Close;
end;

//********************Fecha Main Menu*******************************************

//--------------------StatusBar-------------------------------------------------
procedure TFrm_Padrao.Timer1Timer(Sender: TObject);
begin
  //Configura��o StatusBar
  StatusBar1.Panels[2].Text := FormatDateTime('DDDD', Now);
  StatusBar1.Panels[3].Text := DateTimeTostr(Now);
end;
//********************Fecha StatusBar*******************************************
end.