(advice-add
 'save-buffers-kill-emacs
 :before
 (lambda()
   (dolist (buffer (buffer-list))
     (with-current-buffer buffer
       (when (and (string-equal major-mode "term-mode")
                  (= 1 (length (get-terminal-processes))))
         (set-process-query-on-exit-flag (get-buffer-process buffer) nil))))))
