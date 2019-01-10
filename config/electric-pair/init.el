;; -*- lexical-binding: t -*-
(relative-load "defines.el")


(setq electric-pair-delete-adjacent-pairs nil)


(let ((single (create-electric-pair "'"))
      (double (create-electric-pair "\""))
      (backtick (create-electric-pair "`")))

  (electric-pair-set-global (list single double backtick))

  (add-hook
   'emacs-lisp-mode-hook
   (lambda()
     (electric-pair-set-local (remove single electric-pair-pairs)))))


(electric-pair-mode 1)
