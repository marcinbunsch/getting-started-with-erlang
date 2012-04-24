-module (tut9).
-export ([equals_5_func/1]).
-include_lib("eunit/include/eunit.hrl").

equals_5_func(Num) ->
  if 
    Num == 5 ->
      yes;
    Num == 4; Num == 6 ->
      almost
  end.
 
% Tests

ifs_test() -> 
  yes    = equals_5_func(5),
  almost = equals_5_func(4),
  almost = equals_5_func(6).
