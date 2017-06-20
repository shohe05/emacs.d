
;;----------------------------------------------------------------------------
;; # 文字コード
;;----------------------------------------------------------------------------
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)


;;----------------------------------------------------------------------------
;; # デフォルトのキーマップ無効化
;;----------------------------------------------------------------------------
;; 使用済み
(global-unset-key "\C-t") ; tmuxのprefix
(global-unset-key "\C-j") ; helmまわり
(global-unset-key "\C-o") ; unexpand-region
(global-unset-key "\M-f") ; ファイル内検索
(global-unset-key "\M-r") ; 置換まわり
(global-unset-key "\M-j") ; avy-go-to-word
(global-unset-key "\M-b") ; 1行カット
(global-unset-key "\M-d") ; 1行複製
(global-unset-key "\M-c") ; 1行コピー
(global-unset-key "\M-z") ; undo

;; 未使用
(global-unset-key "\M-g")
(global-unset-key "\M-a")
(global-unset-key "\C-u")
(global-unset-key "\C-q")


;;----------------------------------------------------------------------------
;; # パッケージ
;;----------------------------------------------------------------------------
(package-initialize)
(insert )
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; 各パッケージの設定ファイル(./init/init-{PACKAGE名}.el) を読む
(setq el-get-user-package-directory (locate-user-emacs-file "init"))

;; packages
;; (el-get-bundle auto-async-byte-compile)
(el-get-bundle auto-complete)
(el-get-bundle php-mode)
(el-get-bundle php-completion)
(el-get-bundle yasnippet)
(el-get-bundle helm)
(el-get-bundle helm-gtags)
(el-get-bundle volatile-highlights)
(el-get-bundle color-theme-zenburn)
(el-get-bundle smartparens)
(el-get-bundle multiple-cursors)
(el-get-bundle helm-ag)
(el-get-bundle git-gutter)
(el-get-bundle helm-ls-git)
(el-get-bundle markdown-mode)
(el-get-bundle smart-newline)
(el-get-bundle web-mode)
(el-get-bundle js2-mode)
(el-get-bundle multiple-cursors)
(el-get-bundle undo-tree)
(el-get-bundle helm-projectile)
(el-get-bundle bbatsov/super-save)
(el-get-bundle magit)
(el-get-bundle expand-region)
(el-get-bundle smooth-scroll)
(el-get-bundle avy)
(el-get-bundle anzu)
(el-get-bundle fold-dwim)
(el-get-bundle quickrun)
(el-get-bundle go-mode)
(el-get-bundle go-autocomplete)
(el-get-bundle go-eldoc)
(el-get-bundle purcell/mmm-mode)
(el-get-bundle AdamNiederer/ssass-mode)
(el-get-bundle AdamNiederer/vue-html-mode)
(el-get-bundle CodeFalling/vue-mode)

