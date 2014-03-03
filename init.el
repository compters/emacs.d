(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(column-number-mode 1)
(line-number-mode 1)
(show-paren-mode 1)
(setq make-backup-files nil)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(when (file-exists-p (expand-file-name "~/.cask/cask.el"))
  (require 'cask (expand-file-name "~/.cask/cask.el"))
  (cask-initialize)
  (require 'pallet))

(require 'init-general)
(require 'init-autocomplete)
(require 'init-ui)
(require 'init-go)
(require 'init-haskell)
(require 'init-misc)
(require 'init-web)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("968d1ad07c38d02d2e5debffc5638332696ac41af7974ade6f95841359ed73e3" default)))
 '(haskell-tags-on-save t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview))))
 '(company-tooltip ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-common ((((type x)) (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection ((((type x)) (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
 '(company-tooltip-selection ((t (:background "steelblue" :foreground "white")))))
