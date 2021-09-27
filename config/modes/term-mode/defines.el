(defun get-terminal-processes()
  (interactive)
  (let ((pid (process-id (get-buffer-process (current-buffer)))))
    (split-string
     (shell-command-to-string (format "ps -g %s -o comm --no-headers" pid)))))


(defun kill-current-term-mode-buffer-without-process-query()
  (interactive)
  (let ((proc (get-buffer-process (current-buffer))))
    (when (processp proc)
      (delete-process proc)
      (kill-buffer))))


;; copied from term.el, tweaked to remove uneccessary stuff
(defun term-handle-exit (process-name msg)
  "Write process exit (or other change) message MSG in the current buffer."
  ;; - (let ((buffer-read-only nil)
    ;; - (omax (point-max))
    ;; - (opoint (point)))
    ;; Remove hooks to avoid errors due to dead process.
    (remove-hook 'pre-command-hook #'term-set-goto-process-mark t)
    (remove-hook 'post-command-hook #'term-goto-process-mark-maybe t)
    ;; Record where we put the message, so we can ignore it
    ;; later on.
    ;; - (goto-char omax)
    ;; - (insert ?\n "Process " process-name " " msg)
    ;; - Force mode line redisplay soon.
    ;; - (force-mode-line-update)
    ;; - (when (and opoint (< opoint omax))
    ;; -  (goto-char opoint))))
)
