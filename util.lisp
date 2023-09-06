(uiop:define-package #:alex/util
  (:use #:cl)
  (:import-from #:alexandria
                #:define-constant)
  (:export #:defexample))

(in-package #:alex/util)

(define-constant foo
  (make-array 3) :test #'equalp)

(defmacro defexample (name bytes)
  `(define-constant ,name
     ,bytes :test #'equalp))
