unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls;

type
  TFprestasi = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    EdtPrestasi: TEdit;
    EdtPoint: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprestasi: TFprestasi;
  id: string;

implementation

{$R *.dfm}

procedure TFprestasi.btn2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into prestasi values(null,"'+EdtPrestasi.Text+'","'+EdtPoint.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from prestasi');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFprestasi.btn3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update prestasi set jenis_prestasi="'+EdtPrestasi.Text+'", point="'+EdtPoint.Text+'" where id_prestasi="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from prestasi');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFprestasi.btn4Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from prestasi where id_prestasi="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from prestasi');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFprestasi.btn5Click(Sender: TObject);
begin
EdtPrestasi.Clear;
  EdtPoint.Clear;

end;

procedure TFprestasi.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  EdtPrestasi.Text:=ZQuery1.Fields[1].AsString;
  EdtPoint.Text:=ZQuery1.Fields[2].AsString;
end;

end.
