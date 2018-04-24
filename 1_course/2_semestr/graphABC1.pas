program graphics;
uses GrafABC;
var x,y:integer;
begin
 for x:=0 to windowwidth-1 do
 for y:=0 to windowheight-1 do
   setpixel(x,y,RGB(2*x-y,x-3*y,x+y));
end.
   