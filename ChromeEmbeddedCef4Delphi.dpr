program ChromeEmbeddedCef4Delphi;

//{$I cef.inc}
//
uses
  Vcl.Forms,
  uCEFApplication,
  mainForm in 'mainForm.pas' {Form0},
  uSimpleBrowser in 'uSimpleBrowser.pas' {Form1};

{$R *.res}

begin
  GlobalCEFApp := TCefApplication.Create;
//  Assert(GlobalCEFApp.StartMainProcess, 'Failed to initialize chromium embedded');
  if GlobalCEFApp.StartMainProcess then
  begin

    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TForm0, Form0);
//    Application.CreateForm(TForm1, Form1);
    Application.Run;

  end;

  GlobalCEFApp.Free;
  GlobalCEFApp := nil;
end.
