unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet, Grids, DBGrids;

type
  TFLutama = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Zriwayat: TZQuery;
    ZConnection2: TZConnection;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    frxDBDataset3: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLutama: TFLutama;
  id: string;
  nm: string;

implementation

{$R *.dfm}

procedure TFLutama.Button1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TFLutama.DBGrid1CellClick(Column: TColumn);
begin


 // Laporan Prestasi

end;

procedure TFLutama.Button2Click(Sender: TObject);
begin
frxReport2.ShowReport();
end;

end.
