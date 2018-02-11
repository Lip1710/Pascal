//Lotareva Irina.
program factorization;
 var n,f:integer;
function fact(n: Integer):Integer;
 begin
  if n>0 then Result:= n + fact(n-1) else Result:=0;
 end;

begin
  write(' Enter a digit for factorization: ');
  readln(n);
  f:=fact(n);
  writeln(' Recursive factorization of ',n,' is ',f);
  readln();
end.
