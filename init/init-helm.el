(global-set-key (kbd "C-x C-k") 'helm-for-files)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action) ;; タブでファイル名/ディレクトリ名を補完
(helm-mode 1) ;; helm起動
