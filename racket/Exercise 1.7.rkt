;;Exercise 1.7

#lang planet neil/sicp

(define SMALL_FRACTION 0.00001)

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     (* SMALL_FRACTION guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))