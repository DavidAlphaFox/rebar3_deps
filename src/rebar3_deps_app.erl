-module(rebar3_deps_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	rebar3_deps_sup:start_link().

stop(_State) ->
	ok.
