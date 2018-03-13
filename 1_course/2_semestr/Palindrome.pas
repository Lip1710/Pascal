//Irina. HomeWork from 12.03.2018. Palindrome
program  Palindrome;
var  s,snew,inv:string;
     i: integer;
begin
 cls;
 write('Enter string: ');
 readln(s);
 s:=LowerCase(s);
 snew:='';
 inv:='';
 for i:=1 to length(s) do if not (s[i] in [' ',',','.',';','`','''','’','"','!']) then snew:=snew+s[i];  //Remove spaces, commas, etc.
 for i:=length(snew) downto 1 do inv:=inv+snew[i];  // Invert
 if (snew=inv) then writeln('It is Palindrome') else writeln('It is not Palindrome');
end.
