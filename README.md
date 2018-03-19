# Emacsのキーバインド

Emacs組み込みのキーバインド、自分で設定したキーバインド全て含めて記す。

* M-x : helm-M-x

# 編集
* `C-s` : インクリメンタルサーチ forward.
* `C-s` : インクリメンタルサーチ backward.
* `C-SPC` : マークセット
* `C-y `貼り付け
* `C-h` : バックスペース
* `M-o` : 選択範囲を広げる (expand-region)
* `C-o`: 選択範囲を狭める(contract-region)
* `M-n`: 選択された文字と同じ箇所を選択していく mark-next-like-this
* `M-p`: 選択された文字と同じ箇所を選択していく mark-previous-like-this
* `C-u`: undo

## 検索
-  `M-f` : ファイル内検索(helm-ag-this-file)

## 置換
- `M-r c`  カーソル位置のシンボルを置換 (anzu: anzu-query-replace-at-cursor-thing)
* `M-r r`  ファイル内置換 (anzu: anzu-query-replace)
* `M-r e`  ファイル内置換with正規表現 (anzu: anzu-query-replace-regexp)

## コピペ
* `C-w` カット
* `M-w` コピー
* `M-c` : 一行コピー
* `M-b` : 一行カット
* `M-d` : 一行複製

## カーソル移動
- [ ] `M-j` : avy-go-to-word-1

## ファイル参照系
* `C-j C-f` : helm で ファイル検索をする (helm-find-file)
* `C-j C-g` プロジェクト内grep (helm-ag-project-root)
* `C-j C-p` プロジェクト内ファイル検索(helm-projectile)
* `C-j C-e` 最近開いたファイルを表示(helm-recentf)
- `C-j C-i` git管理下のファイル参照(helm-ls-git) -> staged, unstagedのファイルを参照するのに便利
* `C-j C-b` バッファ一覧 (hellm-buffer-list)

## 補完
* `TAB` : auto-completeによる補完ポップアップ表示
* `M-TAB`: yasnippetによるスニペット展開

## タグジャンプ系
* `C-c j`: ジャンプ
* `C-c t` : 定義元リストアップ
* `C-c u` : 使われてる箇所リストアップ
* `C-c b` : 戻る
* `C-c f` : 進む
* `C-c s` : find-symbol

## 画面分割系
* `C-q C-\` : ウィンドウを右に分割してカーソル移動
* `C-q C—_` : ウィンドウを下に分割してカーソル移動
* `C-q C—j` : 下のウィンドウに移動
* `C-q C—k` : 上のウィンドウに移動
* `C-q C—l` : 右のウィンドウに移動
* `C-q C—h` : 左のウィンドウに移動
* `C-q C-w` : カレントのウィンドウを消す
* `C-q C-q` : カレントのウィンドウ以外を消す

## フレーム系
* `C-q C-c` : フレーム作成
* `C-q C-n` : フレーム移動
* `C-q C-d` : カレントフレーム削除
