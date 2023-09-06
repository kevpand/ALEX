(uiop:define-package #:alex/debug
  (:use #:cl)
  (:export #:read-patch
           #:write-patch
           #:+file-length+))

(in-package #:alex/debug)

(defconstant +word-length+ 4)

(defconstant +file-length+ (expt 2 15))

(defun read-header (in)
  (loop for i from 0 below +word-length+
        for byte = (read-byte in nil nil)
        while byte
        sum (ash byte (* i 8)) into patch-length
        collect byte into bytes
        finally
           (return (values patch-length bytes))))

(defgeneric read-patch (in)
  (:documentation "Read a patch from an input source"))

(defgeneric write-patch (patch out)
  (:documentation "Write a patch to a source"))

(defmethod read-patch ((in stream))
  (multiple-value-bind (patch-length header-bytes) (read-header in)
    (let ((words (cons header-bytes
                       (loop for i from 1 below patch-length
                             collect (loop for i from 0 below +word-length+
                                           for byte = (read-byte in nil nil)
                                           while byte
                                           collect byte)))))
      (make-array (list (length words)
                        +word-length+)
                  :initial-contents words))))

(defmethod write-patch (patch (out stream))
  (loop with size = (array-total-size patch)
        for i from 0 below +file-length+
        if (< i size)
          do
             (write-byte (row-major-aref patch i) out)
        else
          do
             (write-byte 0 out)))

(defmethod read-patch ((in pathname))
  (with-open-file (input-stream in
                                :element-type '(unsigned-byte 8))
    (read-patch input-stream)))

(defmethod write-patch (patch (out pathname))
  (with-open-file (output-stream out
                                 :direction :output
                                 :element-type '(unsigned-byte 8)
                                 :if-does-not-exist :create
                                 :if-exists :supersede)
    (write-patch patch output-stream)))
