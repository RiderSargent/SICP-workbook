; 2.2.3 Sequences as Conventional Interfaces

(define our_list (list 1 2 3 4 5 6 7 8 9 10))

(define (fib n)
  (if (< n 2)
      1
      (+ (fib (- n 1)) (fib (- n 2)))))

(define (even n)
  (= (modulo n 2) 0))

(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(display
  (accumulate cons '() (filter even (map fib our_list))))
