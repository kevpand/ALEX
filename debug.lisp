(uiop:define-package #:alex/debug
  (:use #:cl)
  (:import-from #:alexandria
                #:define-constant)
  (:export #:read-patch
           #:read-patch-from-file
           #:write-patch
           #:write-patch-to-file))

(in-package #:alex/debug)

(define-constant +word-length+ 4 :test #'eql)

(define-constant +file-length+ (expt 2 15) :test #'eql)

(defun read-header (in)
  (loop for i from 0 below +word-length+
        for byte = (read-byte in nil nil)
        while byte
        sum (ash byte (* i 8)) into patch-length
        collect byte into bytes
        finally
           (return (values patch-length bytes))))

(defun read-patch (in)
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

(defun write-patch (patch out)
  (loop with size = (array-total-size patch)
        for i from 0 below +file-length+
        if (< i size)
          do
             (write-byte (row-major-aref patch i) out)
        else
          do
             (write-byte 0 out)))

(defun read-patch-from-file (file)
  (with-open-file (in file
                      :element-type '(unsigned-byte 8))
    (read-patch in)))

(defun write-patch-to-file (patch file)
  (with-open-file (out file
                       :direction :output
                       :element-type '(unsigned-byte 8)
                       :if-does-not-exist :create
                       :if-exists :supersede)
    (write-patch patch out)))
