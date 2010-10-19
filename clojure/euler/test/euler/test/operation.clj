(ns euler.test.operation
  (:use [euler.operation] :reload)
  (:use [euler.data] :reload)
  (:use [clojure.test]))
  
(deftest multiples-of-single-number-test
  (is (=
    (multiples-of 3 (natural-numbers 9))  [3 6 9]))
    "All the multiples of 3 up to 10")

(deftest multiples-of-coll-test
  (is (=
    (multiples-of-coll [3 5] (natural-numbers 9))  [3 5 6 9]))
    "All the multiples of 3 and 5 up to 10")