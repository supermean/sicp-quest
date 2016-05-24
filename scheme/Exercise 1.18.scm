;;Exercise 1.18

(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (dec x) (- x 1))

(define (fast-* x y)
  (define (iter v a b)
    (cond ((= b 0) v)
	  ((even? b) (iter v (double a) (halve b))) ;;halve b
	  (else (iter (+ v a) a (dec b)))))
  (iter 0 x y))

;;test
(fast-* 4 5)
(fast-* 20 10)
