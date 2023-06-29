object Fortu: TFortu
  Left = 201
  Top = 158
  Width = 1044
  Height = 725
  Caption = 'FORM ORANG TUA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 64
    Top = 128
    Width = 93
    Height = 24
    Caption = 'ID ORTU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 168
    Width = 41
    Height = 24
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 216
    Width = 69
    Height = 24
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 264
    Width = 143
    Height = 24
    Caption = 'PENDIDIKAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 64
    Top = 312
    Width = 130
    Height = 24
    Caption = 'PEKERJAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 616
    Top = 120
    Width = 96
    Height = 24
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 616
    Top = 168
    Width = 89
    Height = 24
    Caption = 'TELPON'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 616
    Top = 216
    Width = 85
    Height = 24
    Caption = 'AGAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 616
    Top = 264
    Width = 170
    Height = 24
    Caption = 'JENIS KELAMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 616
    Top = 312
    Width = 85
    Height = 24
    Caption = 'STATUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 504
    Top = 32
    Width = 263
    Height = 25
    Caption = 'INPUT DATA ORANG TUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtOrtu: TEdit
    Left = 296
    Top = 120
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object EdtNik: TEdit
    Left = 296
    Top = 168
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object EdtNama: TEdit
    Left = 296
    Top = 216
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object EdtPekerjaan: TEdit
    Left = 296
    Top = 312
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object EdtAlamat: TEdit
    Left = 848
    Top = 120
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object btn2: TButton
    Left = 352
    Top = 360
    Width = 97
    Height = 49
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btn3: TButton
    Left = 472
    Top = 360
    Width = 97
    Height = 49
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btn4: TButton
    Left = 592
    Top = 360
    Width = 97
    Height = 49
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object btn5: TButton
    Left = 712
    Top = 360
    Width = 105
    Height = 49
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object EdtTelepon: TEdit
    Left = 848
    Top = 168
    Width = 265
    Height = 21
    TabOrder = 9
  end
  object EdtAgama: TEdit
    Left = 848
    Top = 216
    Width = 265
    Height = 21
    TabOrder = 10
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 432
    Width = 1057
    Height = 369
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object CbbPendidikan: TComboBox
    Left = 296
    Top = 263
    Width = 265
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 12
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'SEDERAJAT')
  end
  object CbbJk: TComboBox
    Left = 849
    Top = 264
    Width = 265
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 13
    Items.Strings = (
      'LAKI-LAKI'
      'PEREMPUAN')
  end
  object CbbStatus: TComboBox
    Left = 849
    Top = 306
    Width = 266
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      'KANDUNG'
      'WALI')
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 1176
    Top = 176
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Lenovo\OneDrive\Documents\Kuliah Uniskahhh\Semester 4\V' +
      'isual\Projectvisual\libmysql.dll'
    Left = 1176
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 1240
    Top = 120
  end
end
