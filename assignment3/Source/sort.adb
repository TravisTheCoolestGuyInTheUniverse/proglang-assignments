with Text_Io;
use Text_Io;

procedure Sort is
    Length : Integer := Integer'value(Get_Line);
    type RAY is ARRAY(1..Length) of INTEGER;
    Data : RAY;

    function SortArray(Data : in out RAY) return RAY is
        Temp : Integer := 0;
    begin
        for I in 1..Length loop
            for J in I..Length loop
                if Data(I) > Data(J) then
                    Temp := Data(I);
                    Data(I) := Data(J);
                    Data(J) := Temp;
                end if;
            end loop;
        end loop;
        return Data;
    end SortArray;

begin
    --get the length of the array
    for I in 1..Length loop
        Data(I) := Integer'value(Get_Line);
    end loop;

    Data := SortArray(Data);

    for I in 1..Length loop 
        put(Integer'Image(Data(I)));
    end loop;

end Sort;
