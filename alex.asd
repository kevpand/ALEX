(in-package #:asdf-user)

(defsystem "alex"
  :class :package-inferred-system
  :version "0.1.0"
  :author "Kevin Anderson"
  :license "LLGPL v2.1"
  :depends-on ("alexandria"
               "trivial-gray-streams"
               "alex/package")
  :description "Tool to help manage ZOIA patches"
  :in-order-to ((test-op (test-op "alex/tests"))))

(defsystem "alex/tests"
  :class :package-inferred-system
  :author "Kevin Anderson"
  :license "LLGPL v2.1"
  :depends-on ("rove"
               "trivial-gray-streams"
               "alex/tests/package")
  :description "Test system for alex"
  :perform (test-op (op c) (symbol-call
                            :alex/tests/package
                            :run-all-tests)))
