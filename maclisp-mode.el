(define-derived-mode maclisp-mode lisp-mode "Maclisp"
  "Mode for editing Maclisp code")

(modify-syntax-entry ?\\ "_" maclisp-mode-syntax-table)
(modify-syntax-entry ?/ "\\" maclisp-mode-syntax-table)

(defvar pdp6-lisp-syntax-table
  (let ((table (make-syntax-table maclisp-mode-syntax-table)))
    (modify-syntax-entry ?' "_" table)
    (modify-syntax-entry ?` "_" table)
    (modify-syntax-entry ?, "_" table)
    (modify-syntax-entry ?@ "_" table)
    (modify-syntax-entry ?\" "_" table)
    table))

(define-minor-mode pdp6-lisp-mode
  "Minor mode for PDP-6 LISP"
  :init-value nil
  :lighter " PDP-6"
  (set-syntax-table (if pdp6-lisp-mode
                        pdp6-lisp-syntax-table
                        maclisp-mode-syntax-table)))
