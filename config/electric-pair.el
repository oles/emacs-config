(defun create-pair(string)
  (cons (string-to-char string) (string-to-char string)))

(setq single-quote (create-pair "'"))


(add-to-list 'electric-pair-pairs single-quote)
(setq electric-pair-delete-adjacent-pairs nil)


(with-eval-after-load 'elisp-mode
  (setq-local electric-pair-pairs (remove single-quote electric-pair-pairs)))
