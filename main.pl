% bfs(+Queue, +Goal, -Path)
% Queue é uma lista de nós a serem analisados.
% Goal é o nó objetivo.
% Path é uma lista de saída que vai se tornando o caminho percorrido.
bfs([Goal|_], Goal, [Goal]).
bfs([Node|Queue], Goal, [Node|Path]) :-
    write('Analisando nó: '),
    write(Node), nl,
    findall(Child,
        (pode_ir(Node, Child, _, _),
        \+ member(Child, [Node|Queue])),
        Children),
    append(Queue, Children, NewQueue),
    bfs(NewQueue, Goal, Path).

% Predicado para chamar o bfs de maneira mais simples.
% menor_caminho(-Caminho)
% Caminho é uma lista de estações que representa o menor caminho entre a estação inicial e a estação final.
menor_caminho(Caminho) :-
    estacao_inicial(Start),
    estacao_final(Goal),
    bfs([Start], Goal, ReversePath),
    reverse(Caminho, ReversePath).
