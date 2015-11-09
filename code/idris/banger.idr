module bangersinc

import list



data beat = French_Toast | ADR | Foreword | Lucille
data beatRow = mkBeat beat Bool

b1: beatRow
b1 = mkBeat French_Toast True

b2: beatRow
b2 = mkBeat ADR True

b3: beatRow
b3 = mkBeat Foreword True

b4: beatRow
b4 = mkBeat Lucille True

isBanger: beatRow -> Bool
isBanger (mkBeat a b) = b

isBeat: beatRow -> beat
isBeat (mkBeat a b) = a

listb: list
listb = cons b4 (cons b3 (cons b2 (cons b1 nil)))
