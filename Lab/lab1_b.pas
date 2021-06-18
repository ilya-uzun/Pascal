program lab1b;//вариант № 23.b
const r=1;
       //  x0=  0.6;
      //   y0=    - 0.5;       
var pro:boolean;
x0, y0 : real;
begin
writeln('введите точку по  х', x0);
readln(x0);
writeln('введите точку по  y', y0);
readln(y0);

pro:= ((sqr(x0-1)+sqr(y0-0) )<=(r*r))and not ((y0<=(-x0)+1)and((y0>=x0-1)));
writeln('Точка с координатами М(',x0:0:1,',',y0:0:1,')');
if pro then writeln('Принадлежит заштрихованной области.')
else writeln('Не принадлежит заштрихованной области.');
readln();
end.   
  
