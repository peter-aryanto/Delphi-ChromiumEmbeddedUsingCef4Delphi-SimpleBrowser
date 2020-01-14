unit mainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCEFWinControl, uCEFChromiumWindow, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm0 = class(TForm)
    TopPanel: TPanel;
    UrlEdit: TEdit;
    GoButton: TButton;
    ChromiumWindow1: TChromiumWindow;
    BrowserInitTimer: TTimer;
    BottomPanel: TPanel;
    ChildBrowserButton: TButton;
    procedure GoButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BrowserInitTimerTimer(Sender: TObject);
    procedure ChildBrowserButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form0: TForm0;

implementation

{$R *.dfm}

uses
  uSimpleBrowser;

procedure TForm0.FormCreate(Sender: TObject);
begin
//  Assert(ChromiumWindow1.CreateBrowser, 'Failed to initialize the browser');
  if not ChromiumWindow1.CreateBrowser then BrowserInitTimer.Enabled := True;
end;

procedure TForm0.BrowserInitTimerTimer(Sender: TObject);
begin
  if ChromiumWindow1.CreateBrowser then BrowserInitTimer.Enabled := False;
end;

procedure TForm0.FormShow(Sender: TObject);
begin
//  Assert(ChromiumWindow1.CreateBrowser, 'Failed to initialize the browser');
end;

procedure TForm0.GoButtonClick(Sender: TObject);
begin
  ChromiumWindow1.LoadURL(UrlEdit.Text);
end;

procedure TForm0.ChildBrowserButtonClick(Sender: TObject);
var
  LSimpleBrowser: TForm1;
begin
  LSimpleBrowser := TForm1.Create(nil);
  try
    LSimpleBrowser.ShowModal;
  finally
    LSimpleBrowser.Free;
  end;
end;

end.
