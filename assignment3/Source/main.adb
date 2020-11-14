with Text_Io;
use Text_Io;
with sort;

procedure Main is
    --get the lenght of the array from user input
    Length : Integer := Integer'value(Get_Line);
    type R is ARRAY(Positive range <>) of Integer;
    --generic procedure instantiation (with an array of elements of type Integer)
    procedure Sort_Main is new Sort(ELEMENT => Integer, INDEX => Positive, RAY => R);
    Data : R(1..Length);

begin
    --populate array with user input
    for I in 1..Length loop
        Data(I) := Integer'value(Get_Line);
    end loop;

    --sort the array
    Sort_Main(Data);

    --output the array 
    for I in 1..Length loop 
        put(Integer'Image(Data(I)));
    end loop;

end Main;