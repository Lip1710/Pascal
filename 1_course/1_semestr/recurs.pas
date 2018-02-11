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
  //writeln('end');
 end;
// MAIN CODE
begin
 sum:=0;
 write('Enter numbers for find sum numbers from 1 to this: ');
 readln(n);
 sumNumbers(n);
 writeln('Sum numbers from 1 to ',n,' = ', sum);
 //readln();
end.
