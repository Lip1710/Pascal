//Lotareva Irina. Problems for Programming.
program C_1_3;
const N=1000;
var X,ost,i,d: integer; m: array[0..N] of integer;
begin
 	//Form an ordered array
  for  i:=1 to N do m[i]:=i+1;
 	write('Enter a number: ');
 	readln(X);
 	//search X in array
 	for  i:=1 to N do
 	begin
 	 if m[i] = X then 
 	   begin
 	    writeln(X,' is member of array. Its position is ',i);
 	    break;
 	   end
 	   else if i=N then writeln('There is not ',X,' in array');
 	end;
end.

