(global-undo-tree-mode 1)


(setq minor-mode-map-alist
      (assq-delete-all 'undo-tree-mode minor-mode-map-alist))

(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-y") 'undo-tree-redo)
