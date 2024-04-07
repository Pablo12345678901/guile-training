#!/usr/local/bin/guile -s
!#

(define (inner-factorial n)
  (if (zero? n)
       1
       (* n (inner-factorial (- n 1)))))

(define (print-current n)
 (display (string-append "The current n is : " (number->string n) ".\n"))
 (if (> n 0)
 (print-current (- n 1))
 (newline) ; Esthetic
 ))

(define (print-final-result n-factor result)
	(display (string-append "The factorial of " (number->string n-factor) " is " (number->string result) "\n")))

(define (compute-factorial n)
 (print-current n)
 (print-final-result n (inner-factorial n))
 (newline) ; Esthetic
)
 
(display "Hello world !\n\n")

(compute-factorial 3)
