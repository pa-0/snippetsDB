object Form1: TForm1
  Left = 471
  Top = 6
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 645
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 233
    Height = 225
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 24
      Width = 217
      Height = 193
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'theme'
          PickList.Strings = (
            'sghsrghs'
            'fyukryukr'
            'dgkjdyuk')
          Title.Caption = #1056#1072#1079#1076#1077#1083
          Width = 191
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 248
    Top = 0
    Width = 745
    Height = 225
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 8
      Top = 24
      Width = 721
      Height = 193
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'head'
          Title.Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
          Width = 677
          Visible = True
        end>
    end
  end
  object Button3: TButton
    Left = 176
    Top = 232
    Width = 153
    Height = 25
    Caption = #1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1076' '#1074' '#1073#1091#1092#1077#1088
    TabOrder = 2
  end
  object Button4: TButton
    Left = 16
    Top = 232
    Width = 153
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1075#1086#1083#1086#1074#1086#1082
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBRichEdit1: TDBRichEdit
    Left = 8
    Top = 264
    Width = 977
    Height = 377
    DataField = 'code'
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 4
    OnMouseDown = DBRichEdit1MouseDown
  end
  object ColorBox1: TColorBox
    Left = 336
    Top = 232
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 5
  end
  object Button1: TButton
    Left = 488
    Top = 232
    Width = 161
    Height = 25
    Caption = #1055#1086#1076#1089#1074#1077#1090#1080#1090#1100' '#1090#1077#1082#1089#1090
    TabOrder = 6
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Code.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 56
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Thems'
    Left = 152
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 184
    Top = 56
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 928
    Top = 56
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    BeforePost = ADOTable2BeforePost
    TableName = 'Code'
    Left = 896
    Top = 56
  end
end
