program sumNumbers1;
 var n:integer;
 sum: BigInteger;
function sumNumbers(n: BigInteger):BigInteger;
begin
 if n>0 then Result:= n + sumNumbers(n-1) else Result:=0;
end;

begin
  write(' Enter digit:');
  readln(n);
  sum:=sumNumbers(n);
  writeln(' recursive sumNumbers from 1 to ',n,' is ',sum);
  readln();
end.
