% --- Facts (Directed Edges between Cities) ---
edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Dammam', 'Qatif').
edge('Qatif', 'Madinah').

% --- Rules ---
% travel(Start, Finish, Path)
travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

% path(Current, Destination, Visited_List, Result_Path)
path(X, X, P, P).
path(From, To, Visited, Path) :-
    edge(From, X),
    \+ member(X, Visited),
    path(X, To, [X|Visited], Path).












