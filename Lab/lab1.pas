program lab1; // вариант №24.а
var 
y,x : real;
// const x=4.352;
begin
   writeln('Вычислим значение функции Y=ch|x+1|'); //ch гиперболический косинус
   writeln('введите х');
   readln(x);
   y:= abs((exp(x+1)+exp(-x+1))/2);          // ch x = (e^x + e^-x)/2
   writeln('Y=',y :3:2);
   writeln('Y^2=',y*y :3:2);
   writeln('ABS(Y^2)',abs(y*y) :3:2);// abs возвращает модул х
end.
