(user-directory-load "theme/cursor.el")
(user-directory-load "theme/mode-line.el")
(user-directory-load "theme/font.el")
(user-directory-load "theme/main.el")
(user-directory-load "theme/font-lock.el")


(eval-after-load 'term
  (lambda()
    (user-directory-load "theme/term-mode.el")))

(eval-after-load 'custom
  (lambda()
    (user-directory-load "theme/custom-mode.el")))

(eval-after-load 'info
  (lambda()
    (user-directory-load "theme/info-mode.el")))
