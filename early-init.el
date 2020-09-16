;; makes startup faster by reducing the frequency of garbage collection
(setq gc-cons-threshold 50000000) ;; 50MB

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(fset 'display-startup-echo-area-message 'ignore)

(setq wanted-built-in-directories '(
  "emacs-lisp"
  "lisp"
))


;; TODO: further experiment on why the eval-after-load hook is fired - perhaps by adding (debug) into the vc-hooks.el file (not the .elc !!)
(setq vc-handled-backends nil)
;;(fset 'vc-mode 'ignore)
;;(fset 'vc-mode-line 'ignore)
(assoc-delete-all 'vc-mode mode-line-format)
(remove-hook 'find-file-hook 'vc-refresh-state)
(remove-hook 'kill-buffer-hook 'vc-kill-buffer-hook)


;;(eval-after-load "vc-git" (message "EVAL-AFTER-LOAD VC-GIT"))


(setq load-path (seq-filter (lambda (item) 
  (seq-find (lambda (directory)
    (equal directory (file-name-nondirectory item)))
  wanted-built-in-directories))
load-path))

