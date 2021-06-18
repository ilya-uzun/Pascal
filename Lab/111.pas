program Project1;
uses
  Classes, SysUtils
var
   gradus, minuta : integer;
   radian	  : real;

begin
   write('gradus=');
   readln(gradus);
   write('minuta=');
   readln(minuta);
   redian:=gradus*pi/180+minuta*pi/(180*60);
   writeln('radian=', radian);
end
