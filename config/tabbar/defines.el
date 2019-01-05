(defun buffer-groups()
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
              ((eq major-mode 'dired-mode) "emacs")
              (t "user"))))


(defun tabbar-select(index)
  (let ((tab (tabbar-tab-value (nth index (tabbar-tabs (tabbar-current-tabset))))))
    (switch-to-buffer tab)))


(defun tabbar-move-tab(&optional right)
  (let* ((ctabset nil)
         (ctabs nil)
         (ctab nil)
         (hd nil)
         (tl nil))
    (and
     (setq ctabset (tabbar-current-tabset 't))
     (setq ctabs (tabbar-tabs ctabset))
     (setq ctab (tabbar-selected-tab ctabset))
     (setq tl ctabs)
     (setq hd '()))
    (while (and (cdr tl) (not (eq ctab (car tl))) (not (eq ctab (cadr tl))))
      (setq hd (append hd (list (car tl)))
            tl (cdr tl)))
    (set ctabset
         (cond
          ((and (not right) (null hd) (eq ctab (car tl)))
           (append (cdr tl) (list (car tl))))
          ((not right)
           (append hd (list (cadr tl)) (list (car tl)) (cddr tl)))
          ((and right (not (cddr tl)))
           (append (list (cadr tl)) hd (list (car tl))))
          ((and right (eq ctab (car tl)))
           (append hd (list (cadr tl)) (list (car tl)) (cddr tl)))
          (right
           (append hd (list (car tl)) (list (caddr tl)) (list (cadr tl)) (cdddr tl)))
          ))
    (put ctabset 'template nil)
    (tabbar-display-update)))
