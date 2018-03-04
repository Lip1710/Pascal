program matrix;
type mat=array[1..20,1..20] of integer;
const  maxn=20;
var  n:integer; //m:array[1..line,1..col] of integer;
      c,i,
      b,j,k:integer;
      a:mat;

procedure PrintArray(a:mat;n: integer);
 begin
    for c:=1 to n do begin
       //write(c:1,': ');
       write('  ');
       for i:=1 to n do
          write(a[c,i]:3);
       writeln;
    end;
 end;

function minor(a:mat;n,column:integer):mat;
 // - удаление верхней строки, передвижение строк вверх=>изменение определителей? для раскладывания по стр,
 var u:integer;
 begin
   for c:=2 to n do begin
     u:=1;
     for i:=1 to n do
        if i <> column then  begin
          Result[c-1,u]:=a[c,i];   //вместо minor[]:= используем Result[]:= и обратный порядок индексов
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
  //det:=s; // ОШИБКА: det присваивается некорректное значение при n=2 (s=0). Нужно перепестить в ветку else
 end;

begin
  cls;
  write('Enter the matrix order (from 2 to 20): ');
  readln(b);
  // fill in array with random numbers
  for c:=1 to b do
     for i:=1 to b do
        a[i,c]:=random(maxn);
  PrintArray(a,b);
  writeln('The determinator =  ',det(a,b));
 end.
