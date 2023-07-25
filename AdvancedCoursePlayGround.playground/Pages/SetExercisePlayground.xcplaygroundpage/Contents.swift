//: [Previous](@previous)

import Foundation

let reservationsInPerson:Set = ["000-345-3441", "000-345-3442"]
let reservationsOverPhone:Set = ["000-345-3443", "000-345-3444"]
let reservationsOverInternet:Set = ["000-345-3445", "000-345-3446"]

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print("In Person and Phone Reservation: \(inPersonAndOverPhone)")

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print("All phone numbers: \(allPhoneNumbers)")

var confirmationCodes:Set = [ "LL3450","LL3451" ]

print("\(allPhoneNumbers.count) phone numbers, \(confirmationCodes.count) codes")

if(allPhoneNumbers.count>confirmationCodes.count){
    confirmationCodes.insert("LL3452")
}

print("\(confirmationCodes)")

allPhoneNumbers.remove("000-345-3446")
print("\(allPhoneNumbers)")
