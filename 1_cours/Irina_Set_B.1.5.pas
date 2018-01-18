//Lotareva Irina. Problems for Programming.
program B_1_5;
var maxn:integer; pr:real;
function sqrt2(b: integer):real;
 begin
  Result:=0;
  for var i:=1 to b do Result:= sqrt(2 + Result);
 end;
begin
 	write('Enter max n for Viete formula: ');
	readln(maxn);
	pr:=1;
	for var n:=1 to maxn do
  begin
    pr:=pr*(sqrt2(n)/2);
  end; 
	writeln('Viete  Pi= ',2/pr);
	writeln('Pascal Pi= ',Pi);
end.
