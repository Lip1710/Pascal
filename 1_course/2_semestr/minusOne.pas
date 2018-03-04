program PowerminusOne;
var i: integer;

function minusOne(n: integer): integer;  // Функция для вычисления (-1) в степени N
  begin
    if odd(n) then minusOne:=-1 else minusOne:=1;
  end;

begin
  cls;
  //пример
  for i:=1 to 7 do begin
     writeln(i,' Odd=',odd(i),'  -1^',i,' = ', power(-1,i),'   ',minusOne(i));
  end;
end.

