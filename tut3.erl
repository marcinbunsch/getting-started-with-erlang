-module (tut3).
-export ([convert/2]).
-include_lib("eunit/include/eunit.hrl").

convert(X, inch) ->
  X / 2.54;

convert(X, centimeter) ->
  X * 2.54.

% Test

convert_test() ->
  1.0  = convert(2.54, inch),
  2.54 = convert(1, centimeter).