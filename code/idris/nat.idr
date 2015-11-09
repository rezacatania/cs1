module nat

import bool
import pair
import eq
import Serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

|||return false if the argument is otherwise true
oddb: nat -> bool
oddb n = not (evenb n)

add: nat -> (nat -> nat)
add O m = m
add n O = n
add (S n) m = S (add n m)

mult: nat -> (nat -> nat)
mult O m = O
mult (S n) m = add (mult n m) m

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (fact n) (S n)

sub: nat -> (nat -> nat)
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

exp: nat -> (nat -> nat)
exp O (S n) = O
exp O O = (S O)
exp (S n) O = (S O)
exp (S n) (S O) = (S n)
exp (S n) (S m) = mult (S n) (exp (S n) m)

le: nat -> (nat -> bool)
le O O = true
le (S n) O = false
le O (S n) = true
le (S n) (S m) = le n m

eql_nat: nat-> (nat -> bool)
eql_nat O O = true
eql_nat (S n) (S m) = eql_nat n m
eql_nat _ _ = false

gt: nat -> (nat -> bool)
gt a b = not (le a b)

ge: nat -> (nat -> bool)
ge O O = true
ge (S n) O = true
ge O (S n) = false
ge (S n) (S m) = ge n m

lt: nat -> (nat -> bool)
lt a b = not (ge a b)

instance eq nat where
  eql b1 b2 = eql_nat b1 b2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
