object FPsiswa: TFPsiswa
  Left = 192
  Top = 117
  Width = 1044
  Height = 540
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
    Width = 100
    Height = 24
    Caption = 'ID SISWA'
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
    Width = 85
    Height = 24
    Caption = 'ID POIN'
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
    Width = 167
    Height = 24
    Caption = 'ID WALI KELAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calisto MT'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 64
    Top = 256
    Width = 102
    Height = 24
    Caption = 'ID KELAS'
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
    Top = 296
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
    Top = 336
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
    Top = 376
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
  object EdtNik: TEdit
    Left = 296
    Top = 96
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object EdtNama: TEdit
    Left = 296
    Top = 136
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object EdtTelepon: TEdit
    Left = 296
    Top = 176
    Width = 268
    Height = 21
    TabOrder = 2
  end
  object EdtAgama: TEdit
    Left = 296
    Top = 256
    Width = 268
    Height = 21
    TabOrder = 3
  end
  object EdtPekerjaan: TEdit
    Left = 296
    Top = 216
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 296
    Top = 336
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'GANJIL'
      'GENAP')
  end
  object ComboBox3: TComboBox
    Left = 296
    Top = 376
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'PRESTASI'
      'PELANGGARAN')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 296
    Top = 296
    Width = 265
    Height = 21
    Date = 45110.940909490740000000
    Time = 45110.940909490740000000
    TabOrder = 7
  end
end
