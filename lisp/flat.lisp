(defun _flat (l a n)(cond
((null l) a)
((atom l) (cond
((= (car a) 0) (list n T))
((/= (car a) n) (list n nil))
(T a)))
(T (_flat (cdr l) (_flat (car l) a (+ n 1)) n))
))

(defun flat (l)(cond
((null l) nil)
((car (cdr (_flat l (list 0 T) 0))))
))


(print(flat '((a)b) )) ; nil
(print(flat '(((b) (a c)) ((c 5)) ((d) 8)))) ; nil
(print(flat '(((b) (a c)) ((c 5)) ((d) 8 ((c 5)))))) ; nil
(print(flat '(((b) (a c)) ((c 5)) ((d))))) ; T

