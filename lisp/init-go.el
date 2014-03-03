(require 'go-mode-load)
(require 'go-autocomplete)
(require 'auto-complete-config)

(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-go)
