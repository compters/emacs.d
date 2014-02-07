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

(when (>= emacs-major-version 23)
  (global-visual-line-mode 1))

(global-hl-line-mode 1)
(setq inhibit-splash-screen t)
(column-number-mode 1)
(show-paren-mode 1)
(when (boundp 'tool-bar-mode) (tool-bar-mode -1))

(defun font-existsp (font)
    (if (null (x-list-fonts font))
	nil t))

(defun normal-font()
  (interactive)
  (cond ((font-existsp "-outline-Consolas-normal-r-normal-normal-12-97-96-96-c-*-iso8859-1")    
	 (set-default-font "-outline-Consolas-normal-r-normal-normal-12-97-96-96-c-*-iso8859-1"))
	((font-existsp "Bitstream Vera Sans Mono-10")
	 (set-default-font "Bitstream Vera Sans Mono-10"))))

(defun smaller-font ()
  (interactive)
  (cond ((font-existsp "Consolas-10")	 
	 (set-default-font "Consolas-10"))
	((font-existsp "-outline-Consolas-normal-r-normal-normal-10-97-96-96-c-*-iso8859-1")    
	 (set-default-font "-outline-Consolas-normal-r-normal-normal-10-97-96-96-c-*-iso8859-1"))
	((font-existsp "Bitstream Vera Sans Mono-8")
	 (set-default-font "Bitstream Vera Sans Mono-8"))))

(defun bigger-font ()
  (interactive)
  (cond ((font-existsp "Consolas-12")	 
	 (set-default-font "Consolas-12"))
	((font-existsp "-outline-Consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")    
	 (set-default-font "-outline-Consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1"))
	((font-existsp "Bitstream Vera Sans Mono-12")
	 (set-default-font "Bitstream Vera Sans Mono-12"))))

(when window-system
  (bigger-font))


(provide 'init-ui)
