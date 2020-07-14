*GenData(1) *GenData(2) *GenData(3) 
*Set Cond Dificultad *nodes
*Set var NDU=CondNumEntities(int)
*Set Cond ProyectosAst *nodes
*Set var NDV=CondNumEntities(int)
*Set Cond TareasAst *nodes
*Set var NDW=CondNumEntities(int)
*Set Cond ProbaPasar *nodes
*set var NDP=CondNumEntities(int)
*npoin *nelem *NDU *NDV *NDW *NDP

Coordinates
*set elems(all)
*loop nodes
*NodesNum *NodesCoord(1,real) *NodesCoord(2,real) *NodesCoord(3,real)
*end nodes
EndCoordinates

Elements
*loop elems
*ElemsNum *ElemsConec
*end elems
EndElements

Dificultad
*Set Cond Dificultad *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(d,real)
*end nodes
EndDirichlet

ProyectosAst
*Set Cond ProyectosAst *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(p,real)
*end nodes
EndDirichlet

TareasAst
*Set Cond TareasAst *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(t,real)
*end nodes
EndDirichlet

ProbaPasar
*Set Cond ProbaPasar *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(pr,real)
*end nodes
EndDirichlet
