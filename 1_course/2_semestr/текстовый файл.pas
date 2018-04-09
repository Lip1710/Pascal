program tekstoviy;
var f:text; s:char;
begin
 begin
 assign(f, '1.txt');
 rewrite(f);
 writeln(f,'текст');
 writeln(f,'ещё текст');
 close(f);
 end;
 
 reset(f);
 while not eof(f) do begin
  read(f,s);
  writeln(s);
  end;
 close(f);
 
end. 