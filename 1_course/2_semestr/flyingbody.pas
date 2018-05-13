//TODO: найти формулу угла отскока 
//TODO: найти формулу скорости после отскока
// Irina. Homework from 07.05.2018
program flyingbody;
uses abcobjects,GraphABC;
var a: ObjectABC;
    y,y1,v0,d:integer;
    t,x,x1,tmax,vcur:real;
const  g=9.81; // ускорение свободного падения
begin
  v0:=10;   // начальная горизонтальаня скорость
  a:=circleabc.Create(0,0,10,clRandom);//(x,y,z,color)
  t:=0; // начальное время
  while (a.Top+a.Height)<WindowHeight do begin  //падение c начальной горизонтальной скоростью v0 
     t:=t+0.05; // прирост времени
     tmax:=sqrt((WindowHeight-a.Height)*2/g); // время достижения нижней границы окна
     x:=v0*t;               // координата x
     y:=round(sqr(t)*g/2);  // координата y
     sleep(10);
     if y>(WindowHeight-a.Height) then y:=WindowHeight-a.Height;  //если очередной шаг выходит за границы окна,то останавливаем на границе
     vcur:=g*t; // текущая скорость
     Window.Title := 'x= '+round(x)+'   y= ' + y +Format('  время падения={0:f1}',tmax)+Format(' тек.время={0:f1}',t)+Format(' скорость={0:f0}',round(vcur));
     a.Moveto(round(x),y); // -(Vx*dt,Vy*dt);
  end;
  sleep(50);
  v0:=round(vcur*0.7); //новая начальная скорость после приземления
  d:=1; //1 - движение направо, -1 - налево
  while True do begin;  // отскоки
     t:=0;
     y:=y-1;
     x:=x+1;
     a.Moveto(round(x),y);
     x1:=x;
     y1:=y;
     t:=t+0.05;
     while ((a.Top+a.Height)<WindowHeight) do begin  //каждый отскок
        //tmax:=sqrt((WindowHeight-a.Height)*2/g);  // время достижения нижней границы окна
        tmax:=2*v0*sin(70*Pi/180)/g;  // время достижения нижней границы окна
        x:=x1+(v0)*cos(70*Pi/180)*t*d;                    // координата x
        y:=y1-round((v0)*sin(70*Pi/180)*t-(g*sqr(t))/2);  // координата y 
        sleep(10);
        vcur:=abs(v0*sin(70*Pi/180)-g*t); // текущая скорость
        if y>(WindowHeight-a.Height) then y:=WindowHeight-a.Height; //если очередной шаг выходит за границы окна,то останавливаем на границе
        if (x>(WindowWidth-a.Width)) and (d=1) then begin // изменяем направление движения влево
           d:=-1;  
           x1:=x1+2*(x-x1);
        end;
        if (x<0) and (d=-1) then begin // изменяем направление движения вправо
           d:=1;
           x1:=x1+2*(0-x1);
        end;
        Window.Title := 'x= '+round(x)+'   y= ' + y +Format('  время падения={0:f1}',tmax)+Format(' тек.время={0:f1}',t)+Format(' скорость={0:f0}',round(vcur));
        a.Moveto(round(x),y);
        t:=t+0.05;
     end;
     if vcur<7 then begin   //остаточное движение по прямой, если закончились отскоки.
        for var i:=1 to 20 do begin
          vcur:=0;
          sleep(60+i*2);
          if x+i*d > (WindowWidth-a.Width) then break;
          a.Moveto(round(x+i*d),y);
        end;
        break;
     end;
     v0:=round(vcur*0.75); //новая начальная скорость отскока
  end;
  Window.Title:= ' Завершено';
end. 
