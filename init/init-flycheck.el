(global-flycheck-mode)

;; (define-key global-map (kbd "C-c n") 'flycheck-next-error)
;; (define-key global-map (kbd "C-c p") 'flycheck-previous-error)
;; (define-key global-map (kbd "C-c l") 'flycheck-list-errors)

;; jsx
(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
(add-hook 'js2-jsx-mode-hook 'flycheck-mode)
