(load (concat user-emacs-directory "theme/cursor.el"))
(load (concat user-emacs-directory "theme/mode-line.el"))


;; prevents coloring of css values
(customize-set-variable 'css-fontify-colors nil)


;; sets a pleasant global line spacing
(customize-set-variable 'line-spacing 0.11)


;; TODO: migrate most of custom-set-faces in main init.el here
;(set-face-attribute 'default nil :family "DejaVu Sans Mono")
