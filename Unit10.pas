unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TFLutama = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ZQuery1: TZQuery;
    ZConnection2: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLutama: TFLutama;

implementation

{$R *.dfm}

end.