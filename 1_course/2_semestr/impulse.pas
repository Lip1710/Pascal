//закон сохранения импульса(28.05)
//to do:шарики долетают друг до друга и оттталкиваются, изменяя скорости по закону сохранения импульса,возможно с учётом масс
program flyingbody;
uses abcobjects,GraphABC;
var a: ObjectABC; b: ObjectABC;
    vo1,vo2,m1,m2,d:integer;
    xo1,xo2,x1,x2,v1,v2,t,k:real;
    tex: textABC;
const r: integer=20;
begin
 //ввод значений
 tex := TextABC.create(1,WindowHeight-25,12,'Введите скорость первого шара:',clBlack);
 readln(vo1);
 writeln('vo1= ',vo1);
 tex.Visible:=false;
 tex := TextABC.create(1,WindowHeight-25,12,'Введите скорость второго шара:',clBlack);
 readln(vo2);
 writeln('vo2= ',vo2);
 tex.Visible:=false;
 tex := TextABC.create(1,WindowHeight-25,12,'Введите массу первого шара(г):',clBlack);
 readln(m1);
 writeln('m1= ',m1,'г');
 tex.Visible:=false;
 readln(m2);
 writeln('m2= ',m2,'г');
 tex.Visible:=false;
 a:=circleabc.Create(40,windowheight-r-1,r,clrandom);
 b:=circleabc.Create(windowwidth-45,windowheight-r-1,r,clrandom);
 //while not(a=circleabc((240)-r,windowheight-2*r-1))and(b=circleabc((240)+r,windowheight-2*r-1) )do
    begin
    t:=0;
    
    k:=m1/m2;
    v1:=m1*vo1-m2*vo2+m2*((m1*vo1-m2*vo2-m1*v1)/m2)/m2;
    v2:=(-m1*vo1+m2*vo2-m1*v1)/m2;
    //(k*vo1)-vo2=(k*v1)-v2;-закон сохранения импульса
    xo1:=40;
    xo2:=windowwidth-45;
     while not(x1=240-r)and(x2=240+r) do 
     begin
     t:=t+0.05;    
     x1:= xo1+vo1*t;
     a.Moveto(int(x1));(windowheight-r-1));
     xo1:=x1;
     x2:= xo2-vo2*t;
     b.Moveto(int(x2));(windowheight-r-1));
     xo2:=x2;
    
    
     end;
    end;
 
 //a.MoveTo((240)-r,windowheight-2*r-1);
 //b.MoveTo((240)+r,windowheight-2*r-1);
end.