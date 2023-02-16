program sayitutmacaproject;

uses
  System.StartUpCopy,
  FMX.Forms,
  merkezform in 'merkezform.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
