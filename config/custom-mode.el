;; (eval-after-load 'custom
;;   (lambda()
;;     (user-directory-load "theme/custom-mode.el")))



(dolist (face '(custom-button
                custom-button-mouse
                custom-button-pressed
                custom-button-pressed-unraised
                custom-button-unraised))
  (set-face-attribute face nil
                      :box 'unspecified
                      :background 'unspecified
                      :foreground 'unspecified))

(set-face-attribute 'custom-button nil :inherit 'link)

(set-face-attribute 'custom-variable-tag nil :weight 'unspecified :foreground "#A1EFE4")

(set-face-attribute 'widget-field nil :background 'unspecified)
