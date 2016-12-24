(global-set-key (kbd "C-x C-k") 'helm-for-files)
(global-set-key (kbd "C-j C-f") 'helm-find-files)

;; M-x で helm-M-x
(define-key global-map (kbd "M-x") 'helm-M-x)

;; 最近開いたファイルを表示
(define-key global-map (kbd "C-j C-e") 'helm-recentf)

;; C-x b を helm-buffer-listに
(define-key global-map (kbd "C-j C-b") 'helm-buffers-list)

(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action) ;; タブでファイル名/ディレクトリ名を補完
(helm-mode 1) ;; helm起動
