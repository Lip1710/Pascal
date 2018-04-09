program tekstoviy;
var f:text; letters: array['а'..'я'] of integer;s:char;
    //i:char;
    n:integer;

begin
n:=0;
assign(f, '1.txt');
 //for i:='а' to 'я' do
  //letters[i]:=0;
 
 reset(f);
 
 
 //read(letters[i]);
 while not eof(f) do 
 begin
  read(f,);
  read(f,s);
  if s in ['а'..'я'] then 
  begin
  inc(letters[s]);
  n:=n+1;
  end;
 
 
 close(f);

 
 end;
end. 
 