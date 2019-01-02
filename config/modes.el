(defvar-local directory (file-name-directory load-file-name))


(tooltip-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(line-number-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 0)


(with-eval-after-load 'term
  (absolute-load (concat directory "term-mode/init.el")))

(with-eval-after-load 'info
  (absolute-load (concat directory "info-mode.el")))

(with-eval-after-load 'custom
  (absolute-load (concat directory "custom-mode.el")))
