count([X],Y,1):-X=Y.
count([X],Y,0):-X\=Y.
count([X|T],Y,W):-X=Y,count(T,Y,Z),W is Z+1.
count([X|T],Y,W):-X\=Y,count(T,Y,Z),W is Z.
