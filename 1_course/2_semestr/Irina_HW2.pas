//Lotareva Irina. Homework 2;
program Homework2;
var n,i:integer; sum:real;
begin
 cls;
 sum:=0;
 write('Enter n, please:');
 readln(n);
 for i:=1 to n do sum:= sum+((1+i)/sqr(i));
 writeln('The answer is ',sum:0:3);
end.