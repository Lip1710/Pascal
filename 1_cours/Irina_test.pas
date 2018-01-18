//Lotareva Irina. Test
program D_A;
uses crt;
var a: array[1..50] of integer; f: text; sum,b,i: integer; s1,sumq,sumk, s2: real;
procedure PrintArray(a: array [1..50] of integer;i:byte);
begin
 b:=1;
 for b:=1 to i do write(a[b],' ');
 writeln();
end;

begin
 clrscr;
 i:=1;
 sum:=0;
 sumq:=0;
 sumk:=0;
 assign (f,'F:\1.txt');
 reset(f);
 while not eof(f) do
 begin
   readln(f, a[i]);
   sum:=sum+a[i];
   sumq:=sumq + sqr(a[i])*a[i];
   sumk:=sumk+sqr(a[i]);
   i:= i+1;
 end;
 writeln('The array is: '); PrintArray(a,i-1);
 writeln('The sum is: ', sum);
 s1:= sqr(sum);
 s2:= sum*s1;
 writeln('The answer is : ', (s2/sumq)/(s1/sumk):2:2);
 close(f);
 end.
 
 

 

 
 
 
 
 
 
 
 
 

 