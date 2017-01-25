; gofmtをgoimportsに上書き
(setq gofmt-command "goimports")
; セーブした時にgofmtを実行する
(add-hook 'before-save-hook 'gofmt-before-save)
