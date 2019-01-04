(defun create-pair(string)
  (cons (string-to-char string) (string-to-char string)))

(setq single-quote (create-pair "'"))


(push single-quote electric-pair-pairs)
(setq electric-pair-delete-adjacent-pairs nil)


(add-hook
 'emacs-lisp-mode-hook
 (lambda()
   (setq-local electric-pair-pairs (remove single-quote electric-pair-pairs))))
