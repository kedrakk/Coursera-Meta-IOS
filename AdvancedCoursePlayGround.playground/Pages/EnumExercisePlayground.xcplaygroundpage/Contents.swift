//: [Previous](@previous)

import UIKit

enum Ingredient : String {
    case chicken = "tender chicken"
    case lettuce = "Romaine Lettuce"
    case pork = "pork ribs"
    case carrot = "golden carrot"
}

let ingredient = Ingredient.lettuce

switch ingredient{
case Ingredient.chicken: print("We use \(ingredient.rawValue) to make \(ingredient)")
case Ingredient.lettuce: print("We use \(ingredient.rawValue) to make \(ingredient)")
case Ingredient.pork: print("We use \(ingredient.rawValue) to make \(ingredient)")
case Ingredient.carrot: print("We use \(ingredient.rawValue) to make \(ingredient)")
}

enum RecipeInformation{
    case allergens(information: String)
}
let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk and gluten")
switch recipeInformation{
case RecipeInformation.allergens(let information): print("Recipe has \(information)")
}
