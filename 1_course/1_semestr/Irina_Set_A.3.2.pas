 //Lotareva Irina Set_A.3.2.

 program  Set_A_3_2 ;
     var  x :integer;
     begin
     readln (x);
     if x>3 then
     writeln ('as x>3, finding the value of the function: x^2+5 = ', (x*x)+5,', now you may try x<=3 or stop doing this ' )
     else
     writeln ('as x <=3, finding the value of the function: x-8= ', x-8, ', now you may try x>3 or stop doing this');
     readln();
     end.
