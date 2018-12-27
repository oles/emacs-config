(load (concat user-emacs-directory "theme/cursor.el"))
(load (concat user-emacs-directory "theme/mode-line.el"))
(load (concat user-emacs-directory "theme/font.el"))
(load (concat user-emacs-directory "theme/main.el"))

(add-hook 'emacs-startup-hook (lambda()
  (load (concat user-emacs-directory "theme/customize-mode.el"))
  (load (concat user-emacs-directory "theme/term-mode.el"))
))
