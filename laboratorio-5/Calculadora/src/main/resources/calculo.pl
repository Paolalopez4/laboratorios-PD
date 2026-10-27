calc(N, N) :-
    number(N).

% suma
calc(A+B, R) :-
    calc(A, RA), calc(B, RB), is(R, RA + RB).

% resta
calc(A-B, R) :-
    calc(A, RA), calc(B, RB), is(R, RA - RB).

% multiplicacion
calc(A*B, R) :-
    calc(A, RA), calc(B, RB), is(R, RA * RB).

% division
calc(A/B, R) :-
    calc(A, RA), calc(B, RB), RB =\= 0, dividir(RA, RB, R).

dividir(A, B, R) :-
    is(Q, A / B), is(D, Q * B - A), D == 0, !, R = Q.
dividir(A, B, R) :-
    is(R, A * 1.0 / B).