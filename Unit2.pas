unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, ComCtrls;

type
  TFsiswa = class(TForm)
    Label3: TLabel;
    EdtNis: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdtNisn: TEdit;
    EdtNama_siswa: TEdit;
    EdtNik: TEdit;
    EdtTempat_lahir: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdtHp: TEdit;
    EdtTelepon: TEdit;
    EdtAlamat: TEdit;
    EdtWali_kelas: TEdit;
    Label1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    CbbJkelamin: TComboBox;
    CbbTingkat_kelas: TComboBox;
    CbbJurusan: TComboBox;
    Dtime: TDateTimePicker;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    CbbStatus: TComboBox;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsiswa: TFsiswa;
  id :string;
implementation

{$R *.dfm}

procedure TFsiswa.btn2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tabel_siswa values(null,"'+EdtNis.Text+'","'+EdtNisn.Text+'","'+EdtNama_siswa.Text+'","'+EdtNik.Text+'","'+EdtTempat_lahir.Text+'","'+formatdatetime('yyyy-mm-dd',Dtime.Date)+'","'+CbbJkelamin.Text+'","'+CbbTingkat_kelas.Text+'","'+CbbJurusan.Text+'","'+EdtWali_kelas.Text+'","'+EdtAlamat.Text+'","'+EdtTelepon.Text+'","'+EdtHp.Text+'","'+EdtStatus.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TFsiswa.btn3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tabel_siswa set nis="'+EdtNis.Text+'", nisn="'+EdtNisn.Text+'", nama_siswa="'+EdtNama_siswa.Text+'", nik="'+EdtNik.Text+'", tempat_lahir="'+EdtTempat_lahir.Text+'",jk="'+CbbJKelamin.Text+'",tingkat_kelas="'+CbbTingkat_kelas.Text+'",jurusan="'+CbbJurusan.Text+'",wali_kelas="'+EdtWali_kelas.Text+'",alamat="'+EdtAlamat.Text+'",telepon="'+EdtTelepon.Text+'",hp="'+EdtHp.Text+'",status="'+EdtStatus.Text+'" where siswa_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TFsiswa.btn4Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tabel_siswa where siswa_id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TFsiswa.DBGrid1CellClick(Column: TColumn);
begin
id:=ZQuery1.Fields[0].AsString;
  EdtNis.Text:=ZQuery1.Fields[1].AsString;
  EdtNisn.Text:=ZQuery1.Fields[2].AsString;
  EdtNama_siswa.Text:=ZQuery1.Fields[3].AsString;
  EdtNik.Text:=ZQuery1.Fields[4].AsString;
  EdtTempat_lahir.Text:=ZQuery1.Fields[5].AsString;
  Dtime.date:=ZQuery1.Fields[6].AsDateTime;
  CbbJKelamin.Text:=ZQuery1.Fields[7].AsString;
  CbbTingkat_kelas.Text:=ZQuery1.Fields[8].AsString;
  CbbJurusan.Text:=ZQuery1.Fields[9].AsString;
  EdtWali_kelas.Text:=ZQuery1.Fields[10].AsString;
  EdtAlamat.Text:=ZQuery1.Fields[11].AsString;
  EdtTelepon.Text:=ZQuery1.Fields[12].AsString;
  EdtHp.Text:=ZQuery1.Fields[13].AsString;
  EdtStatus.Text:=ZQuery1.Fields[14].AsString;
end;

end.
