#!/usr/bin/env bash
flutter pub run build_runner build --delete-conflicting-outputs
cd ..
flutter pub get
cd tools/
