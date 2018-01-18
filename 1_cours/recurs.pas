program sumNumbers1;
var n,sum: integer;
procedure sumNumbers(n: integer);
begin

 if n>0 then
 begin
  sum:=sum+n;
  n:= n-1;
//  writeln(n);

 sumNumbers(n) ;
 end
 else
 writeln('end');

 end;

begin
sum:=0;
 readln(n);
 writeln(' recursive sumNumbers');
  sumNumbers(n);
  writeln(sum);
  readln();
end.
