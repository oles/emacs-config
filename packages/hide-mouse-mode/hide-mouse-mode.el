;;; hide-mouse-mode.el --- minor mode that hides the mouse pointer -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2018 Ole Strøm
;;
;; Author: Ole Strøm <http://github/oles>
;; Version: 1.0.0
;; Keywords: hide remove toggle mouse cursor pointer
;; Package-Requires: ((emacs "26.1"))
;;
;; This file is not part of GNU Emacs.

;;; Commentary:
;;
;; Provides `hide-mouse-mode`.
;; A minor mode that hides your mouse pointer,
;; using a hide-mouse executable via `X11/extensions/Xfixes.h`.
;; Thus only working with xorg-server, for now.
;; Source of that is inside the `c-source` folder.
;;
;;; Code:

(defvar hide-mouse-mode-active nil)
(defvar hide-mouse-mode-process-name "hide-mouse-process")
(defvar hide-mouse-mode-bin-location (concat package-user-dir
                                             "/hide-mouse-mode/hide-mouse"))

;;;###autoload
(define-minor-mode hide-mouse-mode
  :init-value t
  :global nil

  (if hide-mouse-mode
      (progn
        (add-hook 'focus-in-hook 'hide-mouse-mode-enable)
        (add-hook 'focus-out-hook 'hide-mouse-mode-disable)
        (hide-mouse-mode-enable))
    (progn
      (remove-hook 'focus-in-hook 'hide-mouse-mode-enable)
      (remove-hook 'focus-out-hook 'hide-mouse-mode-disable)
      (hide-mouse-mode-disable))))

(defun hide-mouse-mode-enable()
  (when (not hide-mouse-mode-active)
    (progn
      (setq hide-mouse-mode-active t)
      (start-process hide-mouse-mode-process-name nil hide-mouse-mode-bin-location))))

(defun hide-mouse-mode-disable()
  (when hide-mouse-mode-active
    (progn
      (setq hide-mouse-mode-active nil)
      (delete-process hide-mouse-mode-process-name))))

(provide 'hide-mouse-mode)
;;; hide-mouse-mode.el ends here
