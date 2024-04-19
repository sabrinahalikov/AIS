object FormZayavkaTwo: TFormZayavkaTwo
  Left = 595
  Top = 234
  Caption = #1040#1075#1077#1085#1090#1089#1090#1074#1086' '#1053#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
  ClientHeight = 579
  ClientWidth = 408
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Montserrat'
  Font.Style = []
  TextHeight = 27
  object LabelZOne: TLabel
    Left = 136
    Top = 16
    Width = 119
    Height = 42
    Caption = #1047#1072#1103#1074#1082#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
  end
  object LabelZTwo: TLabel
    Left = 8
    Top = 111
    Width = 45
    Height = 24
    Caption = #1048#1084#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
  end
  object LabelZThree: TLabel
    Left = 8
    Top = 187
    Width = 91
    Height = 24
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
  end
  object LabelZFor: TLabel
    Left = 8
    Top = 262
    Width = 170
    Height = 24
    Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
  end
  object LabelZFive: TLabel
    Left = 8
    Top = 351
    Width = 132
    Height = 24
    Caption = #1057#1085#1103#1090#1100'/'#1082#1091#1087#1080#1090#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
  end
  object ButtonZOne: TButton
    Left = 121
    Top = 394
    Width = 194
    Height = 43
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonZOneClick
  end
  object EditZayavkaOne: TEdit
    Left = 208
    Top = 105
    Width = 177
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EditZayavkaTwo: TEdit
    Left = 208
    Top = 185
    Width = 177
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EditZayavkaThree: TEdit
    Left = 208
    Top = 262
    Width = 177
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object EditZayavkaFor: TEdit
    Left = 208
    Top = 351
    Width = 177
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DataSourceZayavka: TDataSource
    DataSet = ADOQueryZayavka
    Left = 8
    Top = 8
  end
  object ADOConnectionZayavka: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=bd.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
  object ADOQueryZayavka: TADOQuery
    Connection = ADOConnectionZayavka
    Parameters = <>
    Left = 72
    Top = 8
  end
end
