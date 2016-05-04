#lang planet neil/sicp
(define (gcd x y)
  (cond ((= x y) x)
        ((> x y) (gcd (- x y) y))
        (else (gcd (- y x) x))))
