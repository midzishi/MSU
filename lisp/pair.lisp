(defun pair (l) (cond
((null l) l)
(T (cons (cons (car l) (cons (car (cdr l)) nil))
(pair (cdr (cdr l)))))
))

(print (pair '(a b c d)))
(print (pair '(a b c)))
(print (pair '()))
(print (pair '(g)))
