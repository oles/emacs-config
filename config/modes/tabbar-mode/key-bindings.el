(dolist (keymap '(tabbar-mode tabbar-mwheel-mode))
  (setq minor-mode-map-alist
        (assq-delete-all keymap minor-mode-map-alist)))


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
