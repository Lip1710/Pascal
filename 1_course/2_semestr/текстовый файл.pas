program tekstoviy;
var f:text; s:char;
begin
 assign(f, '1.txt');
 rewrite(f);
 writeln(f,'текст');
 writeln(f,'ещё текст');
 close(f);
 reset(f);
 while not eof(f) do begin
   read(f,s);
   write(s);
 end;
 close(f);
 
end. 