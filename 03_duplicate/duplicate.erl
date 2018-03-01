-module(duplicate).
-export([dup/2, dup_tail/2]).

dup(0,_) -> [];

dup(N, Term) when N > 0 ->
    [Term | dup(N-1, Term)].

% tail recursion
dup_tail(N, Term) -> dup_tail(N, Term, []).

dup_tail(0,_,List) -> List;

dup_tail(N,Term,List) -> dup_tail(N-1, Term, [Term|List]).