//Lotareva Irina. Problems for Programming. Set A.2

program Irina_SetA2;
var 
	a,b,hundreds,tens,units,i: integer;
	s,s1: string;
	d,f,g: real;

begin
	//Set A.2.1																																																																		
	writeLn('Set A.2.1');
	write('  Enter 3-digit number: ');
	readln(a);
	hundreds := (a div 100)*100;
	tens := ((a-hundreds) div 10)*10;
	units := a-hundreds-tens;
	writeln('  hundreds: ',hundreds);
	writeln('  tens: ',tens); 
	writeln('  units: ',units);
	writeln('  XYZ -> ZXY: ',a,' -> ',units,trunc(hundreds/100),trunc(tens/10));

	//Set A.2.2																																																																
	writeLn('Set A.2.2');
	write('  Enter number: ');
	readln(s);
	writeln('  Counts :',length(s));
	s1:='';
	for i := length(s) downto 1 do
		s1:=s1+s[i];
	writeln('ABCD -> DCBA: ',s,' -> ',s1);

	//Set A.2.3																																																													
	writeLn('Set A.2.3');
	write('  Enter 2-digit number: ');
	readln(a);
	tens := (a div 10);
	units := a-tens*10;
	writeln('  ',tens, '+',units,'=',tens+units);
	writeln('  ',tens, '*',units,'=',tens*units);

	//Set A.2.4																																																											
	writeLn('Set A.2.4');
	write('  Enter 2 numbers (use space between numbers): ');
	readln(a,b);
	writeln('  ',a, '*',b,'=',a*b);
	writeln('  ',a, '/',b,'=',a div b);

	//Set A.2.5																																																								
	writeLn('Set A.2.5');
	write('  Enter 3 real numbers (use space between numbers): ');
	readln(d,f,g);
	writeln('  sum=',d+f+g);
	writeln('  sum with 2 decimal point= ',d+f+g:0:2);

	//Set A.2.6																																																					
	writeLn('Set A.2.6');
	write('  Enter 2 real numbers (use space between numbers): ');
	readln(d,f);
	write('  Enter number of decimal point: ');
	readln(a);
	writeln('  sum with ',a,' decimal point= ',d+f:0:a);

    writeln('End. Press Enter to close');
	readln(); //Waiting for enter to close	

end.
