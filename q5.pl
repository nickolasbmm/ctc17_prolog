min([X],X):-length([X],1).
min([X|T],X):-min(T,W),X=<W.
min([X|T],W):-min(T,W),W=<X.
