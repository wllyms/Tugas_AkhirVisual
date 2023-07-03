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
    EdtOrtu: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    CbbSemester: TComboBox;
    CbbStatus: TComboBox;
    DDttTanggal: TDateTimePicker;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ZQuery2: TZQuery;
    DataSource3: TDataSource;
    ZQuery3: TZQuery;
    DataSource4: TDataSource;
    ZQuery4: TZQuery;
    DataSource5: TDataSource;
    ZQuery5: TZQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBGrid6: TDBGrid;
    DataSource6: TDataSource;
    ZQuery6: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPsiswa: TFPsiswa;

implementation

{$R *.dfm}

end.
