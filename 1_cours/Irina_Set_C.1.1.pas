//Lotareva Irina. Problems for Programming.
program C_1_1;
var n,m,ost: integer; bin: string;
begin
 	write('Enter positive integer to convert into binary: ');
 	readln(n);
 	m:=n;
 	bin:='';
  while m>0 do
 	begin
 	  ost:=m mod 2;
 	  m:= m div 2;
 	  if ost=0 then bin:='0'+bin
 	   else bin:='1'+bin;
 	end;
 	writeln(n,' into binary = ',bin);
end.

