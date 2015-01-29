partition([], [], [], _).
partition(Left, [RemainingH|Right], [RemainingH|RemainingT], Pivot) :- RemainingH >=Pivot, partition(Left, Right, RemainingT, Pivot), !.
partition([RemainingH|Left], Right, [RemainingH|RemainingT], Pivot) :- RemainingH < Pivot, partition(Left, Right, RemainingT, Pivot), !.
qsort([Head|[]], [Head]).
qsort([], []).
qsort([Head|Tail], Res) :- partition(Left, Right, Tail, Head), qsort(Left, LeftSorted), qsort(Right, RightSorted), append(LeftSorted, [Head|RightSorted], Res), !.