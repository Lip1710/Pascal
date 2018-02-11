//Lotareva Irina.
program factorize;
var  x,i: integer;
 procedure fact(x:integer);
 begin
  for i:=2 to x do begin
   if (x mod i)=0 then begin
     x:=(x div i);
     write(' ',i);
     fact(x);
   end;
  end;
 end;

 Begin
  write('Enter the number for factorization : ');
  readln(x);
  writeln(' Recursive factorization of ',x,' is :');
  fact(x);
  writeln();
 End.
