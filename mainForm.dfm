object Form0: TForm0
  Left = 0
  Top = 0
  Caption = 'Chromium Embedded Using CEF4Delphi'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 31
    Align = alTop
    TabOrder = 0
    object UrlEdit: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 358
      Height = 23
      Align = alClient
      TabOrder = 0
      Text = 'http://www.google.com'
      ExplicitHeight = 21
    end
    object GoButton: TButton
      AlignWithMargins = True
      Left = 368
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = '&Go'
      TabOrder = 1
      OnClick = GoButtonClick
    end
  end
  object ChromiumWindow1: TChromiumWindow
    Left = 0
    Top = 31
    Width = 447
    Height = 140
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 171
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 171
    Width = 447
    Height = 31
    Align = alBottom
    TabOrder = 2
    object ChildBrowserButton: TButton
      Left = 1
      Top = 1
      Width = 445
      Height = 29
      Align = alClient
      Caption = '&Child Browser'
      TabOrder = 0
      OnClick = ChildBrowserButtonClick
      ExplicitLeft = 192
      ExplicitTop = 7
      ExplicitWidth = 75
      ExplicitHeight = 25
    end
  end
  object BrowserInitTimer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = BrowserInitTimerTimer
    Left = 216
    Top = 104
  end
end
