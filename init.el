(defun absolute-load(path)
  (load path nil t))

(defun relative-load(file)
  (absolute-load (concat (file-name-directory load-file-name) file)))


(relative-load "theme/init.el")
(relative-load "config/init.el")


(add-hook 'emacs-startup-hook (lambda()
  (when (equal "*scratch*" (format "%s" (current-buffer)))
    (progn (resize-normal)
           (sleep-for 0.1) ;; workaround height bug in terminal
           (new-terminal)))))



;; TODO: Finalize refactor below


;; melpa packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(relative-load "config/tabbar/init.el")
(relative-load "config/drag-stuff.el")
(relative-load "config/undo-tree.el")

(smartparens-global-mode 1)

(defalias 'toggle-mode-line 'hide-mode-line-mode)

(global-set-key (kbd "M-%") 'query-replace-from-region)



;; loads js2-mode.el and customizations
(defun js2-mode-tweaks()
  (setq js-expr-indent-offset (- js-indent-level))
  (setq js2-mode-show-parse-errors nil)
  (setq js2-switch-indent-offset 4)
  (setq js2-mode-show-strict-warnings nil)
  (setq js2-strict-missing-semi-warning nil))
(add-hook 'js2-mode-hook 'js2-mode-tweaks)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; loads web-mode.el and customizations
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



;; clear keybinding of various modes
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



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (replace-from-region hide-mode-line switch-buffer-functions js2-mode drag-stuff web-mode undo-tree tabbar smartparens nginx-mode)))
 '(sp-autodelete-closing-pair nil)
 '(sp-autodelete-opening-pair nil)
 '(sp-autodelete-pair nil)
 '(sp-autodelete-wrap nil)
 '(sp-highlight-pair-overlay nil)
 '(sp-highlight-wrap-overlay nil)
 '(sp-highlight-wrap-tag-overlay nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tabbar-button ((t nil)))
 '(tabbar-default ((t (:background "#202020" :foreground "#BCBCBC" :box nil))))
 '(tabbar-highlight ((t nil)))
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "#87D700"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "#1EE8FF"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :foreground "#1EE8FF"))))
 '(tabbar-unselected ((t (:inherit tabbar-default))))
 '(js2-external-variable ((t nil)))
 '(js2-function-call ((t (:inherit font-lock-function-name-face))))
 '(js2-function-param ((t (:foreground "#E06C75"))))
 '(js2-object-property ((t (:foreground "#ABB2BF"))))
 '(web-mode-block-control-face ((t (:inherit web-mode-keyword-face))))
 '(web-mode-block-delimiter-face ((t (:foreground "#ABB2BF"))))
 '(web-mode-comment-keyword-face ((t nil)))
 '(web-mode-css-pseudo-class-face ((t (:inherit font-lock-keyword-face))))
 '(web-mode-html-attr-name-face ((t (:foreground "#D19A66"))))
 '(web-mode-html-entity-face ((t (:foreground "#D19A66"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "#ABB2BF"))))
 '(web-mode-html-tag-face ((t (:foreground "#E06C75")))))
