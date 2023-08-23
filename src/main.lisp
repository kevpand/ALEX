(defpackage alex
  (:use :cl))

(in-package :alex)

(defparameter *file-length-in-bytes* (expt 2 15))
(defparameter *header-size* 4)
(defparameter *name-size* 16)
(defparameter *module-length-size* 4)

(defun read-size (in)
  (* 4 (loop for i from 0 below *header-size*
             for byte = (read-byte in nil nil)
             while byte
             sum (ash byte (* i 8)))))

(defun read-name (in)
  (format nil "~{~A~}"
          (mapcar #'code-char
                  (remove-if
                   (lambda (x) (zerop x))
                   (loop for i from 0 below *name-size*
                         for byte = (read-byte in nil nil)
                         while byte
                         collect byte)))))

(defun read-number-of-modules (in)
  (loop for i from 0 below *header-size*
        for byte = (read-byte in nil nil)
        while byte
        sum (ash byte (* i 8))))

(defun read-body (in patch-size)
  (loop for i from 0 below patch-size
        for byte = (read-byte in nil nil)
        collect byte))

(defun read-file (file)
  (with-open-file (in file
                      :element-type '(unsigned-byte 8))
    (let* ((patch-size-in-bytes (read-size in))
           (name (read-name in))
           (number-of-modules (read-number-of-modules in))
           (body (read-body in (- patch-size-in-bytes
                                  *header-size*
                                  *name-size*))))
      `(:patch-size-in-bytes     ,patch-size-in-bytes
        :patch-name              ,name
        :patch-number-of-modules ,number-of-modules
        :patch-body              ,body))))
