;; sets custom package location
(setq package-user-dir (concat user-emacs-directory "packages"))


;; adds melpa to package-archives
(with-eval-after-load 'package
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")))


;; initializes installed packages
(package-initialize)
