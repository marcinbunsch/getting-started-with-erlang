-module (tut7).
-export ([list_max/1]).
-include_lib("eunit/include/eunit.hrl").

list_max([Head | Rest]) ->
  io:format("~w~n", [Head]),
  list_max(Rest, Head).

list_max([], Result) ->
  Result;
list_max([Head | Rest], Result) when Head > Result ->
  list_max(Rest, Head);
list_max([_ | Rest], Result) ->
  list_max(Rest, Result).

% Tests

list_max_test() ->
  7 = list_max([1,2,3,4,5,6,7]).
