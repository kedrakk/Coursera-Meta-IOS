import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        for menuItem in menuItems {
            let myMenu = Dish(context: context)
            myMenu.name = menuItem.title
            myMenu.price = Float(menuItem.price) ?? 0.0
            myMenu.size = "Large"
        }
    }
    
    static func checkAndSaveItem(_ context:NSManagedObjectContext){
        do {
            try context.save()
        } catch (let error) {
            print(error.localizedDescription)
        }
    }
    
}
