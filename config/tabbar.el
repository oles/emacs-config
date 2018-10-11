(load (concat user-emacs-directory "defines/tabbar.el"))


(add-hook 'tabbar-mode-hook (lambda()
    (setq tabbar-buffer-groups-function 'buffer-groups)
    (setq tabbar-separator '(2))

    (setq tabbar-use-images nil)

    (setq tabbar-buffer-home-button '(("") ""))
    (setq tabbar-home-button '(("") ""))
    (setq tabbar-scroll-left-button '(("") ""))
    (setq tabbar-scroll-right-button '(("") ""))

    (custom-set-faces
     '(tabbar-button ((t nil)))
     '(tabbar-default ((t (:background "#202020" :foreground "#BCBCBC" :box nil))))
     '(tabbar-highlight ((t nil)))
     '(tabbar-modified ((t (:inherit tabbar-default :foreground "#87D700"))))
     '(tabbar-selected ((t (:inherit tabbar-default :foreground "#1EE8FF"))))
     '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "#1EE8FF"))))
     '(tabbar-unselected ((t (:inherit tabbar-default)))))))


(tabbar-mode 1)
(defalias 'toggle-tabbar 'tabbar-local-mode)


(assq-delete-all 'tabbar-mode minor-mode-map-alist)

(global-set-key [C-tab] 'tabbar-forward-tab)
(global-set-key [C-S-iso-lefttab] 'tabbar-backward-tab)

(global-set-key (kbd "M-<left>") (lambda() (interactive) (tabbar-move-tab)))
(global-set-key (kbd "M-<right>") (lambda() (interactive) (tabbar-move-tab t)))

(global-set-key (kbd "M-1") (lambda() (interactive) (tabbar-select 0)))
(global-set-key (kbd "M-2") (lambda() (interactive) (tabbar-select 1)))
(global-set-key (kbd "M-3") (lambda() (interactive) (tabbar-select 2)))
(global-set-key (kbd "M-4") (lambda() (interactive) (tabbar-select 3)))
(global-set-key (kbd "M-5") (lambda() (interactive) (tabbar-select 4)))
(global-set-key (kbd "M-6") (lambda() (interactive) (tabbar-select 5)))
(global-set-key (kbd "M-7") (lambda() (interactive) (tabbar-select 6)))
(global-set-key (kbd "M-8") (lambda() (interactive) (tabbar-select 7)))
(global-set-key (kbd "M-9") (lambda() (interactive) (tabbar-select 8)))
