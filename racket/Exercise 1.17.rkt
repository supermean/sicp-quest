;;Exercise 1.17

#lang planet neil/sicp

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-* a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-* a (halve b))))
        (else (+ a (fast-* a (dec b))))))
  
  