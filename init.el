(defun absolute-load(path)
  (load path nil t))

(defun relative-load(file)
  (absolute-load (concat (file-name-directory load-file-name) file)))


(relative-load "theme/init.el")
(relative-load "config/init.el")


(add-hook 'emacs-startup-hook (lambda()
  (when (equal "*scratch*" (format "%s" (current-buffer)))
    (progn (resize-normal)
           (sleep-for 0.1) ;; workaround height bug in terminal
           (new-terminal)))))



;; TODO: Finalize refactor below


;; melpa packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(relative-load "config/tabbar/init.el")
(relative-load "config/drag-stuff.el")
(relative-load "config/undo-tree.el")
(relative-load "config/web-mode.el")
(relative-load "config/js2-mode.el")


(defalias 'toggle-mode-line 'hide-mode-line-mode)

(global-set-key (kbd "M-%") 'query-replace-from-region)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (replace-from-region hide-mode-line js2-mode drag-stuff web-mode undo-tree tabbar smartparens nginx-mode))))
