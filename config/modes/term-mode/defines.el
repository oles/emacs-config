(defun get-terminal-processes()
  (interactive)
  (let ((pid (process-id (get-buffer-process (current-buffer)))))

    (message (shell-command-to-string (format "ps -g %s -o comm --no-headers" pid)))
  ))
