-module(tut13).

-include_lib("eunit/include/eunit.hrl").
-export([convert_list_to_c/1]).

convert_to_c({Name, {f, Temp}}) ->
    {Name, {c, trunc((Temp - 32) * 5 / 9)}};
convert_to_c({Name, {c, Temp}}) ->
    {Name, {c, Temp}}.

convert_list_to_c(List) ->
    lists:map(fun convert_to_c/1, List).

conversion_test() ->
  CityList = [{moscow, {c, -10}}, {cape_town, {f,70}}],
  ConvertedList = convert_list_to_c(CityList),
  [{moscow, {c, -10}}, {cape_town, {c,21}}] = ConvertedList.
