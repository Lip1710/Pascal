var c,d,i: integer;
    s: string;
//сколько раз в строке конкретная буква
begin
 c:=0;
 d:=0;
 writeln('Fill the string :');
 readln(s);
 for i:=1 to length(s) do
  begin
    //writeln(' ',s[i]);
    if (s[i]='A')  then c:=c+1;
    if (s[i]='a') then d:=d+1;
 end;
 writeln ('There are ',c, ' letters A and ', d,' letters a.');
end.
 