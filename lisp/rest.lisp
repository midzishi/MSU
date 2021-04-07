(defun length(l)(cond                                          
((null l) 0)                     
(T (+ 1 (length (cdr l))))
))

(defun _rest (n len l)(cond
((null l) l)
((null len) null)
((= (abs n)(- len 1))(car l))
((>(- len (abs n)) 1)(cons(car l)(cons (_rest n (- len 1) (cdr l) )nil)))

))

(defun rest (n l) (cond
((null l) l)
((= n 0) l)
((= n 1) (cdr l))
((> n 1) (cdr (rest (- n 1) l)))
((< n 0) (_rest n (length l) l))
))


(print  (rest -2 '(a (12) b (3)))) 
(print  (rest 2 '(a (12) b (3))))
(print  (rest 1 '(a (12) b (3)))) 
(print  (rest 4 '(a (12) b (3)))) 
(print  (rest 0 '(a (12) b (3))))

