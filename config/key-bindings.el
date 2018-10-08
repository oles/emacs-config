;; Clears
(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "M-q"))
(global-unset-key (kbd "M-d"))
(global-unset-key (kbd "C-q"))
(global-unset-key (kbd "M-z"))
(global-unset-key (kbd "M-|"))
(global-unset-key (kbd "<insert>"))
(global-unset-key (kbd "<insertchar>"))
(global-unset-key (kbd "M-w"))
(global-unset-key (kbd "M-c"))


;; ESC to escape on all the things
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'keyboard-escape-quit)


(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-v") (lambda()
    (isearch-yank-string (gui-get-primary-selection))))


(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-a") 'select-all)
(global-set-key (kbd "C-w") 'kill-this-buffer)
(global-set-key (kbd "C-x") 'clipboard-cut)
(global-set-key (kbd "C-c") 'clipboard-copy)
(global-set-key (kbd "C-v") 'clipboard-paste)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "<backtab>") 'unindent)
(global-set-key (kbd "C-<delete>") 'delete-word)
(global-set-key (kbd "C-<backspace>") 'backward-delete-word)
(global-set-key (kbd "C-u") 'new-terminal)
(global-set-key (kbd "C-t") 'new-empty-buffer)

(global-set-key (kbd "M-<up>") 'previous-multiframe-window)
(global-set-key (kbd "M-<down>") 'next-multiframe-window)
(global-set-key (kbd "S-M-<up>") (lambda() (interactive) (scroll-down-command 1)))
(global-set-key (kbd "S-M-<down>") (lambda() (interactive) (scroll-up-command 1)))

(global-set-key (kbd "C-SPC") 'browse-url-at-point)
(global-set-key (kbd "C-S-SPC") 'set-mark-command)

(global-set-key (kbd "<f5>") 'reload-file)

(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below)
(global-set-key (kbd "C-3") 'split-window-right)
