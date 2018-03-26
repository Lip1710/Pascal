//Irina. Class Work 19.03.
// Сколько слов в которых одна или больше гласных
program glasnye;
var s1,s:string; v,n,i,u: integer;
begin
 cls;
 v:=0;
 u:=0;
 s1:='';
 readln(s);
 for i:=1 to length(s) do
    begin
     if s[i]=' '  then
       begin
         if v>0 then begin
            u:=u+1;
            writeln (s1);
         end;
         v:=0;
         s1:='';
       end
     else
       begin
          s1:=s1+s[i];
          if s[i] in ['A','a','E','e','I','i','O','o','U','u','Y','y','А', 'а','Е', 'е', 'Ё', 'ё', 'И', 'и', 'О', 'о', 'У', 'у', 'Э', 'э', 'Ы', 'ы', 'Ю', 'ю', 'Я', 'я']
             then v:=v+1;
       end;
      if i= length(s) then
       begin
        if v>1 then begin
           u:=u+1;
           writeln (s1);
         end;
       end;
    end;
 writeln('There are ', u,' words with more than one vowels');
end.