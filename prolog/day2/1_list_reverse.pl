reverse_list([Head|[]], [Head]).
reverse_list([Head|[Head2|[]]], [Head2, Head]).
reverse_list([Head|Tail], Reversed) :- reverse_list(Tail, ReversedTail), append(ReversedTail, [Head], Reversed).