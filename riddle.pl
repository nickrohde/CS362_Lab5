% [s,s,s,s]



% [e,e,e,e]


change(s,e).
change(e,s).


move([A, A, X, Y], [a,b], [B, B, X, Y]) :- change(A, B).
move([A, X, A, Y], [a,c], [B, X, B, Y]) :- change(A, B).
move([A, X, Y, A], [a,d], [B, X, Y, B]) :- change(A, B).
move([X, A, A, Y], [b,c], [X, B, B, Y]) :- change(A, B).
move([X, A, Y, A], [b,d], [X, B, Y, B]) :- change(A, B).
move([X, Y, A, A], [c,d], [X, Y, B, B]) :- change(A, B).
move([A, X, Y, Z], [ a ], [B, X, Y, Z]) :- change(A, B).
move([X, A, Y, Z], [ b ], [X, B, Y, Z]) :- change(A, B).
move([X, Y, A, Z], [ c ], [X, Y, B, Z]) :- change(A, B).
move([X, Y, Z, A], [ d ], [X, Y, Z, B]) :- change(A, B).


timeOf([], 0):-!.
timeOf([a], 1):-!.
timeOf([b], 2):-!.
timeOf([c], 5):-!.
timeOf([d], 10):-!.
timeOf([_, d], 10):-!.
timeOf([d, _], 10):-!.
timeOf([c, _], 5):-!.
timeOf([_, c], 5):-!.
timeOf([_, b], 2):-!.
timeOf([b, _], 2):-!.
timeOf([a, _], 1):-!.
timeOf([_, a], 1):-!.
timeOf([H|T], X):- timeOf(H, TH), timeOf(T, TT), X is TH+TT.


% No more than 2 people on bridge
% Torch must be returned after each trip


solution([e,e,e,e],L,T):-!.
solution(C,L,T):- timeOf(L,X), X =< T.










