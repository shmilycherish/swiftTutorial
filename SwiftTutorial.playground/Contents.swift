
let tipAndTotal: (Double, Double) = (4.00, 25.19)

tipAndTotal.0
tipAndTotal.1

let (theTipAmt, thetotal) = tipAndTotal

theTipAmt
thetotal

let tipAndTotalNamed = (tipAmt:4.00, total: 25.19)
tipAndTotalNamed.tipAmt
tipAndTotalNamed.total

let tipandtotalNamed:(tipamt:Double, total:Double) = (4.00, 25.19)


let total = 21.19
let taxPct = 0.06
let subtotal = total / (taxPct + 1)

func calcTipwithTipPct(tipPct: Double) -> (tipAmt:Double, total:Double) {
    let tipAmt = subtotal * tipPct
    let finaltotal = total + tipAmt
    return (tipAmt, finaltotal)
}

calcTipwithTipPct(0.2)






