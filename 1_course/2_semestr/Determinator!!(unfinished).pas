program matrix;
type mat=array[1..100,1..100] of integer;
//const col=2;
      //line=2;
var  n:integer; //m:array[1..line,1..col] of integer;
      c,i,
      b,j,k,s:integer;
      //procedure PrintArray;
//begin
    //for c:=1 to col do begin
       //write(c:1,': ');
       //for i:=1 to line do
         // write(m[i,c]:3);
      // writeln;
    //end;
 //end;
function minor(a:mat;column:integer):mat;
 begin
  for column:=1 to n do begin//см т - удаление верхней строки, передвижение строк вверх=>изменение определителей? для раскладывания по стр,
   a:=a[

 
 
 end;
 
function det(a:m;n: integer): integer;
 begin
  if n=2  then det:=(a[1,1]*a[2,2])-(a[1,2]*a[2,1])
   else
   begin
    s:=S+a[1,j]*k+det(minor(a,j),n-1);
    k:=k*(-1);
   end;
  det:=s;
 end;
 
 begin
  writeln('Enter the matrix dergee : ');
  readln(b);
  if b=2 do
   det;
  writeln(det);

  
 end.
 
 
 
 
  

