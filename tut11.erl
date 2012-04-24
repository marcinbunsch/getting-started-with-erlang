-module(tut11).

-include_lib("eunit/include/eunit.hrl").

month_length(Year, Month) -> 
  %% All years divisible by 400 are leap
  %% Years divisible by 100 are not leap (except the 400 rule above)
  %% Years divisible by 4 are leap (except the 100 rule above)
  Leap = if
     % trunc(Year / 400) * 400 == Year ->
     Year rem 400 == 0 ->
       leap;
     % trunc(Year / 100) * 100 == Year ->
     Year rem 100 == 0 ->
       not_leap;
     % trunc(Year / 4) * 4 == Year ->
     Year rem 4 == 0 ->
       leap;
     true ->
       not_leap
   end,
   case Month of
     sep -> 30;
     apr -> 30;
     jun -> 30;
     nov -> 30;
     feb when Leap == leap -> 29;
     feb -> 28;
     jan -> 31;
     mar -> 31;
     may -> 31;
     jul -> 31;
     aug -> 31;
     oct -> 31;
     dec -> 31
   end.

month_length_test() ->
  31 = month_length(2010, jul),
  28 = month_length(2010, feb),
  29 = month_length(2012, feb).
