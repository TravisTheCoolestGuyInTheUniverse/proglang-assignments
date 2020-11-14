with Text_Io;
use Text_Io;
with sort;

procedure Main is
    --get the lenght of the array from user input
    Length : Integer := Integer'value(Get_Line);
    type R is ARRAY(Positive range <>) of Integer;

    procedure Sort_Main is new Sort(ELEMENT => Integer, INDEX => Positive, RAY => R);
    Data : R(1..Length);

begin
    for I in 1..Length loop
        Data(I) := Integer'value(Get_Line);
    end loop;

    Sort_Main(Data);

    for I in 1..Length loop 
        put(Integer'Image(Data(I)));
    end loop;

end Main;