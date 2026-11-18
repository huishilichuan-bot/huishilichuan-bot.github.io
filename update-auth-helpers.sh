#!/bin/sh
# Firebase のログイン用ヘルパーを最新にそろえる
set -e
B=https://hoshi-manabi.firebaseapp.com/__/auth
for f in handler iframe links; do curl -fsS "$B/$f" -o "__/auth/$f.html"; done
for f in handler.js experiments.js iframe.js links.js; do curl -fsS "$B/$f" -o "__/auth/$f"; done
echo "updated"
