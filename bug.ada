procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   X: My_Sub_Type := 1;
begin
   X := X + 10;
   Ada.Text_IO.Put_Line(Integer'Image(X));
 exception
   when others =>
     Ada.Text_IO.Put_Line("Error");
end Example;