(defun user-package-load(file)
  (load (concat package-user-dir file) nil t))


;; Loads custom packages
(user-package-load "/hide-mouse-mode/hide-mouse-mode.el")
