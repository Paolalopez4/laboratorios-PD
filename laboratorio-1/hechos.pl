% personajes
personaje(eric).
personaje(timmy).
personaje(kelvin).
personaje(virginia).

% caracteristicas
protagonista(eric).
edad(eric, 30).

aliado_capturado(kelvin).
no_habla(kelvin).

mutante(virginia).
puede_volverse_aliada(virginia).

%objetos y habilidades
tiene(eric, hacha).
tiene(eric, encendedor).

puede(kelvin, cargar_troncos).
puede(kelvin, construir).

% zonas de la isla
zona(superficie).
zona(cuevas).
zona(bunkeres).

%enemigos
enemigo(canibales).
enemigo(mutantes).

%zonas de enemigos
aparecen_en(canibales, superficie).
aparecen_en(mutantes, superficie).
aparecen_en(mutantes, cuevas).

% nivel de peligro
nivel_peligro(superficie, dia, medio).
nivel_peligro(superficie, noche, alto).
nivel_peligro(cuevas, dia, alto).
nivel_peligro(cuevas, noche, alto).

% caracteristicas de los bunkeres
tiene_enemigos(bunkeres, no).
requiere_llave(bunkeres).

%materiales por zona
material_en(troncos, superficie).
material_en(piedras, superficie).

% necesidades de eric
necesita(eric, refugio).
necesita(eric, comida).
necesita(eric, agua).
