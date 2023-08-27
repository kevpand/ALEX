(uiop:define-package #:alex/tests/debug
  (:use #:cl
        #:rove)
  (:import-from #:alex/debug)
  (:import-from #:trivial-gray-streams
                #:stream-read-byte
                #:fundamental-binary-input-stream
                #:trivial-gray-stream-mixin))

(in-package #:alex/tests/debug)

(defclass test-stream (fundamental-binary-input-stream
                       trivial-gray-stream-mixin)
  ((buff :initarg :buff :reader test-stream-buff)
   (pos :initform 0 :accessor test-stream-pos)))

(defun make-test-stream (buff)
  (make-instance 'test-stream :buff buff))

(defmethod stream-read-byte ((stream test-stream))
  (with-slots (buff pos) stream
    (if (< pos (array-total-size buff))
      (prog1
          (row-major-aref buff pos)
        (incf pos))
      :eof)))

(deftest read-patch
  (testing "reads bytes from an input stream"
    (let* ((bytes #(9 0 0 0
                    102 111 111 32
                    98 97 114 0
                    0 0 0 0
                    0 0 0 0
                    0 0 0 0
                    0 0 0 0
                    0 0 0 0
                    0 0 0 0))
           (stream (make-test-stream bytes)))
      (ok (equalp #2A((9 0 0 0)
                      (102 111 111 32)
                      (98 97 114 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0))
                  (alex/debug:read-patch stream))))))
