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
       if s[i]<> ' ' then begin
          n:=n+1;
          if n>max then max:=n;
          if (i=length(s)) and (n<min) then min:=n;
          end
       else begin
          if (n>0) and (n<min) then min:=n;
          n:=0;
       end;
     end;

       writeln('The longest word has ',max,' letters');
       writeln('The shortest word has ',min,' letters');


end.