(ns euler.test.core
  (:use [euler.core] :reload)
  (:use [euler.data] :reload)
  (:use [euler.operation] :reload)
  (:use [clojure.test]))
  
(deftest problem001
  (let [s (natural-numbers 999)]
    (is (= (reduce + (multiples-of-coll [3 5] s))  233168)))
    "the sum of all multiples of 3 and 5 below 100 is 233168")

(deftest problem002
  (is (= 
  (reduce + (filter even? (fibs-up-to 4000000 [1 2])))  4613732))
  "the sum of all even fibonnaci numbers below 4,000,000 is 4613732")

