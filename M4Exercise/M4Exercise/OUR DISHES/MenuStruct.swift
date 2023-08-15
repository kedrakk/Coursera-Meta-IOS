import Foundation

struct JSONMenu: Codable {
    enum CodingKeys: String, CodingKey { case
        menuItems = "menu"
    }
    var menuItems:[MenuItem] = Array()
}


struct MenuItem: Codable,Hashable {
    let id:Int
    let title:String
    let price:String
}
