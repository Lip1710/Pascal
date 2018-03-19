program glasnye;
var s1,s:string; v,n,i: integer;
begin
 v:=0;
 s1:=' ';
 readln(s);
 for i:=1 to length(s) do
 if s[i]=' ' then n:=i ;
 for i:=0 to (n-1) do
  begin
   s1:=s1+s[i];
   if s[i] in ['A','a','E','e','I','i','O','o','U','u','Y','y','À', 'à','Å', 'å', '¨', '¸', 'È', 'è', 'Î', 'î', 'Ó', 'ó', 'Ý', 'ý', 'Û', 'û', 'Þ', 'þ', 'ß', 'ÿ']
   then
   v:=v+1;

  end;
 if v>1 then writeln(s1) else
    begin
     for i:=(n+1) to length(s) do
  begin
   s1:=s1+s[i];
   if s[i] in ['A','a','E','e','I','i','O','o','U','u','Y','y','À', 'à','Å', 'å', '¨', '¸', 'È', 'è', 'Î', 'î', 'Ó', 'ó', 'Ý', 'ý', 'Û', 'û', 'Þ', 'þ', 'ß', 'ÿ']
   then
   v:=v+1;
    writeln(s1);
  end;

end;
end.