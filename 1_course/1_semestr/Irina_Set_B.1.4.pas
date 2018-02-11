//Lotareva Irina. Problems for Programming.
program B_1_4;
var maxn:integer; sum:real;
function degree(a: integer;b: integer):real;
 begin
  Result:=1;
  for var i:=1 to b do Result:=Result * a;
   //if odd(b) then Result:=-1;
 end;
begin
 	write('Enter max n for Leibniz formula: ');
	readln(maxn);
	sum:=0;
	for var n:=0 to maxn do
  begin
    //sum:=sum+(degree(-1,n)/(2*n+1));
    sum:=sum+(power(-1,n)/(2*n+1));
  end; 
	writeln('Leibniz Pi = ',sum*4);
	writeln('Pascal  Pi = ',Pi);
end.

