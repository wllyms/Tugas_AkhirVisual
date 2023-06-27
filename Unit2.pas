unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, ComCtrls;

type
  TFsiswa = class(TForm)
    Label3: TLabel;
    Edt2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edt3: TEdit;
    Edt4: TEdit;
    Edt5: TEdit;
    Edt6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edt10: TEdit;
    Edt9: TEdit;
    Edt8: TEdit;
    Edt7: TEdit;
    Label1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    Cbb1: TComboBox;
    Cbb2: TComboBox;
    Cbb3: TComboBox;
    Dtime: TDateTimePicker;
    Edt11: TEdit;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    procedure btn2Click(Sender: TObject);
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
  ZQuery1.SQL.Add('insert into tabel_siswa values(null,"'+Edt2.Text+'","'+Edt3.Text+'","'+Edt4.Text+'","'+Edt5.Text+'","'+Edt6.Text+'","'+formatdatetime('yyyy-mm-dd',Dtime.Date)+'","'+Cbb1.Text+'","'+Cbb2.Text+'","'+Cbb3.Text+'","'+Edt7.Text+'","'+Edt8.Text+'","'+Edt9.Text+'","'+Edt10.Text+'","'+Edt11.Text+'")');
  ZQuery1.ExecSQL ;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

end.
