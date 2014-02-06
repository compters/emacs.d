(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(column-number-mode 1)
(line-number-mode 1)
(show-paren-mode 1)
(setq make-backup-files nil)


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(when (file-exists-p "/home/vagrant/.cask/cask.el")
  (require 'cask "/home/vagrant/.cask/cask.el")
  (cask-initialize))

(require 'init-general)
(require 'init-autocomplete)
(require 'init-ui)
(require 'init-haskell)
(require 'init-misc)

(provide 'init)
