(defun plusminus (l) (cond
((null l) l)
((atom (car l)) (if (or (eq (car l) '+) (eq (car l) '-)) T))
))

;функция, чтобы превратить список с однородными членами в одноуровневый 
(defun in-one-level (l) 
(cond 
    ((null l) nil)
    ((atom l) (list l))
    (t (append 
            (in-one-level (car l)) 
            (in-one-level (cdr l)) 
    ))
))

(defun fsmal (l) (cond 
((null l) l)
((null (cdr l)) l)
((and(eq(car l) 'x)(plusminus (cdr l))) (list (car l)(fsmal (cddr l))))
((and(eq(car l) '-)(eq(car (cdr l)) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))
((and(eq(car l) '+)(eq(car (cdr l)) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))
((and (not(atom (cddr l)))(or(not(plusminus (cdr l)))(not(plusminus (cddr l))))) (fsmal (cdr l)) )
((and(eq(car l) '-)(eq(cadr l) 'x)(atom (cddr l))) (list (car l)(cadr l)))
((and(eq(car l) '+)(eq(cadr l) 'x)(atom (cddr l))) (list (car l)(cadr l)))

;теперь добавим сюда опознование цифр перед х 
; потом добавим еще степени (придется отдельно считать в разных списках? пиздец)

))



(print (in-one-level (fsmal '( x ^ 3 + x - x ^ 3 + x))))
(print (fsmal '(- x)))
(print (eq(car '(- x)) '-))
(print (eq(cadr '(- x)) 'x))
(print (atom(cddr '(- x))))
(print (atom (cddr '(- x))))






(defun plusminus (l) (cond
((null l) l)
((atom (car l)) (if (or (eq (car l) '+) (eq (car l) '-)) T))
))

;функция, чтобы превратить список с однородными членами в одноуровневый 
(defun in-one-level (l) 
(cond 
    ((null l) nil)
    ((atom l) (list l))
    (t (append 
            (in-one-level (car l)) 
            (in-one-level (cdr l)) 
    ))
))

(defun fsmal (l) (cond 
((null l) l)
((null (cdr l)) l)
((and(eq(car l) 'x)(plusminus (cdr l))) (list (car l)(fsmal (cddr l))))
((and(eq(car l) '-)(eq(car (cdr l)) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))
((and(eq(car l) '-)((eq(cadr l) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))                     
((and(eq(car l) '+)(eq(car (cdr l)) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))
((and (not(atom (cddr l)))(or(not(plusminus (cdr l)))(not(plusminus (cddr l))))(not(numberp(car l)))) (fsmal (cdr l)) )
((and(eq(car l) '-)(eq(cadr l) 'x)(atom (cddr l))) (list (car l)(cadr l)))
((and(eq(car l) '+)(eq(cadr l) 'x)(atom (cddr l))) (list (car l)(cadr l)))
((and(numberp(car l))(eq(cadr l) 'x)(plusminus (cddr l))) (list (car l)(cadr l)(fsmal (cddr l)))) 
((and(numberp(car l))(not(eq(cadr l) 'x)))(fsmal( cdr l)))                      

;теперь добавим сюда опознование цифр перед х 
; потом добавим еще степени (придется отдельно считать в разных списках? пиздец)

))


;(defun count (l) (cond 
;((null l) nil)
;нужна ли проверка на то, что в списке один символ? 
;((and(                     
                     
           
 ;          ))


(print (in-one-level (fsmal '(5 x + x - x ^ 3 + x - x ^ 3 + 5 x + x))))
(print (fsmal '(- x)))
(print (cdr '(- x)))









(defun plusminus (l) (cond
((null l) l)
((atom (car l)) (if (or (eq (car l) '+) (eq (car l) '-)) T))
))

;функция, чтобы превратить список с однородными членами в одноуровневый 
(defun in-one-level (l) 
(cond 
    ((null l) nil)
    ((atom l) (list l))
    (t (append 
            (in-one-level (car l)) 
            (in-one-level (cdr l)) 
    ))
))

(defun fsmal (l) (cond 
((null l) l)
((null (cdr l)) l)
((and(eq(car l) 'x)(plusminus (cdr l))) (list (car l)(fsmal (cddr l))))
((and(eq(car l) '-)(eq(car (cdr l)) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))
((and(eq(car l) '-)(numberp(cadr l))(eq(caddr l) 'x)(plusminus (cdr(cddr l))))(list (car l)(cadr l)(caddr l)(fsmal (cdddr l))))
((and(eq(car l) '+)(numberp(cadr l))(eq(caddr l) 'x)(plusminus (cdr(cddr l))))(list (car l)(cadr l)(caddr l)(fsmal (cdddr l))))                     
((and(eq(car l) '+)(eq(car (cdr l)) 'x)(plusminus (cddr l)))(list (car l)(car (cdr l))(fsmal (cddr l))))
((and (not(atom (cddr l)))(or(not(plusminus (cdr l)))(not(plusminus (cddr l))))(not(numberp(car l)))(not(atom(cdddr l)))) (fsmal (cdr l)) )
((and(eq(car l) '-)(eq(cadr l) 'x)(atom (cddr l))) (list (car l)(cadr l)))
((and(eq(car l) '-)(numberp(cadr l))(eq(caddr l) 'x)(atom (cdddr l))) (list (car l)(cadr l)(caddr l)))                     
((and(eq(car l) '+)(eq(cadr l) 'x)(atom (cddr l))) (list (car l)(cadr l)))
((and(eq(car l) '+)(numberp(cadr l))(eq(caddr l) 'x)(atom (cdddr l))) (list (car l)(cadr l)(caddr l)))                      
((and(numberp(car l))(eq(cadr l) 'x)(plusminus (cddr l))) (list (car l)(cadr l)(fsmal (cddr l)))) 
((and(numberp(car l))(not(eq(cadr l) 'x)))(fsmal( cdr l)))                      

;теперь добавим сюда опознование цифр перед х 
; потом добавим еще степени (придется отдельно считать в разных списках? пиздец)

))


(defun count (l) (cond  
((null l) 0)
;я не знаю, как это сделать и это пиздец
((and(eq(car l) '-)(numberp(cadr l)))(-(cadr l) (count (cdddr l))))
((and(eq(car l) '+)(numberp(cadr l)))(+(cadr l) (count (cdddr l))))
((numberp(car l))(+(car l) (count (cddr l))))                     
((count (cdr l)))                  
          ))


(defun sum (lst) (cond
  ((null lst) 0)
  ((numberp (car lst)) (+ (car lst) (sum (cdr lst))))
  ((sum (cdr lst)))
    ))

(print (count (in-one-level (fsmal '(5 x + x - x ^ 3 + x - x ^ 3 - 5 x + 3 x - 5 x + 2 x)))))
(print (in-one-level (fsmal '(5 x + x - x ^ 3 + x - x ^ 3 - 5 x + 3 x - 5 x + 2 x))))
;(print (cddr (in-one-level (fsmal '(5 x + x - x ^ 3 + x - x ^ 3 - 5 x + 3 x - 5 x + 2 x)))))
(print (fsmal '(- x)))
(print (cdddr '(+ 4 x)))
;(print (+ NIL 4))












(defun in-one-level (l) (cond 
((null l) nil)
((atom l) (list l))
(t (append (in-one-level (car l))(in-one-level (cdr l)) ))
))

(defun plusminus (l) (cond
((null l) l)
((atom (car l)) (if (or (eq (car l) '+) (eq (car l) '-)) T))
))

(defun changeminus (l) (cond 
((null l) nil)
((eq(car l) '-)(list(* (cadr l) -1) (changeminus (cddr l))))
((list(car l) (changeminus (cdr l))))                          
                ))
                         
(defun group (l) (cond 
        ((and(cadr l)(not(eq(car l) '-))) (cons (list (car l) (cadr l)) (group (cddr l))))
        ((and(cadr l)(eq(car l) '-)) (cons (list (car l) (cadr l) (caddr l)) (group (cdddr l))))             
        (l (cons l nil))))


;x + 5 x - 2 x ^ 2 + 3
(defun input (l) (cond 
((null l) nil)
((and(numberp(car l))(eq(cadr l) 'x)(eq(caddr l) '^))(list (car l) (cadddr l) (input(cddddr l))))                      
((and(numberp(car l))(eq(cadr l) 'x)(plusminus(cddr l)))(list (car l) 1 (input(cddr l))))                      
((and(numberp(car l))(plusminus(cdr l)))(list (car l) 0 (input(cdr l))))
((and(eq(car l) 'x)(plusminus(cdr l)))(list 1 1 (input(cdr l))))
((and(eq(car l) 'x)(eq(cadr l) '^))(list 1 (caddr l) (input(cdddr l))))                    
((and(eq(car l) '+)(numberp(cadr l))(eq(caddr l) 'x)(eq(cadddr l) '^))(list (cadr l) (car(cddddr l)) (input(cdr(cddddr l))) ))
((and(eq(car l) '-)(numberp(cadr l))(eq(caddr l) 'x)(eq(cadddr l) '^))(list (car l) (cadr l) (car(cddddr l)) (input(cdr(cddddr l)))))
((and(eq(car l) '+)(numberp(cadr l))(eq(caddr l) 'x))(list (cadr l) 1 (input(cdddr l))))
((and(eq(car l) '-)(numberp(cadr l))(eq(caddr l) 'x))(list (car l) (cadr l) 1 (input(cdddr l))))                       
((and(eq(car l) '+)(numberp(cadr l)))(list (cadr l) 0 (input (cddr l))))
((and(eq(car l) '-)(numberp(cadr l)))(list (car l) (cadr l) 0 (input (cddr l))))
((and(eq(car l) '+)(eq(cadr l) 'x)(eq(caddr l) '^))(list 1 (car(cdddr l)) (input(cdr(cdddr l))) ))                     
((and(eq(car l) '-)(eq(cadr l) 'x)(eq(caddr l) '^))(list (car l) 1 (car(cdddr l)) (input(cdr(cdddr l))) )) 
((and(eq(car l) '+)(eq(cadr l) 'x))(list 1 1 (input(cdr(cdr l))) ))                     
((and(eq(car l) '-)(eq(cadr l) 'x))(list -1 1 (input(cdr(cdr l))) ))                      
))

(defun _invoketopoly (l) (cond 
((null l) nil)

((and(= (cadar l) 1)(= (caar l) 1)) (list '+ 'x (_invoketopoly(cdr l)))) 
((and(= (cadar l) 1)(= (caar l) -1)) (list '- 'x (_invoketopoly(cdr l))))                             
((and(= (cadar l) 1)(> (caar l) 0)) (list '+ (caar l) 'x (_invoketopoly(cdr l))))
((and(= (cadar l) 1)(< (caar l) 0)) (list '- (* (caar l) -1) 'x (_invoketopoly(cdr l))))
((and(> (cadar l) 1)(= (caar l) 1)) (list '+ 'x '^ (cadar l) (_invoketopoly(cdr l))))
((and(> (cadar l) 1)(> (caar l) 0)) (list '+ (caar l) 'x '^ (cadar l) (_invoketopoly(cdr l))))
((and(> (cadar l) 1)(= (caar l) -1)) (list '- 'x '^ (cadar l) (_invoketopoly(cdr l))))                               
((and(> (cadar l) 1)(< (caar l) 0)) (list '- (*(caar l)-1) 'x '^ (cadar l) (_invoketopoly(cdr l))))
((and(= (cadar l) 0)(> (caar l) 0)) (list '+ (caar l) (_invoketopoly(cdr l))))
((and(= (cadar l) 0)(< (caar l) 0)) (list '- (*(caar l)-1) (_invoketopoly(cdr l))))                             
((= (cadar l) 0) (list (caar l) (_invoketopoly(cdr l)))) 
((= (caar l) 0) (_invoketopoly(cdr l)))                            
                          
                           
                            ))
(defun invoketopoly_last (l) (cond 
        ((null l) nil) 
        ((eq(car l) '+) (cdr l))
        ((not(eq(car l) '+)) l)                         
                                 ))

(defun invoketopoly (l) (cond 
       ((null l) nil) 
       ((invoketopoly_last(in-one-level(_invoketopoly l))))
                            ))

(defun polytonum (l) (cond 
          ((null l) nil) 
          ((group(in-one-level(changeminus(in-one-level (input l))))))
                         ))
(defun _invoke (l) (cond 
          ((null l) nil) 
          ((group(in-one-level l)))
                       ))  
(defun _countpows (a l) (cond
         ((null l) nil)                 
         ((eq(cadr a)(cadar l)) T)
         (t(_countpows a (cdr l))) ))

(defun countpows (a l) (cond 
((eq(cadr a) (cadar l)) (cons(cons(+(car a) (caar l)) (cdr a))(cdr l)))
((cons(car l)(countpows a (cdr l))))                           
       ))

(defun magic (l) (cond 
         ((null l) nil)
         ((null (cdr l)) l)           
         ((_countpows (car l) (cdr l))(magic(countpows (car l) (cdr l))))
         ((cons (car l) (magic (cdr l))))          
                    ))
(defun delzero (l) (cond 
           ((null l) nil) 
           ((= (car l) 0) (cdr l))          

))
(defun isnull (l) (cond 
           ((null (make l)) 0)
           ((make l))           
                      ))
(defun make (l) (cond 
           ((null l) nil) 
           ((delzero(invoketopoly(group(in-one-level(delzero(magic(polytonum l))))))))
                    ))



;(print (magic(polytonum '(x + 2 x ^ 2 + 5 - 2 x ^ 3 - x - 5 - 5 x + 5 x - 2 x ^ 2 + 5))))
(print (delzero(invoketopoly(group(in-one-level(magic(polytonum '(x + 2 x ^ 2 + 5 - 2 x ^ 3 - x - 5 - 5 x + 5 x - 2 x ^ 2 + 2 x ^ 3 - 5 x))))))))
;(print (magic '((2 2) (-2 3) (0 0) (-5 1))))
;(print (invoketopoly '((-1 2) (1 2) (1 3) (3 3) (4 5))))






