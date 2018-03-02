program test
  //copy from di.pas;
var x,i:integer;
  procedure d (x: integer);
   var i,k:integer;
   begin
     k:=0;
     for i:=1 to x do
        if (x mod i)=0 then k:=k+1;
     if k>2 then
       writeln(x,' Ñîñòàâíîå ÷èñëî')
     else
       writeln(x,' Ïðîñòîå ÷èñëî');
   end;

begin
  write('Enter the number ');
  readln(x);
  d(x);
end.
