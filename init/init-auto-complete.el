(global-auto-complete-mode t)
(setq ac-auto-start nil)
(ac-set-trigger-key "TAB")
;; 補完メニュー表示時にC-n/C-pで補完候補選択
(setq ac-use-menu-map t)
;; 曖昧マッチをしない
(setq ac-use-fuzzy nil)
