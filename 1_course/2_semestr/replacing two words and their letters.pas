//Irina .replacing two words in a string and their letters
program replace;
var s,k,p:string;
    i,n: integer;

begin
 writeln('   Fill the string with two words : ');
 readln(s);
 for i:=1 to length(s) do if s[i]=' ' then n:= i;
 p:='';
 for i:=1 to (n-1) do p:=s[i]+p;
 k:='';
 for i:=n+1 to length(s) do k:=s[i]+k;
 s:=k+' '+p;
 writeln(s);
end.