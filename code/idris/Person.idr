module Person

import list
import bool

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

setName: Person -> String -> Person
setName p n = record { name = n } p

-- An example value of type Person
p: Person
p = mkPerson "Sterling" 35 70 false

p1: Person
p1 = mkPerson "Dena" 17 55 true

p2: Person
p2 = mkPerson "Smeetz" 18 70 false

p3: Person
p3 = mkPerson "Spencer" 21 72 false

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

mapAge: list Person -> list Nat
mapAge (h ::t) = age h :: mapAge t
