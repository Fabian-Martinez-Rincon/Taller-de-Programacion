program cosa;
var
    num:integer;
begin
    randomize;
    num:=(-1)+(random(10));
    WriteLn(num);
    while num <> -1 do
    begin
        num:=(-1)+random(3);
    WriteLn(num);
    end;
end.