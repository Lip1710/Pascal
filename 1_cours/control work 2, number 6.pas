//Lotareva Irina.The control work 2.6
program _2_6;
var a,b,c,x,z,t,one,two: integer;
function f1(c:integer,b:integer):integer;
begin
f1:=c and b;
writeln(1);
end;
function f2(b:integer,a:integer):integer;
begin
f2:=b and a;
writeln(f2);
end;
function f3(a:integer, c:integer): integer;
begin
f3:=not(a) and c;
writeln(f3);
end;
function f4(c:integer,a:integer,b:integer):integer;
begin
f4:=f1 or f2 or f3;
writeln(f4);
end;
begin
writeln(' f =  ... ');
writeln('-----------------------------------------');
writeln('a I b I c I not aI c^b I b^a I (not a)^c I f I');
writeln('-----------------------------------------');
for vat a:



