import UIKit

//! Raw Value Enum
enum Pasta:Int{
    case Pasta1 = 10
    case Pasta2 = 9
}
func cookPasta(pasta:Pasta){
    let cookingTime = pasta.rawValue
    print("\(pasta) will be ready in \(cookingTime) minutes")
}//cookPasta(pasta: Pasta.Pasta2)

//! CaseIterable Enum
enum ColorTest:Int,CaseIterable{
    case Yellow
    case Green
    case Blue
    case Black
}//print(ColorTest.allCases.count)

//! Enums with associated values
enum MyColor{
    case Blue(isFavorite:Bool)
    case Green(isFavorite:Bool)
}
let blueColor = MyColor.Blue(isFavorite: true)


enum Week: Int, CaseIterable {
  case Monday = 1
  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

//for day in Week.allCases {
//  print("\(day) is day \(day.rawValue) of the week")
//}

enum PastaTypes: Int {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}

print(PastaTypes.penne.rawValue)
