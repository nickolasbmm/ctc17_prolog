testa_primo(_,1,1).
testa_primo(N,_,0):-0=:=mod(N,2),N>2.
testa_primo(N,X,0):-X=\=0,0=:=mod(N,X).
testa_primo(N,X,W):-X=\=0,0=\=mod(N,X),X1 is X-1,testa_primo(N,X1,W).

primo(N):-W is N-1,testa_primo(N,W,1).

