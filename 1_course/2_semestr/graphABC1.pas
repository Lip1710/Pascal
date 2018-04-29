program graphics;
uses GraphABC;
var x,y:integer;
begin
 for x:=0 to windowwidth-1 do
 for y:=0 to windowheight-1 do
     setpixel(x,y,RGB(1*x-y,x-2*y,x*2-y));
 
end.
   