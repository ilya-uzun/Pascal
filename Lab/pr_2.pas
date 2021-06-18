program pr_2;
var
   n,a1,a2,b1,b2 : integer;
   r1,r2         : real;
begin
   writeln('Решим систему неравенств:');
   writeln(' -');
   writeln('|A1X+B1<0');
   writeln('|A2X+B2<0');
   writeln(' -');
   write('Введите а1=');
   readln(a1);
   write('Введите а2=');
   readln(a2);
   write('Введите b1=');
   readln(b1);
   write('Введите b2=');
   readln(b2);
   writeln(' -');
   writeln('|',a1,'X+(',b1,')<0');
   writeln('|',a2,'X+(',b2,')<0');
   writeln(' -');
   r1:=((-b1)/a1);
   r2:=((-b2)/a2);
if (r1<0) and (r2<0)
  then case r1<r2 of
     false : writeln('Ответ:X<',r1 :3:2);
     true  : writeln('Ответ:X<',r2 :3:2);
     end
  else case r1>r2 of
     false : writeln('Ответ:X<',r1 :3:2);
     true  : writeln('Ответ:X<',r2 :3:2);
     end;
end.
