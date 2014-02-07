(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun pretty-print-xml-region (begin end)
  "Pretty format XML markup in region. You need to have nxml-mode
http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do
this.  The function inserts linebreaks to separate tags that have
nothing but whitespace between them.  It then indents the markup
by using nxml's indentation rules."
  (interactive "r")
  (save-excursion
    (nxml-mode)
    (goto-char begin)
    (while (search-forward-regexp "\>[ \\t]*\<" nil t) 
      (backward-char) (insert "\n"))
    (indent-region begin end))
  (message "Ah, much better!"))

(when (equal system-type 'windows-nt)
  (setq w32-get-true-file-attributes nil))

;; Without this it's hell to do a # on a UK keyboard 
(when (equal system-type 'darwin)
  (defun insert-pound ()
    "Inserts a pound into the buffer"
    (insert "#"))
  (global-set-key (kbd "M-3") 
		  (lambda()
		    (interactive)
		    (insert-pound))))


(provide 'init-misc)
