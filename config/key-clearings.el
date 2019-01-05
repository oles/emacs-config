(dolist
    (key '("<insert>" "<insertchar>"
           "C-k" "C-q"
           "M-q" "M-d" "M-z" "M-|" "M-w" "M-c"))
  (global-unset-key (kbd key)))


(with-eval-after-load 'js (setq js-mode-map (make-sparse-keymap)))
(with-eval-after-load 'cc-mode (setq c-mode-map (make-sparse-keymap)))
(with-eval-after-load 'help-mode (setq help-mode-map (make-sparse-keymap)))
(with-eval-after-load 'diff-mode (setq diff-mode-map (make-sparse-keymap)))

(with-eval-after-load 'cus-edit
  (define-key custom-mode-map (kbd "C-c") nil)
  (define-key custom-mode-map (kbd "C-x") nil)

  (define-key custom-field-keymap (kbd "C-c") nil)
  (define-key custom-field-keymap (kbd "C-x") nil))
