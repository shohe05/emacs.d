
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
(global-unset-key "\C-j")
(global-unset-key "\C-q")
(global-unset-key "\C-t")
;;(global-unset-key "\C-o")


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
(el-get-bundle tramp)
(el-get-bundle js2-mode)
(el-get-bundle multiple-cursors)
(el-get-bundle yatex)
(el-get-bundle undo-tree)
(el-get-bundle flycheck)
(el-get-bundle helm-projectile)


;;----------------------------------------------------------------------------
;; # バックアップ系
;;----------------------------------------------------------------------------
;; オープン時(編集前)のファイルをバックアップとして残さない(ex: hoge.txt~)
(setq make-backup-files t)
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
;; C-q c で一行コピー
(define-key global-map (kbd "C-q c") (kbd "C-a C-SPC C-e M-w"))
;; C-q x で一行カット
(define-key global-map (kbd "C-q x") (kbd "C-a C-SPC C-e C-w"))
;; C-q d で一行複製
(define-key global-map (kbd "C-q d") (kbd "C-a C-SPC C-e M-w C-e RET C-y"))
;; M-p でカーソル位置の文字選択 (multiple-cursol.el の M-n と併せて使うと同時編集)
(define-key global-map (kbd "M-p") (kbd "M-b C-@ M-f"))
;; C-h で backspace
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
;; C-q l で指定した行へ移動
(global-set-key (kbd "C-q l") 'goto-line)
;; C-u で undo (undo-treeはC-x u で起動)
(global-set-key (kbd "C-u") 'undo)
;; C-kで行全体を削除する
(setq kill-whole-line t)


;;----------------------------------------------------------------------------
;; # 画面分割
;;----------------------------------------------------------------------------
;; C-x l で右にウィンドウを開いてカーソル移動
(define-key global-map (kbd "C-x l") (kbd "C-x 3 C-x o"))
;; C-x j で下にウィンドウを開いてカーソル移動
(define-key global-map (kbd "C-x j") (kbd "C-x 2 C-x o"))
;; C-x w で現在カーソルがあるウィンドウを削除
(define-key global-map (kbd "C-x w") (kbd "C-x 0"))
;; C-x q で現在カーソルがあるウィンドウ以外のウィンドウを全て削除
(define-key global-map (kbd "C-x q") (kbd "C-x 1"))


;;----------------------------------------------------------------------------
;; # その他
;;----------------------------------------------------------------------------
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
;; 対応する括弧を目立たせる
(show-paren-mode 1)
;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; 保存時に行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; カーソル位置記憶
(save-place-mode 1)
