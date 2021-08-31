;; -*- lexical-binding: t -*-

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

(let ((directory (file-name-directory load-file-name)))
  (with-eval-after-load 'web-mode
    (absolute-load (concat directory "behaviour.el"))
    (absolute-load (concat directory "theme.el"))
    (absolute-load (concat directory "key-bindings.el"))))


(setq web-mode-enable-auto-pairing nil)
(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)
(setq web-mode-script-padding 4)
(setq web-mode-style-padding 4)
(setq web-mode-enable-css-colorization nil)
(setq web-mode-enable-html-entities-fontification t)
