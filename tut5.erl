-module (tut5).
-export ([list_length/1, run/0]).
-include_lib("eunit/include/eunit.hrl").

run() ->
  Result = list_length([1,2,3,4]),
  io:format("Result: ~w~n", [Result]).

list_length([]) ->
  0;

list_length([ _ | Rest ]) ->
  1 + list_length(Rest).
