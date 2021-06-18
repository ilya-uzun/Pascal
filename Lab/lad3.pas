program lab3;// вариант 23
var
   h,r : real;
   n   : integer;
begin
   h:=(8-(-5))/15;
   r:=-5;
writeln (' h = ',h);
for
   n:=1 to 16 do
begin
   writeln('x2tg(x)/2(',r:5:4,')=',(sqr(r)*tan(r)/2):5:4); // где x=r
   r:=r+h;
end;
end.