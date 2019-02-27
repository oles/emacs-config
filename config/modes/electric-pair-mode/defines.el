(defun create-electric-pair(string)
  (cons (string-to-char string) (string-to-char string)))


(defun electric-pair-set-local(list)
  (setq-local electric-pair-pairs list)
  (setq-local electric-pair-text-pairs list))


(defun electric-pair-local-mode-with(list)
  (electric-pair-set-local list)
  (electric-pair-local-mode))
