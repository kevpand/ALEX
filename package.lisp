(uiop:define-package #:alex/package
  (:use :cl)
  (:nicknames #:alex)
  (:use-reexport #:alex/debug)
  (:use-reexport #:alex/examples/axioms)
  (:use-reexport #:alex/examples/modules/audio-input)
  (:use-reexport #:alex/examples/modules/audio-output))

(in-package #:alex)
