program a34;//A.3.4
var t:real ; scale: char;a:byte;
begin
writeln (' Enter the temperature value for converting it from Celsius to Farenheit or from Farenheit to Celsius');
readln (t);
writeln('Choose the scale of it and enter 102 for F or 99 for C');
readln(a);
write(t); 
writeln(' in the scale of ',a);
writeln ('Here is the conversion');
scale:= chr(a);// ASCII: c=99, f=102
if (scale= 'c') then
 begin
t:= t*9/5+32;
writeln ('The temperature is ',t:3:1,' degrees F');
end
else
begin
if (scale= 'f') then
t:= (t-32)*5/9;
writeln('The temperature is ', t:3:1,' degrees C');
end;
end.


