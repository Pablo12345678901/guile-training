(define-module (my-first-module)
  #:export (my-first-function))

(define (my-first-function)
  (display "This is a dummy exported function from another module that do nothing except printing this message.\n"))
