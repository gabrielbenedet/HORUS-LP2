object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPrincipal: TMainMenu
    Left = 40
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Localizao1: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object Pas1: TMenuItem
          Caption = 'Pa'#237's'
          OnClick = Pas1Click
        end
        object Estado1: TMenuItem
          Caption = 'Estado'
          OnClick = Estado1Click
        end
        object Cidade1: TMenuItem
          Caption = 'Cidade'
          OnClick = Cidade1Click
        end
      end
    end
  end
end
