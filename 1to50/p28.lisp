(defun solve28 (&aux (maxlayer 1001) (step 2) (layer 1) (i 2))
  (+ 1 (loop while (<= layer (/ (- maxlayer 1) 2))
        sum (incf i (- step 1))
        sum (incf i step)
        sum (incf i step)
        sum (incf i step)
        do (incf i)
           (incf step 2)
           (incf layer 1)))
  )