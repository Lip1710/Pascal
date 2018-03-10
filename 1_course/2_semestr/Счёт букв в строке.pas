program countletters;
var c,i: integer;
    s: string;
    p: char;
//сколько раз в строке конкретная буква
begin
 c:=0;
 writeln('Fill the string :');
 readln(s);
 writeln('Enter the symbol to count in the string :');
 readln(p);
 for i:=1 to length(s) do
  begin
    if (s[i]=p)  then c:=c+1;
 end;
 writeln ('There are ',c, ' letters "', p, '"');
end.
