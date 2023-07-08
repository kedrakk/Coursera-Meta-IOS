import Cocoa

var goldBars = 0

func incrementInventory(_ inventory: inout Int, amount:Int = 100){
     return inventory += amount
}
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars, amount: 300)
print(goldBars)


let unlockTreasureChest = { (inventory:inout Int ) in
    inventory + 100
}
unlockTreasureChest(&goldBars)
print(goldBars)
