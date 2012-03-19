-module (tut6).
-export ([format_temps/1, run/0]).
-include_lib("eunit/include/eunit.hrl").

run() ->
  format_temps([{moscow, {c, -10}}, {cape_town, {f, 70}},
  {stockholm, {c, -4}}, {paris, {f, 28}}, {london, {f, 36}}]).

format_temps([]) ->
  ok;
format_temps([City | Rest]) ->
  print_temp(convert_to_celsius(City)),
  format_temps(Rest).

convert_to_celsius({ Name, { c, Temp }}) -> % no conversion needed
  {Name, {c,Temp}};
convert_to_celsius({ Name, { f, Temp }}) ->
  {Name, {c, (Temp - 32) * 5/9}}.

print_temp({ Name, {c,Temp} }) ->
  io:format("~-15w ~w c~n", [Name, Temp]).
