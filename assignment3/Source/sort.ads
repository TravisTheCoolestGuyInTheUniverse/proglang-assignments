generic
    type ELEMENT is private;
    with function ">" (I1, I2 : ELEMENT) return Boolean is <>;
    type INDEX is (<>);
    type RAY is array (INDEX range <>) of ELEMENT;
procedure Sort(Data : in out RAY);


--with function "<" (I1, I2 : Item) return Boolean is <>;

--type Index is (<>)

--type Arr is array (Index range <>) of Item 

--procedure Genericsort (A : in out Arr);