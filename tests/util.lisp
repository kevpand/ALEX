(uiop:define-package #:alex/tests/util
  (:use #:cl)
  (:import-from #:trivial-gray-streams
                #:stream-read-byte
                #:stream-write-byte
                #:fundamental-binary-input-stream
                #:fundamental-binary-output-stream)
  (:export #:make-test-binary-input-stream
           #:test-binary-output-stream-buff
           #:make-test-binary-output-stream))

(in-package #:alex/tests/util)

(defclass test-binary-input-stream (fundamental-binary-input-stream)
  ((buff :initarg :buff)
   (pos :initform 0)))

(defclass test-binary-output-stream (fundamental-binary-output-stream)
  ((buff :initarg :buff :reader test-binary-output-stream-buff)))

(defun make-test-binary-input-stream (buff)
  (make-instance 'test-binary-input-stream :buff buff))

(defun make-test-binary-output-stream ()
  (make-instance 'test-binary-output-stream
                 :buff (make-array 0 :adjustable t
                                     :fill-pointer t)))

(defmethod stream-read-byte ((stream test-binary-input-stream))
  (with-slots (buff pos) stream
    (if (< pos (array-total-size buff))
      (prog1
          (row-major-aref buff pos)
        (incf pos))
      :eof)))

(defmethod stream-write-byte ((stream test-binary-output-stream) integer)
  (with-slots (buff) stream
    (vector-push-extend integer buff)
    integer))
