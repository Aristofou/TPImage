unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Reinitialiser: TButton;
    ButtonEch: TButton;
    ButtonLignes: TButton;
    Button4c: TButton;
    ButtonN: TButton;
    ButtonR: TButton;
    Image1: TImage;
    procedure ReinitialiserClick(Sender: TObject);
    procedure Button4cClick(Sender: TObject);
    procedure ButtonEchClick(Sender: TObject);
    procedure ButtonLignesClick(Sender: TObject);
    procedure ButtonNClick(Sender: TObject);
    procedure ButtonRClick(Sender: TObject);
  private

  public

  end;
var
  Form1: TForm1;
  i,f,g:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonNClick(Sender: TObject);
begin
  Image1.canvas.brush.color:= clBlack;
  Image1.canvas.Rectangle(1,1,400,400);
end;

procedure TForm1.Button4cClick(Sender: TObject);
begin
  Image1.canvas.brush.color:= clPurple;
  Image1.canvas.Rectangle(1,1,200,200);
  Image1.canvas.brush.color:= clGreen;
  Image1.canvas.Rectangle(200,1,400,200);
  Image1.canvas.brush.color:= clBlue;
  Image1.canvas.Rectangle(200,200,1,400);
  Image1.canvas.brush.color:= clYellow;
  Image1.canvas.Rectangle(200,200,400,400);
end;

procedure TForm1.ReinitialiserClick(Sender: TObject);
begin
    Image1.Canvas.Clear;
end;

procedure TForm1.ButtonEchClick(Sender: TObject);
begin
  i:=0;
  for g:=1 to 8 do
    begin
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(1+i,1+i,50+i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(50+i,1+i,100+i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(100+i,1+i,150+i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(150+i,1+i,200+i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(200+i,1+i,250+i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(250+i,1+i,300+i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(300+i,1+i,350+i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(350+i,1+i,400+i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(1-i,1+i,50-i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(50-i,1+i,100-i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(100-i,1+i,150-i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(150-i,1+i,200-i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(200-i,1+i,250-i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(250-i,1+i,300-i,50+i);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(300-i,1+i,350-i,50+i);
    Image1.canvas.Brush.color:= clWhite;
    Image1.canvas.Rectangle(350-i,1+i,400-i,50+i);
    Image1.canvas.Rectangle(100,350,150,400);
    Image1.canvas.Rectangle(150,300,200,350);
    Image1.canvas.Rectangle(200,250,250,300);
    Image1.canvas.Rectangle(200,350,250,400);
    Image1.canvas.Rectangle(250,300,300,350);
    Image1.canvas.Rectangle(300,350,350,400);
    Image1.canvas.brush.color:= clBlack;
    Image1.canvas.Rectangle(50,350,100,400);
    Image1.canvas.Rectangle(100,300,150,350);
    Image1.canvas.Rectangle(150,250,200,300);
    Image1.canvas.Rectangle(150,350,200,400);
    Image1.canvas.Rectangle(200,300,250,350);
    Image1.canvas.Rectangle(250,350,300,400);

    i:=i+50;
    end;
end;

procedure TForm1.ButtonLignesClick(Sender: TObject);
begin

  for f:=1 to 400 do
    begin
    Image1.canvas.pen.color:= clPurple;
    Image1.canvas.Line(1+i,1,1+i,400);
    i:=i+1 ;
    Image1.canvas.pen.color:= clGreen;
    Image1.canvas.Line(1+i,1,1+i,400);
    i:=i+1;
    Image1.canvas.pen.color:= clBlue;
    Image1.canvas.Line(1+i,1,1+i,400);
    i:=i+1;
    Image1.canvas.pen.color:= clRed;
    Image1.canvas.Line(1+i,1,1+i,400);
    i:=i+1;
    end;
  f:=1;
end;

procedure TForm1.ButtonRClick(Sender: TObject);
begin
  Image1.canvas.Brush.color:= clRed;
  Image1.canvas.Rectangle(1,1,400,400);
end;

end.

