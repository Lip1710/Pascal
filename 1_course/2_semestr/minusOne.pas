program PowerminusOne;
var i: integer;

function minusOne(n: integer): integer;  // ������� ��� ���������� (-1) � ������� N
  begin
    if odd(n) then minusOne:=-1 else minusOne:=1;
  end;

begin
  cls;
  //������
  for i:=1 to 7 do begin
     writeln(i,' Odd=',odd(i),'  -1^',i,' = ', power(-1,i),'   ',minusOne(i));
  end;
end.

