program SetA33;
var x,y:integer;
begin
 writeln('Please enter a number for coordinates on the X-axis') ;
 readln(x);
 writeln('Please enter a number for coordinates on the Y-axis');
 readln(y);
 if (x=0) AND (y=0) then writeln ('That is the center of Descartes coordinates system')
 else
   if (x=0) or (y=0) then writeln ('It is situated on some axis and does not belong to the quarters')
   else
     if (x>0) and (y>0) then writeln(' The first quarter')
     else
        if (x>0) and (y<0) then writeln( 'The forth quarter')
        else
          if (x<0) and (y>0) then writeln(' The second quarter')
          else
             if (x<0) and (y<0) then writeln(' The third quarter');
end.
 
 
 