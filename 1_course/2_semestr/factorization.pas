//Lotareva Irina. Homework 1
program factorize;
//uses CRT;
var  x,i: integer;
     a: string;
 procedure fact(x:integer);
 begin
  for i:=2 to x do begin
   if (x mod i)=0 then begin
     x:=(x div i);
     write(a,i);
     a:='*';
     fact(x);
   end;
  end;
 end;

 Begin
  write('Enter the number for factorization : ');
  readln(x);
  writeln(' Recursive factorization of ',x,' is :');
  a:=' ';
  fact(x);
  writeln();
 End.
