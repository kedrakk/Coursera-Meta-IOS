//
//  testingExerciseTests.swift
//  testingExerciseTests
//
//  Created by kedk on 7/30/23.
//

import XCTest
@testable import testingExercise

final class testingExerciseTests: XCTestCase {

    func test_calculate_totalSale_taxTwentyPercent()
    {
        let items = [
            CheckoutItem(name: "Fish and Chips", price: 625),
            CheckoutItem(name: "Pizza", price: 800),
            CheckoutItem(name: "Pasta", price: 700),
            CheckoutItem(name: "Fries", price: 200),
        ]
        let taxPercentage = 20
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 2790)
    }

}
