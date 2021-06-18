uses ComObj;
var B:variant;
procedure TForm1.Button1Click(Sender: TObject);
begin
   B:=CreateOleObject('Word.Basic');
   messagebox(hendle, 'Word.Basic - Запушен','Внимание!',0);
   B.FileQuit;
   B:=UnAssigned;
end;
