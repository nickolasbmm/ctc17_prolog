ultimo([X],X).
ultimo([_|T],W):-ultimo(T,W).

palindromo(L):-length(L,1).
palindromo([X,Y]):-X=Y.
palindromo([X|T]):-ultimo(T,W),X=W,append(Z,[W],T),palindromo(Z).
