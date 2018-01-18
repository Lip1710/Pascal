//Lotareva Irina. Problems for Programming.
program B_2_1;
var n:integer;
function fact(n: integer): BigInteger;
 begin
    Result:= 1;
    for var i:=1 to n do Result:= Result * i;
 end;
begin
    write('Enter n to find n! : ');
    readln(n);
    writeln(n,'! = ', fact(n));
 end.

