almacenar(0, []).
almacenar(N, L) :-
    N > 0,
    D is N mod 10,
    N1 is N // 10,
    almacenar(N1, L1),
    concatenar(L1, [D], L).

concatenar([], L, L).
concatenar([H|T], L, [H|R]) :-
    concatenar(T, L, R).