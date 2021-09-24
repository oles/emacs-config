;; (defun set-no-process-query-on-exit ()
;;   (let ((proc (get-buffer-process (current-buffer))))
;;     (when (processp proc)
;;       (set-process-query-on-exit-flag proc nil))))

;; (add-hook 'term-exec-hook 'set-no-process-query-on-exit)


;; (add-hook
;;  'term-exec-hook
;;  (lambda()
;;    (let ((proc (get-buffer-process (current-buffer))))
;;      (when (processp proc)
;;        (set-process-query-on-exit-flag proc nil)))
;;    ))




;; (defun set-no-process-query-on-exit ()
;;   (let ((proc (get-buffer-process (current-buffer))))
;;     (when (processp proc)
;;       (set-process-query-on-exit-flag proc nil))))

;; (add-hook 'term-mode-hook 'set-no-process-query-on-exit)

;; (defun set-no-process-query-on-exit ()
;;   (let ((proc (get-buffer-process (current-buffer))))
;;     (when (processp proc)
;;       (set-process-query-on-exit-flag proc nil))))

;; (add-hook 'term-exec-hook 'set-no-process-query-on-exit)


;; (defun my-term-handle-exit (&optional process-name msg)
;;   (message "%s | %s" process-name msg)
;;   (kill-buffer (current-buffer)))

;; (advice-add 'term-handle-exit :after 'my-term-handle-exit)


;; (defun term-handle-exit--close-buffer (&rest args)
;;   (when (null (get-buffer-process (current-buffer)))
;;     (insert "Press <C-d> to kill the buffer.")
;;     (use-local-map (let ((map (make-sparse-keymap)))
;;                      (define-key map (kbd "C-d")
;;                        (lambda ()
;;                          (interactive)
;;                          (kill-buffer (current-buffer))))
;;                      map))))
;; (advice-add 'term-handle-exit :after #'term-handle-exit--close-buffer)


;; (defun term-handle-exit--close-buffer (&rest args)
;;   (when (null (get-buffer-process (current-buffer)))
;;     (insert "Press <C-d> to kill the buffer.")
;;     (use-local-map (let ((map (make-sparse-keymap)))
;;                      (define-key map (kbd "C-d")
;;                        (lambda ()
;;                          (interactive)
;;                          (kill-buffer (current-buffer))))
;;                      map))))
;; (advice-add 'term-handle-exit :after #'term-handle-exit--close-buffer)




;; (add-hook 'term-exec-hook (lambda ()
;;             (let* ((buff (current-buffer))
;;                  (proc (get-buffer-process buff)))
;;             (let ((buff buff))
;;                (set-process-sentinel proc (lambda (process event)
;;                             (if (string= event "finished\n")
;;                                        (kill-buffer buff))))))))



;; (defun my-term-exec-hook ()
;;   "Custom `term-exec-hook' behaviors."
;;   ;; suppress query on exit for screen
;;   (let ((proc (get-buffer-process (current-buffer))))
;;     (if (member "/usr/bin/screen" (process-command (get-buffer-process (current-buffer)) proc))
;;         (set-process-query-on-exit-flag proc nil))))

;; (add-hook 'term-exec-hook 'my-term-exec-hook)


;; (defadvice term-handle-exit
;;   (after term-kill-buffer-on-exit activate)
;; (kill-buffer))