;;----------------------------------------------------------------------------
;; # バックアップ系
;;----------------------------------------------------------------------------
;; オープン時(編集前)のファイルをバックアップとして残さない(ex: hoge.txt~)
(setq make-backup-files nil)
;; emacsが異常終了したときに /tmp に自動保存ファイルを保存
(setq auto-save-file-name-transforms   '((".*" "/tmp/" t)))
;; 自動保存リストファイルを作らない
(setq auto-save-list-file-prefix nil)
;; ロックファイルを作らない
(setq create-lockfiles nil)


;;----------------------------------------------------------------------------
;; # recentf
;;----------------------------------------------------------------------------
(recentf-mode t)
;; 最近開いたファイルの表示数
(setq recentf-max-menu-items 100)
;; 最近開いたファイルの保存数
(setq recentf-max-saved-items 3000)


;;----------------------------------------------------------------------------
;; # 編集まわり
;;----------------------------------------------------------------------------
;; M-c で一行コピー
(define-key global-map (kbd "M-c") (kbd "C-a TAB C-SPC C-e M-w"))
;; M-x で一行カット
(define-key global-map (kbd "M-b") (kbd "C-a TAB C-SPC C-e C-w C-h"))
;; M-d で一行複製
(define-key global-map (kbd "M-d") (kbd "C-a TAB C-SPC C-e M-w C-e RET C-y"))
;; M-p でカーソル位置の文字選択 (multiple-cursol.el の M-n と併せて使うと同時編集)
(define-key global-map (kbd "M-p") (kbd "M-b C-@ M-f"))
;; C-h で backspace
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
;; C-u で undo (undo-treeはC-x u で起動)
(global-set-key (kbd "C-u") 'undo)
;; M-g で goto-line
(global-set-key (kbd "M-g") 'goto-line)
;; C-kで行全体を削除する
(setq kill-whole-line t)
;; コメントアウト
(define-key global-map (kbd "M-/") (kbd "C-a C-SPC C-e M-; C-n"))


;;----------------------------------------------------------------------------
;; # 画面分割
;;----------------------------------------------------------------------------
;; C-q C-\ で右にウィンドウを開いてカーソル移動
(define-key global-map (kbd "C-q C-\\") (kbd "C-x 3 C-x o"))
;; C-q C-_ で下にウィンドウを開いてカーソル移動
(define-key global-map (kbd "C-q C-_") (kbd "C-x 2 C-x o"))
;; C-q C-l で右のウィンドウに移動
(define-key global-map (kbd "C-q C-l") 'windmove-right)
;; C-q C-h で左のウィンドウに移動
(define-key global-map (kbd "C-q DEL") 'windmove-left)
;; C-q C-j で下のウィンドウに移動
(define-key global-map (kbd "C-q C-j") 'windmove-down)
;; C-q C-k で上のウィンドウに移動
(define-key global-map (kbd "C-q C-k") 'windmove-up)
;; C-q C-w で現在カーソルがあるウィンドウを削除
(define-key global-map (kbd "C-q C-w") (kbd "C-x 0"))
;; C-q C-q で現在カーソルがあるウィンドウ以外のウィンドウを全て削除
(define-key global-map (kbd "C-q C-q") (kbd "C-x 1"))


;;----------------------------------------------------------------------------
;; # フレームまわり
;;----------------------------------------------------------------------------
;; C-q C-c で新しいフレーム作成
(define-key global-map (kbd "C-q C-c") (kbd "C-x 5 2"))
;; C-q C-n でフレーム移動
(define-key global-map (kbd "C-q C-n") (kbd "C-x 5 o"))
;; C-q C-d でカレントフレーム削除
(define-key global-map (kbd "C-q C-d") (kbd "C-x 5 0"))


;;----------------------------------------------------------------------------
;; # その他
;;-----o-----------------------------------------------------------------------
;; 起動時のメッセージを非表示に
(setq inhibit-startup-message t)
;; 行番号を表示
(global-linum-mode t)
;; 行数のフォーマット
(setq linum-format "%4d ")
;; メニューバーを非表示
(menu-bar-mode 0)
;; ツールバーを非表示
(tool-bar-mode 0)
;; 現在の行をハイライト
(global-hl-line-mode t)
;; 対応する括弧を目立たせる
(show-paren-mode 1)
;; 括弧で囲まれた箇所をハイライト
(setq show-paren-style 'expression)
;; 選択範囲に色を付ける
(setq transient-mark-mode t)
(set-face-foreground 'region "black")
(set-face-background 'region "DarkOrange")
;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; 保存時に行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; カーソル位置記憶
(if (>= emacs-major-version 25)
    (save-place-mode t)
  (setq-default save-place t))
;; タブ幅
(setq-default tab-width 4)
;; ruby-modeで # coding: utf-8 を自動で挿入しない
(setq ruby-insert-encoding-magic-comment nil)
;; kill ring の上限
(setq kill-ring-max 10000)
;;; スクロールを一行ずつにする
(setq scroll-conservatively 1)
;; スクロールバーを右側に表示する
;; (scroll-bar-mode 'right)
(setq scroll-preserve-screen-position 'always)

(setq scroll-margin 5)
(setq next-screen-context-lines 5)
(setq scroll-preserve-screen-position t)
