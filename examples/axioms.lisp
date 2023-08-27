(uiop:define-package #:alex/examples/axioms
  (:use #:cl)
  (:import-from #:alexandria
                #:define-constant)
  (:export #:+blank-patch+
           #:+name-only+))

(in-package #:alex/examples/axioms)

(define-constant +blank-patch+
                 #2A((0 0 0 0))
                 :test #'equalp)

(define-constant +name-only+
  #2A(
      ;; Header
      (9 0 0 0)

      ;; Name
      (106 117 115 116)
      (32 110 97 109)
      (101 0 0 0)
      (0 0 0 0)

      ;; Module length
      (0 0 0 0)

      ;; Modules
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0))
  :test #'equalp)
