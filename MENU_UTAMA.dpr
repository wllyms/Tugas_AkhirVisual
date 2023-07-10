program MENU_UTAMA;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Fsiswa},
  Unit3 in 'Unit3.pas' {Fortu},
  Unit4 in 'Unit4.pas' {Fkelas},
  Unit5 in 'Unit5.pas' {Fwali},
  Unit6 in 'Unit6.pas' {Fprestasi},
  Unit7 in 'Unit7.pas' {Fpelanggaran},
  Unit8 in 'Unit8.pas' {Fpoin},
  Unit9 in 'Unit9.pas' {FPsiswa},
  Unit10 in 'Unit10.pas' {FLutama},
  Unit11 in 'Unit11.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFsiswa, Fsiswa);
  Application.CreateForm(TFortu, Fortu);
  Application.CreateForm(TFkelas, Fkelas);
  Application.CreateForm(TFwali, Fwali);
  Application.CreateForm(TFprestasi, Fprestasi);
  Application.CreateForm(TFpelanggaran, Fpelanggaran);
  Application.CreateForm(TFpoin, Fpoin);
  Application.CreateForm(TFPsiswa, FPsiswa);
  Application.CreateForm(TFLutama, FLutama);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
