program lab6;//вариант № 23

const nn=50;
  type mas=array [1..nn] of string;
var a:mas;
      usl:boolean;
      n1:integer;
      s,ss:string; //исходная и вспомогательная строки

      i, j, k:integer;
procedure movesym (var str:string);
var temp:char;
      len:integer;
begin
  temp:=str[1];
  len:=length(str);
  str[1]:= str[len];
  str[len]:=temp;
end;
begin
 write('Введите строку : ');readln(s);
 s:=s+' ';
 k:=0; ss:=' ';
 usl:=false;
 j:=1;
 for i:=1 to length(s) do
begin
if (s[i]=' ') or (s[i]=',') or (s[i]='.') or (s[i]='!') or (s[i]='?') then
begin
if usl then
   begin
   k:=k+1;
   usl:=false;
   a[j]:= copy(s,n1,(i-n1));
   j:=j+1;
   end;
end
else if usl=false then
   begin
   usl:= true;
   n1:=i;
   end;
 end;
 for i:=1 to j-1  do
 begin
 movesym (a[i]);

 end;

writeln('Результат : ');
for i:=1 to j-1  do write(a[i], ' ');
 readln;
end.
