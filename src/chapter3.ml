type pizza = 
  Crust
  | Cheese of pizza
  | Onion of pizza
  | Anchovy of pizza
  | Sausage of pizza;;

let rec without_anchovis = function
    Crust -> Crust
  | Cheese(x) -> Cheese(without_anchovis(x))
  | Onion(x) -> Onion(without_anchovis(x))
  | Anchovy(x) -> without_anchovis(x)
  | Sausage(x) -> Sausage(without_anchovis(x))
;;

let rec top_anchovy_with_cheese = function
    Crust -> Crust
  | Cheese(x) -> Cheese(without_anchovis(x))
  | Onion(x) -> Onion(without_anchovis(x))
  | Anchovy(x) -> Cheese(Anchovy(without_anchovis(x)))
  | Sausage(x) -> Sausage(without_anchovis(x))
;;

let rec replace_anchovy_with_cheese = function
    Crust -> Crust
  | Cheese(x) -> Cheese(replace_anchovy_with_cheese(x))
  | Onion(x) -> Onion(replace_anchovy_with_cheese(x))
  | Anchovy(x) -> Cheese(replace_anchovy_with_cheese(x))
  | Sausage(x) -> Sausage(replace_anchovy_with_cheese(x))
;;


