program площадь треугольника по заданым координатам его вершин;
uses math;
var
a,b,c,s,r,alfa,beta,gamma : real;
begin
writeln('¬ведите стороны треугольника');
readln(a, b, c);
r:=(a+b+c)/2;
s:= sqrt(r*(r-a)*(r-b)*(r-c));
alfa:=arccos((sqr(b)+aqr(c)-sqr(a))/2/b/c);
beta:=arcsin(b/a*sin(alfa));
gamma:=pi-(alfa+beta);
alfa:=alfa*180/pi;
beta:=beta*180/pi;
writeln('площадь треугольника =', s :6:2);
writeln('alfa= ', alfa :6:2,' bet= ',beta :6:2, ' gama= ',gama :6:2);
end.