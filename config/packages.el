;; loads custom packages
;; (absolute-load (concat package-user-dir "/hide-mouse-mode/hide-mouse-mode.el"))



;; adds melpa to package-archives
(with-eval-after-load "package"
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")))


;; initializes installed packages
(package-initialize)


;; configures and enables packages
(relative-load "tabbar/init.el")
(relative-load "drag-stuff.el")
(relative-load "undo-tree.el")
(relative-load "web-mode.el")
(relative-load "js2-mode.el")


(global-set-key (kbd "M-%") 'query-replace-from-region)
