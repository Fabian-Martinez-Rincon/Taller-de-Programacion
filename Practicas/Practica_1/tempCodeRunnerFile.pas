if (l^.dato.cod_genero = i) then
            begin
                actual:=l^.dato.cod_genero;

                while (actual = l^.dato.cod_genero) and (l <> Nil) do
                begin

                    if (l^.dato.punt_prom>MayorPuntaje)then
                    begin
                        MayorPuntaje:=l^.dato.punt_prom;
                    end;
                    l:=l^.sig;
                end;
            end;