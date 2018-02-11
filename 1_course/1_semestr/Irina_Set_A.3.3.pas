program a_3_3;
uses crt;
var x,a,b,c,d : real;
begin
 writeln('second-degree equation');
 writeln(' write numbers for a,b and c');
 readln(a);
 writeln ('a= ',a);
 readln(b);
 writeln('b= ',b);
 readln(c);
 writeln('c= ',c);
 writeln ('finding roots of : ',a,'x^2+',b,'+x+',c,' =0');
  d:=(sqr(b))-(4*a*c);
 writeln ('d=(sqr(b))-(4*a*c)= ', d);
 writeln('x1= ',(-b+sqrt(d))/2:2:2,' and x2= ',(-b-sqrt(d))/2:2:2);
 end.