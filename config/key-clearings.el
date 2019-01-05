(dolist
    (key '("<insert>" "<insertchar>"
           "C-k" "C-q"
           "M-q" "M-d" "M-z" "M-|" "M-w" "M-c"))
  (global-unset-key (kbd key)))



;; (assq-delete-all 'undo-tree-mode minor-mode-map-alist)
;; (setq visual-line-mode-map (make-sparse-keymap))
;; (setq comint-mode-map (make-sparse-keymap))
;; (setq shell-mode-map (make-sparse-keymap))
;; (setq help-mode-map (make-sparse-keymap))
;; (eval-after-load "diff-mode" '(setq diff-mode-map (make-sparse-keymap)))


;; (with-eval-after-load "js" (setq js-mode-map (make-sparse-keymap)))
;; (with-eval-after-load "cc-mode" (setq c-mode-map (make-sparse-keymap)))

;; (with-eval-after-load "help-mode" (setq help-mode-map (make-sparse-keymap)))




(with-eval-after-load "cus-edit"
  ;; (setq custom-mode-map (make-sparse-keymap))
  ;; (setq custom-mode-link-map (make-sparse-keymap))
  ;; (setq custom-field-keymap (make-sparse-keymap))

  (message "custom-mode!!")

  ;; (local-unset-key (kbd "C-c C-c"))



  ;; (define-key custom-mode-map (kbd "C-c C-c") nil)

  ;; `local-map' Property Bindings:

  ;; (local-unset-key (kbd "C-c C-c"))
  ;; (use-local-map (make-sparse-keymap))


  ;; (use-local-map nil)

  ;; (define-key local-map (kbd "C-c C-c") nil)
  ;; (global-unset-key (kbd "C-c C-c"))
  )
