unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TFortu = class(TForm)
    Label2: TLabel;
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
    EdtOrtu: TEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fortu: TFortu;

implementation

{$R *.dfm}

end.
