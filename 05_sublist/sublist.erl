-module(sublist).
-export([sub/2, sub_tail/2]).

sub(_, 0) -> [];
sub([],_) -> [];
sub([H|T], N) when N > 0 -> [H|sub(T,N-1)].

sub_tail(L, N) -> lists:reverse(sub_tail(L,N,[])).

sub_tail(_, 0, SubList) -> SubList;
sub_tail([],_, SubList) -> SubList;
sub_tail([H|T], N, SubList) when N > 0 -> sub_tail(T, N-1, [H|SubList]).