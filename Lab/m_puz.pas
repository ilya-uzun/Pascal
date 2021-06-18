Program Duddle_Sort;
Uses Crt;
Const
   N = 20; //длина массива
Type
   TVector = array [1..n] of Real;
Var
   Vector : Tvector;
   b      : Real;
   i,k    : integer;
begin
   ClrScr; //????
   Writeln('введите элементы массива: ');
   for i:= 1 to n do read (Vector[1]); Readln;

   for k:= n downto 2 do
//"Всплывание"очередного максимального элемента на к-ю позицию
      for i:= 1 to k-1 do
         if Vector[i]> Vector[i+1]then
begin
   b := Vector[1];
   Vector[1]:=Vector[i+1];
   Vector[i+1]:=b;
end;

   Writeln ('Отсортировать массив :');
   for i:= 1 to n do Write (Vector[i]: 8:2);
   writeln;
end.
