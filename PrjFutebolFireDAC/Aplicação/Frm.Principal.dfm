object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 24
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pases1: TMenuItem
        Caption = '&Pa'#237'ses'
        OnClick = Pases1Click
      end
      object ticas1: TMenuItem
        Caption = 'T'#225'tic&as'
        OnClick = ticas1Click
      end
      object Rcnicos1: TMenuItem
        Caption = '&T'#233'cnicos'
        OnClick = Rcnicos1Click
      end
      object ClubesJogadores1: TMenuItem
        Caption = '&Clubes/Jogadores'
        OnClick = ClubesJogadores1Click
      end
    end
  end
end
