with Text_Io;
use Text_Io;

procedure Main is
    Temp : Integer := 0;
    Length : Integer := Integer'value(Get_Line);
    type RAY is arRAY(1..Length) of INTEGER;
    Data : RAY;

    
begin
    --get the length of the array
    for I in 1..Length loop
        Data(I) := Integer'value(Get_Line);
    end loop;

    for I in 1..Length loop 
        put(Integer'Image(Data(I)));
    end loop;

end Main;
