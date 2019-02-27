(dolist
    (key '("<insert>" "<insertchar>"
           "C-k" "C-q"
           "M-q" "M-d" "M-z" "M-|" "M-w" "M-c"))
  (global-unset-key (kbd key)))



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

(global-set-key (kbd "C-2") 'split-window-right)
(global-set-key (kbd "C-3") 'split-window-below)

(global-set-key (kbd "C-+") 'enlarge-window-horizontally)
(global-set-key (kbd "C-M-+") 'enlarge-window)
(global-set-key (kbd "C--") 'shrink-window-horizontally)
(global-set-key (kbd "C-M--") 'shrink-window)

(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-v")
  (lambda() (interactive)
    (isearch-yank-string (gui-get-selection `CLIPBOARD `UTF8_STRING))))


;; ESC to escape for all the things
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'keyboard-escape-quit)
