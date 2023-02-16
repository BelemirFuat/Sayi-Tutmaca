unit merkezform;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FireDAC.UI.Intf, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FMX.Ani, FMX.Objects, FMX.ScrollBox,
  FMX.Memo, FMX.ListBox, FMX.Layouts, FMX.TabControl,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button2: TButton;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Text2: TText;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Text3: TText;
    Label2: TLabel;
    Button3: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Text1: TText;
    Label3: TLabel;
    Text4: TText;
    Label4: TLabel;
    Text5: TText;
    Text7: TText;
    Text8: TText;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    FloatAnimation5: TFloatAnimation;
    FloatAnimation6: TFloatAnimation;
    Text9: TText;
    FloatAnimation7: TFloatAnimation;
    FloatAnimation8: TFloatAnimation;
    Button1: TButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Tabitem3: TTabItem;
    Memo1: TMemo;
    Memo2: TMemo;
    ListBox1: TListBox;
    ListBoxGroupFooter1: TListBoxGroupFooter;
    FDConnection1: TFDConnection;
    Timer2: TTimer;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    FloatAnimation9: TFloatAnimation;
    FDQuery1: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fl(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure animasyonuislerkenbitirme;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure asallamaca;
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure FloatAnimation7Finish(Sender: TObject);
    procedure FloatAnimation7Process(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure Timer2Timer(Sender: TObject);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FloatAnimation9Finish(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDQuery1BeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }


    a, b, c, d, e, f: integer;
    te1,te2,te3 : string;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses System.IOUtils;

procedure TForm2.Button1Click(Sender: TObject);
begin
if button1.IsPressed then
begin
 floatanimation9.stopvalue:= 200;
floatanimation9.Enabled:= true;
end else
begin

floatanimation9.StopValue:= 480;
  floatanimation9.Enabled:= true;
end;
end;

procedure tform2.asallamaca;
begin
 case strtoint(Text3.Text) of
    1:
      b := 1;
    2:
      b := 10;
    3:
      b := 100;
    4:
      b := 1000;
    5:
      b := 10000;
    6:
      b := 100000;
    7:
      b := 1000000;
    8:
      b := 10000000;
    9:
      b := 100000000;
    10:
      b := 1000000000;
  end;

 a:= random(b);
end;



procedure TForm2.Button2Click(Sender: TObject);
begin
 animasyonuislerkenbitirme;

  if Edit1.Text = '' then
  begin
    Text9.Text := 'Ben sana boþ yapsam hoþuna gider mi?';
    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);
   end
  else

  if Edit1.Text.ToDouble() = a then
  begin
    Text9.Text := 'Tebrikler, bu bölümü ' + Text1.Text +
      ' seferde bitirdiniz. Yeni bölüme geçebilirsiniz';
    edit1.Text:= '';
    edit1.ReadOnly:= true;
    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Button3.Enabled := true;
    Button2.Enabled := false;
    Text4.Text := inttostr(strtoint(Text4.Text) + d);
    Text7.Text := '+' + inttostr(d);
    FloatAnimation3.Enabled := true;
    FloatAnimation4.Enabled := true;
  end

  else

  if Edit1.Text.ToDouble > a then
  begin

  if Edit1.Text.ToDouble - a > 1000 then
    begin
    Text9.Text := 'Az at da civcivler yesin';
    Edit1.Text := '';
    FloatAnimation1.Enabled := true;
    FloatAnimation2.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);

    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text7.Text := '-' + inttostr(c);
    FloatAnimation3.Enabled := true;
    Text4.Text := inttostr(strtoint(Text4.Text) - c);
    FloatAnimation4.Enabled := true;
    end
    else if Edit1.Text.ToDouble - a > 100 then
    begin
     Text9.Text := ' O sanki biraz fazla oldu?';
     Edit1.Text := '';
    FloatAnimation1.Enabled := true;
    FloatAnimation2.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);

    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text7.Text := '-' + inttostr(c);
    FloatAnimation3.Enabled := true;
    Text4.Text := inttostr(strtoint(Text4.Text) - c);
    FloatAnimation4.Enabled := true;
    end else
    text9.Text:= 'Biraz daha azaltman lazým bence';
    Edit1.Text := '';
    FloatAnimation1.Enabled := true;
    FloatAnimation2.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);

    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text7.Text := '-' + inttostr(c);
    FloatAnimation3.Enabled := true;
    Text4.Text := inttostr(strtoint(Text4.Text) - c);
    FloatAnimation4.Enabled := true;
  end

  else if Edit1.Text.ToDouble < a then
  begin

    if a - Edit1.Text.ToDouble > 1000 then
    begin
      Text9.Text := 'Elini korkak alýþtýrma derim ben';
      Edit1.Text := '';
    FloatAnimation1.Enabled := true;
    FloatAnimation2.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);

    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text7.Text := '-' + inttostr(c);
    FloatAnimation3.Enabled := true;
    Text4.Text := inttostr(strtoint(Text4.Text) - c);
    FloatAnimation4.Enabled := true;
    end
    else if a - Edit1.Text.ToDouble > 100 then
    begin
      Text9.Text := 'Az daha fazla';
      Edit1.Text := '';
    FloatAnimation1.Enabled := true;
    FloatAnimation2.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);

    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text7.Text := '-' + inttostr(c);
    FloatAnimation3.Enabled := true;
    Text4.Text := inttostr(strtoint(Text4.Text) - c);
    FloatAnimation4.Enabled := true;
    end else
    text9.Text:= ' Biraz daha artýrman lazým bence';

    Edit1.Text := '';
    FloatAnimation1.Enabled := true;
    FloatAnimation2.Enabled := true;
    Text1.Text := inttostr(strtoint(Text1.Text) + 1);

    FloatAnimation7.Enabled := true;
    FloatAnimation8.Enabled := true;
    Text7.Text := '-' + inttostr(c);
    FloatAnimation3.Enabled := true;
    Text4.Text := inttostr(strtoint(Text4.Text) - c);
    FloatAnimation4.Enabled := true;
   end;


