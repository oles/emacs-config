;; removes startup-screen
(setq-default inhibit-startup-screen t)


;; prevents minibuffer message on startup
(defun display-startup-echo-area-message ())


;; changes location of custom-file
(setq custom-file (concat user-emacs-directory "custom.el"))


;; don't automatically enable packages at start-up
(setq package-enable-at-startup nil)


;; don't create backup files
(setq auto-save-default nil)
(setq make-backup-files nil)


;; don't creat lockfiles
(setq create-lockfiles nil)


;; set 4 spaces as tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)


;; disables some built-in modes
(tooltip-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(line-number-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 0)


;; remove "/" when a line is too long
(set-display-table-slot standard-display-table 'wrap ?\ )


;; remove whitespace before saving
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;; overwrite when text is selected
(delete-selection-mode t)


;; no more typing yes or no - just y or n will do
(fset 'yes-or-no-p 'y-or-n-p)


;; disable vc-git
(setq-default vc-handled-backends nil)


;; disable mouse-avoidance-mode
(setq mouse-avoidance-mode nil)


;; disables auto hiding of mouse pointer
(setq make-pointer-invisible nil)


;; removes warnings for the commands listed
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)


;; smooth scroll with arrow keys
(setq-default mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq-default mouse-wheel-progressive-speed nil)
(setq-default mouse-wheel-follow-mouse t)
(setq-default scroll-step 1)


;; makes page-up and page-down move cursor to top or bottom
;; when there's nothing left to scroll
(setq-default scroll-error-top-bottom t)


;; enables pixel resizing of window
(setq frame-resize-pixelwise t)


;; makes text-scale-* adjust with smaller steps
(setq text-scale-mode-step 1.1)


;; prevents coloring of css values
(setq-default css-fontify-colors nil)


;; keeps the highlight active in inactive windows
(setq highlight-nonselected-windows t)


;; stops keyboard-escape-quit from closing other windows
(defadvice keyboard-escape-quit
  (around keyboard-escape-quit-dont-close-windows activate)
  (let ((buffer-quit-function (lambda() ())))
    ad-do-it))
