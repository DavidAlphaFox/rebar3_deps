-module(nif_SUITE).
-compile(export_all).

-include_lib("common_test/include/ct.hrl").

suite() -> 
  [{timetrap,{minutes,1}}].

 init_per_suite(Config) ->
   application:start(xmerl),
   application:start(jiffy),
   Config.

end_per_suite(_Config) -> ok.

all() -> [nif_deps_case].

nif_deps_case(_)->
  rebar3_deps:test().
