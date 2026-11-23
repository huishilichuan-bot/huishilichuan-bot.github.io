#!/bin/sh
# Firebase のログイン用ヘルパーを最新にそろえる
set -e
B=https://hoshi-manabi.firebaseapp.com/__/auth
for f in handler iframe links; do curl -fsS "$B/$f" -o "__/auth/$f.html"; done
for f in handler.js experiments.js iframe.js links.js; do curl -fsS "$B/$f" -o "__/auth/$f"; done
echo "updated"
# 注意：handler.js には「別のタブ・別の画面で戻ってきてもログインを続けられる」小さな追加（HMF：sessionStorage の内容を15分だけ localStorage にも控える）を入れている。
# 更新したら tools なしで次を入れなおすこと：Ml.prototype の get/set/remove に HMF をはさむ（git log の「別タブで戻っても」のコミットを参照）。
