(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))


(with-eval-after-load 'web-mode
  (setq web-mode-enable-auto-pairing nil)
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-script-padding 4)
  (setq web-mode-style-padding 4)
  (setq web-mode-enable-css-colorization nil)
  (setq web-mode-enable-html-entities-fontification t)

  (setq web-mode-map (make-sparse-keymap))
  (local-set-key (kbd "M-d") 'web-mode-element-close)

  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#E06C75")
  (set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#D19A66")
  (set-face-attribute 'web-mode-block-delimiter-face nil :inherit 'unspecified)
  (set-face-attribute 'web-mode-html-attr-engine-face nil :inherit 'unspecified)

  (set-face-attribute 'web-mode-css-pseudo-class-face nil :inherit 'web-mode-css-selector-face))
