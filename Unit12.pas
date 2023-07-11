unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFLogin = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edtuser: TEdit;
    Edtpass: TEdit;
    Button1: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

end.
