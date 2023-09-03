(uiop:define-package #:alex/tests/debug
  (:use #:cl
        #:rove)
  (:import-from #:alex/tests/util
                #:stream-read-byte
                #:stream-write-byte)
  (:import-from #:alex/debug))

(in-package #:alex/tests/debug)

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
           (stream (alex/tests/util:make-test-binary-input-stream bytes)))
      (ok (equalp #2A((8 0 0 0)
                      (102 111 111 32)
                      (98 97 114 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0)
                      (0 0 0 0))
                  (alex/debug:read-patch stream))))))

(deftest write-patch
  (testing "patch writes correct data"
           (let* ((bytes #2A((9 0 0 0)
                             (102 111 111 32)
                             (98 97 114 0)
                             (0 0 0 0)
                             (0 0 0 0)
                             (0 0 0 0)
                             (0 0 0 0)
                             (0 0 0 0)
                             (0 0 0 0)))
                  (stream (alex/tests/util:make-test-binary-output-stream)))
             (alex/debug:write-patch bytes stream)
             (let ((buff (alex/tests/util:test-binary-output-stream-buff stream)))
               (ok (equalp #(9 0 0 0
                             102 111 111 32
                             98 97 114 0)
                           (subseq buff 0 12)))
               (ok (= alex/debug:+file-length+
                      (length buff)))))))
