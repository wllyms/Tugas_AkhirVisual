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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLutama: TFLutama;

implementation

{$R *.dfm}

procedure TFLutama.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
