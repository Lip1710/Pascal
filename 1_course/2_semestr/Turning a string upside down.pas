//Lotareva Irina 12.03.2018.turning a string upside down
program  sud;
var  s:string;
     i: integer;
     n:char;
begin
 writeln('Enter something to fill the string : ');
 readln(s);
 //n:=s[length(s)];
 writeln('The given string : ',s);
  //turning it upside down;
 for i:=0 to (length(s) div 2)  do
     begin
     n:=s[1+i];
     s[1+i]:=s[length(s)-i];
     s[length(s)-i]:=n;
     end;
 writeln('the changed string : ',s);
 
 
 
 
 

 
end.
