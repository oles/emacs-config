(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


(with-eval-after-load 'js2
  (setq js-expr-indent-offset (- js-indent-level))
  (setq js2-mode-show-parse-errors nil)
  (setq js2-switch-indent-offset 4)
  (setq js2-mode-show-strict-warnings nil)
  (setq js2-strict-missing-semi-warning nil)

  (setq js2-mode-map (make-sparse-keymap))

  ;; '(js2-external-variable ((t nil)))
  ;; '(js2-function-call ((t (:inherit font-lock-function-name-face))))
  ;; '(js2-function-param ((t (:foreground "#E06C75"))))
  ;; '(js2-object-property ((t (:foreground "#ABB2BF"))))
  )
