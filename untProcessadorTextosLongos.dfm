object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Processador de textos longos'
  ClientHeight = 413
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 79
    Width = 787
    Height = 334
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Texto a ser processado'
      ExplicitWidth = 769
      ExplicitHeight = 300
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 306
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Texto processado'
      ImageIndex = 1
      ExplicitWidth = 769
      ExplicitHeight = 300
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 306
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object LabeledEdit1: TLabeledEdit
    Left = 9
    Top = 17
    Width = 768
    Height = 21
    EditLabel.Width = 109
    EditLabel.Height = 13
    EditLabel.Caption = 'Texto no in'#237'cio da linha'
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 9
    Top = 55
    Width = 648
    Height = 21
    EditLabel.Width = 106
    EditLabel.Height = 13
    EditLabel.Caption = 'Texto no final da linha'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 663
    Top = 41
    Width = 114
    Height = 41
    Caption = 'Processar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
