(ns euler.data)

(defn natural-numbers
  "provides a list of natural numbers"
  [max]
  (take max(iterate inc 1)))

(defn next-fib
  "gets the next fibonnaci number for the incoming collection"
  [[a b]]
  [b (+ a b)])

(defn all-fibs
  "infinatly grab the fibonnaci sequence"
  [starting-seq]
  (map 
    first (iterate next-fib starting-seq )))

(defn fibs-up-to
  "take the fibs upto a certain number"
  [max-num
   starting-seq]
  (take-while #(< % max-num) (all-fibs starting-seq) ))