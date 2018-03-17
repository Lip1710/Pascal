//Irina.  HomeWork from 12.03.2018. Replacing two words in a string
program  replace;
var s,k,p:string;
    i,n: integer;

begin
 writeln('   Fill the string with two words : ');
 readln(s);
 for i:=1 to length(s) do if s[i]=' ' then n:= i;
 p:='';
 for i:=1 to (n-1) do p:=p+s[i];
 k:='';
 for i:=n+1 to length(s) do k:=k+s[i];
 s:=k+' '+p;
 writeln(s);
end.