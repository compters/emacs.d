(require 'use-package)

(use-package ido
  :init (ido-mode 1)
  :config
  (progn
    (setq ido-case-fold t)
    (setq ido-everywhere t)
    (setq ido-enable-prefix nil)
    (setq ido-enable-flex-matching t)
    (setq ido-create-new-buffer 'always)
    (setq ido-max-prospects 10)
    (add-to-list 'ido-ignore-files "\\.DS_Store")))

(use-package smex
  :init (smex-initialize)
  :bind ("M-x" . smex))

(use-package multiple-cursors
  :bind (("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)))

(require 'tramp)
(setq tramp-default-method "ssh")

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-;") 'mc/mark-all-like-this)

;; No Tabs
(setq-default indent-tabs-mode nil)

(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)                      
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(defun server-ensure-safe-dir (dir) "Noop" t) 


(defun start-tcp-server ()  
  (setq server-use-tcp t)
  (setq server-port 8010)
  (server-start))


(provide 'init-general)
