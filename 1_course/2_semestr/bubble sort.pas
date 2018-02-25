program sort;
const n=15;
var i,j,c,b:integer;m:array[0..n]of integer;
begin
 cls;
 writeln('Enter from 2 to 15 integer numbers : ');
 i:=0;
 for i:=0 to n do
    readln(m[i]);
 writeln('Unsorted : ');
 for i:=0 to n do
    write(m[i]:3);
 writeln;

 for j:=1 to n-1 do
  for i:=0 to n-j do
   if (m[i])>(m[i+1]) then
    begin
     b:=m[i];
     m[i]:=m[i+1];
     m[i+1]:=b;
    end;

 writeln('Now the sorted');
 for i:=0 to n do
   write (m[i] :3 );
    
 end.
   
   



