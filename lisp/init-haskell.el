(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)

(require 'hi2)
(add-hook 'haskell-mode-hook 'turn-on-hi2)

;;(require 'ghci-completion)
;;(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)

(defun haskell-hook ()
  (ghc-init)
;;  (flycheck-mode)
  (company-mode)
  (define-key haskell-mode-map [?\C-c ?\C-l] 'haskell-process-load-file)
  (define-key haskell-mode-map [f5] 'haskell-process-load-file)

  ;; Switch to the REPL.
  (define-key haskell-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch)
  ;; “Bring” the REPL, hiding all other windows apart from the source
  ;; and the REPL.
  (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)

  ;; Build the Cabal project.
  (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  ;; Interactively choose the Cabal command to run.
  (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

  ;; Get the type and info of the symbol at point, print it in the
  ;; message buffer.
  (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)

  ;; Contextually do clever things on the space key, in particular:
  ;;   1. Complete imports, letting you choose the module name.
  ;;   2. Show the type of the symbol after the space.
  (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

  ;; Jump to the imports. Keep tapping to jump between import
  ;; groups. C-u f8 to jump back again.
  (define-key haskell-mode-map [f8] 'haskell-navigate-imports)

  ;; Jump to the definition of the current symbol.
  (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)

  ;; Indent the below lines on columns after the current column.
  (define-key haskell-mode-map (kbd "C-<right>")
    (lambda ()
      (interactive)
      (haskell-move-nested 1)))
  ;; Same as above but backwards.
  (define-key haskell-mode-map (kbd "C-<left>")
    (lambda ()
      (interactive)
      (haskell-move-nested -1))))

;; Useful to have these keybindings for .cabal files, too.
(defun haskell-cabal-hook ()
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)
  (define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
  (define-key haskell-cabal-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch))


(add-hook 'haskell-mode-hook 'haskell-hook)
(add-hook 'haskell-cabal-mode-hook 'haskell-cabal-hook)

;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)


;; Customization
(custom-set-variables
;; '(haskell-process-type 'cabal-repl)
;; '(haskell-program-name "cabal repl")
 ;; To enable tags generation on save.
 '(haskell-tags-on-save t)

 ;; To enable stylish on save.
 '(haskell-stylish-on-save t)
)
(add-to-list 'company-backends 'company-ghc)
(provide 'init-haskell)
