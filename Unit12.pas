unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFLogin = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtUser: TEdit;
    EdtPass: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses
Unit13,Unit1 ;

{$R *.dfm}

procedure TFLogin.Button1Click(Sender: TObject);
begin
if EdtUser.Text='' then
  begin
    MessageDlg('Nama Username dan Password Harus Di isi!',mtInformation,[mbOK],0);
  end
  else
  if EdtPass.text='' then
  begin
    MessageDlg('Nama Username dan Password Harus Di isi!',mtInformation,[mbOK],0);
  end

  else
    begin
      with dm.ZQuery1 do
      begin
          Close;
          SQL.Clear;
          SQL.Text:='select * from user where username='+QuotedStr(EdtUser.Text);
          Open;
      end;

      if dm.ZQuery1.RecordCount = 0 then
      begin
        MessageDlg('Username dan Password Harus Di isi!',mtInformation,[mbOK],0);
        EdtUser.Text:='';
        EdtPass.Text:='';
        EdtUser.SetFocus;
        Close;
      end
      else
      if dm.ZQuery1.FieldByName('password').AsString <> EdtPass.Text then
      begin
        MessageDlg('Username Password yang anda masukkan salah !',mtWarning,[mbOK],0);
        EdtUser.Text:='';
        EdtPass.Text:='';
        EdtUser.SetFocus;
      end
      else
      begin
        MessageDlg('Berhasil Login',mtInformation,[mbOK],0);
          if dm.ZQuery1.FieldByName('status').AsString='Siswa' then
          begin
              Form1.Show;
              Form1.Button1.Enabled:=False;
              Form1.Button2.Enabled:=False;
              Form1.Button3.Enabled:=False;
              Form1.Button4.Enabled:=False;
              Form1.Button5.Enabled:=False;
              Form1.Button6.Enabled:=False;
              EdtUser.Text:='';
              EdtPass.Text:='';
            end
        else
        if dm.ZQuery1.FieldByName('status').AsString='Guru' then
          begin
              Form1.Show;
              EdtUser.Text:='';
              EdtPass.Text:='';
            end
        else
          begin
              Form1.Show;
              EdtUser.Text:='';
              EdtPass.Text:='';
            end
      end;
    end;
end;

end.
