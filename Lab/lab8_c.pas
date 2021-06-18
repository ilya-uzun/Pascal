program lab8_c;//вариант № 23
uses crt;
type data=record
          fio:string[30];
          godr,godo:integer;
          ates:record
               mat,fiz,rus:integer;
               end;
          haus:boolean;
          ekz:record
              mat,fiz,rus:integer;
              end;
          end;
var stu:data;
    files,filee:file of data;
    keys:char;
    sr:real;
procedure add(n:integer);
begin
 reset(files);rewrite(filee);
 while not eof(files) do begin read(files,stu);write(filee,stu);end;
 reset(filee);rewrite(files);
 while not eof(filee) do begin read(filee,stu);write(files,stu);end;
 for n:=1 to n do
 begin
  clrscr;
  writeln('      Вводим данные об абитуриентt');
  write('Фамилия Имя Отчество..');readln(stu.fio);
  write('Год рождения..........');readln(stu.godr);
  write('Год окончания школы...');readln(stu.godo);
  writeln('      Оценки в атестате');
  write('Метематика.....');readln(stu.ates.mat);
  write('Физика.........');readln(stu.ates.fiz);
  write('Русский язык...');readln(stu.ates.rus);
  writeln('Нуждается ли в общежитии (1-да/2-нет)');
  keys:=readkey;if keys='1' then stu.haus:=true
                            else stu.haus:=false;
  writeln('      Оценки на вступительных экзаменах');
  write('Метематика.....');readln(stu.ekz.mat);
  write('Физика.........');readln(stu.ekz.fiz);
  write('Русский язык...');readln(stu.ekz.rus);
  write(files,stu);
 end;
 close(files);close(filee);erase(filee);
end;
procedure print;
var n:byte;
begin
 writeln('      ',stu.fio);
 writeln('Год рождения..........',stu.godr);
 writeln('Год окончания школы...',stu.godo);
 writeln('      Оценки в атестате');
 writeln('Метематика............',stu.ates.mat);
 writeln('Физика................',stu.ates.fiz);
 writeln('Русский язык..........',stu.ates.rus);
 writeln('      Оценки на вступительных экзаменах');
 writeln('Метематика............',stu.ekz.mat);
 writeln('Физика................',stu.ekz.fiz);
 writeln('Русский язык..........',stu.ekz.rus);
 if stu.haus then writeln('Нуждается в общежитии')
             else writeln('Не нуждается в общежитии');
 for n:=1 to 79 do write('*');
 writeln('Для продолжения нажмите Enter !');
 readln;
end;
begin
 assign(files,'c:\test\data.dat');assign(filee,'c:\test\date.dat');
 add(3);
 clrscr;
 reset(files);
 while not eof(files) do
 begin
  read(files,stu);
  sr:=(stu.ekz.mat+stu.ekz.fiz+stu.ekz.rus)/3;
 if (sr>4.5) and (((stu.ates.mat=3) and (stu.ates.fiz<>3) and (stu.ates.rus<>3)) or((stu.ates.mat<>3) and (stu.ates.fiz=3) and (stu.ates.rus<>3)) or((stu.ates.mat<>3) and (stu.ates.fiz<>3) and (stu.ates.rus=3))) then print;
 end;
 close(files);
 readln;
end.
