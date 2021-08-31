;; customizations for built-in packages
(relative-load "cc-mode.el")
(relative-load "conf-mode.el")
(relative-load "css-mode.el")
(relative-load "custom-mode.el")
(relative-load "diff-mode.el")
(relative-load "electric-pair-mode/init.el")
(relative-load "help-mode.el")
(relative-load "info-mode.el")
(relative-load "js-mode.el")
(relative-load "shell-script-mode.el")
(relative-load "term-mode/init.el")


;; loads custom packages
;; (absolute-load (concat package-user-dir "/hide-mouse-mode/hide-mouse-mode.el"))


;; customizations for third-party packages
(relative-load "tabbar-mode/init.el")
(relative-load "drag-stuff-mode.el")
(relative-load "undo-tree-mode.el")

(relative-load "web-mode/init.el")
(relative-load "js2-mode.el")
(relative-load "nginx-mode.el")

(global-set-key (kbd "M-%") 'query-replace-from-region) ;; TEMP(?)
