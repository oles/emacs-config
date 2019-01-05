;; -*- lexical-binding: t -*-


(electric-pair-mode 1)


(let ((directory (file-name-directory load-file-name)))
  (with-eval-after-load 'elec-pair
    (absolute-load (concat directory "electric-pair.el")))

  (with-eval-after-load 'term
    (absolute-load (concat directory "term-mode/init.el")))

  (with-eval-after-load 'info
    (absolute-load (concat directory "info-mode.el")))

  (with-eval-after-load 'cus-edit
    (absolute-load (concat directory "custom-mode.el"))))
