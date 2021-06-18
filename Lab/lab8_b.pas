program lab8_b;//вариант № 23
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
begin
 assign(files,'c:\test\data.dat');
 assign(filee,'c:\test\datae.dat');
 reset(files);rewrite(filee);
 while not eof(files)do
 begin
  read(files,stu);write(filee,stu);
 end;
 reset(filee);rewrite(files);
 while not eof(filee) do
 begin
  read(filee,stu);
  if ((stu.ekz.mat>4)or (stu.ekz.fiz>4)or (stu.ekz.rus>4)) or  not(stu.haus) then write(files,stu);
 end;
 close(files);close(filee);
end.
