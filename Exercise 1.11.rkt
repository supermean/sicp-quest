;;Exercise 1.11

#lang planet neil/sicp

(define (recursive-f n)
  (if (< n 3)
      n
      (+ (recursive-f (- n 1))
         (* 2 (recursive-f (- n 2)))
         (* 3 (recursive-f ( - n 3))))))

(define (iterative-f n)
  (define (iterative-f-iter threeBefore twoBefore oneBefore count)
    (if (< count 0)
        oneBefore
        (iterative-f-iter twoBefore oneBefore (+ oneBefore (* 2 twoBefore) (* 3 threeBefore)) (dec count))))
  (if (< n 3)
      n
      (iterative-f-iter 0 1 2 (- n 3))))