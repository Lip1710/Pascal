//Lotareva Irina. Problems for Programming.
program B_1_1_3;
var sum,i:integer; f:text;  m: array of integer;
begin
  i:=0;
  sum:=0;
  assign (f, 'sequence.txt');
  reset (f);
  while not eof(f) do
  begin
      SetLength(m,i+1);
      read(f,m[i]);
      i:= i+1;
  end;
  for i:=0 to high(m) do sum:=sum+m[i];
  writeln('The sum of the values is ',sum);
  writeln('The average of the values is ', sum/length(m):0:2);
  close (f);
end.

