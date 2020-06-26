PROJECT = rebar3_deps
PROJECT_DESCRIPTION = A project to show bugs
PROJECT_VERSION = 0.1.0

DEPS = jiffy

dep_jiffy = git https://github.com/DavidAlphaFox/jiffy.git rebar3-erlang-mk

include erlang.mk
