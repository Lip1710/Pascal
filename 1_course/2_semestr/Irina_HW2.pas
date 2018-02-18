//Lotareva Irina. Homework 2
program Homework2;
var i,n:integer;  s:real;
begin
 cls;
 s:=0;
 write('Enter n : ');
 readln(n);
 for i:=1 to n do
    s:=s+((1+i)/sqr(i));
 writeln('The answer is: ',s:0:3);
end.
   
