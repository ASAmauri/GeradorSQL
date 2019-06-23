object ManForm: TManForm
  Left = 0
  Top = 0
  Caption = 'Gerador de SQL'
  ClientHeight = 301
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object ColunasLabel: TLabel
    Left = 8
    Top = 5
    Width = 53
    Height = 18
    Caption = 'Colunas:'
  end
  object TabelasLabel: TLabel
    Left = 208
    Top = 5
    Width = 50
    Height = 18
    Caption = 'Tabelas:'
  end
  object CondicoesLabel: TLabel
    Left = 408
    Top = 5
    Width = 64
    Height = 18
    Caption = 'Condi'#231#245'es'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 151
    Width = 585
    Height = 2
  end
  object SqlLabel: TLabel
    Left = 8
    Top = 168
    Width = 23
    Height = 13
    Caption = 'SQL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ColunasMemo: TMemo
    Left = 8
    Top = 24
    Width = 185
    Height = 89
    Lines.Strings = (
      'Codigo'
      'Nome')
    TabOrder = 0
  end
  object TabelasMemo: TMemo
    Left = 208
    Top = 24
    Width = 185
    Height = 89
    Lines.Strings = (
      'Funcionarios')
    TabOrder = 1
  end
  object CondicoesMemo: TMemo
    Left = 408
    Top = 24
    Width = 185
    Height = 89
    Lines.Strings = (
      'Cidade = '#39'Maring'#225#39
      'Salario > 1000')
    TabOrder = 2
  end
  object GerarSqlButton: TButton
    Left = 256
    Top = 121
    Width = 97
    Height = 24
    Caption = 'Gerar SQL'
    TabOrder = 3
    OnClick = GerarSqlButtonClick
  end
  object SqlMemo: TMemo
    Left = 8
    Top = 187
    Width = 585
    Height = 102
    TabOrder = 4
  end
end
