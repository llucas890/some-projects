object Form1: TForm1
  Left = 1175
  Top = 553
  Width = 587
  Height = 489
  Caption = 'Programa por Lucas Lescano'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object b_Conectar: TButton
    Left = 153
    Top = 15
    Width = 190
    Height = 25
    Caption = '1 - Conectar a la base de datos'
    TabOrder = 0
    OnClick = b_ConectarClick
  end
  object b_Consultar: TButton
    Left = 153
    Top = 51
    Width = 190
    Height = 25
    Caption = '2 - Consultar datos de grilla'
    TabOrder = 1
    OnClick = b_ConsultarClick
  end
  object DBGrid1: TDBGrid
    Left = 36
    Top = 93
    Width = 509
    Height = 136
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigousuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'apellido'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fechanacimiento'
        Visible = True
      end>
  end
  object b_Nuevo: TButton
    Left = 42
    Top = 234
    Width = 115
    Height = 25
    Caption = 'Nuevo Registro'
    TabOrder = 3
    OnClick = b_NuevoClick
  end
  object b_Modificar: TButton
    Left = 171
    Top = 234
    Width = 112
    Height = 25
    Caption = 'Modificar Registro'
    TabOrder = 4
    OnClick = b_ModificarClick
  end
  object b_Eliminar: TButton
    Left = 291
    Top = 234
    Width = 112
    Height = 25
    Caption = 'Eliminar Registro'
    TabOrder = 5
    OnClick = b_EliminarClick
  end
  object Edit1: TEdit
    Left = 40
    Top = 312
    Width = 89
    Height = 21
    TabOrder = 6
    Text = 'ID'
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 144
    Top = 312
    Width = 89
    Height = 21
    TabOrder = 7
    Text = 'Nombre'
  end
  object Edit3: TEdit
    Left = 256
    Top = 312
    Width = 113
    Height = 21
    TabOrder = 8
    Text = 'Apellido'
  end
  object DateEdit1: TDateEdit
    Left = 400
    Top = 312
    Width = 68
    Height = 21
    ColorTextErr = clRed
    ColorTextOK = clBlack
    DateFormat = 'dd/mm/yyyy'
    TabOrder = 9
    UseOSDateFormat = False
    ZeroDateIsValid = True
  end
  object Button1: TButton
    Left = 432
    Top = 352
    Width = 105
    Height = 73
    Caption = 'Nuevo Formulario'
    TabOrder = 10
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 352
    Width = 121
    Height = 81
    Caption = 'Cantidad de Registros'
    TabOrder = 11
    OnClick = BitBtn1Click
  end
  object Button2: TButton
    Left = 184
    Top = 352
    Width = 113
    Height = 81
    Caption = 'Ver id recomendado'
    TabOrder = 12
    OnClick = Button2Click
  end
  object BaseDatos: TPSQLDatabase
    CharSet = 'LATIN1'
    DatabaseName = 'DELPHI'
    Host = 'localhost'
    Params.Strings = (
      'user=postgres'
      'dbname=DELPHI'
      'connect_timeout=15'
      'Port=5434'
      'sslmode=prefer'
      'Host=localhost'
      'DatabaseName=DELPHI'
      'UID=postgres'
      'PWD=admin')
    Port = 5434
    UserName = 'postgres'
    UserPassword = 'admin'
    Left = 84
    Top = 12
  end
  object Consulta1: TPSQLQuery
    Database = BaseDatos
    Options = [dsoUseGUIDField]
    SQL.Strings = (
      'select * from usuarios')
    Left = 84
    Top = 48
    object Consulta1codigousuario: TIntegerField
      FieldName = 'codigousuario'
    end
    object Consulta1nombre: TStringField
      FieldName = 'nombre'
      Size = 30
    end
    object Consulta1apellido: TStringField
      FieldName = 'apellido'
      Size = 30
    end
    object Consulta1fechanacimiento: TDateField
      FieldName = 'fechanacimiento'
    end
  end
  object DataSource1: TDataSource
    DataSet = Consulta1
    Left = 117
    Top = 48
  end
end
