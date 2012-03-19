-module (tut1).
-export ([double/1]).
-include_lib("eunit/include/eunit.hrl").

double(X) ->
  2 * X.

% Tests

double_test() ->
  4 = double(2),
  0 = double(0).
