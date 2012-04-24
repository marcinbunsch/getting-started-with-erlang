-module(tut12).

-include_lib("eunit/include/eunit.hrl").

map_callback(X) -> 
  X + 10.

hif_test() ->
  Alist    = [1,2],
  Afun     = fun(X) -> X * 2 end,
  [2,4]    = lists:map(Afun, Alist),
  [11, 12] = lists:map(fun map_callback/1, Alist).
