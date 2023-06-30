program MENU_UTAMA;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Fsiswa},
  Unit3 in 'Unit3.pas' {Fortu},
  Unit4 in 'Unit4.pas' {Fkelas},
  Unit5 in 'Unit5.pas' {Fwali};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFsiswa, Fsiswa);
  Application.CreateForm(TFortu, Fortu);
  Application.CreateForm(TFkelas, Fkelas);
  Application.CreateForm(TFwali, Fwali);
  Application.Run;
end.
