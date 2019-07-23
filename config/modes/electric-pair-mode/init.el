;; -*- lexical-binding: t -*-
(relative-load "defines.el")


(setq electric-pair-delete-adjacent-pairs nil)


(let ((single (create-electric-pair "'"))
      (double (create-electric-pair "\""))
      (backtick (create-electric-pair "`")))

  (let ((default (list single double backtick)))

    (add-hook
     'after-change-major-mode-hook
     (lambda()

       (pcase major-mode
         ('text-mode (electric-pair-local-mode-with default))
         ('web-mode (electric-pair-local-mode-with default))
         ('scss-mode (electric-pair-local-mode-with default))
         ('js-mode (electric-pair-local-mode-with default))
         ('js2-mode (electric-pair-local-mode-with default))
         ('fundamental-mode (electric-pair-local-mode-with default))
         ('emacs-lisp-mode (electric-pair-local-mode-with (remove single default))))
       ))))
