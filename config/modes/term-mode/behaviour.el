;; TODO: add hook to kill processes without child processes on kill-emacs-query-functions


;; (setq kill-buffer-query-functions
;;       (delq 'process-kill-buffer-query-function kill-buffer-query-functions))



;; (add-hook
;;  'kill-buffer-query-functions
;;  (lambda ()
;;    (if (y-or-n-p "test query!")
;;        (progn
;;          (message "test")
;;          nil)
;;      t)))

;; (add-hook 'kill-buffer-query-functions process-kill-buffer-query-function)


;; (add-hook
;;  'kill-emacs-query-functions
;;  (lambda ()
;;    (if (y-or-n-p "test query!")
;;        (progn
;;          (message "test")
;;          nil)
;;      t)))


;; (defun my-tracing-function (proc string)
;;   (message "Proc %S received %S" proc string))

;; (add-function :before (process-filter proc) #'my-tracing-function)


;; (defadvice process-kill-buffer-query-function (before check-terminal-processes activate)
;;   (message "test 123"))
