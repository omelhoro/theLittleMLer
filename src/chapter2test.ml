open OUnit2;;
open Chapter2;;

let only_onion_test_fn (n, res) = "test" >:: (fun test_ctxt -> assert_equal (only_onions n) res);;
let only_onions_test = "Only onions" >::: (List.map only_onion_test_fn
                                             [
                                               (Onion(Skewer), true);
                                               (Lamb(Onion(Skewer)), false);
                                               (Onion(Onion(Onion(Skewer))), true);
                                               (Tomato(Tomato(Onion(Skewer))), false);
                                             ]);;

let only_vegetarians_test_fn (n, res) = "test" >:: (fun text_ctxt -> assert_equal (only_vegetarian n ) res);;

let only_vegetarians_test = "Only vegetarian things" >::: (List.map only_vegetarians_test_fn
                                                             [
                                                               (Onion(Skewer), true);
                                                               (Lamb(Onion(Skewer)), false);
                                                             ]);;

let _ =
  run_test_tt_main (test_list [
      only_onions_test; 
      only_vegetarians_test
    ]);;

