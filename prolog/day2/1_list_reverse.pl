reverse_list([Head|[]], [Head]).
reverse_list([Head|[Head2|[]]], [Head2, Head]).
reverse_list([Head|Tail], Reversed) :- reverse_list(Tail, ReversedTail), append(ReversedTail, [Head], Reversed).
reverse_accu([], List, List).
reverse_accu([Head|Tail], List, Res) :- reverse_accu(Tail, [Head|List], Res).
