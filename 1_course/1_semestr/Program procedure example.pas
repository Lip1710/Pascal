
program P;
 uses crt;
Var a,b,c,d:byte; N : integer;
procedure p3( y:byte; var x :byte);
begin
y:= 10*x;
x:= 5*x;
writeln ('x= ', x);
writeln ('y= ', y);

N:=N*N;
end;

Begin
a:=1; b:= 2; c:= 3; d:=4; N:=9;

writeln('N= ', N);
p3(a,b);
writeln('N= ', N);
p3(c,d);

writeln('N= ', N);
writeln('a= ', a);
writeln('b= ',b);
writeln('c= ',c);
writeln('d= ',d);

end.