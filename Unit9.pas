unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TFPsiswa = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtNik: TEdit;
    EdtNama: TEdit;
    EdtTelepon: TEdit;
    EdtAgama: TEdit;
    EdtPekerjaan: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DateTimePicker1: TDateTimePicker;
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
