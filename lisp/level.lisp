(defun level (n l) (cond
((null l) nil)
((= n 0) l)
((atom (car l))(level n (cdr l)))
((append (level (- n 1)(car l)) (level(- n 1)(cdr l))))

))

(print (level 2 '(((a(5)8) b) 7 (g(())) )))
(print (level 1 '(((a(5)8) b) 7 (g(())) )))
(print (level 3 '(((a(5)8) b) 7 (g(())) )))
(print (level 0 '(((a(5)8) b) 7 (g(())) )))

