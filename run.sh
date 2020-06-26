#!/bin/sh
cd `dirname $0`
exec erl +K true -pa $(pwd)/ebin $(find $(pwd)/deps -type d -name ebin | xargs) -s rebar3_deps
