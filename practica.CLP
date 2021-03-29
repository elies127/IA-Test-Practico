(deffacts datos (numeros 21 5 3 8 14 7)
)

(defrule suma
 (numeros ?v ?$eliminados ?a ?b ?$resto)
 =>
  ?res <- (+ (?a ?b))
  ?v <- (- (?v ?res))
(assert (numeros ?v ?$resto))
)

(defrule resta
 (numeros ?v ?$eliminados ?a ?b ?$resto)
 =>
test (< (?a ?b)
  ?res <- (- (?a ?b))
  ?v <- (- (?v ?res))
(assert (numeros ?v ?$resto))
)
(defrule multi
 (numeros ?v ?$eliminados ?a ?b ?$resto)
 =>
  ?res <- (* (?a ?b))
  ?v <- (- (?v ?res))
(assert (numeros ?v ?$resto))
)
(defrule div
 (numeros ?v ?$eliminados ?a ?b ?$resto)
 =>
test( 0 != (mod ?a ?b))
  ?res <- (div (?a ?b))
  ?v <- (- (?v ?res))
(assert (numeros ?v ?$resto))
)



