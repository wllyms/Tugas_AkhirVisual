unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TFortu = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    EdtNik: TEdit;
    EdtNama: TEdit;
    EdtPekerjaan: TEdit;
    EdtAlamat: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZQuery1: TZQuery;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    EdtTelepon: TEdit;
    EdtAgama: TEdit;
    DBGrid1: TDBGrid;
    CbbPendidikan: TComboBox;
    CbbJk: TComboBox;
    CbbStatus: TComboBox;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fortu: TFortu;
  id: string;

implementation

{$R *.dfm}

procedure TFortu.btn2Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into ortu values(null,"'+EdtNik.Text+'","'+EdtNama.Text+'","'+CbbPendidikan.Text+'","'+EdtPekerjaan.Text+'","'+EdtAlamat.Text+'","'+EdtTelepon.Text+'","'+EdtAgama.Text+'","'+CbbJk.Text+'","'+CbbStatus.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFortu.btn3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update ortu set nik="'+EdtNik.Text+'", nama="'+EdtNama.Text+'",pendidikan="'+CbbPendidikan.Text+'",pekerjaan="'+EdtPekerjaan.Text+'",alamat="'+EdtAlamat.Text+'",telp="'+EdtTelepon.Text+'",agama="'+EdtAgama.Text+'",jk="'+CbbJk.Text+'",status="'+CbbStatus.Text+'" where ortu_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFortu.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  EdtNik.Text:=ZQuery1.Fields[1].AsString;
  EdtNama.Text:=ZQuery1.Fields[2].AsString;
  CbbPendidikan.Text:=ZQuery1.Fields[3].AsString;
  EdtPekerjaan.Text:=ZQuery1.Fields[4].AsString;
  EdtTelepon.Text:=ZQuery1.Fields[5].AsString;
  EdtAlamat.Text:=ZQuery1.Fields[6].AsString;
  EdtAgama.Text:=ZQuery1.Fields[7].AsString;
  CbbJk.Text:=ZQuery1.Fields[8].AsString;
  CbbStatus.Text:=ZQuery1.Fields[9].AsString;
end;

procedure TFortu.btn4Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from ortu where ortu_id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from ortu');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFortu.btn5Click(Sender: TObject);
begin
 EdtNik.Clear;
  EdtNama.Clear;
  CbbPendidikan.Clear;
  EdtPekerjaan.Clear;
  EdtAlamat.Clear;
  EdtTelepon.Clear;
  EdtAgama.Clear;
  CbbJK.Clear;
  CbbStatus.Clear;
end;

end.
