;; -*- lexical-binding: t -*-


(relative-load "defines.el")

(let ((directory (file-name-directory load-file-name)))
  (with-eval-after-load 'tabbar
    (absolute-load (concat directory "theme.el"))
    (absolute-load (concat directory "key-bindings.el"))))


(setq tabbar-use-images nil)
(setq tabbar-separator (list 2))
(setq tabbar-buffer-groups-function 'buffer-groups)

(let ((empty-list '(("") "")))
  (setq tabbar-buffer-home-button empty-list)
  (setq tabbar-scroll-left-button empty-list)
  (setq tabbar-scroll-right-button empty-list))


(tabbar-mode 1)
