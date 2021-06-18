program pr_3;
var
   h,r : real;
   n   : integer;
begin
   h:=(7-2)/15;
   r:=2;
for
   n:=1 to 16 do
begin
   writeln('arctg(',r:5:4,')=',(arctan(r)):5:4);
   r:=r+h;
end;
end.
