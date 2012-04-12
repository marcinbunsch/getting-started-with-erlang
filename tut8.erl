-module (tut8).
-export ([reverse/1]).
-include_lib("eunit/include/eunit.hrl").

reverse(List) ->
  reverse(List, []).

reverse([ Head | Tail], Reversed) ->
  reverse(Tail, [ Head | Reversed ]);
reverse([], Reversed) ->
  Reversed.

% Tests

reverse_test() -> [3,2,1] = reverse([1,2,3]).
reverse_empty_test() -> [] = reverse([]).
