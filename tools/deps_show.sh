#!/usr/bin/env bash

exclude1='**.freezed.dart'
exclude2='**.g.dart'
exclude3='**.gr.dart'
exclude4='l10n/**'
exclude5='core/**'
exclude6='**/*_event.dart'
exclude7='**/*_state.dart'

cd ..
lakos lib/ -i "{$exclude1,$exclude2,$exclude3,$exclude4,$exclude5,$exclude6,$exclude7}" --metrics > deps.dot
dot -Tpng -Gdpi=200 -o deps.png deps.dot
