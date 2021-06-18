program Stepeni;
var
   a, b, c : Real;
begin
   Writeln('Ââåäèòå çíà÷åíèÿ');
   Readln(a, b);
   repeat
      Writeln(c);
      c:= c*a;
   until c>=b
end.
