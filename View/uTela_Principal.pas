unit uTela_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, VclTee.TeeGDIPlus, Data.DB,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.Series,
  Vcl.StdCtrls;

type
  TFrm_Tela_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Ferramentas1: TMenuItem;
    Ajuda1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Manuteno1: TMenuItem;
    Usurios1: TMenuItem;
    Banco1: TMenuItem;
    Calculadora1: TMenuItem;
    Pnl_Barra_Titulo: TPanel;
    StatusBar1: TStatusBar;
    Pnl_Botoes: TPanel;
    Sbtn_Receita: TSpeedButton;
    Sbtn_Despesa: TSpeedButton;
    Sbtn_Relatorio: TSpeedButton;
    Sbtn_investimento: TSpeedButton;
    Sbtn_Poupanca: TSpeedButton;
    Pnl_Graficos: TPanel;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    Timer1: TTimer;
    BitBtn_Form_Padrao: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure BitBtn_Form_PadraoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tela_Principal: TFrm_Tela_Principal;

implementation

{$R *.dfm}

uses uForm_Padrao, uCadastro_Banco, uDM, uFuncoes, uCadastro_Usuario;


//----------------------Main Menu-----------------------------------------------
procedure TFrm_Tela_Principal.Sair1Click(Sender: TObject);
begin
//Configura��o Bot�o MainMenu -> SAIR
  if Application.MessageBox('Deseja Sair do Sistema?', 'Informa��o', MB_YESNO+MB_ICONQUESTION) = mrYes then

  Application.Terminate
  Else
    Abort;
end;


//********************Close Main Menu*******************************************




//-------------------------Events-----------------------------------------------


procedure TFrm_Tela_Principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Event configuration  Onclose
  if Application.MessageBox('Deseja Sair do Sistema?', 'Informa��o', MB_YESNO+MB_ICONQUESTION) = mrYes then

  Application.Terminate
  Else
    Abort;
end;

procedure TFrm_Tela_Principal.FormKeyPress(Sender: TObject; var Key: Char);
begin
 //Event Configuration OnKeyPress - Sair da Tela pelo Bot�o ESC
  if Key = #27 then
  Close;
end;





//********************Close Events Form*****************************************




//---------------------Button Execute-------------------------------------------

 procedure TFrm_Tela_Principal.BitBtn1Click(Sender: TObject);
begin
//Bot�o Abre Form Cadastro banco
    Frm_cadastro_banco:= TFrm_cadastro_banco.Create(nil);
    Try
      Frm_cadastro_banco.ShowModal
    Finally
      FreeAndNil(Frm_cadastro_banco);
    end;

end;

procedure TFrm_Tela_Principal.BitBtn2Click(Sender: TObject);
begin
  //Bot�o Abre Form Cadastro Usu�rios
    Frm_cadastro_usuario:= TFrm_cadastro_usuario.Create(nil);
    Try
      Frm_cadastro_usuario.ShowModal
    Finally
      FreeAndNil(Frm_cadastro_usuario);
    end;
end;

procedure TFrm_Tela_Principal.BitBtn_Form_PadraoClick(Sender: TObject);
begin
 //Bot�o Abre Form Cadastro Usu�rios
    Frm_Padrao:= TFrm_Padrao.Create(nil);
    Try
      Frm_Padrao.ShowModal
    Finally
      FreeAndNil(Frm_Padrao);
    end;
end;



//********************Close Button Execute**************************************



//------------------------Settings StatusBar------------------------------------
procedure TFrm_Tela_Principal.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels [2].Text :=FormatDateTime('DDDD', Now);// para data
  Statusbar1.Panels [3].Text := DateTimeToStr(now);//para hora
end;
//*********************Close StatusBar******************************************
end.
