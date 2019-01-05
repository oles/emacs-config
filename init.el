(defun absolute-load(path)
  (load path nil t))

(defun relative-load(file)
  (absolute-load (concat (file-name-directory load-file-name) file)))


(relative-load "theme/init.el")
(relative-load "config/init.el")


(add-hook
 'emacs-startup-hook
 (lambda()
   (when (equal "*scratch*" (format "%s" (current-buffer)))
     (resize-normal) (new-terminal))))
