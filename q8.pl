ultimo([X],X).
ultimo([_|T],W):-ultimo(T,W).

palindromo(L):-length(L,1).
palindromo([X|T]):-ultimo(T,W),X=W.
