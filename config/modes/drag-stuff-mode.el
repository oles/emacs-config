(defvar drag-stuff--point-adjusted nil)
(defvar drag-stuff--point-mark-exchanged nil)


(defun drag-stuff--pre-drag()
  (when (region-active-p)
    (when (< (point) (mark))
      (exchange-point-and-mark)
      (setq drag-stuff--point-mark-exchanged t))
    (if (zerop (current-column))
        (progn
          (backward-char 1)
          (setq drag-stuff--point-adjusted t))
      (when drag-stuff--point-mark-exchanged
        (exchange-point-and-mark)
        (setq drag-stuff--point-mark-exchanged nil)))))


(defun drag-stuff--post-drag()
  (when drag-stuff--point-adjusted
    (forward-char 1)
    (setq drag-stuff--point-adjusted nil))
  (when drag-stuff--point-mark-exchanged
    (exchange-point-and-mark)
    (setq drag-stuff--point-mark-exchanged nil)))




(add-hook 'drag-stuff-before-drag-hook 'drag-stuff--pre-drag)
(add-hook 'drag-stuff-after-drag-hook 'drag-stuff--post-drag)


(drag-stuff-global-mode 1)


(setq minor-mode-map-alist
      (assq-delete-all 'drag-stuff-mode minor-mode-map-alist))

(global-set-key (kbd "C-M-<up>") 'drag-stuff-up)
(global-set-key (kbd "C-M-<down>") 'drag-stuff-down)
