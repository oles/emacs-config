(tooltip-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(line-number-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 0)


(set-cursor-color "#1EE8FF")
(setq-default cursor-type '(bar . 2))
(setq-default cursor-in-non-selected-windows nil)


;; Disables auto hiding of mouse pointer
(setq make-pointer-invisible nil)


(setq-default mode-line-format '(
    "%e" mode-line-buffer-identification "   " mode-name "  " "(" "%l" ", " "%c" ")"))


(custom-set-variables
 '(css-fontify-colors nil)
 '(line-spacing 0.11))
