-module(tut10).

-include_lib("eunit/include/eunit.hrl").

convert_length(Length) ->
  case Length of 
    {centimeter, X} -> 
      {inch, X / 2.54};
    {inch, Y} ->
      {centimeter, Y * 2.54}
  end.


case_test() ->
  {inch, 1.0} = convert_length({centimeter, 2.54}),
  {centimeter, 2.54} = convert_length({inch, 1}).
