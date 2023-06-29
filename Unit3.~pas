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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fortu: TFortu;

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

end.
