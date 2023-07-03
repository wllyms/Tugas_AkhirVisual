unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls;

type
  TFpoin = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    EdtNama: TEdit;
    EdtPoin: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Label2: TLabel;
    CbbPoin: TComboBox;
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
  Fpoin: TFpoin;
   id: string;
implementation

{$R *.dfm}

procedure TFpoin.btn2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into data_poin values(null,"'+CbbPoin.Text+'","'+EdtNama.Text+'","'+EdtPoin.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from data_poin');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFpoin.btn3Click(Sender: TObject);
begin
ZQuery1.SQL.Add('update data_poin set jenis_poin="'+CbbPoin.Text+'", nama_poin="'+EdtNama.Text+'",point="'+EdtPoin.Text+'" where id_poin="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from data_poin');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');

end;

procedure TFpoin.btn4Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from data_poin where id_poin="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from data_poin');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');

end;

procedure TFpoin.btn5Click(Sender: TObject);
begin
CbbPoin.Clear;
EdtNama.Clear;
  EdtPoin.Clear;

end;

procedure TFpoin.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
CbbPoin.Text:=ZQuery1.Fields[1].AsString;
  EdtNama.Text:=ZQuery1.Fields[2].AsString;
  EdtPoin.Text:=ZQuery1.Fields[3].AsString;

end;

end.
 