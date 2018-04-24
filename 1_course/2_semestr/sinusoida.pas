program sin;
uses GraphABC;
var x,y:integer;

procedure GraphABC.Draw (y:real->real;a:real;b:real;min:real;max:real);
 begin
 y:=sin(x);
 end;
 
//function RGB(a,b,c:byte):Color;
 //begin
 //a:=2*x-y;
 //b:=x-3*y;
 //c:=x+y;

 //end;
 //procedure SetPenWidth(Width:integer);
  //begin
  //Width:=10;
  //d:=Width;
  //end;

begin
 setWindowSize(600,400);
 setPenColor(clGreen);
 //SetPenWidth;
 //RGB;
 Line(0,200,600,200);
 Line(200,0,200,400);
 GraphABC.Draw;

 
 //c:= RGB;
end. 
 