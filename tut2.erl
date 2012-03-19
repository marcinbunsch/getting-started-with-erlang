-module (tut2).
-export ([fac/1, mult/2]).
-include_lib("eunit/include/eunit.hrl").

fac(1) ->
  1;
fac(N) ->
  N * fac(N-1).

mult(X, Y) ->
  X * Y.

% Test

fac_test() ->
  1 = fac(1),
  6 = fac(3).

mult_test() ->
  4 = mult(2,2),
  6 = mult(2,3).
