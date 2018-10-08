;; Remove whitespace before saving a file.
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;; Smooth scroll with arrow keys.
(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq-default mouse-wheel-progressive-speed nil)
(setq-default mouse-wheel-follow-mouse 't)
(setq-default scroll-step 1)


;; No more typing yes or no. Just y or n will do.
(fset 'yes-or-no-p 'y-or-n-p)


;; Overwrite when text is selected
(delete-selection-mode t)


;; Don't create backup files
(setq-default backup-inhibited t)
(setq-default make-backup-files nil)
(setq-default auto-save-default nil)
(setq-default auto-save-list-file-prefix nil)
(setq-default auto-save-list-file-name nil)
(setq-default backup-directory-alist nil)


;; Set 4 spaces as tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)


;; Prevents minibuffer message on startup
(defun display-startup-echo-area-message ())


;; Removes startup-screen
(setq-default inhibit-startup-screen t)


;; Remove the "/" when a line is too long
(set-display-table-slot standard-display-table 'wrap ?\ )


;; Disable vc-git
(setq-default vc-handled-backends nil)


;; Enables pixel resizing of window
(setq frame-resize-pixelwise t)


;; Removes warnings for commands
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)


;; Stops keyboard-escape-quit from closing other windows
(defadvice keyboard-escape-quit
  (around keyboard-escape-quit-dont-close-windows activate)
  (let ((buffer-quit-function (lambda() ())))
    ad-do-it))
