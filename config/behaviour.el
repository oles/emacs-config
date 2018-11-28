;; removes startup-screen
(setq-default inhibit-startup-screen t)


;; prevents minibuffer message on startup
(defun display-startup-echo-area-message ())


;; sets custom package location
(setq package-user-dir (concat user-emacs-directory "packages"))


;; don't create backup files
(setq-default backup-inhibited t)
(setq-default make-backup-files nil)
(setq-default auto-save-default nil)
(setq-default auto-save-list-file-prefix nil)
(setq-default auto-save-list-file-name nil)
(setq-default backup-directory-alist nil)


;; set 4 spaces as tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)


;; remove "/" when a line is too long
(set-display-table-slot standard-display-table 'wrap ?\ )


;; remove whitespace before saving
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;; overwrite when text is selected
(delete-selection-mode t)


;; no more typing yes or no - just y or n will do
(fset 'yes-or-no-p 'y-or-n-p)


;; Disable vc-git
(setq-default vc-handled-backends nil)


;; Disable mouse-avoidance-mode
(setq mouse-avoidance-mode nil)


;; Kill processes without confirmation
(setq confirm-kill-processes nil)


;; removes warnings for the commands listed
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)


;; smooth scroll with arrow keys
(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq-default mouse-wheel-progressive-speed nil)
(setq-default mouse-wheel-follow-mouse 't)
(setq-default scroll-step 1)


;; enables pixel resizing of window
(setq frame-resize-pixelwise t)


;; Stops keyboard-escape-quit from closing other windows
(defadvice keyboard-escape-quit
  (around keyboard-escape-quit-dont-close-windows activate)
  (let ((buffer-quit-function (lambda() ())))
    ad-do-it))
