//Lotareva Irina. Problems for Programming.
program B_2_3;
var maxn,n:integer; e2:real;
function fact(n:integer): integer;
 var i:integer;
 begin
    Result:= 1;
    for  i:=1 to n do Result:= Result * i;
 end;
begin
 	write('Enter n to find e: ');
	readln(maxn);
  e2:=0;
	for  n:=0 to maxn do
      e2:=e2+1/fact(n);
	writeln('       e = ', e2);
  //writeln('Pascal e = ', E);
end.