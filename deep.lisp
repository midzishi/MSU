(defun _deep (l a n)(cond
((atom l)(cond
((> n (car (cdr a))) (list l n))
(T a)))
(T (_deep (cdr l) (_deep (car l) a (+ n 1)) n))
))

(defun deep (l)(cond
((null l) nil)
((car (_deep l (list nil 0) 0)))
))


(print (deep '(a (b (p)) c ((d) 8))))
(print (deep '()))
(print (deep '(l)))
(print (deep '(l (a) (f))))

