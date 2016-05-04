;;Exercise 1.3

#lang planet neil/sicp

(define (larger x y)
  (if (> x y) x y))

(define (smaller x y)
  (if (< x y) x y))

(define (square x)
  (* x x))

(define (sum-squares-larger x y z)
  (+ (square (larger x y))
     (square (larger (smaller x y) z))))
