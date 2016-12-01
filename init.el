;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
;; Install el-get if not

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(insert )
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; 各パッケージの設定ファイルを ./init/init-パッケージ名 に読みに行く
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
(prefer-coding-system 'utf-8)
(setq inhibit-startup-message t) ;; do not show message on start up
(global-linum-mode t) ;; show line number
(setq linum-format "%4d ")
(menu-bar-mode 0) ;; do not show menu bar
(tool-bar-mode 0) ;; do not show tool bar
(show-paren-mode 1) ;; shine corresponding brackets
(setq make-backup-files nil) ;; do not make backup file
(setq auto-save-default nil) ;; do not make auto save file
(setq make-backup-files nil) ; do not make backup file

;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; シフト＋矢印で範囲選択
(setq pc-select-selection-keys-only t)
(pc-selection-mode 1)
;; Macのキーバインドを使う
(mac-key-mode 1)
;; C-kで行全体を削除する
(setq kill-whole-line t)
;; Macのoptionをメタキーにする
(setq mac-option-modifier 'meta)
;; use C-h as a backspace
(keyboard-translate ?\C-h ?\C-?)
;; ウィンドウ内に収まらないときだけ、カッコ内も光らせる
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;;Clipboardを他のアプリケーションと共通に
(cond (window-system
       (setq x-select-enable-clipboard t)
       ))

(define-key key-translation-map (kbd "C-h") (kbd "<DEL>")) ;; use C-h as delete key
(global-set-key (kbd "C-x C-g") 'goto-line)
(define-key global-map (kbd "C-x /") 'comment-or-uncomment-region)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:added-sign "++")
 '(git-gutter:deleted-sign "--")
 '(git-gutter:modified-sign "  ")
 '(package-selected-packages (quote (php-completion))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
