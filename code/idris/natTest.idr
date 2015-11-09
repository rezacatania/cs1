module natTest

import pair
import bool
import nat

--test cases for every combination of O, (S O) and (S(S O)).

h1: pair nat nat
h1 = (mkPair (S O) O)

h2: pair nat nat
h2 = (mkPair (O) (S O))

h3: pair nat nat
h3 = (mkPair (O) O)

h4: pair nat nat
h4 = (mkPair (S O) (S O))

h5: pair nat nat
h5 = (mkPair (S(S O)) (S O) )

h6: pair nat nat
h6 = (mkPair (S O) (S(S O)))

h7: pair nat nat
h7 = (mkPair (S(S O)) (S(S O)) )

h8: pair nat nat
h8 = (mkPair (S(S O)) (O) )

h9: pair nat nat
h9 = (mkPair (O) (S(S O)) )

--single arguments
g1: nat 
g1 = (O)

g2: nat
g2 = (S O)

g3: nat
g3 = (S(S O))

g4: nat
g4 = (S(S(S(S(S O)))))