end;

procedure TForm2.Button3Click(Sender: TObject);

begin

  edit1.ReadOnly:=false;
  memo1.Lines.Add(text3.Text+ '. seviye '+ text1.Text + '. denemede '+ text4.Text+ ' puanla bitirildi.');
  Text3.Text := inttostr(strtoint(Text3.Text) + 1);
  Text1.Text := '0';
  Button3.Enabled := false;
  Text5.Text := inttostr(strtoint(Text5.Text) + strtoint(Text4.Text));
  Text4.Text := '0';

  Text8.Text := Text5.Text;
  FloatAnimation5.Enabled := true;
  FloatAnimation4.Enabled := true;
  d := d + strtoint(Text1.Text);

  asallamaca;




  end;

procedure TForm2.FDConnection1BeforeConnect(Sender: TObject);
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
FDConnection1.Params.Values['Database'] :=
TPath.Combine(TPath.GetDocumentsPath, 'ajanda.db');
{$ENDIF}
end;

procedure TForm2.FDQuery1BeforeInsert(DataSet: TDataSet);
begin
fdquery1.Close;
fdquery1.SQL.Text:= 'delete * from ensonkilerleme';
fdquery1.ExecSQL;
fdquery1.SQL.Text:= 'select * from ensonkiilerleme';
fdquery1.Open();
end;


procedure TForm2.Fl(Sender: TObject);
begin
  FloatAnimation1.Enabled := false;
  FloatAnimation2.Enabled := false;
  Text2.Opacity := 0;

end;

procedure TForm2.FloatAnimation4Finish(Sender: TObject);
begin
  Text7.Opacity := 0;
  Text7.Text := '';
  FloatAnimation3.Enabled := false;
  FloatAnimation4.Enabled := false;
  Text7.Position.Y := 56;
end;

procedure TForm2.FloatAnimation5Finish(Sender: TObject);
begin
  Text8.Opacity := 0;
  Text8.Text := '';
  FloatAnimation5.Enabled := false;
  FloatAnimation6.Enabled := false;
  Text8.Position.Y := 104;
end;

procedure TForm2.FloatAnimation7Finish(Sender: TObject);
begin
 animasyonuislerkenbitirme;

end;

procedure TForm2.FloatAnimation7Process(Sender: TObject);
begin
  if Button2.IsPressed then
  begin
  animasyonuislerkenbitirme;
  end;

end;

procedure TForm2.FloatAnimation9Finish(Sender: TObject);
begin
floatanimation9.Enabled:= false;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdquery1.close;
//  fdquery1.sql.Text:= 'delete from ensonkiilerleme where level <> ""';
// fdquery1.SQL.Text:= 'insert into ensonkiilerleme values('+te2+','+te3+','+te1+')';
fdquery1.SQL.Text:= 'Update ensonkiilerleme Set level='+te2;
fdquery1.ExecSQL;
fdquery1.close;
fdquery1.SQL.Text:= 'Update ensonkiilerleme Set nihaipuan='+te3;
fdquery1.ExecSQL;
fdquery1.close;
fdquery1.SQL.Text:= 'Update ensonkiilerleme Set denemesayisi='+te1;
fdquery1.ExecSQL;
fdquery1.sql.Text:= 'select * from ensonkiilerleme';
fdquery1.open;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//


end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FloatAnimation1.StopValue := Text1.Position.Y;
  FloatAnimation5.StopValue := Text5.Position.Y;
  FloatAnimation3.StartValue := Text4.Position.Y;
  a := random(b);
  d := 0;
  floatanimation7.StartValue:= text9.Position.Y;



  end;





procedure TForm2.Timer1Timer(Sender: TObject);
begin
edit1.SetFocus;
  if Text3.Text = '11' then
  begin
    Text9.Text := 'tebrikler oyunumuzu' + inttostr(d) + ' seferde bitirdiniz';
    Timer1.Enabled := false;
  end;


  case strtoint(Text3.Text) of
    1:
      c := 1000;
    2:
      c := 100;
    3:
      c := 100;
    4:
      c := 100;
    5:
      c := 100;
    6:
      c := 100;
    7:
      c := 100;
    8:
      c := 100;
    9:
      c := 10;
    10:
      c := 1;
  end;

  case strtoint(Text3.Text) of
    1:
      d := 10;
    2:
      d := 20;
    3:
      d := 30;
    4:
      d := 400;
    5:
      d := 500;
    6:
      d := 6000;
    7:
      d := 7000;
    8:
      d := 8000;
    9:
      d := 9000;
    10:
      d := 10000;
  end;

  if Button3.Enabled = false then
  begin
    Button3.Default := false;
    Button2.Default := true;
  end;
  if Button3.Enabled = true then
  begin
    Button3.Default := true;
    Button2.Default := false;
  end;



end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
te1:= text1.Text;
te2:= text3.Text;
te3:= text5.Text;
end;


procedure TForm2.animasyonuislerkenbitirme;
begin
  Text9.Opacity := 0;
  Text9.Text := '';
  FloatAnimation7.Enabled := false;
  FloatAnimation8.Enabled := false;
  Text9.Position.Y := 328;
end;

end.
