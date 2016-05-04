;;Exercise 1.12

#lang planet neil/sicp

(define (pascal-triangle row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pascal-triangle (dec row) (dec row))
                 (pascal-triangle (dec row) col))))) 