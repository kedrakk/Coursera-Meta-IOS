import Cocoa

let day = "Monday"
print("Today is \(day)")

let hour = "6"
let minute = "15"
let period = "PM"
var time = "\(hour):\(minute) \(period)"
print("It is \(time)")
print("It is \(time) on \(day)")

let timeZone = "PST"
time += " \(timeZone)"
print("It is \(time)")
print("It is \(time) on \(day)")

let shortDay = day.prefix(3)
print("Today is \(shortDay)")
time += " on \(shortDay)"
print("It is \(time)")


