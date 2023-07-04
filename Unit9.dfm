object FPsiswa: TFPsiswa
  Left = 537
  Top = 183
  Width = 1044
  Height = 712
  Caption = 'FORM POIN SISWA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 64
    Top = 96
    Width = 144
    Height = 24
    Caption = 'NAMA SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 136
    Width = 72
    Height = 24
    Caption = 'KELAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 64
    Top = 176
    Width = 137
    Height = 24
    Caption = 'WALI KELAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 64
    Top = 288
    Width = 55
    Height = 24
    Caption = 'POIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 64
    Top = 216
    Width = 60
    Height = 24
    Caption = 'JENIS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 328
    Top = 32
    Width = 204
    Height = 24
    Caption = 'INPUT POIN SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 328
    Width = 185
    Height = 24
    Caption = 'TANGGAL INPUT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 64
    Top = 368
    Width = 115
    Height = 24
    Caption = 'SEMESTER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 408
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
  object Label10: TLabel
    Left = 664
    Top = 488
    Width = 65
    Height = 13
    Caption = 'PILIH SISWA'
  end
  object Label13: TLabel
    Left = 448
    Top = 528
    Width = 56
    Height = 13
    Caption = 'PILIH POIN'
  end
  object Label11: TLabel
    Left = 64
    Top = 248
    Width = 129
    Height = 24
    Caption = 'NAMA POIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object EdtSiswa: TEdit
    Left = 296
    Top = 96
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object EdtPoin: TEdit
    Left = 296
    Top = 288
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object EdtWali: TEdit
    Left = 296
    Top = 176
    Width = 268
    Height = 21
    TabOrder = 2
  end
  object EdtKelas: TEdit
    Left = 296
    Top = 136
    Width = 268
    Height = 21
    TabOrder = 3
  end
  object EdtJenis: TEdit
    Left = 296
    Top = 216
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object CbbSemester: TComboBox
    Left = 296
    Top = 368
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'GANJIL'
      'GENAP')
  end
  object CbbStatus: TComboBox
    Left = 296
    Top = 408
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'AKTIF'
      'TIDAK AKTIF')
  end
  object DttTanggal: TDateTimePicker
    Left = 296
    Top = 328
    Width = 265
    Height = 21
    Date = 45110.940909490740000000
    Time = 45110.940909490740000000
    TabOrder = 7
  end
  object btn2: TButton
    Left = 56
    Top = 452
    Width = 97
    Height = 49
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 168
    Top = 452
    Width = 97
    Height = 49
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 280
    Top = 452
    Width = 97
    Height = 49
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 392
    Top = 452
    Width = 105
    Height = 49
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = btn5Click
  end
  object DBGrid1: TDBGrid
    Left = 664
    Top = 512
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nis'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nisn'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tempat_lahir'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal_lahir'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jk'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tingkat_kelas'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali_kelas'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telepon'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hp'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 56
    Top = 520
    Width = 577
    Height = 120
    DataSource = DataSource2
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_poin'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis_poin'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_poin'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'point'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object EdtNP: TEdit
    Left = 296
    Top = 248
    Width = 265
    Height = 21
    TabOrder = 14
  end
  object DBGrid3: TDBGrid
    Left = 584
    Top = 120
    Width = 320
    Height = 120
    DataSource = DataSource4
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
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
    Left = 1112
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 680
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 640
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 640
    Top = 56
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from data_poin')
    Params = <>
    Left = 680
    Top = 56
  end
  object DataSource4: TDataSource
    DataSet = ZQuery4
    Left = 560
    Top = 56
  end
  object ZQuery4: TZQuery
    Connection = ZConnection1
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'select * from riwayat_poinn')
    Params = <>
    Left = 600
    Top = 56
  end
end
