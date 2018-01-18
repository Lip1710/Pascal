//Lotareva Irina. Problems for Programming. Set A.3.1.

program SetA_3_1;
var    a, b : integer;
begin
   readln(a);
   readln (b);
   writeln (' if a is an even number, solve a*b, and if not solve a+b ') ;
   if ((a mod 2) = 0 ) then   writeln('a is even, a*b, a*b=  ', a*b)
   else
   begin
    writeln ('  a is an odd number,');
   if ((a mod 2) > 0  ) then  writeln (' a+b, a+b=  ', a+b) ;
   end;
   
writeln('End. Press Enter to close');
	readln(); //Waiting for enter to close	

end.
