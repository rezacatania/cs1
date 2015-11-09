module list

import nat
import option
import bool
import ifThenElse
import eq

--data list = nil | cons a list

infixr 7 ::

data list a = nil | (::) a (list a)

length : list a -> nat
length nil = O
length (h :: t) = S (length t)

(++) : list a -> list a -> list a
(++) nil x = x
(++) (h :: t) x = h :: (t ++ x)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h :: (filter f t))
                            (filter f t)

fancy: (a -> a -> a) -> a -> (list a) -> a
fancy f id nil = id
fancy f id (h::t) = f (h) (fancy f id t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h :: t) = ite (eql v h)
                        true
                        (member v t)

--eql: a -> a -> bool
--eql mkPair

instance (eq a) => eq (list a ) where
  eql nil nil = true
  eql nil _ = false
  eql _ nil = false
  eql (h :: t) (p :: l) = and (eql h p) (eql t l)

contains_elements: (eq a) => list a -> list a -> bool
contains_elements nil (h2 :: t2) = true
contains_elements (h1 :: t1) (h2 :: t2) = and (member h1 (h2 :: t2))
                                              (contains_elements t1 (h2 :: t2))

same_elements: (eq a) => list a -> list a -> bool
same_elements a b = and (contains_elements a b) (contains_elements b a)
