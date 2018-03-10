program letters;
//uses CRT;
procedure FindMinMax (s: string);
 var     i,min,max,n: integer;
 begin
   //ClrScr;
   n:=0;
   min:=length(s);
   max:=0;
    for i:= 1 to length(s)do
     begin
       if s[i]<> ' ' then begin
          n:=n+1;
          if n>max then max:=n;
          if (i=length(s)) and (n<min) then min:=n;
          end
       else begin
          if (n>0) and (n<min) then min:=n;
          n:=0;
       end;
     end;
     writeln(s,'  Long=',max,' Short=',min);
 end;
 
begin
 cls;
 FindMinMax('1');
 FindMinMax(' 1');
 FindMinMax(' 1 ');
 FindMinMax('1 22');
 FindMinMax(' 1 22 ');
 FindMinMax('1 22 333');
 FindMinMax(' 1 22 333 ');
 FindMinMax('1 22 333 444');
 FindMinMax(' 1 22 333 444 ');
 FindMinMax('11 2 333');
 FindMinMax(' 11 2 333 ');
 FindMinMax('1111 222 33');
 FindMinMax(' 1111 222 33 ');
 FindMinMax('1111 222 3 ');
 FindMinMax(' 1111 222 3');
 FindMinMax(' 1111 22222 33');
 FindMinMax(' 1111 22222 33 ');
 FindMinMax(' 1111');
 FindMinMax(' 1111 ');
 FindMinMax(' 11111 2222 444');
 FindMinMax(' 111111 222 3333333 55');
 FindMinMax(' мама мыла раму рамище');
 FindMinMax('  мама мыла юлу рамище');
 FindMinMax('Сижу за решеткой в темнице сырой Вскормленный в неволе орел моjkjkjлодойfffzf');
 

end.
