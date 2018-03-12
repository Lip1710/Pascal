//Irina .replacing two words in a string
program  replace;
var s,k,p:string;
    i,n: integer;

begin
writeln('   Fill the string with two words : ');
readln(s);
 for i :=1 to length(s) do
  begin
  if s[i]=' ' then
    begin
    //s[i]:=space;
    n:= i;
    end;
   end;
   p:='';
 for i:=1 to (n-1) do
  p:=p+s[i];
  k:='';
 for i:=n+1 to length(s) do
    begin
    k:=k+s[i];
   s:=k+' '+p;
    end;
 writeln(s);

 
end.