//Irina. Class Work 19.03.
// Сколько слов в которых одна или больше гласных
program glasnye;
var s1,s:string; v,n,i,u: integer;
begin
 v:=0;
 u:=0;
 s1:='';
 readln(s);
 for i:=1 to length(s) do
    begin
    if s[i]=' ' then
      begin
       n:=i;


      end
    else
      begin

      end;
      

    
    
    
    
    

    for i:=0 to (n-1) do
       begin
       s1:=s1+s[i];
       if s[i] in ['A','a','E','e','I','i','O','o','U','u','Y','y','А', 'а','Е', 'е', 'Ё', 'ё', 'И', 'и', 'О', 'о', 'У', 'у', 'Э', 'э', 'Ы', 'ы', 'Ю', 'ю', 'Я', 'я']
        then v:=v+1;
    end;
 end;
 if v>=1 then writeln(s1) else
   begin
     for i:=(n+1) to length(s) do
       begin
       s1:=s1+s[i];
       if s[i] in ['A','a','E','e','I','i','O','o','U','u','Y','y','А', 'а','Е', 'е', 'Ё', 'ё', 'И', 'и', 'О', 'о', 'У', 'у', 'Э', 'э', 'Ы', 'ы', 'Ю', 'ю', 'Я', 'я']
       then
        v:=v+1;
       writeln(s1);
       end;

    end;
writeln('There are ', v,' words with vowels');

end.