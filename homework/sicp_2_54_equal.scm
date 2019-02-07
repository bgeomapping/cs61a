
(define (equal? a b)
    ; (newline)
    ; (display a)
    ; (newline)
    ; (display b)
    (cond ((and (null? a) (null? b)) #t)
          ((pair? (car a)) (equal? (cdr a) (cdr b)))
          ((pair? (car b)) (equal? (cdr a) (cdr b)))
          ((not (eq? (car a) (car b))) #f)
          (else (equal? (cdr a) (cdr b)))))
(equal? '(this is a list) '(this is a list))
(equal? '(this is a list) '(this (is a) list))