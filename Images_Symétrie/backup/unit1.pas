unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonDoubleM: TButton;
    ButtonMirrorH: TButton;
    ButtonMirrorV: TButton;
    ButtonHoriz: TButton;
    ButtonVert: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure ButtonDoubleMClick(Sender: TObject);
    procedure ButtonHorizClick(Sender: TObject);
    procedure ButtonMirrorHClick(Sender: TObject);
    procedure ButtonMirrorVClick(Sender: TObject);
    procedure ButtonVertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  i,j:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonVertClick(Sender: TObject);
begin
   for i:=1 to 170 do
       begin
       for j:=1 to 170 do
           begin
           Image2.canvas.pixels[i,j]:=Image1.canvas.pixels[170-i,j];
           end;

       end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ButtonHorizClick(Sender: TObject);
begin
  for i:=1 to 170 do
       begin
       for j:=1 to 170 do
           begin
           Image2.canvas.pixels[i,j]:=Image1.canvas.pixels[170-i,170-j];
           end;

       end;
end;

procedure TForm1.ButtonDoubleMClick(Sender: TObject);
begin
     for j:=1 to 85 do
      begin
      for i:=1 to 170 do
          begin
          Image2.Canvas.pixels[i,j]:=Image1.Canvas.Pixels[i,j]
          end;
      end;
      for i:=86 to 170 do
        begin
        for j:=1 to 170 do
          begin
            Image2.canvas.pixels[i,j]:=Image1.canvas.pixels[170-i,170-j];
          end;
        end;
      for i:=1 to 85 do
        begin
             for j:=1 to 85 do
               begin
                 Image2Canvas.pixels[i,j]:=Image1.Canvas.Pixels[i,j];
               end;
        end;
end;

procedure TForm1.ButtonMirrorHClick(Sender: TObject);
begin
  for j:=1 to 85 do
      begin
      for i:=1 to 170 do
          begin
          Image2.Canvas.pixels[i,j]:=Image1.Canvas.Pixels[i,j]
          end;
      end;
  for j:=86 to 170 do
      begin
      for i:=1 to 170 do
          begin
               Image2.canvas.pixels[i,j]:=Image1.canvas.pixels[i,170-j]
          end;
      end;
end;

procedure TForm1.ButtonMirrorVClick(Sender: TObject);
begin
      for i:=1 to 85 do
          begin
          for j:=1 to 170 do
            begin
            Image2.Canvas.pixels[i,j]:=Image1.canvas.pixels[i,j];
            end;
          end;
      for i:=86 to 170 do
        begin
        for j:=1 to 170 do
          begin
            Image2.canvas.pixels[i,j]:=Image1.canvas.pixels[170-i,j];
          end;
        end;
end;

end.

