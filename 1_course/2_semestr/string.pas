program letters;
uses CRT;
var s: string;
    i,min,max,n: integer;
begin
   ClrScr;
   writeln('Fill the string with words and spaces, finishing with a space');
   read(s);
   n:=0;
   min:=length(s);
   max:=0;
    for i:= 1 to length(s)do
     begin
      if s[i]<> ' ' then n:=n+1 else
       begin
        if n > max then max:=n else
        begin
         if n< min then min:=n;
        end;
       end;
      n:=0;
      i:=i+1;
     end;
       writeln('The longest word has ',max,' letters');
       writeln('The shortest word has ',min,' letters');


end.