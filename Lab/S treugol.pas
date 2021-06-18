program S_treugol;
//uses math;
var
a,b,c,s,r,alfa,beta,gamma : real;
begin
writeln('¬ведите стороны треугольника');
readln(a, b, c);
r:=(a+b+c)/2;
s:= sqrt(r*(r-a)*(r-b)*(r-c));
alfa:=arccos((sqr(b)+sqr(c)-sqr(a))/2/b/c);
beta:=arcsin(b/a*sin(alfa));
gamma:=pi-(alfa+beta);
alfa:=alfa*180/pi;
beta:=beta*180/pi;
writeln('площадь треугольника =', s :6:2);
writeln('alfa= ', alfa :6:2,' bet= ',beta :6:2, ' gama= ',gamma :6:2);
end.