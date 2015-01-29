smallest([Head|[]], Head).
smallest([Head|Tail], Res) :- smallest(Tail, Res2), Res2 > Head, Res is Head.
smallest([Head|Tail], Res) :- smallest(Tail, Res2), Res2 =< Head, Res is Res2.
