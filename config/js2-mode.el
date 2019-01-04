(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


(with-eval-after-load 'js2-mode
  (setq js-expr-indent-offset (- js-indent-level))
  (setq js2-mode-show-parse-errors nil)
  (setq js2-switch-indent-offset 4)
  (setq js2-mode-show-strict-warnings nil)
  (setq js2-strict-missing-semi-warning nil)

  (setq js2-mode-map (make-sparse-keymap))

  (set-face-attribute 'js2-function-param nil
                      :foreground 'unspecified
                      :inherit 'font-lock-variable-name-face)

  (set-face-attribute 'js2-function-call nil :inherit 'font-lock-function-name-face))
