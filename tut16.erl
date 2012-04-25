-module(tut16).

-include_lib("eunit/include/eunit.hrl").

-export([test/0, ping/1, pong/0]).

ping(0) ->
    ponger ! finished,
    io:format("Ping finished~n", []);

ping(N) ->
    ponger ! {doping, self()},
    receive
        dopong ->
            io:format("Ping received dopong~n", [])
    end,
    ping(N - 1).

pong() ->
    receive
        finished ->
            io:format("Pong finished~n", []);
        {doping, Ping_PID} ->
            io:format("Pong received doping~n", []),
            Ping_PID ! dopong,
            pong()
    end.


test() ->
  register(ponger, spawn(tut16, pong, [])),
  spawn(tut16, ping, [3]).

