//TODO: сделать из четырех циклов один универсальный,с определением направления движения
program flyingbody;
uses abcobjects,GraphABC;
var a: ObjectABC;i:integer;

begin
 a:=circleabc.Create(0,0,10,clRandom);//(x,y,z,color)
 //for var i:=1 to 480 do begin 
while true do begin
// for i :=1 to 0 do begin
  
  while (a.Top+a.Height)<WindowHeight do begin
    sleep(5);
    a.MoveOn(1,2);//-(Vx*dt,Vy*dt);
  end;
  while (a.Left+a.Width)<WindowWidth do begin
    sleep(5);
    a.MoveOn(2,-1);//-(Vx*dt,Vy*dt);
  end;
  while a.Top>0 do begin
    sleep(5);
    a.MoveOn(-1,-1)//-(Vx*dt,Vy*dt);
  end ;
  while a.Left>0 do begin
    sleep(5);
    if a.Height < WindowHeight then
    a.MoveOn(0,3)//-(Vx*dt,Vy*dt);
     else  begin 
      a.MoveTo(0,WindowHeight); 

      end;
 end;
 end;
end. 

(*
possible?-1)color : (0,0,10,clRandom);2)for i:=1 to windowheight; 3)moveto
look for the hometask for it in yourcopybook
*)