(defpackage alex/tests/main
  (:use :cl
        :alex
        :rove))
(in-package :alex/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :alex)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
