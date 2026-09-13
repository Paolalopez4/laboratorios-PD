:- consult('hechos.pl').

zona_peligrosa(Zona, Momento) :-
    nivel_peligro(Zona, Momento, Nivel),
    (Nivel == alto ; Nivel == medio).

zona_con_enemigos(Zona) :-
    aparecen_en(Enemigo, Zona),
    enemigo(Enemigo).

puede_sobrevivir(Personaje) :-
    necesita(Personaje, refugio),
    necesita(Personaje, comida),
    necesita(Personaje, agua).

zona_muy_peligrosa(Zona, Momento) :-
    nivel_peligro(Zona, Momento, Nivel),
    Nivel == alto.

kelvin_puede_construir_refugio :-
    puede(kelvin, cargar_troncos),
    puede(kelvin, construir).
