#!/usr/bin/env bash

cd ..
lakos lib/ -i "{**.freezed.dart,**.g.dart,**.config.dart,**.gr.dart,l10n/**,core/**}" --metrics > deps.dot
dot -Tpng -Gdpi=200 -o deps.png deps.dot
