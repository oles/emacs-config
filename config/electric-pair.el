(defun create-pair(string)
  (cons (string-to-char string) (string-to-char string)))

(defvar single-quote (create-pair "'"))


(add-to-list 'electric-pair-pairs single-quote)
(setq electric-pair-delete-adjacent-pairs nil)


(add-hook
 'emacs-lisp-mode-hook
 (lambda()
   (setq-local electric-pair-pairs (remove single-quote electric-pair-pairs))))
