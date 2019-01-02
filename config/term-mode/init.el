(defvar-local directory (file-name-directory load-file-name))

(with-eval-after-load 'term
  (absolute-load (concat directory "theme.el"))
  (absolute-load (concat directory "key-bindings.el")))
