//Lotareva Irina. Problems for Programming.
program B_2_4;
var n,i:integer; e3:real;
function fact(n,i: integer): Longint;
 begin
    Result:= 1;
    for  i:=1 to n do Result:= Result * i;
 end;
begin
 	write('Enter n to find e: ');
	readln(n);
  e3:=n*power((sqrt(2*Pi*n)/fact(n,i)),1/n);
	writeln('       e = ', e3);
  //writeln('Pascal e = ', E);
end.