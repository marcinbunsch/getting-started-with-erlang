-module (tut4).
-export ([convert_length/1]).
-include_lib("eunit/include/eunit.hrl").

convert_length({inch, L}) ->
  {centimeter, L * 2.54};

convert_length({centimeter, L}) ->
  {inch, L / 2.54}.

% Tests

convert_length_test() ->
  { centimeter, 2.54 } = convert_length({ inch, 1 }),
  { inch, 1.0 } = convert_length({ centimeter, 2.54 }).
