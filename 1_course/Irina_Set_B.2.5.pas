//Lotareva Irina. Problems for Programming.
program B_2_5;
var n: integer; e1,e2,e3,time1,time2,time3:real;
function fact(n: integer): BigInteger;
 begin
    Result:= 1;
    for var i:=1 to n do Result:= Result * i;
 end;
begin
 	write('Enter n to find e: ');
	readln(n);
	time1:=Milliseconds;
  //e1
	e1:=power(1+1/n,n);
	time1:=MillisecondsDelta/1000;
	writeln('       e = ', e1, ' | Perfomance: ',time1,' секунд');
  //e2
  e2:=0;
	for var i:=0 to n do 
      e2:=e2+1/fact(i);
	time2:=MillisecondsDelta/1000;
	writeln('       e = ', e2, ' | Perfomance: ',time2,' секунд');
  //e3
  e3:=n*power((sqrt(2*Pi*n)/fact(n)),1/n);
  time3:=MillisecondsDelta/1000;
	writeln('       e = ', e3, ' | Perfomance: ',time3,' секунд');
  writeln('Pascal e = ', E);
end.

