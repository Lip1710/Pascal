program sinus;   //Irina. Paint Sinusoid  graph
uses GraphABC;

procedure PaintGraph;
 var y,w,h,wm,hm,step,hs:integer;
 begin
   ClearWindow;
   w:=WindowWidth;      // ������ ����
   h:=WindowHeight;     // ������ ����
   wm:=round(w/2);      // �������� ���� �� ������
   hm:=round(h/2);      // �������� ���� �� ������
   step:=round(w/25);   // ��� ��������� (�������). ��� 20 ��� ������������ �������
   hs:=round(h/2)-40;   // ��������� ���������
   SetPenWidth(1);
   setPenColor(clBlack);
   Line(0,hm,w,hm);     // ��� ��������� x
   Line(w-5,hm-5,w,hm); // ��� ��������� x �������
   Line(w-5,hm+5,w,hm); // ��� ��������� x �������
   Line(wm,0,wm,h);     // ��� ��������� y
   Line(wm,0,wm-5,5);   // ��� ��������� y �������
   Line(wm,0,wm+5,5);   // ��� ��������� y �������
   TextOut(w-12,round(h/2+5), 'x'); 
   TextOut(round(w/2+8),0+5, 'y'); 
   setPenColor(clBlue);
   y:=round(hs*sin((0-wm)/step))+hm; 
   MoveTo(0,y);
   for var x:=1 to w do begin
       y:=round(hs*sin((x-wm)/step))+hm; // x-wm - ��� ����������� ������� ����� ����� ��� ��������� (sin(0)=0)
       LineTo(x,y);
   end;
   Redraw;
 end;
 
begin
 SetWindowCaption('������ ���������');
 setWindowSize(600,400);
 LockDrawing;
 PaintGraph; // ���������� ������ ���������
 OnResize := PaintGraph;
end.
