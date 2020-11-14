    procedure Sort(Data : in out RAY) is
        --Temp is abstract type ELEMENT
        Temp : ELEMENT;
    begin
        --exchange sort algorithm
        for I in Data'Range loop
            for J in I..Data'Last loop
                if Data(I) > Data(J) then
                    Temp := Data(I);
                    Data(I) := Data(J);
                    Data(J) := Temp;
                end if;
            end loop;
        end loop;
    end Sort;