(defun clipboard-paste()
  (interactive)
  (if (use-region-p) (delete-region (region-beginning) (region-end)))
  (insert (gui-get-selection `CLIPBOARD `UTF8_STRING)))


(defun clipboard-cut(beg end)
  (interactive "r")
  (gui-set-selection
   `CLIPBOARD (substring-no-properties (filter-buffer-substring beg end)))
  (delete-region beg end))


(defun clipboard-copy(beg end)
  (interactive "r")
  (gui-set-selection
   `CLIPBOARD (substring-no-properties (filter-buffer-substring beg end))))


(defun select-all()
  (interactive)
  (execute-kbd-macro (kbd "C-<prior>"))
  (execute-kbd-macro (kbd "C-S-<next>")))


(defun comment-or-uncomment-region-or-line()
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)))


(defun save-all() (interactive) (save-some-buffers t))


(defun new-buffer()
  (interactive)
  (let ((buffer (generate-new-buffer "untitled")))
    (switch-to-buffer buffer)
    (text-mode)
    (setq buffer-offer-save t)))


(defun empty()
  (interactive)
  (let ((buffer (generate-new-buffer "*empty*")))
    (switch-to-buffer buffer)
    (text-mode)
    (setq buffer-offer-save t)))


(defun delete-word(arg)
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))


(defun backward-delete-word(arg)
  (interactive "p")
  (delete-word (- arg)))


(defun unindent()
  (interactive)
  ;; default to start and end of current line
  (setq regionStart (line-beginning-position))
  (setq regionEnd (line-end-position))

  ;; if there's a selection, use that instead of the current line
  (when (use-region-p)
    (setq regionStart (region-beginning))
    (setq regionEnd (region-end)))

  (save-excursion ; restore the position afterwards
    (goto-char regionStart) ; go to the start of region
    (setq start (line-beginning-position)) ; save the start of the line
    (goto-char regionEnd) ; go to the end of region
    (setq end (line-end-position)) ; save the end of the line

    (indent-code-rigidly start end (- tab-width)) ; indent between start and end
    (setq deactivate-mark nil) ; restore the selected region
    ))


(defun reload-file()
  (interactive)
  (if (not (buffer-modified-p))
      (revert-buffer :ignore-auto :noconfirm)
    (revert-buffer)))


(defun reload-config() (interactive) (load-file (concat user-emacs-directory "init.el")))


(defun resize-normal()
  (interactive)
  (set-frame-size (selected-frame) 92 60)
  (set-frame-position (selected-frame) 0 0))


(defun resize-full()
  (interactive)
  (set-frame-size (selected-frame) 220 60)
  (set-frame-position (selected-frame) 0 0))


(defun new-terminal()
  (interactive)
  (term "bash")
  (rename-buffer (generate-new-buffer-name "terminal")))


(defun text-scale-reset()
  (interactive)
  (text-scale-set 0))


(defun code-mode()
  (interactive)
  (resize-full)
  (split-window-right)
  (new-terminal)
  (rename-buffer "*term*")
  (tabbar-local-mode)
  (shrink-window-horizontally 17))
