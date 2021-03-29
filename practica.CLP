(deffacts datos (numeros 21 5 3 8 14 7)
)

defrule bucle
 (numeros ?v ?)
 =>
 (while (!= ?v 21)
 (printout t "Valve " ?v " is open" crlf)
 (bind ?v (- ?v 1))))


(defrule suma
?f <= (+ ?fin ?$x ?$y ?$z ?$a ?$b)



