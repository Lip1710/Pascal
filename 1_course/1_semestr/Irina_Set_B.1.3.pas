//Lotareva Irina. Problems for Programming.
program B_1_3;
var maxn:integer; pr:real;
begin
 	write('  Enter max n for Wallis formula: ');
	readln(maxn);
	pr:=1;
	for var n:=1 to maxn do
  begin
    pr:=pr*((2*n/(2*n-1))*(2*n/(2*n+1)));
  end; 
	writeln('Wallis Pi = ',pr*2);
	writeln('Pascal Pi = ',Pi);
end.