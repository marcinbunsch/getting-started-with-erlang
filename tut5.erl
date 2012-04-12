-module (tut5).
-export ([list_length/1, run/0]).
-include_lib("eunit/include/eunit.hrl").

list_length([]) ->
  0;

list_length([ _ | Rest ]) ->
  1 + list_length(Rest).

% Tests


list_length_test() ->
  2 = list_length([1,2]).

list_empty_test() ->
  0 = list_length([]).
