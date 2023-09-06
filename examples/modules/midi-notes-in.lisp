(uiop:define-package #:alex/examples/modules/audio-output
  (:use #:cl)
  (:import-from #:alex/util
                #:defexample)
  (:export #:+midi-notes-in-stock+))

(defexample +midi-notes-in-stock+
  #2A((24 0 0 0)

      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      (1 0 0 0)

      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      (3 0 0 0)))

(defexample +midi-notes-in-midi-channel-2+
  #2A((24 0 0 0)

      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      (1 0 0 0)

      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (1 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      (3 0 0 0)))

(defexample +midi-notes-in-channel-16+
  #2A((24 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (1 0 0 0)
      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (15 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)))

(defexample +midi-notes-in-number-of-outputs-2+
  #2A((24 0 0 0)

      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      (1 0 0 0)

      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 1 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)

      (3 0 0 0)))

(defexample +midi-notes-in-number-of-outputs-8+
  #2A((24 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (1 0 0 0)
      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 7 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)))

(defexample +midi-notes-in-priority-oldest+
  #2A((24 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (1 0 0 0)
      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 1 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)))

(defexample +midi-notes-in-priority-round-robin+
  #2A((24 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (1 0 0 0)
      (14 0 0 0)
      (20 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 4 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (0 0 0 0)
      (3 0 0 0)))