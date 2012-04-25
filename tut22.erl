-module(tut22).

-include_lib("eunit/include/eunit.hrl").

-include("tut22.hrl").

record_test() ->
  {message_to,fred,"hello"} = #message_to{message="hello", to_name=fred}.

macro_test() ->
  "OMG" = ?some_name.
