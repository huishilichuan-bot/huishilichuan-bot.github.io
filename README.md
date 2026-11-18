# huishilichuan-bot.github.io

- `/` → [ほしまなび](https://huishilichuan-bot.github.io/hoshi-manabi/) へ移動します。
- `/__/auth/` と `/__/firebase/init.json` は、ほしまなびのログイン（Firebase Authentication）用のヘルパーです。
  Firebase の「サードパーティのストレージをブロックするブラウザで signInWithRedirect を使うためのベストプラクティス」にそって、
  `https://hoshi-manabi.firebaseapp.com/__/auth/*` から取得したファイルを同じオリジンで配信しています（`handler` などは GitHub Pages で拡張子なしで開けるように `.html` にしています）。
- 更新：`./update-auth-helpers.sh` を実行してコミットしてください（定期的に最新版にそろえるため）。
