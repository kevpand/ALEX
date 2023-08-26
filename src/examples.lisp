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

(defparameter *000-audio-input-red-left-stereo-row-0-column-0*
  '(:PATCH-SIZE-IN-BYTES 96
    :PATCH-NAME ""
    :PATCH-NUMBER-OF-MODULES 1
    :PATCH-BODY
    (14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0)))

(defparameter *000-two-audio-input-red-left-mono-row-00-col-00-row01-col-00*
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
     8 0 0 0
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

(defparameter *000-two-audio-input-red-left-mono-row-00-col-00-row04-col-07*
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
     39 0 0 0
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

(defparameter *000-audio-input-red-right-mono-row-0-column-0*
  '(:PATCH-SIZE-IN-BYTES 96
    :PATCH-NAME ""
    :PATCH-NUMBER-OF-MODULES 1
    :PATCH-BODY
    (14 0 0 0
     1 0 0 0
     0 0 0 0
     0 0 0 0
     3 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     2 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0
     0 0 0 0

     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1*
  '(:PATCH-SIZE-IN-BYTES 176
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

     ;; These 32 bytes show up only when things are connected.
     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     ;; Connection strength
     16 39 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))


(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1-connection-strength-+1.00db/112%*
  '(:PATCH-SIZE-IN-BYTES 176
    :PATCH-NAME ""
    :PATCH-NUMBER-OF-MODULES 2
    :PATCH-BODY
    ;; Audio Input
    '(14 0 0 0
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

      ;; Audio Output
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

      1 0 0 0
      0 0 0 0
      0 0 0 0
      1 0 0 0
      0 0 0 0
      ;; Increasing db by 1.00/112% increased from 16 to 116
      116 39 0 0
      0 0 0 0
      0 0 0 0

      3 0 0 0
      3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1-connection-strength--1.00db/89.12%*
  '(:PATCH-SIZE-IN-BYTES 176
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

     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     ;; Decreasing db by 1.00/112% increased from 16 to 172, changed
     ;; 39 to 38.
     172 38 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1-connection-strength-+12.00db/398.1-maxed%*
  '(:PATCH-SIZE-IN-BYTES 176
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

     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     ;; Increasing db by 12.00/398.1% (maxxed) increased from 16 to 192, changed
     ;; 39 to 43.
     192 43 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1-connection-strength--100.00db/0.001%-minned*
  '(:PATCH-SIZE-IN-BYTES 176
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

     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     ;; Decreasing db by 100.00/0.001% (minned) decreased from 16 to 0, changed
     ;; 39 to 0.
     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1-connection-strength--100.00db/0.001%-minned*
  '(:PATCH-SIZE-IN-BYTES 176
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

     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     ;; Decreasing db by 100.00/0.001% (minned) decreased from 16 to 0, changed
     ;; 39 to 0.
     0 0 0 0
     0 0 0 0
     0 0 0 0

     3 0 0 0
     3 0 0 0)))

(defparameter *000-audio-input-red-left-mono-row-0-column-0-connected-to-audio-output-red-left-mono-row-0-column-1-with-fav*
  '(:PATCH-SIZE-IN-BYTES 180
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

     1 0 0 0
     0 0 0 0
     0 0 0 0
     1 0 0 0
     0 0 0 0
     16 39 0 0
     0 0 0 0
     ;; Faving causes a 1 in the next four bytes and the four bytes
     ;; after to be FF FF FF FF
     1 0 0 0
     255 255 255 255

     3 0 0 0
     3 0 0 0)))
