program lab7;// вариант № 23
type man=record
         fio:record fameli,name,och:string[15];end;
         date:record day,mes,god:integer;end;
         godpos:integer;
         many:integer;
         adres:record ul:string[15];
                      dom,kv:integer;end;
         end;
var sot:array [1..20] of man;
    n:integer;
    symb:string[1];
procedure vvod;
begin
  for n:=1 to 20 do
  begin
    writeln('Вводим данные на сотрудникa номер:',n);
    write('Фамилия:');
    readln(sot[n].fio.fameli);
    write('Имя:');
    readln(sot[n].fio.name);
    write('Отчество:');
    readln(sot[n].fio.och);
    writeln('Дата рождения:');
    write('День:');
    readln(sot[n].date.day);
    write('Месяц:');
    readln(sot[n].date.mes);
    write('Год:');
    readln(sot[n].date.god);
    write('Год поступления в фирму:');
    readln(sot[n].godpos);
    write('Заработная плата:');
    readln(sot[n].many);
    writeln('Адрес проживания:');
    write('Улица:');
    readln(sot[n].adres.ul);
    write('Номер дома:');
    readln(sot[n].adres.dom);
    write('Номер квартиры:');
    readln(sot[n].adres.kv);
  end;
end;
procedure list(n:integer);
          begin
               writeln('--------------------------------------------------------------------------------');
               write(sot[n].fio.fameli,' ',sot[n].fio.name,' ',sot[n].fio.och);
                             writeln('  Дата рождения ',sot[n].date.day,'/',sot[n].date.mes,'/',sot[n].date.god);
               writeln;
          end;
begin
vvod; //процедура ввода исходных данных
writeln('Распечатать ФИО и дату рождения сотрудников,/nу которых номера домов меньше 20, а номера квартир больше 5');
writeln(' ');
for n:=1 to 20 do begin
if (sot[n].adres.dom<20) and (sot[n].adres.kv>5) then list(n);
end;
end.
