program sumNumbers1;
 var n,sum,s: integer;
function sumNumbers(n: integer):integer;
begin
 if n>0 then 
 begin
   //sum:=sum+n;
   //sumNumbers(n-1);
   //sum:=sum+n+sumNumbers(n-1);
   Result:=n+sumNumbers(n-1);
   //sumNumbers(n-1);
 end
 //else
 //writeln('end');

end;

begin
  sum:=0;
  write(' Enter digit:');
  readln(n);
  
  s:=sumNumbers(n);
  writeln(' recursive sumNumbers from 1 to ',n,' is ',sum,' s=',s);
  readln();
end.
