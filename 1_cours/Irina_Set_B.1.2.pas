//Lotareva Irina. Problems for programming.Set B.1.2.
program deg;
var a,b: integer;

 function degree(a: integer;b: integer):real;
 begin
  Result:=1;
  for var i:=1 to b do Result:=Result * a;
 end;
 
begin
 write('Write the number for a and press enter: ');
 readln(a);
 write('Write the number for b and press enter: ');
 readln(b);
 //writeln('a^b = ',degree(a,b));
 writeln('a^b = ',power(a,b));
end.