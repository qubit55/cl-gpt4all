(defsystem "cl-gpt4all"
  :version "0.0.1"
  :author "Anton Lobach"
  :mailto "antonlobach@uri.edu"
  :license ""
  :depends-on ("cffi"
               "shasht"
               "arrow-macros"
               "metabang-bind"
               "uiop"
               "dexador"
               "trivial-download"
               "access")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-gpt4all/tests"))))

(defsystem "cl-gpt4all/tests"
  :author "Anton Lobach"
  :license ""
  :depends-on ("cl-gpt4all"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-gpt4all"
  :perform (test-op (op c) (symbol-call :rove :run c)))
