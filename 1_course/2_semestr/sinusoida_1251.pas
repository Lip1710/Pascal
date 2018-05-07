program sinus;   //Irina. Paint Sinusoid  graph
uses GraphABC;

procedure PaintGraph;
 var y,w,h,wm,hm,step,hs:integer;
 begin
   ClearWindow;
   w:=WindowWidth;      // Ширина окна
   h:=WindowHeight;     // Высота окна
   wm:=round(w/2);      // Середина окна по ширине
   hm:=round(h/2);      // Середина окна по высоте
   step:=round(w/25);   // Шаг синусоиды (частота). Или 20 для неизменяемой частоты
   hs:=round(h/2)-40;   // Амплитуда синусоиды
   SetPenWidth(1);
   setPenColor(clBlack);
   Line(0,hm,w,hm);     // Ось координат x
   Line(w-5,hm-5,w,hm); // Ось координат x стрелка
   Line(w-5,hm+5,w,hm); // Ось координат x стрелка
   Line(wm,0,wm,h);     // Ось координат y
   Line(wm,0,wm-5,5);   // Ось координат y стрелка
   Line(wm,0,wm+5,5);   // Ось координат y стрелка
   TextOut(w-12,round(h/2+5), 'x'); 
   TextOut(round(w/2+8),0+5, 'y'); 
   setPenColor(clBlue);
   y:=round(hs*sin((0-wm)/step))+hm; 
   MoveTo(0,y);
   for var x:=1 to w do begin
       y:=round(hs*sin((x-wm)/step))+hm; // x-wm - для прохождения графика через центр оси координат (sin(0)=0)
       LineTo(x,y);
   end;
   Redraw;
 end;
 
begin
 SetWindowCaption('График синусоиды');
 setWindowSize(600,400);
 LockDrawing;
 PaintGraph; // Нарисовать график синусоиды
 OnResize := PaintGraph;
end.
