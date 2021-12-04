merge(X,[],X).
merge([],X,X).
merge([X|T1],[Y|T2],[X|W]):-X=<Y,merge(T1,[Y|T2],W).
merge([X|T1],[Y|T2],[Y|W]):-Y=<X,merge([X|T1],T2,W).

div(L,A,B):-append(A,B,L),length(A,N),length(B,N).
div(L,A,B):-append(A,B,L),length(A,N),N1 is N+1,length(B,N1).

mergesort([],[]).
mergesort(L,L):-length(L,1).
mergesort(L,W):-div(L,A,B),mergesort(A,W1),mergesort(B,W2),merge(W1,W2,W).
