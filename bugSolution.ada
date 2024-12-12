procedure Example_Solution is
   subtype My_Sub_Type is Integer range 1..10;
   X: My_Sub_Type := 1;
begin
   if X + 10 <= My_Sub_Type'Last then
      X := X + 10;
   else
      X := My_Sub_Type'Last; -- Handle the case where the addition exceeds the subtype's range
   end if;
   Ada.Text_IO.Put_Line(Integer'Image(X));
exception
   when others =>
      Ada.Text_IO.Put_Line("Unexpected Error");
end Example_Solution;