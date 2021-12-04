mover(estado(P1,sobrechao,B,H),
      andar(P1,P2),
      estado(P2,sobrechao,B,H)).

mover(estado(meiosala,sobrecaixa,meiosala,naotem),
      agarrar,
      estado(meiosala,sobrecaixa,meiosala,tem)).

mover(estado(P,sobrechao,P,H),
      escalar,
      estado(P,sobrecaixa,P,H)).

mover(estado(P1,sobrechao,P1,H),
      empurrar(P1,P2),
      estado(P2,sobrechao,P2,H)).

poderobter(estado(_,_,_,tem)).
poderobter(Estado1):-mover(Estado1,Mover,Estado2),poderobter(Estado2).
