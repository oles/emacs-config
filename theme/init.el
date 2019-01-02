(load (concat user-emacs-directory "theme/cursor.el"))
(load (concat user-emacs-directory "theme/mode-line.el"))
(load (concat user-emacs-directory "theme/font.el"))
(load (concat user-emacs-directory "theme/main.el"))
(load (concat user-emacs-directory "theme/font-lock.el"))


(eval-after-load 'term
  (lambda()
    (load (concat user-emacs-directory "theme/term-mode.el"))))

(eval-after-load 'custom
  (lambda()
    (load (concat user-emacs-directory "theme/custom-mode.el"))))

(eval-after-load 'info
  (lambda()
    (load (concat user-emacs-directory "theme/info-mode.el"))))
