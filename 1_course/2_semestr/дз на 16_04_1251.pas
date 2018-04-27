program tekstoviy;
var f:text; letters: array['а'..'я'] of integer;
    s:char; i:integer;
begin
i:=0;
assign(f, 'text.txt');
reset(f);
while not eof(f) do 
 begin
   read(f,s);
   i:=i+1;
   if s in ['а'..'я'] then 
     begin 
      inc(letters[s]);     //тоже самое letters[s]:=letters[s]+1;
     end;
 end;
writeln('Общее количество символов в тексте = ',i,'.');
for s:='а' to 'я' do
    if letters[s]>0 then
       writeln('Количество ',s,' = ',letters[s]:5,', что составляет ',letters[s]*100/i:0:0,'%.');

close(f);
end. 