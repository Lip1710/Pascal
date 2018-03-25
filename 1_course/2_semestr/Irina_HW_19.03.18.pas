//Irina.  HomeWork from 19.03.2018.
         // Enter the number of examinees.
         // Enter their names and grades.
         // Show those with grades of 3,4,5.
         // Calculate the average score.
program kontrolnaya_rabota;
uses CRT;
var  s1,s2,c,n,i:integer;
     grades: array[1..30] of integer;
     surnames: array[1..30] of string;
begin
cls;
s1:=0;
s2:=0;
c:=0;
writeln(' Введите количество пишущих контрольную работу');
readln(n);
writeln('Вводите их фамилии поочерёдно с оценками');
for i:=1 to n do
  begin
    write('Фамилия ',i,': ');
    read(surnames[i]);
    write('  Оценка  ',surnames[i],': ');
    read(grades[i]);
  end;
writeln('Положительные оценки: ');
for i:=1 to n do
  begin
    if grades[i]>2 then
     begin
       writeln(surnames[i],'  ',grades[i]);
       s2:=s2+grades[i];
       c:=c+1;
     end;
    s1:=s1+grades[i];
  end;
 writeln('Средний бал по всем оценкам: ', s1/n:0:2);
 writeln('Средний бал по положительным оценкам: ',s2/c:0:2);
end.