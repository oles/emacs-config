;;; replace-from-region-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "replace-from-region" "replace-from-region.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from replace-from-region.el

(autoload 'query-replace-from-region "replace-from-region" "\
Perform `query-replace', but getting FROM string from region.

\(fn FROM TO &optional DELIMITED START END BACKWARD)" t nil)

(autoload 'query-replace-regexp-from-region "replace-from-region" "\
Perform `query-replace-regexp', but getting FROM string from region.

\(fn FROM TO &optional DELIMITED START END BACKWARD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "replace-from-region" '("query-replace-re")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; replace-from-region-autoloads.el ends here
