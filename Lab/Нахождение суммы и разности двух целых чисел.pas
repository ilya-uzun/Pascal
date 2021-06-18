program Tutor2;
var
A, B, Summa, Raznost : integer ;

begin
    Write('Введите значение целого числа  А>');
    Readln(A);
    Write('Введите значение целого числа  В>');
    Readln(B);
    Summa  := A+B;
    Raznost := A-B;
    Writeln ('Сумма чисел ', A, ' и ', B, ' = ', Summa);
    Write ('Разность чисел ', A, ' и ', B, ' = ', Raznost);
    Readln();
End.