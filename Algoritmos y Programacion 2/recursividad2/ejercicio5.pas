program Actividad5;
uses sysutils;

const
    DIMF_SITIOS = 10;
    DIMF_PAGINAS = 20;
    CANT_TOPICOS = 6;

type
    str20 = string[20];

    pagina = record
        topico: str20;
        banner: integer;
        visitas: integer;
    end;

    vectorPaginas = array[1..DIMF_PAGINAS] of pagina;
    vectorSitios = array[1..DIMF_SITIOS] of vectorPaginas;

const
    TOPICOS: array[1..CANT_TOPICOS] of str20 =
        ('deportes', 'musica', 'cine', 'tecnologia', 'viajes', 'noticias');

{---------------------------------------------------}
{ Intercambiar dos páginas                          }
{---------------------------------------------------}
procedure intercambiar(var a, b: pagina);
var
    aux: pagina;
begin
    aux := a;
    a := b;
    b := aux;
end;

{---------------------------------------------------}
{ Genera una página aleatoria                       }
{---------------------------------------------------}
procedure cargarPaginaRandom(var p: pagina);
begin
    p.topico := TOPICOS[random(CANT_TOPICOS) + 1];
    p.banner := random(1000) + 1;   { tamaño banner 1..1000 }
    p.visitas := random(5000) + 1;  { visitas 1..5000 }
end;

{---------------------------------------------------}
{ Carga toda la información al azar                 }
{---------------------------------------------------}
procedure cargarSitios(var sitios: vectorSitios);
var
    i, j: integer;
begin
    randomize;
    for i := 1 to DIMF_SITIOS do
        for j := 1 to DIMF_PAGINAS do
            cargarPaginaRandom(sitios[i][j]);
end;

{---------------------------------------------------}
{ Ordena un sitio por tópico                        }
{---------------------------------------------------}
procedure ordenarSitioPorTopico(var v: vectorPaginas);
var
    i, j, posMin: integer;
begin
    for i := 1 to DIMF_PAGINAS - 1 do
    begin
        posMin := i;
        for j := i + 1 to DIMF_PAGINAS do
            if v[j].topico < v[posMin].topico then
                posMin := j;
        intercambiar(v[i], v[posMin]);
    end;
end;

{---------------------------------------------------}
{ Ordena todos los sitios por tópico                }
{---------------------------------------------------}
procedure ordenarTodosLosSitios(var sitios: vectorSitios);
var
    i: integer;
begin
    for i := 1 to DIMF_SITIOS do
        ordenarSitioPorTopico(sitios[i]);
end;

{---------------------------------------------------}
{ Búsqueda dicotómica por tópico                    }
{ Devuelve posición o -1                            }
{---------------------------------------------------}
function busquedaDicotomicaTopico(v: vectorPaginas; buscado: str20; ini, fin: integer): integer;
var
    medio: integer;
begin
    if ini > fin then
        busquedaDicotomicaTopico := -1
    else
    begin
        medio := (ini + fin) div 2;

        if v[medio].topico = buscado then
            busquedaDicotomicaTopico := medio
        else if buscado < v[medio].topico then
            busquedaDicotomicaTopico := busquedaDicotomicaTopico(v, buscado, ini, medio - 1)
        else
            busquedaDicotomicaTopico := busquedaDicotomicaTopico(v, buscado, medio + 1, fin);
    end;
end;

{---------------------------------------------------}
{ Búsqueda secuencial por cantidad de visitas       }
{ Devuelve la primera posición encontrada o -1      }
{---------------------------------------------------}
function buscarPorVisitas(v: vectorPaginas; buscadas: integer): integer;
var
    i: integer;
begin
    buscarPorVisitas := -1;
    i := 1;

    while (i <= DIMF_PAGINAS) and (buscarPorVisitas = -1) do
    begin
        if v[i].visitas = buscadas then
            buscarPorVisitas := i;
        i := i + 1;
    end;
end;

{---------------------------------------------------}
{ Imprime un sitio                                  }
{---------------------------------------------------}
procedure imprimirSitio(v: vectorPaginas);
var
    i: integer;
begin
    for i := 1 to DIMF_PAGINAS do
        writeln(i:2, ') Topico: ', v[i].topico:12,
                ' | Banner: ', v[i].banner:4,
                ' | Visitas: ', v[i].visitas:5);
end;

{---------------------------------------------------}
{ Programa principal                                }
{---------------------------------------------------}
var
    sitios: vectorSitios;
    numSitio: integer;
    topicoBuscado: str20;
    visitasBuscadas: integer;
    pos: integer;
begin
    cargarSitios(sitios);
    ordenarTodosLosSitios(sitios);

    { opcional: mostrar un sitio para ver cómo quedó ordenado }
    writeln('Ingrese un sitio web (1..10) para buscar por topico: ');
    readln(numSitio);

    writeln('Ingrese un topico: ');
    readln(topicoBuscado);

    pos := busquedaDicotomicaTopico(sitios[numSitio], topicoBuscado, 1, DIMF_PAGINAS);

    if pos <> -1 then
        writeln('Cantidad de visitas del topico "', topicoBuscado, '": ', sitios[numSitio][pos].visitas)
    else
        writeln('No se encontro el topico en ese sitio.');

    writeln;
    writeln('Ingrese otro sitio web (1..10) para buscar por visitas: ');
    readln(numSitio);

    writeln('Ingrese cantidad de visitas: ');
    readln(visitasBuscadas);

    pos := buscarPorVisitas(sitios[numSitio], visitasBuscadas);

    if pos <> -1 then
        writeln('Tamanio del banner de la primera pagina encontrada: ', sitios[numSitio][pos].banner)
    else
        writeln('No se encontro una pagina con esa cantidad de visitas.');
end.