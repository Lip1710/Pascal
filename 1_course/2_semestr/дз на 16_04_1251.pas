program tekstoviy;
var f:text; letters: array['�'..'�'] of integer;
    s:char; i:integer;
begin
i:=0;
assign(f, 'text.txt');
reset(f);
while not eof(f) do 
 begin
   read(f,s);
   i:=i+1;
   if s in ['�'..'�'] then 
     begin 
      inc(letters[s]);     //���� ����� letters[s]:=letters[s]+1;
     end;
 end;
writeln('����� ���������� �������� � ������ = ',i,'.');
for s:='�' to '�' do
    if letters[s]>0 then
       writeln('���������� ',s,' = ',letters[s]:5,', ��� ���������� ',letters[s]*100/i:0:0,'%.');

close(f);
end. 