object Fkelas: TFkelas
  Left = 192
  Top = 117
  Width = 975
  Height = 540
  Caption = 'FORM KELAS'
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
    Left = 80
    Top = 112
    Width = 63
    Height = 22
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 160
    Width = 53
    Height = 22
    Caption = 'JENIS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 208
    Width = 92
    Height = 22
    Caption = 'JURUSAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 200
    Top = 32
    Width = 207
    Height = 25
    Caption = 'INPUT DATA KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn2: TButton
    Left = 120
    Top = 260
    Width = 97
    Height = 49
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 260
    Width = 97
    Height = 49
    Caption = 'Edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 339
    Top = 260
    Width = 97
    Height = 49
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 451
    Top = 260
    Width = 105
    Height = 49
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn5Click
  end
  object DBGrid1: TDBGrid
    Left = 83
    Top = 344
    Width = 798
    Height = 109
    DataSource = DataSource1
    TabOrder = 4
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
        FieldName = 'kelas_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID KELAS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA'
        Width = 160
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis'
        Title.Alignment = taCenter
        Title.Caption = 'JENIS'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Title.Caption = 'JURUSAN'
        Width = 100
        Visible = True
      end>
  end
  object CbbJenis: TComboBox
    Left = 312
    Top = 151
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'PAGI'
      'SIANG')
  end
  object CbbJurusan: TComboBox
    Left = 312
    Top = 199
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'IPA'
      'IPS')
  end
  object CbbNama: TComboBox
    Left = 312
    Top = 111
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'X'
      'XI'
      'XII')
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 648
    Top = 247
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
    Left = 648
    Top = 191
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 696
    Top = 247
  end
end
