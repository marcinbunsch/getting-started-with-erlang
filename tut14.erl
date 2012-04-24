-module(tut14).

-export([say_something/2, test/0]).

say_something(_, 0) ->
  done;
say_something(What, Times) ->
  io:format("~p~n", [What]),
  say_something(What, Times - 1).

test() ->
  spawn(tut14, say_something, ["Wat",3]),
  spawn(tut14, say_something, ["Weeeee",1]).



