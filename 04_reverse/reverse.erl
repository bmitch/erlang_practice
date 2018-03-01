-module(reverse).
-export([reverse/1, reverse_tail/1]).

reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].

% Tail recursion

reverse_tail(List) -> reverse_tail(List, []).
reverse_tail([], Acc) -> Acc;
reverse_tail([H|T], Acc) -> reverse_tail(T, [H|Acc]).