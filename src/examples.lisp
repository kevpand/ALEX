(defpackage :alex/examples
  (:use :cl))

(in-package :alex/examples)

;; Binary file is in little endian format.

(defparameter *000-audio-input-red-left-mono-row-0-column-0*
  '(:PATCH-SIZE-IN-BYTES 96
    :PATCH-NAME ""
    :PATCH-NUMBER-OF-MODULES 1
    :PATCH-BODY
    (14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     ;; Row/Column position, can be 0-39 for a grid of 8x5
     0 0 0 0

     0 0 0 0
     0 0 0 0

     ;; Input
     ;; 0 - Stereo
     ;; 1 - Left
     ;; 2 - Right
     1 0 0 0

     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     ;; Looks like this block of null bytes is padding between the
     ;; modules and the connections/colors
     0 0 0 0
     0 0 0 0
     0 0 0 0

     ;; Colors
     ;; 3 - Red
     3 0 0 0)))

(defparameter *000-two-audio-input-red-left-mono-row-00-col-00-row00-col-01*
  '(:PATCH-SIZE-IN-BYTES 156
    :PATCH-NAME ""
    :PATCH-NUMBER-OF-MODULES 2
    :PATCH-BODY
    (14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))

(defparameter *000-three-audio-input-red-left-mono-row-00-col-00-row-00-col-01-row-00-col-02*
  '(:PATCH-SIZE-IN-BYTES 216
   :PATCH-NAME ""
   :PATCH-NUMBER-OF-MODULES 3
   :PATCH-BODY
    (14 0 0 0
     1  0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     2 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0
     3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-audio-output-red-left-mono-row-0-column-1*
  '(:PATCH-SIZE-IN-BYTES 156
    :PATCH-NAME ""
    :PATCH-NUMBER-OF-MODULES 2
    :PATCH-BODY
    (14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     14 0 0 0
     2 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     0 1 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))
