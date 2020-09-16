;; (defun absolute-load(path)
;;   (load path nil t))

;; (defun relative-load(file)
;;   (absolute-load (concat (file-name-directory load-file-name) file)))


;; (relative-load "theme/init.el")
;; (relative-load "config/init.el")


;; (add-hook
;;  'emacs-startup-hook
;;  (lambda()
;;    (when (equal "*scratch*" (format "%s" (current-buffer)))
;;      (resize-normal) (new-terminal))))


;;(add-hook 'emacs-startup-hook (emacs-init-time))
(add-hook 'emacs-startup-hook (lambda() (switch-to-buffer "*Messages*")))


(defun console-log(value)
  (interactive)
  (message ";; type-of: %s" (type-of value))
  (prin1 value)
  (message "") ;; for line break
)


;; makes garbage collection pauses faster by decreasing the threshold, when init is done
(setq gc-cons-threshold (* 2 1000 1000))

