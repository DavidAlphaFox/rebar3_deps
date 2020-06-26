-module(rebar3_deps).
-export([start/0]).
-export([test/0]).

start()->
  ok = application:start(xmerl),
  ok = application:start(jiffy),
  ok = application:start(rebar3_deps).

test() ->
  Result = <<"[1]">>,
  Result = jiffy:encode([1]).
