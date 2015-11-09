module friend

import bool

record Person where
  constructor mkPerson
  name : string
  age : Nat
  trust : bool

|||trustworthiness, has a name, and who has an age
data friend = mkFriend bool string Nat

f1: friend
f1 = mkFriend true  "Dina" 17

f2: friend
f2 = mkFriend false "Smeetz" 19

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getTrust: friend -> bool
getAge (mkFriend b s n) = n

getName: friend -> string
getAge (mkFriend b s n) = n
