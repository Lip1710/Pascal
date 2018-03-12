//Irina. HomeWork from 12.03.2018. Palindrome
program  Palindrome;
var  s,snew,rev:string;
     i: integer;
begin
 cls;
 write('Enter string: ');
 readln(s);
 s:=LowerCase(s);
 snew:='';
 rev:='';
 for i:=1 to length(s) do if s[i]<>' ' then snew:=snew+s[i];  //Remove spaces
 for i:=length(snew) downto 1 do rev:=rev+snew[i];  // Revert
 if (snew=rev) then writeln('It is Palindrome') else writeln('It is not Palindrome');
end.
