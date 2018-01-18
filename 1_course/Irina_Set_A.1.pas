//Lotareva Irina. Problems for Programming. Set A.1.4 - 6

program Irina_SetA1;
var 
	a,d,c,k: integer;

begin
	//Set A.1.4																																															
	writeLn('Set A.1.4');
	writeLn('  I div J = trunc(I/J)');
	writeLn('  I mod J = I - (I div J) * J');

	//Set A.1.5																																							
	writeln('Set A.1.5');
	writeln('  Finding (a+(d-12)*3)*(c-5*k)');
	write('  Enter value of a d c k (use space between numbers): ');
	readln(a,d,c,k);
	writeln('  (a+(d-12)*3)*(c-5*k) = ',(a+(d-12)*3)*(c-5*k));

	//Set A.1.6																												
	writeLn('Set A.1.6');
	write('  Enter 3 numbers (use space between numbers): ');
	readln(a,d,c);
	writeln('  Reversed order: ',c,' ',d,' ',a);

    writeln('End. Press Enter to close');
	readln(); //Waiting for enter to close	

end.
