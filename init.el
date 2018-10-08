(load (concat user-emacs-directory "defines/common.el"))

(load (concat user-emacs-directory "config/behaviour.el"))
(load (concat user-emacs-directory "config/theme.el"))

(load (concat user-emacs-directory "config/aliases.el"))
(load (concat user-emacs-directory "config/key-bindings.el"))

(load (concat user-emacs-directory "config/term-mode.el"))



(add-hook 'emacs-startup-hook (lambda()
  (when (equal "*scratch*" (format "%s" (current-buffer)))
    (progn (resize-normal) (sleep-for 0.1) (new-terminal)))))



;; TODO: Finalize refactor below


;; melpa packages
(setq package-enable-at-startup nil)
(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(load (concat user-emacs-directory "config/tabbar.el"))
(load (concat user-emacs-directory "config/drag-stuff.el"))
(load (concat user-emacs-directory "config/undo-tree.el"))

(smartparens-global-mode 1)

(defalias 'toggle-mode-line 'hide-mode-line-mode)

(global-set-key (kbd "M-%") 'query-replace-from-region)



;; Loads js2-mode.el and customizations
(defun js2-mode-tweaks()
  (setq js-expr-indent-offset (- js-indent-level))
  (setq js2-mode-show-parse-errors nil)
  (setq js2-switch-indent-offset 4)
  (setq js2-mode-show-strict-warnings nil)
  (setq js2-strict-missing-semi-warning nil))
(add-hook 'js2-mode-hook 'js2-mode-tweaks)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Loads web-mode.el and customizations
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(defun web-mode-tweaks()
  (setq web-mode-enable-auto-pairing nil)
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-script-padding 4)
  (setq web-mode-style-padding 4)
  (setq web-mode-enable-css-colorization nil)
  (setq web-mode-enable-html-entities-fontification t)
  (local-set-key (kbd "M-d") 'web-mode-element-close)
  (add-hook 'local-write-file-hooks (lambda() (delete-trailing-whitespace) nil)))
(add-hook 'web-mode-hook 'web-mode-tweaks)



;; Cleared modes
(assq-delete-all 'undo-tree-mode minor-mode-map-alist)
(assq-delete-all 'drag-stuff-mode minor-mode-map-alist)
(setq visual-line-mode-map (make-sparse-keymap))
(setq comint-mode-map (make-sparse-keymap))
(setq shell-mode-map (make-sparse-keymap))
(setq help-mode-map (make-sparse-keymap))
(setq conf-mode-map (make-sparse-keymap))
(setq web-mode-map (make-sparse-keymap))
(setq js2-mode-map (make-sparse-keymap))
(setq js-mode-map (make-sparse-keymap))
(setq c-mode-map (make-sparse-keymap))
(eval-after-load "diff-mode" '(setq diff-mode-map (make-sparse-keymap)))



(load-theme 'atom-one-dark t)
(setq atom-one-dark-theme-force-faces-for-mode nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (replace-from-region hide-mode-line switch-buffer-functions js2-mode drag-stuff web-mode undo-tree tabbar smartparens nginx-mode atom-one-dark-theme)))
 '(sp-autodelete-closing-pair nil)
 '(sp-autodelete-opening-pair nil)
 '(sp-autodelete-pair nil)
 '(sp-autodelete-wrap nil)
 '(sp-highlight-pair-overlay nil)
 '(sp-highlight-wrap-overlay nil)
 '(sp-highlight-wrap-tag-overlay nil)
)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#171717" :foreground "#ABB2BF" :inverse-video nil :strike-through nil :overline nil :underline nil))))
 '(bold ((t (:inherit default))))
 '(button ((t (:foreground "#1EE8FF" :underline t))))
 '(cursor ((t (:background "#1EE8FF"))))
 '(custom-button ((t (:inherit link))))
 '(custom-button-mouse ((t nil)))
 '(custom-button-pressed ((t nil)))
 '(custom-button-pressed-unraised ((t nil)))
 '(custom-button-unraised ((t nil)))
 '(custom-face-tag ((t (:inherit link :foreground "#A1EFE4" :weight normal :height 1.0))))
 '(custom-group-subtitle ((t nil)))
 '(custom-group-tag ((t (:inherit link :foreground "#66D9EF" :height 1.0))))
 '(custom-group-tag-1 ((t (:foreground "#F92672" :inherit link))))
 '(custom-variable-button ((t nil)))
 '(custom-variable-tag ((t (:inherit link :foreground "#A1EFE4" :height 1.0))))
 '(custom-visibility ((t (:inherit link))))
 '(font-lock-type-face ((t (:foreground "#D19A66"))))
 '(highlight ((t (:background "#3E4451"))))
 '(js2-external-variable ((t nil)))
 '(js2-function-param ((t (:foreground "#E06C75"))))
 '(js2-object-property ((t (:foreground "#ABB2BF"))))
 '(link ((t (:foreground "#66D9EF" :underline t :weight normal))))
 '(match ((t (:background "#303030" :foreground "#FFFAFA"))))
 '(minibuffer-prompt ((t (:inherit default))))
 '(mode-line ((t (:background "#202020" :box nil))))
 '(mode-line-buffer-id ((t (:foreground "#87D700" :weight normal))))
 '(mode-line-emphasis ((t (:inherit mode-line))))
 '(mode-line-highlight ((t (:inherit mode-line))))
 '(mode-line-inactive ((t (:inherit mode-line :background "#202020"))))
 '(region ((t (:background "#3E4451" :foreground nil))))
 '(term-bold ((t nil)))
 '(tool-bar ((t (:background "grey75" :foreground "black"))))
 '(web-mode-block-control-face ((t (:inherit web-mode-keyword-face))))
 '(web-mode-block-delimiter-face ((t (:foreground "#ABB2BF"))))
 '(web-mode-comment-keyword-face ((t nil)))
 '(web-mode-css-pseudo-class-face ((t (:inherit font-lock-keyword-face))))
 '(web-mode-html-entity-face ((t (:foreground "#D19A66"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "#ABB2BF"))))
 '(web-mode-html-tag-face ((t (:inherit web-mode-variable-name-face))))
 '(widget-field ((t nil))))
