unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls;

type
  TFkelas = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    CbbJenis: TComboBox;
    CbbJurusan: TComboBox;
    CbbNama: TComboBox;
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
  Fkelas: TFkelas;
  id : string;

implementation

{$R *.dfm}

procedure TFkelas.btn2Click(Sender: TObject);
begin
   ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into kelas values(null,"'+CbbNama.Text+'","'+CbbJenis.Text+'","'+CbbJurusan.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');

end;

procedure TFkelas.btn3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update kelas set nama="'+CbbNama.Text+'",jenis="'+CbbJenis.Text+'",jurusan="'+CbbJurusan.Text+'" where kelas_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFkelas.btn4Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from kelas where ortu_id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from kelas');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFkelas.btn5Click(Sender: TObject);
begin
CbbNama.Clear;
  CbbJenis.Clear;
  CbbJurusan.Clear;
end;

procedure TFkelas.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  CbbNama.Text:=ZQuery1.Fields[1].AsString;
  CbbJenis.Text:=ZQuery1.Fields[2].AsString;
  CbbJurusan.Text:=ZQuery1.Fields[3].AsString;
end;

end.
