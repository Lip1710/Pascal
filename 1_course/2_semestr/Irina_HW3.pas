// Irina Homework 3. Sort two-Dimensional array, even line - ascending; odd - descending
program SortArray;
const line=10;
      col=5;
      maxn=10;
var  m: array [1..line,1..col] of integer;
     c,i,j,b: integer;

procedure PrintArray ;
  begin
    for c:=1 to col do begin
       write(c:2,': ');
       for i:=1 to line do
           write(m[i,c]:3);
       writeln;
    end;
    writeln;
  end;

begin
  cls;
  // fill in array with random numbers
  for c:=1 to col do
     for i:=1 to line do
        m[i,c]:=random(maxn);

  writeln('Random array:');
  PrintArray;

  // sort array: even line - ascending; odd - descending
  for c:=1 to col do
    for j:=1 to line-1 do
      for i:=1 to line-j do
       if ((m[i,c])>(m[i+1,c])) xor (odd(c)) then begin
         b:=m[i,c];
         m[i,c]:=m[i+1,c];
         m[i+1,c]:=b;
       end;

  writeln('Sorted array:');
  PrintArray;
end.