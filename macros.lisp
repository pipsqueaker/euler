(provide 'macros)

(defmacro multi-index (array &rest indices)
  "Shorthand for indexing into arrays of arrays which aren't declared as multidimensional.
   It's probably much better to just use the multiarrays. But: IT'S MY FIRST MACRO!!!!"
  (if (= 1 (length indices))
      (let* ((i (car indices)))
        `(aref ,array ,i))
      (let* ((head (car (last indices))) (tail (butlast indices)))
        `(aref (multi-index ,array ,@tail) ,head)))
  )

(defmacro sethash (key hash-table value)
  `(setf (gethash ,key ,hash-table) ,value))

(defmacro generate-next (generator)
  `(funcall generator))
