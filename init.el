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

(setq inhibit-startup-message t) ;; do not show message on start up
(global-linum-mode t) ;; show line number
(setq linum-format "%4d ")
(menu-bar-mode 0) ;; do not show menu bar
(show-paren-mode 1) ;; shine corresponding brackets
(setq make-backup-files nil) ;; do not make backup file
(setq auto-save-default nil) ;; do not make auto save file

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
