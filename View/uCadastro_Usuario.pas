unit uCadastro_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uForm_Padrao, Data.DB, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrm_Cadastro_Usuario = class(TFrm_Padrao)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    lb_Nome: TLabel;
    lb_SobreNome: TLabel;
    lb_Data_Nascimento: TLabel;
    lb_Login: TLabel;
    lb_Senha: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Usuario: TFrm_Cadastro_Usuario;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

end.