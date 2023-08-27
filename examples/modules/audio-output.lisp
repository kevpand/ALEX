(uiop:define-package #:alex/examples/modules/audio-output
  (:use #:cl)
  (:import-from #:alexandria
                #:define-constant)
  (:export #:+red-no-gain-left+
           #:+red-no-gain-right+
           #:+red-no-gain-stereo+
           #:+red-gain-left+))

(in-package #:alex/examples/modules/audio-output)

(define-constant +red-no-gain-left+
  #2A(
      ;;;; Size header
      (24 0 0 0)

      ;;;; Name
      (111 117 116 32)
      (114 101 100 32)
      (110 111 32 103)
      (97 105 108 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (2 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 1 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; ???
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Colors
      (3 0 0 0))
  :test #'equalp)

(define-constant +red-no-gain-right+
  #2A(
      ;;;; Size header
      (24 0 0 0)

      ;;;; Name
      (111 117 116 32)
      (114 32 110 111)
      (32 103 97 105)
      (110 32 114 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (2 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 2 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; ???
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Colors
      (3 0 0 0))
  :test #'equalp)

(define-constant +red-no-gain-stereo+
  #2A(
      ;;;; Size header
      (24 0 0 0)

      ;;;; Name
      (111 117 116 32)
      (110 111 32 103)
      (32 115 116 101)
      (114 101 111 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (2 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; ???
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Colors
      (3 0 0 0))
  :test #'equalp)

(define-constant +red-gain-left+
  #2A(
      ;;;; Size header
      (25 0 0 0)

      ;;;; Name
      (111 117 116 32)
      (103 32 108 101)
      (102 116 0 0)
      (0 0 0 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (15 0 0 0)
      (2 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      (1 1 0 0)
      (0 0 0 0)
      (87 213 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; ???
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Colors
      (3 0 0 0))
  :test #'equalp)
