open OUnit2;;
open Chapter3;;

let without_anchovis_test_fn (n, res) = "test" >:: (fun test_ctxt -> assert_equal (without_anchovis n) res);;
let without_anchovis_test = "Only onions" >::: (List.map without_anchovis_test_fn
                                             [
                                               (Anchovy(Crust), Crust);
                                               (Onion(Anchovy(Crust)), Onion(Crust));
                                             ]);;


let top_anchovy_with_cheese_test_fn (n, res) = "test" >:: (fun test_ctxt -> assert_equal (top_anchovy_with_cheese n) res);;
let top_anchovy_with_cheese_test = "Only onions" >::: (List.map top_anchovy_with_cheese_test_fn
                                             [
                                               (Anchovy(Crust), Cheese(Anchovy(Crust)));
                                               (Onion(Crust), Onion(Crust));
                                             ]);;



let replace_anchovy_with_cheese_test_fn (n, res) = "test" >:: (fun test_ctxt -> assert_equal (replace_anchovy_with_cheese n) res);;
let replace_anchovy_with_cheese_test = "Only onions" >::: (List.map replace_anchovy_with_cheese_test_fn
                                             [
                                               (Anchovy(Crust), Cheese(Crust));
                                               (Onion(Crust), Onion(Crust));
                                               (Cheese(Anchovy(Crust)), Cheese(Cheese(Crust)));
                                             ]);;


let _ =
  run_test_tt_main (test_list [
      without_anchovis_test; 
      top_anchovy_with_cheese_test;
      replace_anchovy_with_cheese_test;
    ]);;

