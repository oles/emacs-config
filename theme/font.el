;; sets a pleasant line spacing
(setq-default line-spacing 0.11)


;; sets font to size 11 DejaVu Sans Mono
;; inside the `with-eval-after-load` to prevent height calculation error on startup
(with-eval-after-load 'emacs
  (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono 11")))
