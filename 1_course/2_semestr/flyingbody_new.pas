// Irina. Homework from 07.05.2018
// ������ �������� � ������� ������ ���� 
program flyingbody;
uses abcobjects,GraphABC;
var a: ObjectABC;
    v0,d,ang:integer;
    y,y1,t,x,x1,tmax,vcur,vcurx,vcury:real;
    var tex: TextABC;
const  g = 9.81; // ��������� ���������� �������
begin
  //������ ��������� �������� �������� � ���� ������
  tex := TextABC.create(1,WindowHeight-25,12,'������� ��������� �������� (20-200):',clBlack);
  readln(v0); // ��������� ��������
  if (v0<10) or (v0>200) then v0:=80;  //�������� ������������ ��������� ��������
  writeln( '��������� ��������: ',v0);
  tex.Text := '������� ���� ������ (10-90):';
  readln(ang);  // ���� ������
  if (ang<10) or (ang>90) then ang:=60; //�������� ������������ ��������� ��������
  writeln( '���� ������: ',ang);
  tex.Visible:=false; // ������ ������
  a:=circleabc.Create(10,WindowHeight-11,10,clRandom);// ������ ���� � �������� 10 � ����� ������ ���� (x,y,r,color)
  x:=0;
  y:=WindowHeight-a.Height;
  d:=1; //1 - �������� �������, -1 - ������
  sleep(200);
  while True do begin; 
     t:=0;  // ��������� �����
     vcurx:=v0*cos(DegToRad(ang));  // ������� �������������� ��������
     x1:=x;
     y1:=y;
     repeat  // ���� �� �������� 
        t:=t+0.05; 
        tmax:=2*v0*sin(DegToRad(ang))/g;       // ����� ���������� ������ ������� ����.   //DegToRad(70) = 70*Pi/180
        x:=x1+vcurx*t*d;                               // ��������� ���������� x �� ���������� �����
        y:=y1-(v0*sin(DegToRad(ang))*t-(g*sqr(t))/2);  // ��������� ���������� y �� ���������� �����
        vcury:=abs(v0*sin(DegToRad(ang))-g*t); // ������� ������������ ��������
        vcur:=sqrt(sqr(vcurx)+sqr(vcury));     // ������� ��������
        sleep(5);
        if y>(WindowHeight-a.Height) then y:=WindowHeight-a.Height; //���� ��������� ��� ������� �� ������� ����,�� ������������� �� �������
        if x>(WindowWidth-a.Width) then begin // ���� �������� ������� ������ ������, �������� ����������� �������� �����
           d:=-1;  
           x1:=x1+2*(x-x1);
        end;
        if x<0 then begin // ���� �������� ������� ������ �����, �������� ����������� �������� ������
           d:=1;
           x1:=x1+2*(0-x1);
        end;
        if y<=0 then begin // ���� �������� ������� ������ ������, �������� ����������� �������� ����
           t:=t+(tmax/2-t)*2;
           x1:=x1-((x1+vcurx*t*d)-x);
        end;
        Window.Title := 'x= '+round(x)+', y= '+round(y)+'   ����� �����= '+round(tmax)+'   ���.�����= '+round(t)+'   ��������= '+round(vcur)+'   ����.��������= ' + round(vcury);
        a.Moveto(round(x),round(y));  //����� �������
        setpixel (a.Center.X,a.Center.Y,clBlack);  // ����� ���������� �����
     until (a.Top+a.Height)>=WindowHeight; 
     if (vcur<5) and (ang<90) then begin   //���������� �������� �� ������, ���� ����������� �������.
        for var i:=1 to 20 do begin
          vcur:=0;
          sleep(60+i*2);
          if x+i*d > (WindowWidth-a.Width) then break;
          a.Moveto(round(x+i*d),round(y));
          setpixel (a.Center.X,a.Center.Y,clBlack);
        end;
        break;
     end;
     v0:=round(vcur*0.85); //����� ��������� �������� �������
  end;
  Window.Title:= ' ���������';  
end. 
