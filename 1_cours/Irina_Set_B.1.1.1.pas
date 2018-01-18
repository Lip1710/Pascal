program B_1_1_1;
var n,sum,a,i:integer; average: real;
 begin
 sum:=0;
 writeln('Hello the user, enter the number of values of the sequence please.');
 readln(n);
 for i:=1 to n do
 begin
    write ('Enter the ',i,' value of your sequence: ');
    readln(a);
    sum:= sum+a;
 end; 
 writeln('The sum of the values is ',sum);
 average:= sum/n;
 writeln('The average of the values is ', average:0:2);
 end.