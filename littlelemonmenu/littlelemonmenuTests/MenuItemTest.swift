//
//  MenuItemTest.swift
//  littlelemonmenuTests
//
//  Created by kedk on 8/1/23.
//

import XCTest
@testable import littlelemonmenu

final class MenuItemTest: XCTestCase {

    let title:String = "Food 1"
    let ingredient:Ingredient = Ingredient.broccoli
    
    func test_titleByTitle(){
        let menuItem = MenuItem(title: title, ingredient: [])
        XCTAssertEqual(menuItem.title, title)
    }

}
