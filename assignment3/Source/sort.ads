generic
    --formal type declaration (abstract data type)
    type ELEMENT is private;
    --generic procedure will use this function
    with function ">" (E1, E2 : ELEMENT) return Boolean is <>;
    type INDEX is (<>);
    type RAY is array (INDEX range <>) of ELEMENT;
procedure Sort(Data : in out RAY);