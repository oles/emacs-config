;; -*- lexical-binding: t -*-


(dolist (keymap '(tabbar-mode tabbar-mwheel-mode))
  (setq minor-mode-map-alist
        (assq-delete-all keymap minor-mode-map-alist)))


(global-set-key
 [C-tab]
 (lambda()
   (interactive)
   (unless tabbar-local-mode (tabbar-forward-tab))))

(global-set-key
 [C-S-iso-lefttab]
 (lambda()
   (interactive)
   (unless tabbar-local-mode (tabbar-backward-tab))))



(global-set-key
 (kbd "M-<left>")
 (lambda()
   (interactive)
   (unless tabbar-local-mode (tabbar-move-tab))))

(global-set-key
 (kbd "M-<right>")
 (lambda()
   (interactive)
   (unless tabbar-local-mode (tabbar-move-tab t))))


(let ((create-pair-from (number-sequence 1 9)))

  (let ((pairs (mapcar (lambda(number)
                         (cons
                          (concat "M-" (number-to-string number))
                          (1- number)))
                       create-pair-from)))
    (dolist (pair pairs)

      (global-set-key
       (kbd (car pair))
       (lambda()
         (interactive)
         (unless tabbar-local-mode
           (tabbar-select (cdr pair))))))))
