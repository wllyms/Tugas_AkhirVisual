unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TFPsiswa = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtSiswa: TEdit;
    EdtPoin: TEdit;
    EdtWali: TEdit;
    EdtKelas: TEdit;
    EdtJenis: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    CbbSemester: TComboBox;
    CbbStatus: TComboBox;
    DttTanggal: TDateTimePicker;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ZQuery2: TZQuery;
    DataSource4: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    Label13: TLabel;
    ZQuery4: TZQuery;
    Label11: TLabel;
    EdtNP: TEdit;
    DBGrid3: TDBGrid;
    procedure btn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPsiswa: TFPsiswa;
  id: string;

implementation

{$R *.dfm}

procedure TFPsiswa.btn2Click(Sender: TObject);
begin
ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('insert into riwayat_poinn values(null,"'+EdtSiswa.Text+'","'+EdtKelas.Text+'","'+EdtWali.Text+'","'+EdtJenis.Text+'","'+EdtNP.Text+'","'+EdtPoin.Text+'","'+FormatDateTime('yyyy-mm-dd',DttTanggal.Date)+'","'+CbbSemester.Text+'","'+CbbStatus.Text+'")');
  ZQuery4.ExecSQL ;

  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('select * from riwayat_poinn');
  ZQuery4.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFPsiswa.DBGrid1CellClick(Column: TColumn);
begin
  EdtSiswa.Text:=ZQuery1.Fields[3].AsString;
  EdtKelas.Text:=ZQuery1.Fields[8].AsString;
  EdtWali.Text:=ZQuery1.Fields[10].AsString;
end;

procedure TFPsiswa.DBGrid2CellClick(Column: TColumn);
begin
EdtJenis.Text:=ZQuery2.Fields[1].AsString;
  EdtNP.Text:=ZQuery2.Fields[2].AsString;
  EdtPoin.Text:=ZQuery2.Fields[3].AsString;
end;

procedure TFPsiswa.btn3Click(Sender: TObject);
begin
ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('update riwayat_poinn set nama_siswa="'+EdtSiswa.Text+'",kelas="'+EdtKelas.Text+'",wali_kelas="'+EdtWali.Text+'",jenis="'+EdtJenis.Text+'",nama_poin="'+EdtNP.Text+'",poin="'+EdtPoin.Text+'",tangal="'+FormatDateTime('yyyy-mm-dd',DttTanggal.Date)+'",semester="'+CbbSemester.Text+'",status="'+CbbStatus.Text+'" where id_riwayat="'+id+'"');
  ZQuery4.ExecSQL;

  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('select * from riwayat_poinn');
  ZQuery4.Open;
  Showmessage('DATA BERHASIL DI EDIT');

end;

procedure TFPsiswa.btn4Click(Sender: TObject);
begin
ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('delete from riwayat_poinn where id_riwayat="'+id+'"');
  ZQuery4.ExecSQL;
  ZQuery4.SQL.Clear;
  ZQuery4.SQL.Add('select * from riwayat_poinn ');
  ZQuery4.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFPsiswa.btn5Click(Sender: TObject);
begin
EdtSiswa.Clear;
  EdtKelas.Clear;
  EdtWali.Clear;
  EdtJenis.Clear;
  EdtNp.Clear;
  EdtPoin.Clear;
  CbbSemester.Clear;
  CbbStatus.Clear;
end;

procedure TFPsiswa.DBGrid3CellClick(Column: TColumn);
begin
id:=ZQuery4.Fields[0].AsString;
  EdtSiswa.Text:=ZQuery4.Fields[1].AsString;
  EdtKelas.Text:=ZQuery4.Fields[2].AsString;
  EdtWali.Text:=ZQuery4.Fields[3].AsString;
  EdtJenis.Text:=ZQuery4.Fields[4].AsString;
  EdtNP.Text:=ZQuery4.Fields[5].AsString;
  EdtPoin.Text:=ZQuery4.Fields[6].AsString;
  CbbSemester.Text:=ZQuery4.Fields[8].AsString;
  CbbStatus.Text:=ZQuery4.Fields[9].AsString;
end;

end.
