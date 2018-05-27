// Irina. Homework from 07.05.2018
// Начало движения с нижнего левого угла 
program flyingbody;
uses abcobjects,GraphABC;
var a: ObjectABC;
    v0,d,ang:integer;
    y,y1,t,x,x1,tmax,vcur,vcurx,vcury:real;
    var tex: TextABC;
const  g = 9.81; // ускорение свободного падения
begin
  //Запрос начальных значений скорости и угла вылета
  tex := TextABC.create(1,WindowHeight-25,12,'Введите начальную скорость (20-200):',clBlack);
  readln(v0); // Начальная скорость
  if (v0<10) or (v0>200) then v0:=80;  //Проверка правильности введённого значения
  writeln( 'Начальная скорость: ',v0);
  tex.Text := 'Введите угол вылета (10-90):';
  readln(ang);  // Угол вылета
  if (ang<10) or (ang>90) then ang:=60; //Проверка правильности введённого значения
  writeln( 'Угол вылета: ',ang);
  tex.Visible:=false; // Скрыть запрос
  a:=circleabc.Create(10,WindowHeight-11,10,clRandom);// Создаём круг с радиусом 10 в левом нижнем углу (x,y,r,color)
  x:=0;
  y:=WindowHeight-a.Height;
  d:=1; //1 - движение направо, -1 - налево
  sleep(200);
  while True do begin; 
     t:=0;  // начальное время
     vcurx:=v0*cos(DegToRad(ang));  // текущая горизонтальная скорость
     x1:=x;
     y1:=y;
     repeat  // Полёт по параболе 
        t:=t+0.05; 
        tmax:=2*v0*sin(DegToRad(ang))/g;       // время достижения нижней границы окна.   //DegToRad(70) = 70*Pi/180
        x:=x1+vcurx*t*d;                               // следующая координата x по траектории полёта
        y:=y1-(v0*sin(DegToRad(ang))*t-(g*sqr(t))/2);  // следующая координата y по траектории полёта
        vcury:=abs(v0*sin(DegToRad(ang))-g*t); // текущая вертикальная скорость
        vcur:=sqrt(sqr(vcurx)+sqr(vcury));     // текущая скорость
        sleep(5);
        if y>(WindowHeight-a.Height) then y:=WindowHeight-a.Height; //если очередной шаг выходит за границы окна,то останавливаем на границе
        if x>(WindowWidth-a.Width) then begin // если достигли границы экрана справа, изменяем направление движения влево
           d:=-1;  
           x1:=x1+2*(x-x1);
        end;
        if x<0 then begin // если достигли границы экрана слева, изменяем направление движения вправо
           d:=1;
           x1:=x1+2*(0-x1);
        end;
        if y<=0 then begin // если достигли границы экрана сверху, изменяем направление движения вниз
           t:=t+(tmax/2-t)*2;
           x1:=x1-((x1+vcurx*t*d)-x);
        end;
        Window.Title := 'x= '+round(x)+', y= '+round(y)+'   Время полёта= '+round(tmax)+'   Тек.время= '+round(t)+'   Скорость= '+round(vcur)+'   Верт.скорость= ' + round(vcury);
        a.Moveto(round(x),round(y));  //Сдвиг объекта
        setpixel (a.Center.X,a.Center.Y,clBlack);  // Линия траектории полёта
     until (a.Top+a.Height)>=WindowHeight; 
     if (vcur<5) and (ang<90) then begin   //остаточное движение по прямой, если закончились отскоки.
        for var i:=1 to 20 do begin
          vcur:=0;
          sleep(60+i*2);
          if x+i*d > (WindowWidth-a.Width) then break;
          a.Moveto(round(x+i*d),round(y));
          setpixel (a.Center.X,a.Center.Y,clBlack);
        end;
        break;
     end;
     v0:=round(vcur*0.85); //новая начальная скорость отскока
  end;
  Window.Title:= ' Завершено';  
end. 
