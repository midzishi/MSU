# Домашние задания на ЯП lisp

### pair 
разбивает элементы списка L на пары:
(pair ’(a b c d e)) => ((a b)(c d)(e nil))

### rest 
выдает список, полученный из списка L отбрасыванием N первых элементов списка верхнего уровня, если N>=0, или |N| последних элементов, если N<0, например: 
	(rest 1 ’(a (12) b (3))) => ((12) b (3))
	(rest -2 ’(a (12) b (3))) => (a (12))

### level 
строит список из элементов списочного выражения S, находящихся на уровне N (N>=1), например:
(level 2 ’(((a(5)8) b)7 (g(())) )) => ((a(5)8) b g(nil))

### deep 
определяет атом в списочном выражении S, который находится на наиболее глубоком уровне (если таких атомов несколько, выбрать любой), например:
	(deep ’(a (b (a)) c ((d) 8))) => a

### flat 
вырабатывает t тогда, когда список S является выровненным, например: 
(flat ’(((b) (a c)) ((c 5)) ((d) 8))) => nil
(flat ’(((b) (a c)) ((c 5)) ((d)))) => t
	Выровненным считается одноуровневый список из атомов, а также любой список, состоящий из элементов с одинаковой глубиной (глубина списка есть максимальное количество уровней в нём).

