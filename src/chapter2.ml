type shish_kebab = 
  Skewer
  | Onion of shish_kebab
  | Lamb of shish_kebab
  | Tomato of shish_kebab;;

Onion(Onion(Skewer));;

let rec only_onions = function
  Skewer -> true
   | Onion x -> only_onions x
   | Lamb x -> false
   | Tomato x -> false
;;
 only_onions (Onion Skewer);;
only_onions (Tomato Skewer);;

let rec only_vegetarian = function
  Skewer -> true
   | Onion x  -> only_vegetarian x
   | Lamb x -> false
   | Tomato x -> only_vegetarian x;;
only_vegetarian (Onion Skewer);;
