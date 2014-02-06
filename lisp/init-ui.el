(require 'powerline)

(powerline-default-theme)

(setq powerline-arrow-shape 'arrow)   ;; the default
(setq powerline-arrow-shape 'curve)   ;; give your mode-line curves
(setq powerline-arrow-shape 'arrow14) ;; best for small fonts
(setq powerline-color1 "grey18")
(setq powerline-color2 "grey40")

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

(load-theme 'sanityinc-tomorrow-eighties t)

(setq visible-bell t)


(provide 'init-ui)
