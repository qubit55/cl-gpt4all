(defpackage cl-gpt4all/tests/main
  (:use :cl
        :cl-gpt4all
        :rove))
(in-package :cl-gpt4all/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-gpt4all)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
