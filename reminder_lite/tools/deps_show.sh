#!/usr/bin/env bash

cd ..
lakos lib/ -i "{**.freezed.dart,**.g.dart,**.config.dart,**.gr.dart,routes.dart,di.dart}" --metrics > deps.dot
dot -Tpng -Gdpi=200 -o deps.png deps.dot
