% Definir a regra bfs/2 para a busca em largura
bfs([Goal|_], Goal, [Goal]).
bfs([Node|Queue], Goal, [Node|Path]) :-
    findall(Child,
        (pode_ir(Node, Child, _, _),
    	\+ member(Child, [Node|Queue])),
        Children),
    append(Queue, Children, NewQueue),
    bfs(NewQueue, Goal, Path).
    
% Encontrar o menor caminho utilizando bfs/3
menor_caminho(Caminho) :-
    estacao_inicial(Start),
    estacao_final(Goal),
    bfs([Start], Goal, ReversePath),
    reverse(ReversePath, Caminho).
