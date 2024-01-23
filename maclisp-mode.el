(define-derived-mode maclisp-mode lisp-mode "Maclisp"
  "Mode for editing Maclisp code")

(modify-syntax-entry ?\\ "_" maclisp-mode-syntax-table)
(modify-syntax-entry ?/ "\\" maclisp-mode-syntax-table)
