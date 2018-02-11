//Lotareva Irina. Problems for Programming.
program B_1_1_2;
var sum,a,i:integer; average: real; f: text ;
 begin
 i:=0;
 sum:=0;
 //writeln('Hello the user, enter the filename with a sequence');
 //readln(f);
 assign(f,'sequence.txt');
 reset(f);
 while not eof(f) do
  begin
    read(f, a);
    sum:= sum+a;
    i:= i+1;
  end;
 writeln('The sum of the values is ',sum);
 average:= sum/i;
 writeln('The average of the values is ', average:0:2);
 close (f);
 end.