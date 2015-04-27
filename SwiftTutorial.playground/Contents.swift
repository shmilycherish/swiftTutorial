let tutorialTeam = 60
let editorialTeam = 17
var totalTeam = tutorialTeam + editorialTeam


totalTeam += 1

let pirceInferred = 19.99
let priceExplicit: Double = 19.99

let onSaleInferred = true
let onSaleExplicit: Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whooipe Cushion"

if onSaleInferred {
    println("\(nameInferred) on sale for \(pirceInferred)!")
} else {
    println("\(priceExplicit) at regular price: \(priceExplicit)!")
}
