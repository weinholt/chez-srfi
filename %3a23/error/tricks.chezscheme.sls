#!r6rs
;; Copyright 2010 Derick Eddington.  My MIT-style license is in the file named
;; LICENSE from the original collection this file is distributed with.

(library (srfi :23 error tricks)
  (export
    SRFI-23-error->R6RS)
  (import
    (rnrs))

  ;; Disabled (as a workaround) on Chez Scheme since it gives a
  ;; out-of-context error on expansion of macros that use the SRFI-23
  ;; error procedure.
  (define-syntax SRFI-23-error->R6RS
    (lambda (stx)
      (syntax-case stx ()
        ((ctxt ewho . forms)
         #'(begin . forms))))))
