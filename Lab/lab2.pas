program lab2;// вариант є 23
var n,a1,a2,b1,b2, c1, c2:integer;
    r1,r2, x, y:real;
    procedure vvod;
    begin
      writeln('–ешим систему неравенств:');
       writeln(' -');
       writeln('| A1*X+B1*Y+C1>0');
       writeln('| A2*X+B2*Y+C2>0');
       writeln(' -');
       write('¬ведите a1=');
       readln(a1);
       write(' ¬ведите a2=');
       readln(a2);
       write(' ¬ведите b1=');
       readln(b1);
       write(' ¬ведите b2=');
       readln(b2);
      write(' ¬ведите c1=');
       readln(c1);
       write(' ¬ведите c2=');
       readln(c2);
    end;
    function sig(a:real):string;
    var s:string;
        b:real;
begin
   b:=abs(a);
   str(b:3:2,s);
  // write(s);
  if a>=0 then sig:='+'+s
  else sig:='-'+s;

end;
begin
  vvod;
 writeln(' -');
 writeln('| ',a1,'*X+',b1,'*Y+',c1,'>0');
 writeln('| ',a2,'*X+',b2,'*Y+', c2, '>0');
 writeln(' -');
 if (a1=0) and (a2=0) or (b1=0) or (b2=0) then writeln ('не сответствует вид');

 if b1>0 then 
  begin
    if b2>0 then write(sig(-a1/b1),'*x+', sig(-c1/b1),'<y>',sig(-a2/b2),'*x+', sig(-c2/b2))
    else
     if b2<0 then write(sig(-a1/b1),'*x+', sig(-c1/b1),'<y<',sig(-a2/b2),'*x+', sig(-c2/b2));
  end
 else if b1<0 then
    if b2>0 then write(sig(-a1/b1),'*x+', sig(-c1/b1),'>y>',sig(-a2/b2),'*x+', sig(-c2/b2))
    else
        if b2<0 then write(sig(-a1/b1),'*x+', sig(-c1/b1),'>y<',sig(-a2/b2),'*x+', sig(-c2/b2));
  readln();
end.         
