(defsystem "alex"
  :version "0.1.0"
  :author "Kevin Anderson"
  :license "LLGPL v2.1"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Tool to help manager ZOIA patches"
  :in-order-to ((test-op (test-op "alex/tests"))))

(defsystem "alex/tests"
  :author "Kevin Anderson"
  :license "LLGPL v2.1"
  :depends-on ("alex"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for alex"
  :perform (test-op (op c) (symbol-call :rove :run c)))
