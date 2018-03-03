program matrix;
type mat=array[1..100,1..100] of integer;
const  maxn=20;
var  n:integer; //m:array[1..line,1..col] of integer;
      c,i,
      b,j,k,s:integer;

(* procedure PrintArray;
  begin
    for c:=1 to col do begin
       write(c:1,': ');
       for i:=1 to line do
          write(m[i,c]:3);
      writeln;
    end;
 end;
   *)
function minor(a:mat;column:integer):mat;
 var u:integer;
 begin
 u:=1;
 for c:=2 to b do
     for i:=1 to b do
        if i <> column then  begin
          minor[u,c-1]:=a[i,c];  //ошибка-"неверное кол-во фактических параметров" после скобок массива minor
          u:=u+1;
        end;

  // - удаление верхней строки, передвижение строк вверх=>изменение определителей? для раскладывания по стр,
end;
 
function det(a:mat;n: integer): integer;
 var k: integer;
 begin
  k:=1;
  if n=2 then det:=(a[1,1]*a[2,2])-(a[1,2]*a[2,1])
   else
   begin
    for j:=1 to n do begin
      s:=s+a[1,j]*k*det(minor(a,j),n-1);
      k:=k*(-1);
    end;
   end;
  det:=s;
 end;

 begin
  writeln('Enter the matrix order: ');
  readln(b);
  s:=0;
  // fill in array with random numbers
  for c:=1 to b do
     for i:=1 to b do
        a[i,c]:=random(maxn);


  writeln('The determinator =  ',det(a,b));

  
 end.
 
 
 
 
  

