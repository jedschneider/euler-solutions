(ns euler.operation)

(defn multiples-of
  "get all the factors for a single natural number"
  [factor coll]
  (filter #(= 0 (rem % factor)) coll))

(defn multiples-of-coll
  "get all the factors for a collection of numbers"
  [numbers-as-coll coll]
  (sort 
    (distinct
      (flatten 
        (map #(multiples-of % coll) numbers-as-coll)))))