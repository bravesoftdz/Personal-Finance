unit uCadastro_Banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uForm_Padrao, Data.DB, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrm_Cadastro_Banco = class(TFrm_Padrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Banco: TFrm_Cadastro_Banco;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uTela_Principal;

end.
