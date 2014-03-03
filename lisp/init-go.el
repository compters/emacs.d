(require 'go-mode-load)
(require 'go-autocomplete)
(require 'auto-complete-config)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-go)
