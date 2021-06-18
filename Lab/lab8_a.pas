program lab8_a;   //вариант № 23
// Данные о абитурьентах 
uses crt;
type data=record
          fio:string[30];
          godr,godo:integer;
          ates:record // reсord запись 
               mat,fiz,rus:integer;
               end;
          haus:boolean;
          ekz:record
              mat,fiz,rus:integer;
              end;
          end;
var stu:data;
    files:file of data;
    ifile:textfile;
    keys,b:char;
    a:string;
    cr,er:integer;  {counter}
procedure vvod;
begin
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
procedure vvod1(const a:string);
var temp:string;
    temp1:char;
begin
case cr of
0: begin stu.fio:=a; cr:=cr+1; end;
1: begin temp:=copy(a,length(a)-4,5); val(temp,stu.godr,er);  cr:=cr+1; end;
2: begin temp:=copy(a,length(a)-4,5); val(temp, stu.godo,er);  cr:=cr+1; end;
3: begin   cr:=cr+1; end;
4: begin temp:=copy(a,length(a)-1,2); val(temp, stu.ates.mat,er);  cr:=cr+1; end;
5: begin temp:=copy(a,length(a)-1,2); val(temp, stu.ates.fiz,er);  cr:=cr+1; end;
6: begin temp:=copy(a,length(a)-1,2); val(temp, stu.ates.rus,er);  cr:=cr+1; end;
7: begin if a='Нуждается в общежитии.' then stu.haus:=true;  cr:=cr+1; end;
8: begin cr:=cr+1; end;
9: begin temp:=copy(a,length(a)-1,2); val(temp, stu.ekz.mat,er);  cr:=cr+1; end;
10: begin temp:=copy(a,length(a)-1,2); val(temp, stu.ekz.fiz,er);  cr:=cr+1; end;
11: begin temp:=copy(a,length(a)-1,2); val(temp, stu.ekz.rus,er); write(files,stu); cr:=0; end;
else  write('error||||||',cr,er);
end;
if er<>0 then write('error',cr,er);

end;
begin
 assign(files,'c:\test\data.dat');
  assign(ifile,'c:\test\input.txt');
 rewrite(files);
  reset(ifile);
 writeln('Данные из файла инпут 1 или ввод 2?');
 keys:=readkey;
 if keys='1' then
 while (not seekeof(ifile)) do
 begin
 readln(ifile, a);
 vvod1(a);

//write(a);
 end
 else
 begin
 repeat;
  clrscr;
  vvod;
  clrscr;
  writeln('      Данные об абитуриенте введены');
  writeln('1-Добавить данные');
  writeln('2-Выход');
  writeln('      (нажмите 1 или 2)');
  keys:=readkey;
 until keys='2';
 end;

 close(files);
 close(ifile);
 readln;
end.            
