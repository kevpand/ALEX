(uiop:define-package #:alex/tests/package
  (:nicknames #:alex/tests)
  (:use #:cl)
  (:import-from #:rove)
  (:import-from #:alex/tests/debug))

(in-package #:alex/tests)

(defparameter *test-suites*
  '(:alex/tests/debug))

(defun run-all-tests ()
  (dolist (suite *test-suites*)
    (rove:run-suite suite)))
