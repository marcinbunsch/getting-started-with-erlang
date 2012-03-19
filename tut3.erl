-module (tut3).
-export ([convert/2]).
-include_lib("eunit/include/eunit.hrl").

convert(X, inch) ->
  X / 2.54;

convert(X, centimeter) ->
  X * 2.54.

