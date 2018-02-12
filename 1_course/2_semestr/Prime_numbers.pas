  //ѕростые числа в выбранном диапазоне. Lotareva irina
  program di;
  var a,b,i:integer;
     function d (x: integer): boolean;
   var i,k:integer;
   begin
     k:=0;
     for i:=1 to x do
      if (x mod i)=0 then k:=k+1;


     if k>2 then
     d:=false// the number is not prime
     else
     d:=true;// the number is prime
     end;

    
  begin
  writeln('Enter the first number ');
  readln(a);
  writeln('Enter the last number');
  readln(b);
 // writeln('Do you want to know if it is prime?');
  for i:=a to b do
  if d(i) then write (i:3);
  

  end.