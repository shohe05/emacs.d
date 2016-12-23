(global-anzu-mode +1)
(setq anzu-use-migemo t)

(global-set-key (kbd "M-r r") 'anzu-query-replace)
(global-set-key (kbd "M-r e") 'anzu-query-replace-regexp)
(global-set-key (kbd "M-r c") 'anzu-query-replace-at-cursor-thing)
