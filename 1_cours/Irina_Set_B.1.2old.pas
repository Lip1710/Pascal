//Lotareva Irina. Problems for programming.Set B.1.2.
program deg;
var a,b: integer;

procedure degree;
 var c:real;
 begin
  c:= exp(b*(ln(a)));
  writeln(c);
 end;
 
 function degr(a: integer;b: integer):real;
 begin
  Result:=exp(b*(ln(a)));
 end;
 
begin
 write('Write the number for a and press enter: ');
 readln(a);
 write('Write the number for b and press enter: ');
 readln(b);
 writeln('a^b = ',degr(a,b));
 degree;
end.