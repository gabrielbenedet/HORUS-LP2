object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Veiculos'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnProprietarios: TButton
    Left = 24
    Top = 24
    Width = 89
    Height = 25
    Caption = 'Proprietarios'
    TabOrder = 0
    OnClick = BtnProprietariosClick
  end
  object Button1: TButton
    Left = 24
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Veiculos e Multas'
    TabOrder = 1
    OnClick = Button1Click
  end
end
