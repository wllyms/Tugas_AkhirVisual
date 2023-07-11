object FLogin: TFLogin
  Left = 282
  Top = 160
  Width = 537
  Height = 382
  Caption = 'LOGIN FORM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 425
    Height = 313
  end
  object Label1: TLabel
    Left = 128
    Top = 40
    Width = 150
    Height = 24
    Caption = 'LOGIN FORM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Lucida Console'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 56
    Top = 144
    Width = 103
    Height = 20
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 56
    Top = 104
    Width = 101
    Height = 20
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Edtuser: TEdit
    Left = 200
    Top = 104
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edtpass: TEdit
    Left = 200
    Top = 136
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 120
    Top = 200
    Width = 153
    Height = 49
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 384
    Top = 103
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Lenovo\OneDrive\Documents\Kuliah Uniskahhh\Semester 4\V' +
      'isual\Projectvisual\libmysql.dll'
    Left = 384
    Top = 47
  end
end
