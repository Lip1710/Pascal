//Lotareva Irina. Problems for Programming.
program B_1_1_3;
const N=1000000;
var sum,i:integer; f:text;  m: array[0..N] of integer;
begin
  i:=0;
  sum:=0;
  assign (f, 'sequence.txt');
  reset (f);
  while not eof(f) do
  begin
      readln(f,m[i]);
      i:= i+1;
  end;
  for i:=0 to N do sum:=sum+m[i];
  writeln('The sum of the values is ',sum);
  writeln('The average of the values is ',i, sum/(i+1):0:2);
  close (f);
end.

