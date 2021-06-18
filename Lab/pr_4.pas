program pr_4;
var 
   sum,an : real;
   n      : integer;
begin

   sum:=0;
   an:=1;
   n:=1;
   while an>0.0001 do
begin
   sum:=sum+an;
   n:=n+1;
   an:=an*(exp(n*(ln(n/(n+1)))));
end;
   writeln('Сумма',n,'элемннтов ровна=',sum :7:6);
end.
