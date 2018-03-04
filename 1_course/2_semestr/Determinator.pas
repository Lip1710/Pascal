// Irina. Find the determinator of a matrix
program matrix;
type mat=array[1..20,1..20] of integer;
const  maxn=20; // max value of matrix's elements if it's filled in randomly
var  n,w,c,i,b,j,k:integer;
     a:mat;

procedure PrintArray(a:mat;n: integer);
 begin
    for c:=1 to n do begin
       write('  ');
       for i:=1 to n do
          write(a[c,i]:3);
       writeln;
    end;
 end;

function minor(a:mat;n,column:integer):mat;
 // - удаление верхней строки, передвижение строк вверх=>изменение определителей;для раскладывания по стр,cт
 var u:integer;
 begin
   for c:=2 to n do begin
     u:=1;
     for i:=1 to n do
        if i <> column then  begin
          Result[c-1,u]:=a[c,i];
          u:=u+1;
        end;
   end;
 end;
 
function det(a:mat;n: integer): integer;
 var k,j,s: integer;
 begin
  s:=0;
  k:=1;
  if n=2 then det:=(a[1,1]*a[2,2])-(a[1,2]*a[2,1])
   else
   begin
    for j:=1 to n do begin
      s:=s+a[1,j]*k*det(minor(a,n,j),n-1);
      k:=k*(-1);
    end;
    det:=s;
   end;
 end;

begin
  cls;
  write('Enter the matrix order (from 2 to 20): ');
  readln(b);
  write('Press 1 for random filling of the array or 2 to fill it in from the keyboard: ');
  readln(w);
  if w=1 then
     for c:=1 to b do
      for i:=1 to b do
          a[i,c]:=random(maxn)
   else begin
      writeln('Enter your array ');
      for c:=1 to b do begin
         writeln(' Enter ',b,' elements of the column number ',c);
         for i:=1 to b do
              readln(a[i,c]);
      end;
   end;

  PrintArray(a,b);
  writeln('The determinator =  ',det(a,b));
 end.
