(uiop:define-package #:alex/examples/axioms
  (:use #:cl)
  (:import-from #:alex/util
                #:defexample)
  (:export #:+blank-patch+
           #:+name-only+))

(in-package #:alex/examples/axioms)

(defexample +blank-patch+
  #2A((0 0 0 0)))

(defexample +name-only+
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
      (0 0 0 0)))
