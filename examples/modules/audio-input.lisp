(uiop:define-package #:alex/examples/modules/audio-input
  (:use #:cl)
  (:import-from #:alexandria
                #:define-constant)
  (:export #:+red-left+
           #:+red-right+
           #:+red-stereo+
           #:+all-colors+
           #:+red-left-mono-second-page+
           #:+red-left-mono-third-page+))

(in-package #:alex/examples/modules/audio-input)

(define-constant +red-left+
  #2A(
      ;; Header
      (24 0 0 0)

      ;; Name
      (105 110 112 117)
      (116 32 114 101)
      (100 32 108 101)
      (102 116 0 0)

      ;; Number of modules
      (1 0 0 0)

      ;; Module
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (3 0 0 0)
      ;; Position
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; ???
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;; Color
      (3 0 0 0))
  :test #'equalp)

(define-constant +red-right+
  #2A(
      ;;;; Header
      (24 0 0 0)

      ;;;; Name
      (105 110 112 117)
      (116 32 114 101)
      (100 32 114 105)
      (103 104 116 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (3 0 0 0)
      ;; Position
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (2 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; ???
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Color
      (3 0 0 0))
  :test #'equalp)

(define-constant +red-stereo+
  #2A(
      ;;;; Header
      (24 0 0 0)

      ;;;; Name
      (105 110 112 117)
      (116 32 114 101)
      (100 32 115 116)
      (101 114 101 0)

      ;;;; Number of Modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
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

      ;;;; Color
      (3 0 0 0))
  :test #'equalp)

(define-constant +all-colors+
  #2A(
      ;;;; Size Header
      (234 0 0 0)

      ;;;; Name
      (105 110 112 117)
      (116 32 97 108)
      (108 32 99 111)
      (108 111 114 0)

      ;;;; Number of Modules
      (15 0 0 0)

      ;;;; Module 1
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (3 0 0 0)
      ;; Position
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 2
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (3 0 0 0)
      ;; Position
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 3
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (4 0 0 0)
      ;; Position
      (2 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 4
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (4 0 0 0)
      ;; Position
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 5
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (2 0 0 0)
      ;; Position
      (4 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 6
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (2 0 0 0)
      ;; Position
      (5 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 7
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (5 0 0 0)
      ;; Position
      (6 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 8
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (5 0 0 0)
      ;; Position
      (7 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 9
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (1 0 0 0)
      ;; Position
      (8 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 10
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (1 0 0 0)
      ;; Position
      (9 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 11
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (6 0 0 0)
      ;; Position
      (10 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 12
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (6 0 0 0)
      ;; Position
      (11 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 13
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (3 0 0 0)
      ;; Position
      (12 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 14
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (3 0 0 0)
      ;; Position
      (13 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      ;;;; Module 15
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (0 0 0 0)
      (7 0 0 0)
      ;; Position
      (14 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
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
      ;; Red
      (3 0 0 0)

      ;; Orange
      (8 0 0 0)

      ;; Mango
      (15 0 0 0)

      ;; Yellow
      (4 0 0 0)

      ;; Lime
      (9 0 0 0)

      ;; Green
      (2 0 0 0)

      ;; Surf
      (10 0 0 0)

      ;; Aqua
      (5 0 0 0)

      ;; Sky
      (11 0 0 0)

      ;; Blue
      (1 0 0 0)

      ;; Purple
      (12 0 0 0)

      ;; Magenta
      (6 0 0 0)

      ;; Pink
      (13 0 0 0)

      ;; Peach
      (14 0 0 0)

      ;; White
      (7 0 0 0))
  :test #'equalp)

(define-constant +red-left-mono-second-page+
  #2A(
      ;;;; Size header
      (24 0 0 0)

      ;;;; Name
      (105 110 32 114)
      (101 100 32 115)
      (101 99 111 110)
      (100 32 112 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (1 0 0 0)
      (3 0 0 0)
      ;; Position
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
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

(define-constant +red-left-mono-third-page+
  #2A(
      ;;;; Header size
      (24 0 0 0)

      ;;;; Name
      (105 110 32 116)
      (104 105 114 100)
      (32 112 97 103)
      (101 0 0 0)

      ;;;; Number of modules
      (1 0 0 0)

      ;;;; Module
      (14 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      ;; Page
      (2 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      ;; Stereo: 0
      ;; Left: 1
      ;; Right: 2
      (1 0 0 0)
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
