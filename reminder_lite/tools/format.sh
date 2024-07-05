#!/usr/bin/env bash

line_width=120

format_path="../lib"

include_extension="*.dart"

exclude_extension1='*.g.dart'
exclude_extension2="*.gr.dart"
exclude_extension3="*.freezed.dart"

exclude_path1="l10n/"

find $format_path \
    -name $include_extension \
    ! -name $exclude_extension1 \
    ! -name $exclude_extension2 \
    ! -name $exclude_extension3 \
    ! -path $exclude_path1 \
    | tr '\n' ' ' \
    | xargs dart format --line-length=$line_width --set-exit-if-changed
