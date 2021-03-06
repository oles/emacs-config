(with-eval-after-load 'cus-edit
  (define-key custom-mode-map (kbd "C-c") nil)
  (define-key custom-mode-map (kbd "C-x") nil)

  (define-key custom-field-keymap (kbd "C-c") nil)
  (define-key custom-field-keymap (kbd "C-x") nil)


  (dolist (face '(custom-button
                  custom-button-mouse
                  custom-button-pressed
                  custom-button-pressed-unraised
                  custom-button-unraised))
    (set-face-attribute face nil
                        :box 'unspecified
                        :background 'unspecified
                        :foreground 'unspecified))

  (set-face-attribute 'custom-group-tag nil
                      :height 'unspecified
                      :weight 'unspecified)

  (set-face-attribute 'custom-button nil :inherit 'link)

  (set-face-attribute 'custom-variable-tag nil
                      :weight 'unspecified
                      :foreground "#A1EFE4")

  (set-face-attribute 'widget-field nil :background 'unspecified))
