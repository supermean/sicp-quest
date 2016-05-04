;;Exercise 1.8

#lang planet neil/sicp

(define SMALL_FRACTION 0.00001)

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x))
     (* SMALL_FRACTION guess)))

(define (improve guess x)
  (let ((a (/ x (square guess)))
        (b (* 2 guess)))
    (/ (+ a b) 3)))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube-root x)
  (cube-iter 1.0 x))