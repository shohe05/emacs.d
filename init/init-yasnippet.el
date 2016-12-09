(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(global-set-key (kbd "M-TAB") 'ac-complete-yasnippet)
