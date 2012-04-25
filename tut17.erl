-module(tut17).

-include_lib("eunit/include/eunit.hrl").

-export([start_ping/1, start_pong/0,  ping/2, pong/0, test/0]).

ping(0, Pong_Node) ->
    {ponger, Pong_Node} ! finished,
    io:format("ping finished~n", []);

ping(N, Pong_Node) ->
    {ponger, Pong_Node} ! {doping, self()},
    receive
        dopong ->
            io:format("Ping received pong~n", [])
    end,
    ping(N - 1, Pong_Node).

pong() ->
    receive
        finished ->
            io:format("Pong finished~n", []);
        {doping, Ping_PID} ->
            io:format("Pong received ping~n", []),
            Ping_PID ! dopong,
            pong()
    end.

start_pong() ->
    register(ponger, spawn(tut17, pong, [])).

start_ping(Pong_Node) ->
    spawn(tut17, ping, [3, Pong_Node]).

test() ->
  io:format("  You need to start tut17 manually as you need 2 nodes~n", []).
