var
x1,x2,y1,y2: real;
k, b: real;
begin
     Write('A(x1;y1):  ');
     readln(x1, y1);
     Write('B(x2;y2):  ');
     readln(x2, y2);
     k:=(y1 - y2)/(x1 - x2);
     b:= y2 - k * x2;
     writeln('y = ', k:0:2, 'x+  ', b:0:2);
end.     