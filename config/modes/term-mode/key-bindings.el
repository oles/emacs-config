(define-key term-raw-map [escape] 'term-send-raw-meta)
(define-key term-raw-map (kbd "C-c") 'term-send-raw)
(define-key term-raw-map (kbd "M-|") 'term-line-mode)
(define-key term-raw-map (kbd "M-x") 'execute-extended-command)


(define-key term-raw-map (kbd "C-<left>")
  (lambda()
    (interactive)
    (term-send-raw-string "\eb")))

(define-key term-raw-map (kbd "C-<right>")
  (lambda()
    (interactive)
    (term-send-raw-string "\ef")))

(define-key term-raw-map (kbd "C-<delete>")
  (lambda()
    (interactive)
    (term-send-raw-string "\ed")))

(define-key term-raw-map (kbd "C-<backspace>")
  (lambda()
    (interactive)
    (term-send-raw-string "\e\C-h")))


(dolist (key '("M-1" "M-2" "M-3" "M-4" "M-5" "M-6" "M-7" "M-8" "M-9"))
  (define-key term-raw-map (kbd key) nil))




(define-key term-raw-map (kbd "C-o") 'find-file)
(define-key term-raw-map (kbd "C-u") 'new-terminal)
(define-key term-raw-map (kbd "C-t") 'new-empty-buffer)
(define-key term-raw-map (kbd "C-w") 'kill-this-buffer)
(define-key term-raw-map (kbd "C-v")
  (lambda()
    (interactive)
    (term-send-raw-string (gui-get-selection `CLIPBOARD `UTF8_STRING))))



(define-key term-mode-map (kbd "C-c") 'clipboard-copy)
(define-key term-mode-map [escape]
  (lambda()
    (interactive)
    (term-char-mode) (term-send-raw-string "")))
