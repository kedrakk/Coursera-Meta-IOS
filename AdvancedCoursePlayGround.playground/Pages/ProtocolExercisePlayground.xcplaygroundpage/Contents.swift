//: [Previous](@previous)

import Foundation

protocol Dish{
    var name:String {get}
    var preparationMinutes:Int {get set}
    func prepare()
    func plate(parametersartisticLevel:Int)
}


class MainDish: Dish{
    let name:String
    var preparationMinutes:Int
    
    init(name:String, preparationMinutes:Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    
    func prepare(){
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    
    func plate(parametersartisticLevel:Int)  {
        print("Plating artistic level: \(parametersartisticLevel)")
    }
}

let mainDish = MainDish(name:"Super Spaghetti",preparationMinutes:35)
mainDish.prepare()
mainDish.plate(parametersartisticLevel:10)
