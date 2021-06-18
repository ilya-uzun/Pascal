program lab_4;//вариант 23
// const n9 =9;
var a, sum:real;
    n9, n:integer;

begin
writeln('введите номер члена ряда  n');
   readln(n9);
 write ('сумма членов ряда An= e^-√n равна ');
 sum:=0;
 for n:=1 to n9 do
  begin
  a:=exp(-sqrt(n));
  sum:=sum+a;
  end;
   writeln(sum:5:4);
end.
