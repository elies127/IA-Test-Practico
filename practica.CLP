(deffacts datos (numeros 21 5 3 8 14 7)
)

(defrule suma
 (numeros ?v ?$eliminados ?a ?b)
 =>
  ?res <- (+ (?a ?b))
  ?v <- (- (?v ?res))
)

(defrule resta
 (numeros ?v ?$eliminados ?a ?b)
 =>
  ?res <- (- (?a ?b))
  ?v <- (- (?v ?res))
)
(defrule multi
 (numeros ?v ?$eliminados ?a ?b)
 =>
  ?res <- (* (?a ?b))
  ?v <- (- (?v ?res))
)
(defrule div
 (numeros ?v ?$eliminados ?a ?b)
 =>
  ?res <- (div (?a ?b))
  ?v <- (- (?v ?res))
)



