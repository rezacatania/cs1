module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

--I worked with Callum and Dina on the lab Thursday

||| A record of this type represents a country and a death rate per 10,000,000 by gun for homocides, suicides,unintentional, other.
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austrl: gunrow
austrl = mkGunrow Australia 11 62 5 8

austra: gunrow
austra = mkGunrow Austria 18 268 1 8

hondu: gunrow
hondu = mkGunrow Honduras 648 0 0 0

united: gunrow
united = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homocidePer10M: gunrow -> Nat
homocidePer10M (mkGunrow c h s u o) = h
--this sort of function is called a projection function

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

listA: list
listA = cons argen (cons austrl (cons austra (cons hondu (cons united nil))))
