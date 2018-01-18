//Lotareva Irina. Problems for Programming.
program B_1_6;
var maxn:integer; pr,sum,time1,time2,time3:real;
function sqrt2(b: integer):real;
 var i: integer;
 begin
  Result:=0;
  for i:=1 to b do Result:= sqrt(2 + Result);
 end;
 
begin
  write('  Enter max n for Pi formula: ');
	readln(maxn);
	time1:=Milliseconds;
	
  //Wallis 
	pr:=1;
	for var n:=1 to maxn do
  begin
    pr:=pr*((2*n/(2*n-1))*(2*n/(2*n+1)));
  end; 
  time1:=MillisecondsDelta/1000;
	writeln('Wallis  Pi = ',pr*2, ' | Perfomance: ',time1,' секунд');

  //Leibniz
	sum:=0;
	for var n:=0 to maxn do
  begin
    sum:=sum+(power(-1,n)/(2*n+1));
  end;
  time2:=MillisecondsDelta/1000;
	writeln('Leibniz Pi = ',sum*4, ' | Perfomance: ',time2,' секунд');

  //Viete
	pr:=1;
	for var n:=1 to maxn do
  begin
    pr:=pr*(sqrt2(n)/2);
  end; 
  time3:=MillisecondsDelta/1000;
	writeln('Viete   Pi = ',2/pr, ' | Perfomance: ',time3,' секунд');
	writeln('Pascal  Pi = ',Pi);
  //writeln('min time = ',min(min(time1,time2),time3));
end.
